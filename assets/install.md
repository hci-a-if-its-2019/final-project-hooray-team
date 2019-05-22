# How to install TCExam:

## Version 2 (New)
1. Download latest TCExam from github
2. Create user from phpmyadmin (password is required)
3. Unzip folder TCExam to xampp/htdocs
4. Open link *localhost/install/install.php*
5. Tick everything and give username/password as newly created user
6. First login as: admin/1234

## Version 1
1. Download TCExam versi 13.3.0 [Github](https://github.com/tecnickcom/tcexam/releases?after=14.0.3) sesuai dengan yang di Informatika 
2. Ganti password dari mysql jika masih kosong; cara menjalankannya masuk ke folder xampp/mysql/bin;
```
mysql - u root
UPDATE mysql.user SET Password=PASSWORD('root') WHERE User='root';
FLUSH PRIVILEGES;
quit;
```
3. Setelah quit, masuk lagi dengan user pass yang sudah update
4. Unzip folder TCExam 13.3.0 ke xampp/htdocs
5. Masuk ke *localhost/relative path di htdocs/install/install.php*
6. Centang semua, kemudian install
7. Login userpass: admin/1234
8. Buat [test](https://tcexam.org/docs/first_test/)

Coba cek [youtube](https://www.youtube.com/watch?v=Fj9Io6aoHag)

* Jika keluar Maximum [timeout](https://www.duniailkom.com/tutorial-php-mengatasi-fatal-error-maximum-execution-time-of-30-seconds-exceeded-di-xampp/) ketika membuat database 
1. Buka xampp, klik kanan di Apache config, pilih php.in
2. Cari maximum_execution_time diganti jadi 300
3. Restart Apache (Stop -> Start again)

## Connect with Database
1. Install [Phalcon](https://github.com/phalcon/cphalcon) version 3.4.3
2. Follow the tutorial and check phpinfo();
3. Open phpmyadmin create database *aplexam*
4. Import `aplexam.sql` to MySQL
5. Clone [APL-Exam](https://github.com/natashaval/APL-OAuth2-Server) to xampp/htdocs **Don't rename folder**
6. Test by enter in URL `http://localhost/apl/APL-OAuth2-Server/src/exam/api/module`. Is it returning data?
