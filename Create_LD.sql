create table gics
	(ID 	int primary key, 
	 Name 	varchar(50) 
	);
	
create table IndustryGroup
	(Indgid  int primary key,
     indgtitle  varchar(100),
     Parentid  int ,
     foreign key(parentid) references gics(ID)
    );

create table Industry
	(Indid  int primary key,
	 indtitle  varchar(100),
 	 parentid  int,
 	 foreign key(parentid) references IndustryGroup(Indgid)
	);

create table subIndustry
	(subid  int primary key,
	 subtitle  varchar(50),
     description  varchar(700),
     parentid int,
     foreign key(parentid) references Industry(Indid)
    );
   
create table company
    (comp_id  					int primary key, 
     street_number 				varchar(20),
     street_name 				varchar(50),
     unit_number 				varchar(10), 
     city 						varchar(20),
     state 						varchar(10), 
     zipcode 					int, 
     industry_group 			int, 
     sub_industry 				int, 
     website 					varchar(100),
     companyName                varchar(30),
     foreign key (industry_group) references IndustryGroup(Indgid),
     foreign key (sub_industry) references subIndustry(subid)
    );
    
create table position
    (pos_code 				varchar(10) primary key,
     title 					varchar(50),
     description 			varchar(500),
     pay_range_high 		float, 
     pay_range_low 			float
    );
	
create table job
    (job_code 				int primary key,
     pos_code  				varchar(10),
     emp_mode 				varchar(10),
     required_skills 		varchar(300),
     pay_rate 				varchar(20),
     pay_type 				varchar(20),
     company  				int, 
     cate_code 				varchar(20),
     foreign key(pos_code) references position (pos_code),
     foreign key(company) references company(comp_id)
    );

create table skill
    (sk_code 		varchar(10) primary key,
     title 			varchar(50),
     description    varchar(300), 
     level_id          varchar(20)
    );

create table person
    (per_id 			varchar(10) primary key, 
     name 				varchar(50),
     street_number 		int, 
     street_name        varchar(20), 
     unit_number        varchar(10),
     city               varchar(20), 
     state              varchar(10),
     zipcode            int,
     email              varchar(50), 
     gender             varchar(8), 
     phone              varchar(11)
    );

create table course
    (c_code 		varchar(10) primary key ,
     title 			varchar(50),
     level_id  		varchar(10),
     description  	varchar(300),
     status  		varchar(10), 
     retail_price  	float
    );

create table section
    (sec_no  				varchar(10),
     c_code  				varchar(10), 
     complete_date  			date, 
     year_id  					int, 
     offered_by  			varchar(30),
     format  				varchar(30),
     price 					float,
     primary key (sec_no,c_code,complete_date),
     foreign key (c_code) references course(c_code)
    );

create table hiring
	(pos_code  				varchar(10),
	 comp_id  				int,
     primary key (pos_code, comp_id),
     foreign key(pos_code) references position(pos_code),
     foreign key(comp_id) references company(comp_id)
    );

create table requires_by_job
    (job_code  				int,
     sk_code  				varchar(10),
     primary key(job_code,sk_code),
     foreign key(job_code) references job(job_code),
     foreign key(sk_code) references skill(sk_code)
    );
   
create table teaches
	(c_code  			varchar(10),
	 sk_code  			varchar(10),
     primary key(c_code,sk_code) ,
     foreign key(c_code) references course (c_code),
     foreign key(sk_code) references skill(sk_code)
    );

create table has_skill
    (per_id  			varchar(10),
     sk_code  			varchar(10),
	 primary key (per_id, sk_code),
     foreign key(per_id) references person(per_id),
     foreign key(sk_code) references skill(sk_code)
    );

create table works
    (per_id  			varchar(10),
     job_code  			int, 
     start_date  		date,
     end_date  			date,
	 primary key(per_id, job_code),
	 foreign key(per_id) references person(per_id),
	 foreign key(job_code) references job(job_code)
	);

create table takes
    (per_id  			varchar(10),
     c_code  			varchar(10),
     sec_no  			varchar(10), 
     complete_date 		date,
	 primary key (per_id, c_code,sec_no,complete_date),
	 foreign key(per_id) references person(per_id),
	 foreign key(sec_no,c_code,complete_date) references section(sec_no,c_code,complete_date)
	);

create table prerequisite
    (c_code 				varchar(10),
     required_code 			varchar(30),
	 primary key (c_code,required_code),
	 foreign key(c_code) references course(c_code),
	 foreign key(required_code) references course(c_code)
	 );
