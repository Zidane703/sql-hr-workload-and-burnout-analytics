# 👥 HR Analytics: Employee Workload & Burnout Risk Prediction 

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![HR Analytics](https://img.shields.io/badge/HR_Analytics-005571?style=for-the-badge&logo=google-analytics&logoColor=white)
![Data Analytics](https://img.shields.io/badge/Data_Analytics-FFB900?style=for-the-badge&logo=powerbi&logoColor=black)

## 📌 Executive Summary
Proyek portofolio analitik ini dirancang untuk menyelesaikan tantangan nyata di bidang Sumber Daya Manusia (HR). Melalui manipulasi data relasional dengan **PostgreSQL**, proyek ini menganalisis pola komunikasi internal (aplikasi pesan), beban operasional lintas departemen, dan memetakan dampaknya terhadap skor kinerja karyawan untuk memprediksi risiko kelelahan kerja (*burnout*).

## 🎯 Business Problems Solved
- **Communication Overload:** Mengukur metrik "inbox fatigue" dengan mendeteksi karyawan yang menerima volume pesan internal di atas rata-rata operasional harian.
- **Workflow Bottlenecks:** Memetakan departemen mana saja yang memiliki rasio proyek berstatus "Tertunda" tertinggi.
- **Burnout Risk Prediction:** Menganalisis korelasi hipotesis antara tingginya beban pesan masuk, keberadaan proyek tertunda di departemen, dan penurunan skor kinerja (< 90).

---

## 📂 Repository Structure

| File | Deskripsi | Fokus Utama |
| :--- | :--- | :--- |
| `01_setup_database.sql` | Schema & Master Data | DDL & DML untuk tabel `messages`, `employees`, `projects`, dan `performance_reviews`. |
| `02_communication_metrics.sql` | Metrik Deskriptif | Penggunaan Agregasi dan *Subqueries* untuk menghitung metrik rata-rata pesan. |
| `03_burnout_risk_analysis.sql` | Analisis Preskriptif | Implementasi *Advanced Common Table Expressions (CTE)* berantai dan `Multiple JOINs` untuk menyusun laporan risiko *burnout*. |

---

## 💡 Key SQL Techniques Demonstrated
- **Advanced CTEs (Common Table Expressions):** Mengeksekusi multi-tahap transformasi data dengan `WITH` clause untuk menjaga kebersihan kode.
- **Data Aggregation & Grouping:** Menggunakan `COUNT()` dan `AVG()` untuk menemukan *baseline* perusahaan.
- **Relational JOINs:** Menghubungkan metrik interaksi, data HRIS, dan manajemen proyek ke dalam satu tampilan analitik yang komprehensif.

---

## 👨‍💻 Author
**Lalu Zidane Alif Akbar**
*Data Enthusiast | SQL | HR & Business Analytics*
