alter session set NLS_DATE_FORMAT = 'mm/dd/yyyy';
create table store
	(store_id 	varchar(8),
	 address 	varchar(50),
	 zip_code 	numeric(5,0),
	 phone 		numeric(10,0),
	 primary key (store_id)
	);

create table inventory
	(item_num  		varchar(8),
	 sh_title  		varchar(8),
	 title		 	varchar(50),
	 description 	varchar(100),
	 quantity	 	numeric(6,0),
	 unit		 	varchar(8),
	 avg_cost	 	numeric(8,2),
	 unit_cost		numeric(8,2),
	 old_date	 	DATE,
	 min_level	 	numeric(6,0),
	 shelf_code	 	varchar(8),
	 primary key (item_num)
	 );

create table positions
	(pos_code	 	varchar(8),
	 title		 	varchar(50),
	 primary key (pos_code)
	);

create table skills
	(skill_id	 	varchar(8),
	 description 	varchar(100),
	 primary key (skill_id)
	);

create table customer
	(customer_no 	varchar(8),
	 firstname	 	varchar(50),
	 lastname	 	varchar(50),
	 address	 	varchar(50),
	 city		 	varchar(20),
	 state		 	varchar(2),
	 zip_code	 	numeric(5,0),
	 primary key (customer_no)
	);

create table supplier
	(sup_id 	varchar(8),
	 name	 	varchar(50),
	 address 	varchar(50),
	 phone	 	numeric(10,0),
	 primary key (sup_id)
	);

create table sales
	(invoice_num 	varchar(8),
	 sale_date	 	DATE,
	 item_num	 	varchar(8),
	 salequantity	 	numeric(6,0),
	 price		 	numeric(8,2),
	 note		 	varchar(100),
	 primary key (invoice_num),
	 foreign key (item_num) references inventory
	 	on delete cascade
	);

create table purchase
	(pur_num	 	varchar(8),
	 pur_date	 	DATE,
	 item_num	 	varchar(8),
	 purchasequantity	 	numeric(6,0),
	 unit_cost	 	numeric(8,2),
	 note		 	varchar(100),
	 primary key (pur_num),
	 foreign key (item_num) references inventory
	 	on delete cascade
	);

create table account_payable
	(sup_id	 	varchar(8),
	 balance 	numeric(8,2),
	 primary key (sup_id),
	 foreign key (sup_id) references supplier
	 	on delete cascade
	);

create table purchase_payment_record
	(sup_id	 	varchar(8),
	 pur_num 	varchar(8),
	 amount	 	numeric(8,2),
	 trans_type varchar(6)
	 	check (trans_type in ('credit', 'debit')), 
	 primary key (pur_num),
	 foreign key (sup_id) references supplier,
	 foreign key (pur_num) references purchase
	 	on delete cascade
	);

create table employees
	(empno	 		varchar(8),
	 firstname 		varchar(50),
	 lastname	 	varchar(50),
	 salary		 	numeric(10,2),
	 store_id	 	varchar(8),
	 pos_code	 	varchar(8),
	 primary key (empno),
	 foreign key (store_id) references store
	 	on delete cascade,
	 foreign key (pos_code) references positions
	 	on delete cascade
	);

create table store_inv
	(store_id 	varchar(8),
	 item_num 	varchar(8),
	 primary key (store_id, item_num),
	 foreign key (store_id) references store
	 	on delete cascade,
	 foreign key (item_num) references inventory
	 	on delete cascade
	);

create table sales_store
	(store_id 		varchar(8),
	 invoice_num 	varchar(8),
	 primary key (store_id, invoice_num),
	 foreign key (store_id) references store
	 	on delete cascade,
	 foreign key (invoice_num) references sales
	 	on delete cascade
	);

create table store_position_skill
	(pos_code 		varchar(8),
	 store_id 		varchar(8),
	 skill_id 		varchar(8),
	 primary key (pos_code, store_id, skill_id),
	 foreign key (pos_code) references positions
	 	on delete cascade,
	 foreign key (store_id) references store
	 	on delete cascade,
	 foreign key (skill_id) references skills
	 	on delete cascade
	);

create table emp_skill
	(empno	 	varchar(8),
	 skill_id 	varchar(8),
	 primary key (empno, skill_id),
	 foreign key (empno) references employees
	 	on delete cascade,
	 foreign key (skill_id) references skills
	 	on delete cascade
	);

create table customer_pur
	(customer_no 	varchar(8),
	 pur_num 		varchar(8),
	 primary key (customer_no, pur_num),
	 foreign key (customer_no) references customer
	 	on delete cascade,
	 foreign key (pur_num) references purchase
	 	on delete cascade
	);

create table store_supplier_sales
	(store_id 		varchar(8),
	 sup_id	 		varchar(8),
	 invoice_num 	varchar(8),
	 primary key (store_id, sup_id, invoice_num),
	 foreign key (store_id) references store
	 	on delete cascade,
	 foreign key (sup_id) references supplier
	 	on delete cascade,
	 foreign key (invoice_num) references sales
	 	on delete cascade
	);

create table emp_store
	(empno	 	varchar(8),
	 store_id 	varchar(8),
	 primary key (empno, store_id),
	 foreign key (empno) references employees
	 	on delete cascade,
	 foreign key (store_id) references store
	 	on delete cascade
	);

create table emp_position
	(empno	 	varchar(8),
	 pos_code 	varchar(8),
	 primary key (empno, pos_code),
	 foreign key (empno) references employees
	 	on delete cascade,
	 foreign key (pos_code) references positions
	 	on delete cascade
	);
