create table person
	(per_id			varchar(8),
	last_name		varchar(50),
	first_name		varchar(50),
	street_name		varchar(30),
	unit_number		varchar(8),
	street_number	varchar(8),
	city			varchar(30),
	state 			varchar(30),
	zip_code		numeric(5,0),
	email 			varchar(30),
	gender			varchar(6)
		check(gender in ('male', 'female')),
	phone			numeric(10,0),
	primary key		(per_id)
	);

create table factory
	(fac_id			varchar(8),
	 fac_name		varchar(50),
	 address		varchar(50),
	 zip_code		numeric(5,0),
	 phone			numeric(10,0),
	 manager		varchar(8),
	 primary key 	(fac_id),
	 foreign key 	(manager) references person(per_id)
	);

create table customer
	(cus_id			varchar(8),
 	 contact_person	varchar(50),
 	 contact_email	varchar(30),
 	 primary key	(cus_id)
 	 );

create table material
	(m_code			varchar(8),
	 m_name			varchar(50),
	 quantity		numeric(8,2),
	 unit 			varchar(20),
	 min_level		numeric(10,0),
	 primary key 	(m_code)
	 );

create table product
	(p_code 		varchar(8),
	 p_name 		varchar(30),
	 description	varchar(100),
	 quantity		numeric(8,2),
	 unit 			varchar(20),
	 avg_cost 		numeric(10,2),
	 primary key	(p_code)
	 );

create table position
	(pos_code 		varchar(8),
	 title 			varchar(30),
	 description 	varchar(100),
	 pay_range_high numeric(8,2),
	 pay_range_low  numeric(8,2),
	 primary key 	(pos_code)
	);


create table skill
	(sk_code		varchar(8),
	 title			varchar(30),
	 description	varchar(100),
	 sk_level 			varchar(20),
	 primary key	(sk_code)
	 );

create table supplier
	(sup_id 		varchar(8),
	 website		varchar(30),
	 email 			varchar(30),
	 primary key 	(sup_id)
	 );


create table contract 
	(contract_id	varchar(8),
	 cus_id			varchar(8),
	 cont_date		date,
	 sale_amount	numeric(10,2),
	 pay_schedule	date,
	 primary key (contract_id),
	 foreign key (cus_id) references customer
	 );

create table job 
	(job_code		varchar(8),
	 pos_code		varchar(8),
	 emp_mode		varchar(9)
	 	check (emp_mode in ('full-time', 'part-time')),
	 required_skills varchar(100),
	 pay_type		varchar(6)
	 	check (pay_type in ('wage', 'salary')),
	 pay_rate		numeric(8,2),
	 company		varchar(50),
	 cate_code		varchar(8),
	 primary key 	(job_code),
	 foreign key	(pos_code) references position,
	 foreign key	(required_skills) references skill(sk_code)
	 );

create table purchase
	(purchase_num 	varchar(8),
	 sup_id 		varchar(8),
	 sup_order_num  varchar(8),
	 book_date		date,
	 pay_date		date,
	 note			varchar(100),
	 primary key	(purchase_num),
	 foreign key	(sup_id) references supplier
	 );


create table available 
	(pos_code 		varchar(8),
	 job_code 		varchar(8),
	 primary key	(pos_code, job_code),
	 foreign key 	(pos_code) references position,
	 foreign key	(job_code) references job
	 );

create table con_includes
	(contract_id 	varchar(8),
	 p_code 		varchar(8),
	 primary key	(contract_id, p_code),
	 foreign key	(contract_id) references contract,
	 foreign key	(p_code) references position
	 );

create table cust_purchases
	(comp_id		varchar(8),
	 contract_id 	varchar(8),
	 primary key	(comp_id, contract_id),
	 foreign key 	(comp_id) references customer(cus_id),
	 foreign key	(contract_id) references contract
	 );

create table employs
	(fac_id			varchar(8),
	 per_id			varchar(8),
	 salary         float,
	 primary key 	(fac_id,per_id),
	 foreign key	(fac_id) references factory,
	 foreign key	(per_id)	references person
	 );

create table has_skill
	(per_id			varchar(8),
	 sk_code		varchar(8),
	 primary key 	(per_id, sk_code),
	 foreign key	(per_id) references person,
	 foreign key	(sk_code)	references skill
	 );

create table line_item
	(fac_id         varchar(8),
  	 contract_id	varchar(8),
	 p_code			varchar(8),
	 quantity		numeric(9,2),
	 primary key 	(fac_id,contract_id, p_code),
	 foreign key	(contract_id) references contract,
	 foreign key	(p_code)	references product,
	 foreign key    (fac_id) references factory
	 );
	 
create table made_with
	(p_code			varchar(8),
	 m_code			varchar(8),
	 primary key 	(p_code, m_code),
	 foreign key	(p_code) references product,
	 foreign key	(m_code)	references material
	 );

create table makes
	(fac_id			varchar(8),
	 p_code			varchar(8),
	 primary key 	(fac_id,p_code),
	 foreign key	(fac_id) references factory,
	 foreign key	(p_code)	references product
	 );

create table orders_from
	(comp_id		varchar(8),
	 fac_id			varchar(8),
	 primary key 	(comp_id, fac_id),
	 foreign key	(comp_id) references customer(cus_id) ,
	 foreign key	(fac_id)	references factory
	 );

create table put_line_item
	(purchase_num	varchar(8),
	 m_code			varchar(8),
	 quantity		numeric(9,2),
	 primary key 	(purchase_num, m_code),
	 foreign key	(purchase_num) references purchase,
	 foreign key	(m_code)	references material
	 );

create table required_by_job
	(sk_code		varchar(8),
	 job_code		varchar(8),
	 primary key 	(sk_code,job_code),
	 foreign key	(sk_code) references skill ,
	 foreign key	(job_code)	references job
	 );

create table required_by_pos
	(sk_code		varchar(8),
	 pos_code		varchar(8),
	 primary key 	(sk_code,pos_code),
	 foreign key	(sk_code) references skill ,
	 foreign key	(pos_code)	references position
	 );

create table sup_purchases
	(purchase_num	varchar(8),
	 comp_id		varchar(8),
	 primary key 	(purchase_num,comp_id),
	 foreign key	(purchase_num) references purchase ,
	 foreign key	(comp_id)	references customer(cus_id)
	 );

create table supplied_by
	(m_code			varchar(8),
	 comp_id		varchar(8),
	 primary key 	(m_code,comp_id),
	 foreign key	(m_code) references material ,
	 foreign key	(comp_id)	references customer(cus_id)
	 );

create table works
	(per_id			varchar(8),
	 job_code		varchar(8),
	 start_date		date,
	 end_date		date,
	 primary key	(per_id,job_code, start_date),
	 foreign key	(per_id)	references person,
	 foreign key	(job_code)	references job
	 );

