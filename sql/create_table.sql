CREATE TABLE  Agents 
   (	
    Agent_code CHAR(6) NOT NULL PRIMARY KEY, 
	Agent_name CHAR(40), 
	Working_area CHAR(35), 
	Commision DECIMAL(10,2), 
	Phone_no CHAR(15), 
	Country VARCHAR(25)
    );
    
CREATE TABLE  Customer 
   (	Cust_code VARCHAR(6) NOT NULL PRIMARY KEY, 
	Cust_name VARCHAR(40) NOT NULL, 
	Cust_city CHAR(35), 
	Working_area VARCHAR(35) NOT NULL, 
	Cust_country VARCHAR(20) NOT NULL, 
	Grade DECIMAL, 
	Opening_amt DECIMAL(12,2) NOT NULL, 
	Receive_amt DECIMAL(12,2) NOT NULL, 
	Payment_amt DECIMAL(12,2) NOT NULL, 
	Outstanding_amt DECIMAL(12,2) NOT NULL, 
	Phone_no VARCHAR(17) NOT NULL, 
	Agent_code CHAR(6) NOT NULL REFERENCES Agents
); 

CREATE TABLE  Orders
   (
    Ord_num DECIMAL(6,0) NOT NULL PRIMARY KEY, 
	Ord_amount DECIMAL(12,2) NOT NULL, 
	Advance_amount DECIMAL(12,2) NOT NULL, 
	Ord_date DATE NOT NULL, 
	Cust_code VARCHAR(6) NOT NULL REFERENCES CUSTOMER, 
	Agent_code CHAR(6) NOT NULL REFERENCES AGENTS, 
	Ord_description VARCHAR(60) NOT NULL
   );