# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



CREATE TABLE OrgChart
 (emp  VARCHAR(32) PRIMARY KEY,
  boss VARCHAR(32),
  role VARCHAR(32) NOT NULL ); 

INSERT INTO OrgChart VALUES ('categories', NULL,  'big');
INSERT INTO OrgChart VALUES ('woman', 'categories', 'large');
INSERT INTO OrgChart VALUES ('man', 'categories', 'large');


INSERT INTO OrgChart VALUES ('tops', 'woman', 'medium');
INSERT INTO OrgChart VALUES ('t-shut', 'tops', 'small');


emp         boss         role
----        -----        ----
categories  NULL         big

woman       categories   large
man         categories   large

tops        woman        medium

tshut       tops         small
