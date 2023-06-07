-- MySQL 버전
CREATE DATABASE WEATHER DEFAULT CHARSET=utf8 collate=utf8_bin;

USE WEATHER;

-- USER
CREATE TABLE USERLIST(
    User_id VARCHAR(50) UNIQUE NOT NULL,
    PW VARCHAR(256) NOT NULL,
    Uniq_id BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nickname VARCHAR(15) NOT NULL,
    Fvweather VARCHAR(50),
    Available VARCHAR(1) DEFAULT 'Y' NOT NULL
);

-- WTYPE
CREATE TABLE WTYPE(
    Wcode VARCHAR(10) NOT NULL,
    Message VARCHAR(30) NOT NULL,
    Wname VARCHAR(20) NOT NULL,
    PRIMARY KEY(Wcode)
);

-- WEATEHR_RECORD
CREATE TABLE WEATHER_RECORD(
    Uuid BIGINT NOT NULL,
    Rdate DATETIME NOT NULL,
    Rmd VARCHAR(15),
    Address VARCHAR(50),
    Wmsg VARCHAR(30),
    Temp DECIMAL(3,1),
    Tfeel VARCHAR(30),
    Humidity  INT,
    Hfeel VARCHAR(30),
    Precipitation DECIMAL(5,1),
    Pfeel VARCHAR(30),
    PRIMARY KEY(Uuid,Rdate)
);
ALTER TABLE WEATHER_RECORD ADD FOREIGN KEY(Uuid) REFERENCES USERLIST(Uniq_id) ON DELETE CASCADE;

CREATE TABLE REVIEW(
	Uuid bigint NOT NULL,
    Rdate datetime NOT NULL,
    Stars int,
    Comments VARCHAR(100),
    PRIMARY KEY(Uuid, Rdate)
);
ALTER TABLE REVIEW ADD FOREIGN KEY(Uuid) references userlist(Uniq_id);

COMMIT;
