
delimiter //
            

-- ------------ Write CREATE-DATABASE-stage scripts -----------

CREATE DATABASE IF NOT EXISTS Company_AWS_NY_dbo;//


delimiter ;
            


delimiter //
            

-- ------------ Write CREATE-TABLE-stage scripts -----------

CREATE TABLE Company_AWS_NY_dbo.Agents (
    Agent_code CHAR(6) NOT NULL,
    Agent_name CHAR(40) DEFAULT NULL,
    Working_area CHAR(35) DEFAULT NULL,
    Commision DECIMAL(10,2) DEFAULT NULL,
    Phone_no CHAR(15) DEFAULT NULL,
    Country VARCHAR(25) DEFAULT NULL,
PRIMARY KEY(Agent_code));//

CREATE TABLE Company_AWS_NY_dbo.Customer (
    Cust_code VARCHAR(6) NOT NULL,
    Cust_name VARCHAR(40) NOT NULL,
    Cust_city CHAR(35) DEFAULT NULL,
    Working_area VARCHAR(35) NOT NULL,
    Cust_country VARCHAR(20) NOT NULL,
    Grade DECIMAL(18,0) DEFAULT NULL,
    Opening_amt DECIMAL(12,2) NOT NULL,
    Receive_amt DECIMAL(12,2) NOT NULL,
    Payment_amt DECIMAL(12,2) NOT NULL,
    Outstanding_amt DECIMAL(12,2) NOT NULL,
    Phone_no VARCHAR(17) NOT NULL,
    Agent_code CHAR(6) NOT NULL,
PRIMARY KEY(Cust_code));//

CREATE TABLE Company_AWS_NY_dbo.Orders (
    Ord_num DECIMAL(6,0) NOT NULL,
    Ord_amount DECIMAL(12,2) NOT NULL,
    Advance_amount DECIMAL(12,2) NOT NULL,
    Ord_date DATE NOT NULL,
    Cust_code VARCHAR(6) NOT NULL,
    Agent_code CHAR(6) NOT NULL,
    Ord_description VARCHAR(60) NOT NULL,
PRIMARY KEY(Ord_num));//


delimiter ;
            


delimiter //
            

-- ------------ Write CREATE-FOREIGN-KEY-CONSTRAINT-stage scripts -----------

ALTER TABLE Company_AWS_NY_dbo.Customer
ADD CONSTRAINT FK__Customer__Agent___398D8EEE FOREIGN KEY  (Agent_code) 
REFERENCES company_aws_ny_dbo.Agents (Agent_code);//

ALTER TABLE Company_AWS_NY_dbo.Orders
ADD CONSTRAINT FK__Orders__Agent_co__412EB0B6 FOREIGN KEY  (Agent_code) 
REFERENCES company_aws_ny_dbo.Agents (Agent_code);//

ALTER TABLE Company_AWS_NY_dbo.Orders
ADD CONSTRAINT FK__Orders__Cust_cod__403A8C7D FOREIGN KEY  (Cust_code) 
REFERENCES company_aws_ny_dbo.Customer (Cust_code);//


delimiter ;
            

