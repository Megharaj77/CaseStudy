create table role(ID int(2) primary key,
                  NAME varchar(25));
                  
desc role;

create table user(ID int(5) primary key,
                  NAME varchar(25),
                  PASSWD varchar(25),
                  ROLE_ID int(2),
                  foreign key(ROLE_ID) references role(ID));
                  
desc user;


create table request_type(ID int(2) primary key,
						TYPEDESC varchar(25));
                        
desc request_type;

create table status(ID int(2) primary key,
                    STSDESC varchar(2));
                    
desc status;

create table location(LOC_ID int primary key,
					  Location_Name varchar(25));
                      
desc location;

create table department(DEPT_ID int primary key,
                        Department_Name varchar(25));
                        
desc department;

create table sr_details(REQ_ID int(4) zerofill primary key auto_increment,
                        USER_ID int(5),
                        LOC_ID int,
                        CUBICAL_NO int(4),
                        DEPT_ID int,
                        REQUIRED_BY_DATE date,
                        REQ_TYPEID int(2),
                        REJECTION_REASON varchar(25),
                        CANCELLATION_REASON varchar(25),
                        REQUESTED_DATE date,
                        ASSIGNED_DATE date,
                        COMMITTED_DATE date,
                        COMPLETED_DATE date,
                        JUSTIFICATION varchar(25),
                        STATUS_ID int(2),
                        foreign key(USER_ID) references user(ID),
                        foreign key(REQ_TYPEID) references request_type(ID),
                        foreign key(STATUS_ID) references status(ID),
                        foreign key(LOC_ID) references location(LOC_ID),
                        foreign key(DEPT_ID) references department(DEPT_ID));
                        
                        
desc sr_details;


