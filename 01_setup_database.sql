/* =========================================================================
   PROJECT: HR COMMUNICATION & BURNOUT RISK ANALYTICS
   FILE   : 01_setup_database.sql
   TUJUAN : Mendefinisikan struktur tabel dan memasukkan data sampel HR
========================================================================= */

-- 1. Tabel Pesan (Komunikasi Internal)
CREATE TABLE messages (
    message_id INT,
    sender_id INT,
    receiver_id INT,
    content VARCHAR(255),
    sent_date TIMESTAMP
);

INSERT INTO messages (message_id, sender_id, receiver_id, content, sent_date) VALUES
(110, 2520, 6987, 'Laporan bulan lalu mana?', '2022-08-08 09:00:00'),
(111, 6987, 2520, 'Sedang saya rekap, Pak', '2022-08-08 09:15:00'),
(112, 2520, 6987, 'Tolong dipercepat ya', '2022-08-08 09:17:00'),
(113, 6987, 2520, 'Siap', '2022-08-08 09:18:00'),
(114, 7777, 8888, 'Cek email donk', '2022-08-08 10:00:00'),
(115, 8888, 7777, 'Belum masuk', '2022-08-08 10:05:00'),
(116, 7777, 8888, 'Coba refresh', '2022-08-08 10:06:00'),
(117, 8888, 7777, 'Ah iya sudah', '2022-08-08 10:10:00'),
(118, 3601, 4500, 'Makan siang bareng?', '2022-08-08 11:45:00'),
(119, 4500, 3601, 'Ayo di kantin biasa', '2022-08-08 11:50:00'),
(120, 1001, 2002, 'Server staging down', '2022-08-09 08:30:00'),
(121, 1001, 2002, 'Tolong restart', '2022-08-09 08:31:00'),
(122, 2002, 1001, 'Sedang di-restart', '2022-08-09 08:35:00'),
(123, 2002, 1001, 'Sudah up lagi', '2022-08-09 08:40:00'),
(124, 1001, 2002, 'Mantap, thanks', '2022-08-09 08:45:00'),
(125, 5555, 6666, 'Kirim file presentasi', '2022-08-09 09:00:00'),
(126, 6666, 5555, 'Bentar', '2022-08-09 09:05:00'),
(127, 6666, 5555, 'Ini ya filenya', '2022-08-09 09:10:00'),
(128, 5555, 6666, 'Ukurannya kebesaran', '2022-08-09 09:15:00'),
(129, 6666, 5555, 'Nanti saya compress', '2022-08-09 09:20:00'),
(130, 2520, 1001, 'Bisa minta data user?', '2022-08-10 10:00:00'),
(131, 1001, 2520, 'Periode kapan?', '2022-08-10 10:05:00'),
(132, 2520, 1001, 'Bulan Juli', '2022-08-10 10:10:00'),
(133, 1001, 2520, 'Tunggu sebentar saya query', '2022-08-10 10:15:00'),
(134, 1001, 2520, 'Sudah dikirim via email', '2022-08-10 10:45:00'),
(135, 2520, 1001, 'Thanks', '2022-08-10 10:50:00'),
(136, 7777, 2002, 'Akses VPN bermasalah', '2022-08-10 11:00:00'),
(137, 2002, 7777, 'Coba pakai jaringan lain', '2022-08-10 11:05:00'),
(138, 7777, 2002, 'Sama saja', '2022-08-10 11:10:00'),
(139, 2002, 7777, 'Biar saya reset password', '2022-08-10 11:15:00'),
(140, 7777, 2002, 'Bisa, makasih', '2022-08-10 11:30:00'),
(141, 3601, 5555, 'Meeting jam 3 jadi?', '2022-08-11 13:00:00'),
(142, 5555, 3601, 'Mundur jam 4', '2022-08-11 13:10:00'),
(143, 3601, 5555, 'Oke saya sesuaikan jadwal', '2022-08-11 13:15:00'),
(144, 8888, 6987, 'Form cuti di mana?', '2022-08-11 14:00:00'),
(145, 6987, 8888, 'Di portal HR', '2022-08-11 14:05:00'),
(146, 8888, 6987, 'Linknya?', '2022-08-11 14:06:00'),
(147, 6987, 8888, 'hr.company.internal', '2022-08-11 14:10:00'),
(148, 8888, 6987, 'Ketemu, makasih', '2022-08-11 14:15:00'),
(149, 1001, 3601, 'Ada bug di menu login', '2022-08-12 09:00:00'),
(150, 3601, 1001, 'Bisa kasih screenshot?', '2022-08-12 09:05:00'),
(151, 1001, 3601, 'Sudah di slack', '2022-08-12 09:10:00'),
(152, 3601, 1001, 'Oke saya cek', '2022-08-12 09:15:00'),
(153, 3601, 1001, 'Sudah di fix', '2022-08-12 10:00:00'),
(154, 1001, 3601, 'Cepat banget, mantap', '2022-08-12 10:05:00'),
(155, 2520, 8888, 'Kinerja bulan ini bagus', '2022-08-12 11:00:00'),
(156, 8888, 2520, 'Terima kasih atas arahannya', '2022-08-12 11:05:00'),
(157, 2520, 8888, 'Pertahankan ya', '2022-08-12 11:10:00'),
(158, 6666, 7777, 'Gimana project A?', '2022-08-13 09:00:00'),
(159, 7777, 6666, 'Lancar, sesuai target', '2022-08-13 09:15:00'),
(160, 6666, 7777, 'Baguslah kalau begitu', '2022-08-13 09:20:00'),
(161, 2002, 5555, 'Butuh akses ke database', '2022-08-13 10:00:00'),
(162, 5555, 2002, 'Tolong isi form request', '2022-08-13 10:05:00'),
(163, 2002, 5555, 'Sudah', '2022-08-13 10:10:00'),
(164, 5555, 2002, 'Akses diberikan', '2022-08-13 10:30:00'),
(165, 3601, 6987, 'Besok libur kan?', '2022-08-14 15:00:00'),
(166, 6987, 3601, 'Iya tanggal merah', '2022-08-14 15:05:00'),
(167, 3601, 6987, 'Oke siap', '2022-08-14 15:10:00'),
(168, 1001, 2520, 'Review kode selesai', '2022-08-15 09:00:00'),
(169, 2520, 1001, 'Ada issue?', '2022-08-15 09:05:00'),
(170, 1001, 2520, 'Aman semua', '2022-08-15 09:10:00'),
(171, 2520, 1001, 'Bagus, lanjut deploy', '2022-08-15 09:15:00'),
(172, 7777, 3601, 'Minta review desain', '2022-08-15 10:00:00'),
(173, 3601, 7777, 'Kirim link figma', '2022-08-15 10:05:00'),
(174, 7777, 3601, 'Sudah di DM', '2022-08-15 10:10:00'),
(175, 3601, 7777, 'Warna tombol kurang terang', '2022-08-15 10:30:00'),
(176, 7777, 3601, 'Oke saya ubah', '2022-08-15 10:35:00'),
(177, 8888, 5555, 'Tinta printer habis', '2022-08-16 09:00:00'),
(178, 5555, 8888, 'Lapor ke GA', '2022-08-16 09:05:00'),
(179, 8888, 5555, 'Gak ada orangnya', '2022-08-16 09:10:00'),
(180, 5555, 8888, 'Tinggalkan memo saja', '2022-08-16 09:15:00'),
(181, 2520, 6987, 'Siapkan ruangan meeting', '2022-08-16 13:00:00'),
(182, 6987, 2520, 'Untuk jam berapa?', '2022-08-16 13:05:00'),
(183, 2520, 6987, 'Jam 2 siang', '2022-08-16 13:10:00'),
(184, 6987, 2520, 'Sudah disiapkan', '2022-08-16 13:30:00'),
(185, 1001, 7777, 'Ada update sistem', '2022-08-17 08:00:00'),
(186, 7777, 1001, 'Downtime berapa lama?', '2022-08-17 08:05:00'),
(187, 1001, 7777, 'Sekitar 15 menit', '2022-08-17 08:10:00'),
(188, 7777, 1001, 'Oke info kalau sudah', '2022-08-17 08:15:00'),
(189, 1001, 7777, 'Done', '2022-08-17 08:30:00'),
(190, 7777, 1001, 'Thanks', '2022-08-17 08:31:00');

-- 2. Tabel Master Karyawan
CREATE TABLE employees (
    employee_id INT,
    nama_lengkap VARCHAR(100),
    nama_panggilan VARCHAR(50),
    departemen VARCHAR(50)
);

INSERT INTO employees (employee_id, nama_lengkap, nama_panggilan, departemen) VALUES
(1001, 'Budi Santoso', 'Budi', 'IT Support'),
(2002, 'Siti Aminah', 'Siti', 'IT Support'),
(2520, 'Andi Wijaya', 'Andi', 'Management'),
(3601, 'Rina Melati', 'Rina', 'Product'),
(4500, 'Dewi Lestari', 'Dewi', 'Product'),
(5555, 'Faisal Rahman', 'Faisal', 'Data'),
(6666, 'Hendro Purwanto', 'Hendro', 'Data'),
(6987, 'Ayu Wulandari', 'Ayu', 'HR'),
(7777, 'Reza Rahadian', 'Reza', 'Design'),
(8888, 'Maya Sari', 'Maya', 'Finance'),
(9001, 'Toni Stark', 'Toni', 'Management'),
(9002, 'Bruce Wayne', 'Bruce', 'Finance');

-- 3. Tabel Proyek
CREATE TABLE projects (
    project_id INT,
    departemen VARCHAR(50),
    status_proyek VARCHAR(20)
);

INSERT INTO projects (project_id, departemen, status_proyek) VALUES
(101, 'IT Support', 'Selesai'),
(102, 'IT Support', 'Tertunda'),
(103, 'Product', 'Selesai'),
(104, 'Product', 'Selesai'),
(105, 'Data', 'Selesai'),
(106, 'Data', 'Selesai');

-- 4. Tabel Evaluasi Kinerja (Performance)
CREATE TABLE performance_reviews (
    employee_id INT,
    skor_kinerja INT
);

INSERT INTO performance_reviews (employee_id, skor_kinerja) VALUES
(1001, 85), (2002, 70), (3601, 95), (4500, 80), (5555, 90), (6666, 88);
