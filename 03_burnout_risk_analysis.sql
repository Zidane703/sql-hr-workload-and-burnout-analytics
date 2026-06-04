/* =========================================================================
   PROJECT: HR COMMUNICATION & BURNOUT RISK ANALYTICS
   FILE   : 03_burnout_risk_analysis.sql
   TUJUAN : Analisis korelasi beban komunikasi, proyek tertunda, dan kinerja
========================================================================= */

-- STUDI KASUS: Analisis Risiko Burnout (Kelelahan Kerja)
-- Hipotesis: Karyawan dengan beban komunikasi (inbox) tinggi dan berada di 
-- departemen dengan banyak proyek tertunda berisiko mengalami penurunan kinerja.

WITH Inbox_Load AS (
    SELECT 
        receiver_id, 
        COUNT(message_id) AS beban_pesan_masuk
    FROM messages 	
    GROUP BY receiver_id 
),
Department_Bottleneck AS (
    SELECT 
        departemen, 
        COUNT(project_id) AS jumlah_proyek_macet
    FROM projects
    WHERE status_proyek = 'Tertunda'
    GROUP BY departemen
)
SELECT 
    e.nama_panggilan,
    e.departemen,
    pr.skor_kinerja,
    il.beban_pesan_masuk,
    COALESCE(db.jumlah_proyek_macet, 0) AS jumlah_proyek_macet
FROM 
    employees e
JOIN 
    performance_reviews pr ON e.employee_id = pr.employee_id
JOIN 
    Inbox_Load il ON e.employee_id = il.receiver_id 
LEFT JOIN
    Department_Bottleneck db ON e.departemen = db.departemen 
WHERE 
    pr.skor_kinerja < 90
ORDER BY 
    il.beban_pesan_masuk DESC, 
    pr.skor_kinerja ASC;
