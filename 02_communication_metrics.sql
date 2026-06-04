/* =========================================================================
   PROJECT: HR COMMUNICATION & BURNOUT RISK ANALYTICS
   FILE   : 02_communication_metrics.sql
   TUJUAN : Analisis beban komunikasi (pesan terkirim dan diterima)
========================================================================= */

-- METRIK 1: Rata-rata Pesan Terkirim per Karyawan (Tingkat Keaktifan)
WITH Sent_Total AS (
    SELECT sender_id, COUNT(message_id) AS jumlah_pesan
    FROM messages
    GROUP BY sender_id
)
SELECT ROUND(AVG(jumlah_pesan), 1) AS rata_rata_pesan_terkirim 
FROM Sent_Total;

-- METRIK 2: Rata-rata Beban Pesan Masuk per Karyawan
WITH Received_Total AS (
    SELECT receiver_id, COUNT(message_id) AS jumlah_pesan_masuk
    FROM messages
    GROUP BY receiver_id
)
SELECT ROUND(AVG(jumlah_pesan_masuk), 1) AS rata_rata_pesan_masuk 
FROM Received_Total;

-- METRIK 3: Daftar Karyawan "Super Aktif" (Pengirim Pesan di Atas Rata-rata)
WITH Sender_Metrics AS (
    SELECT sender_id, COUNT(message_id) AS total_pesan
    FROM messages 
    GROUP BY sender_id
)
SELECT 
    e.nama_panggilan, 
    e.departemen, 
    sm.total_pesan
FROM Sender_Metrics sm
JOIN employees e ON sm.sender_id = e.employee_id
WHERE sm.total_pesan > (SELECT AVG(total_pesan) FROM Sender_Metrics)
ORDER BY sm.total_pesan DESC; 

-- METRIK 4: Karyawan dengan Beban Inbox Tertinggi (Potensi Distraksi)
WITH Receiver_Metrics AS (
    SELECT receiver_id, COUNT(message_id) AS total_pesan_masuk
    FROM messages
    GROUP BY receiver_id
)
SELECT
    e.nama_panggilan,
    e.departemen,
    rm.total_pesan_masuk
FROM Receiver_Metrics rm
JOIN employees e ON rm.receiver_id = e.employee_id 
WHERE rm.total_pesan_masuk > (SELECT AVG(total_pesan_masuk) FROM Receiver_Metrics)
ORDER BY rm.total_pesan_masuk DESC;
