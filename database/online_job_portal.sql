CREATE DATABASE IF NOT EXISTS online_job_portal;
USE online_job_portal;
CREATE TABLE users(user_id INT PRIMARY KEY AUTO_INCREMENT,name VARCHAR(100) NOT NULL,email VARCHAR(120) UNIQUE NOT NULL,password VARCHAR(100) NOT NULL,role VARCHAR(20) NOT NULL);
CREATE TABLE jobs(job_id INT PRIMARY KEY AUTO_INCREMENT,title VARCHAR(150) NOT NULL,description TEXT,company VARCHAR(150) NOT NULL,location VARCHAR(100),salary VARCHAR(50),employer_id INT,FOREIGN KEY(employer_id) REFERENCES users(user_id));
CREATE TABLE applications(application_id INT PRIMARY KEY AUTO_INCREMENT,job_id INT NOT NULL,job_seeker_id INT NOT NULL,application_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,status VARCHAR(30) DEFAULT 'Pending',FOREIGN KEY(job_id) REFERENCES jobs(job_id),FOREIGN KEY(job_seeker_id) REFERENCES users(user_id));
INSERT INTO users(name,email,password,role) VALUES('Demo Employer','employer@test.com','1234','EMPLOYER'),('Demo Seeker','seeker@test.com','1234','JOB_SEEKER');
INSERT INTO jobs(title,description,company,location,salary,employer_id) VALUES('Java Developer Intern','Work on Java web applications.','Tech Solutions','Noida','15000/month',1),('Frontend Developer Intern','Build responsive web pages.','WebWorks','Remote','12000/month',1);
