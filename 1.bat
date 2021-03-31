@echo off
echo Starting MariaDB Engine
cd "1. MARIADB\bin"
mysqld.exe --defaults-file="../config.ini" --console