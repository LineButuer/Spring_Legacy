# Spring_Legacy

![image](https://github.com/tiblo/Spring_Legacy/assets/34559256/e0c8ed8e-ac2d-4812-b90f-552ff163f270)

## MySQL 계정 및 공간 생성
```SQL
# root 계정으로 실행

create database if not exists movie_db;
create user if not exists db_user@localhost identified by '1234';
grant all privileges on movie_db.* to db_user@localhost;
ALTER USER 'db_user'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
FLUSH PRIVILEGES;

```
