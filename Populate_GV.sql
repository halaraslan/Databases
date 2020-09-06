delete from works;
delete from supplied_by;
delete from sup_purchases;
delete from required_by_pos;
delete from required_by_job;
delete from put_line_item;
delete from orders_from;
delete from makes;
delete from made_with;
delete from line_item;
delete from has_skill;
delete from employs;
delete from cust_purchases;
delete from con_includes;
delete from available;
delete from purchase;
delete from job;
delete from contract;
delete from supplier;
delete from skill;
delete from position;
delete from product;
delete from material;
delete from customer;
delete from factory;
delete from person;

alter session set NLS_DATE_FORMAT = 'mm/dd/yyyy';

Insert into person values('#P1','Gillespie','Jordan','Bundick',NULL,12,'Kenner','Louisiana',70065,'jpgilles@uno.edu','male',5049575700 );
Insert into person values('#P2','Apple','Jordan','Yunman',NULL,123,'Kenner','Louisiana',70065,'jpapple@uno.edu','male',5049575701 );
Insert into person values('#P3','Jo','Jordan','Lafourche',NULL,125,'Kenner','Louisiana',70065,'jpjo@uno.edu','male',5049575702 );
Insert into person values('#P4','Gillespie','Jennifer','Bundick',NULL,12,'Kenner','Louisiana',70065,'jegilles@uno.edu','female',5049575703 );
Insert into person values('#P5','Johnson','Bob','East Grandlake',NULL,3600,'Kenner','Louisiana',70065,'bbjohns@aol.com','male',5044032001 );
Insert into person values('#P6','Gillespie','Jennifer','Bundick',NULL,12,'Kenner','Louisiana',70065,'jegilles@uno.edu','female',5049575703 );
Insert into person values('#P7','Bonner','Betty','Harring',NULL,2100,'New Orleans','Louisiana',70062,'bbetty@aol.com','female',5044562635 );
Insert into person values('#P8','Bono','Gary','Yunman',NULL,120,'Kenner','Louisiana',70065,'bgary@aol.com','male',5049910000 );
Insert into person values('#P9','Jo','Jan','Lafourche',NULL,123,'Kenner','Louisiana',70065,'janjo@bellsouth.net','female',5049575709 );
Insert into person values('#P10','Gillespie','Not','Bundick',NULL,12,'Kenner','Louisiana',70065,'nogilles@uno.edu','female',5049574710 );
Insert into person values('#P11','Johnson','Fred','West Grandlake',NULL,3600,'Kenner','Louisiana',70065,'FredJoh@aol.com','male',5044132101 );
Insert into person values('#P12','Teoame','Jen','Haynes',NULL,1212,'New Orleans','Louisiana',70062,'teoJen@aol.com','female',5049573713 );

Insert into factory values('#Fac1','car_factory','1200 Loyola Ave_New Orleans_La', 70062, 5048888888,'#P1');
Insert into factory values('#Fac2','engine_factory','1000 Tulane Ave_New Orleans_La',70062, 5048818888,'#P1');
Insert into factory values('#Fac3','wheelbarrow_factory','1200 Haynes Ave_New Orleans_La',70062,5048808888,'#P5');
Insert into factory values('#Fac4','skateboard_factory','2400 Lake Ave_New Orleans_La',70062,5048898888,'#P9');


Insert into customer values('#C1','John', 'john1@gmail.com');
Insert into customer values('#C2','Ed', 'Ed2@gmail.com');
Insert into customer values('#C3','Edward', 'Edward3@gmail.com');
Insert into customer values('#C4','Tammy','Tammy4@gmail.com');
Insert into customer values('#C5','Fred','Fred5@gmail.com');
Insert into customer values('#C6','Johnny','Johnny6@gmail.com');
Insert into customer values('#C7','Ashley','Ashley7@gmail.com');
Insert into customer values('#C8','Teddy','Teddy8@gmail.com');
Insert into customer values('#C9','Jordan','Jordan9@gmail.com');
Insert into customer values('#C10','Tod','Tod10@gmail.com');
Insert into customer values('#C11','Dusty','Dusty11@gmail.com');
Insert into customer values('#C12','Joe','Joe12@gmail.com');
Insert into customer values('#C13','Phil','Phil13@gmail.com');
Insert into customer values('#C14','Jen','Jen14@gmail.com');
Insert into customer values('#C15','Chad','Chad15@gmail.com');
Insert into customer values('#C16','Leandro','Leandro16@gmail.com');
Insert into customer values('#C17','Ian','Ian17@gmail.com');
Insert into customer values('#C18','Brad','Brad18@gmail.com');
Insert into customer values('#C19','Tommy','Tommy19@gmail.com');
Insert into customer values('#C20','Rebecca','Rebecca20@gmail.com');

Insert into material values('#Mat1','front_drive_door',1000,NULL,50);
Insert into material values('#Mat2','front_pass_door',1000,NULL,50);
Insert into material values('#Mat3','back_drive_door',1000,NULL,50);
Insert into material values('#Mat4','back_pass_door',1000,NULL,50);
Insert into material values('#Mat5','vehicle_body',1000,NULL,50);
Insert into material values('#Mat6','trunk_lid',1000,NULL,50);
Insert into material values('#Mat7','rear_bumper',1000,NULL,50);
Insert into material values('#Mat8','front_bump',1000,NULL,50);
Insert into material values('#Mat9','hood',1000,NULL,50);
Insert into material values('#Mat10','chasis',1000,NULL,50);
Insert into material values('#Mat11','bolt',4000,NULL,200);
Insert into material values('#Mat12','washer',4000,NULL,200);
Insert into material values('#Mat13','value_cover',1000,NULL,50);
Insert into material values('#Mat14','exhaust_manifold',1000,NULL,50);
Insert into material values('#Mat15','ac_compressor',1000,NULL,50);
Insert into material values('#Mat16','belt_tensioner',1000,NULL,50);
Insert into material values('#Mat17','belt',1000,NULL,50);
Insert into material values('#Mat18','power_steering_pump',1000,NULL,50);
Insert into material values('#Mat19','alterinator',1000,NULL,50);
Insert into material values('#Mat20','oil_filter',1000,NULL,50);
Insert into material values('#Mat21','oil_pan',1000,NULL,50);
Insert into material values('#Mat22','water_pump',1000,NULL,50);
Insert into material values('#Mat23','harmonic_balancer',1000,NULL,50);
Insert into material values('#Mat24','engine_bolt',4000,NULL,200);
Insert into material values('#Mat25','enginer_washer',4000,NULL,200);
Insert into material values('#Mat26','wb_axle',500,NULL,25);
Insert into material values('#Mat27','wb_spacer',500,NULL,25);
Insert into material values('#Mat28','wb_axle_bracket',500,NULL,25);
Insert into material values('#Mat29','wb_leg_braces',500,NULL,25);
Insert into material values('#Mat30','2_inch_bolt',2000,'inch',100);
Insert into material values('#Mat31','wb_wheelguard',1000,NULL,25);
Insert into material values('#Mat32','3_inch_bolt',500,'inch',25);
Insert into material values('#Mat33','5_inch_bolt',500,'inch',25);
Insert into material values('#Mat34','sk_wheel',4000,NULL,200);
Insert into material values('#Mat35','sk_board',4000,NULL,200);
Insert into material values('#Mat36','sk_axle',4000,NULL,200);
Insert into material values('#Mat37','sk_screw',12000,NULL,800);
Insert into material values('#Mat38','sk_rim',12000,NULL,800);
Insert into material values('#Mat39','sk_tire',12000,NULL,800);

Insert into product values('#Prd01','car', 'body',1.0,NULL,20000.00);
Insert into product values('#Prd02','engine',NULL,1.0,NULL,3800.00);
Insert into product values('#Prd03','wheelbarrow',NULL,1.0,NULL,80.00);
Insert into product values('#Prd04','skateboard',NULL,1.0,NULL,120.00);

Insert into position values('#Pos0001','Factory_Manager','Oversee the operations of the factory',100000.00,80000.00);
Insert into position values('#Pos0002','Factory_engineer','Oversees the engineering of the factory operations',120000.00,145000.00);
Insert into position values('#Pos0003','Factory_dockworker','Oversees the delivery of freight',65000.00,60000.00);
Insert into position values('#Pos0004','Factory_janitor','Oversees the cleaning of the factory',36000.00,43000.00);

Insert into skill values('#SK-BM1','Business_Management','Management of Business',1);
Insert into skill values('#SK-ME1','Mechnical_Engineering','Study of Mechnical Engineering',1);
Insert into skill values('#SK-C02','C02_Fill_Operator','C02 operator to fill tanks',1);
Insert into skill values('#SK-HC1','Hazard_Cleaning','Study of hazard cleaning',1);

Insert into supplier values('#Sup1','car.com', 'car@car.com');
Insert into supplier values('#Sup2','engine.com','engine@engine.com');
Insert into supplier values('#Sup3','wheelbarrow.com','wb@wheelbarrow.com');
Insert into supplier values('#Sup4','skateboard.com','sk@skateboard.com');

Insert into contract values('#Con1','#C1','04/10/2018',120000.00,'05/10/2020');
Insert into contract values('#Con2','#C2','04/10/2020',640000.00,'05/10/2020');
Insert into contract values('#Con3','#C3','04/10/2020',76000.00,'05/10/2020');
Insert into contract values('#Con4','#C4','04/10/2018',400000.00,'05/10/2020');
Insert into contract values('#Con5','#C5','04/10/2020',4000000.00,'05/10/2020');
Insert into contract values('#Con6','#C6','03/10/2018',380000.00,'05/10/2020');
Insert into contract values('#Con7','#C7','04/10/2020',8000.00,'05/10/2020');
Insert into contract values('#Con8','#C8','04/10/2020',12000.00,'05/10/2020');
Insert into contract values('#Con9','#C9','05/10/2018',12000.00,'05/10/2020');
Insert into contract values('#Con10','#C10','04/10/2018',12000.00,'05/10/2020');


Insert into job values('#Job0001','#Pos0001','full-time','#SK-BM1','salary',50.00,'Factory1-4',00001);
Insert into job values('#Job0002','#Pos0002','full-time','#SK-ME1','salary',40.00,'Factory1-4',00002);
Insert into job values('#Job0003','#Pos0003','full-time','#SK-C02','wage',35.00,'Factory1-4',00003);
Insert into job values('#Job0004','#Pos0004','full-time','#SK-HC1','wage',17.00,'Factory1-4',00004);


Insert into purchase values('#Pur1','#Sup1','#PO1','04/01/2018','12/01/2018','car parts' );
Insert into purchase values('#Pur2','#Sup1','#PO1','04/01/2020','06/01/2020', 'car parts');
Insert into purchase values('#Pur3','#Sup2','#PO2','04/01/2020','06/01/2020', 'engine parts');
Insert into purchase values('#Pur4','#Sup2','#PO2','04/01/2018','11/01/2018', 'engine parts');
Insert into purchase values('#Pur5','#Sup3','#PO1','04/01/2020','06/01/2020','wheelbarrow parts' );
Insert into purchase values('#Pur6','#Sup3','#PO2','04/01/2018','10/01/2018', 'wheelbarrow parts');
Insert into purchase values('#Pur7','#Sup4','#PO1','04/01/2020','06/01/2020', 'skateboard parts');
Insert into purchase values('#Pur8','#Sup4','#PO2','07/01/2018','11/01/2018', 'skateboard parts' );

Insert into available values('#Pos0001','#Job0001');
Insert into available values('#Pos0002','#Job0002');
Insert into available values('#Pos0003','#Job0003');
Insert into available values('#Pos0004','#Job0004');

Insert into con_includes values('#Con1','#Pos0004');
Insert into con_includes values('#Con2','#Pos0003');
Insert into con_includes values('#Con3','#Pos0002');
Insert into con_includes values('#Con4','#Pos0001');
Insert into con_includes values('#Con5','#Pos0001');
Insert into con_includes values('#Con6','#Pos0002');
Insert into con_includes values('#Con7','#Pos0003');
Insert into con_includes values('#Con8','#Pos0004');
Insert into con_includes values('#Con9','#Pos0002');
Insert into con_includes values('#Con10','#Pos0001');


Insert into cust_purchases values('#C1','#Con8');
Insert into cust_purchases values('#C2','#Con7');
Insert into cust_purchases values('#C3','#Con6');
Insert into cust_purchases values('#C4','#Con5');
Insert into cust_purchases values('#C5','#Con4');
Insert into cust_purchases values('#C6','#Con3');
Insert into cust_purchases values('#C7','#Con2');
Insert into cust_purchases values('#C8','#Con1');
Insert into cust_purchases values('#C10','#Con9');
Insert into cust_purchases values('#C11','#Con10');


Insert into employs values('#Fac1','#P1',1200);
Insert into employs values('#Fac1','#P2',3400);
Insert into employs values('#Fac1','#P3',2200);
Insert into employs values('#Fac2','#P4',3100);
Insert into employs values('#Fac2','#P5',3500);
Insert into employs values('#Fac2','#P6',1300);
Insert into employs values('#Fac3','#P7',1400);
Insert into employs values('#Fac3','#P8',5000);
Insert into employs values('#Fac3','#P9',4000);
Insert into employs values('#Fac4','#P10',1100);
Insert into employs values('#Fac4','#P11',2100);
Insert into employs values('#Fac4','#P12',7000);


Insert into has_skill values('#P1','#SK-BM1');
Insert into has_skill values('#P2','#SK-ME1');
Insert into has_skill values('#P3','#SK-C02');
Insert into has_skill values('#P4','#SK-HC1');
Insert into has_skill values('#P5','#SK-BM1');
Insert into has_skill values('#P6','#SK-ME1');
Insert into has_skill values('#P7','#SK-C02');
Insert into has_skill values('#P8','#SK-HC1');
Insert into has_skill values('#P9','#SK-BM1');
Insert into has_skill values('#P10','#SK-ME1');
Insert into has_skill values('#P11','#SK-C02');
Insert into has_skill values('#P12','#SK-HC1');

Insert into line_item values('#Fac1','#Con1','#Prd04',1000);
Insert into line_item values('#Fac2','#Con2','#Prd03',8000);
Insert into line_item values('#Fac2','#Con3','#Prd02',20);
Insert into line_item values('#Fac3','#Con4','#Prd01',20);
Insert into line_item values('#Fac4','#Con5','#Prd01',200);
Insert into line_item values('#Fac1','#Con6','#Prd02',100);
Insert into line_item values('#Fac3','#Con7','#Prd03',100);
Insert into line_item values('#Fac4','#Con8','#Prd04',100);
Insert into line_item values('#Fac2','#Con9','#Prd04',200);
Insert into line_item values('#Fac3','#Con10','#Prd04',200);


Insert into made_with values('#Prd01','#Mat1');
Insert into made_with values('#Prd01','#Mat2');
Insert into made_with values('#Prd01','#Mat3');
Insert into made_with values('#Prd01','#Mat4');
Insert into made_with values('#Prd01','#Mat5');
Insert into made_with values('#Prd01','#Mat6');
Insert into made_with values('#Prd01','#Mat7');
Insert into made_with values('#Prd01','#Mat8');
Insert into made_with values('#Prd01','#Mat9');
Insert into made_with values('#Prd01','#Mat10');
Insert into made_with values('#Prd01','#Mat11');
Insert into made_with values('#Prd01','#Mat12');
Insert into made_with values('#Prd02','#Mat13');
Insert into made_with values('#Prd02','#Mat14');
Insert into made_with values('#Prd02','#Mat15');
Insert into made_with values('#Prd02','#Mat16');
Insert into made_with values('#Prd02','#Mat17');
Insert into made_with values('#Prd02','#Mat18');
Insert into made_with values('#Prd02','#Mat19');
Insert into made_with values('#Prd02','#Mat20');
Insert into made_with values('#Prd02','#Mat21');
Insert into made_with values('#Prd02','#Mat22');
Insert into made_with values('#Prd02','#Mat23');
Insert into made_with values('#Prd02','#Mat24');
Insert into made_with values('#Prd02','#Mat25');
Insert into made_with values('#Prd03','#Mat26');
Insert into made_with values('#Prd03','#Mat27');
Insert into made_with values('#Prd03','#Mat28');
Insert into made_with values('#Prd03','#Mat29');
Insert into made_with values('#Prd03','#Mat30');
Insert into made_with values('#Prd03','#Mat31');
Insert into made_with values('#Prd03','#Mat32');
Insert into made_with values('#Prd03','#Mat33');
Insert into made_with values('#Prd04','#Mat34');
Insert into made_with values('#Prd04','#Mat35');
Insert into made_with values('#Prd04','#Mat36');
Insert into made_with values('#Prd04','#Mat37');
Insert into made_with values('#Prd04','#Mat38');
Insert into made_with values('#Prd04','#Mat39');


Insert into makes values('#Fac1','#Prd01');
Insert into makes values('#Fac2','#Prd02');
Insert into makes values('#Fac3','#Prd03');
Insert into makes values('#Fac4','#Prd04');


Insert into orders_from values('#C1','#Fac1');
Insert into orders_from values('#C2','#Fac1');
Insert into orders_from values('#C3','#Fac2');
Insert into orders_from values('#C4','#Fac2');
Insert into orders_from values('#C5','#Fac3');
Insert into orders_from values('#C6','#Fac3');
Insert into orders_from values('#C7','#Fac4');
Insert into orders_from values('#C8','#Fac4');


Insert into put_line_item values('#Pur1','#Mat1',1800);
Insert into put_line_item values('#Pur1','#Mat2',1500);
Insert into put_line_item values('#Pur1','#Mat3',1000);
Insert into put_line_item values('#Pur1','#Mat4',500);
Insert into put_line_item values('#Pur1','#Mat5',500);
Insert into put_line_item values('#Pur1','#Mat6',500);
Insert into put_line_item values('#Pur2','#Mat7',1000);
Insert into put_line_item values('#Pur2','#Mat8',500);
Insert into put_line_item values('#Pur2','#Mat9',500);
Insert into put_line_item values('#Pur2','#Mat10',500);
Insert into put_line_item values('#Pur2','#Mat11',500);
Insert into put_line_item values('#Pur2','#Mat12',500);
Insert into put_line_item values('#Pur3','#Mat13',200);
Insert into put_line_item values('#Pur3','#Mat14',200);
Insert into put_line_item values('#Pur3','#Mat15',200);
Insert into put_line_item values('#Pur3','#Mat16',125);
Insert into put_line_item values('#Pur3','#Mat17',130);
Insert into put_line_item values('#Pur4','#Mat18',124);
Insert into put_line_item values('#Pur4','#Mat19',110);
Insert into put_line_item values('#Pur4','#Mat20',100);
Insert into put_line_item values('#Pur4','#Mat21',86);
Insert into put_line_item values('#Pur3','#Mat22',57);
Insert into put_line_item values('#Pur3','#Mat23',100);
Insert into put_line_item values('#Pur4','#Mat24',105);
Insert into put_line_item values('#Pur4','#Mat25',110);
Insert into put_line_item values('#Pur5','#Mat26',100);
Insert into put_line_item values('#Pur5','#Mat27',75);
Insert into put_line_item values('#Pur5','#Mat28',80);
Insert into put_line_item values('#Pur6','#Mat29',100);
Insert into put_line_item values('#Pur6','#Mat30',100);
Insert into put_line_item values('#Pur6','#Mat31',30);
Insert into put_line_item values('#Pur5','#Mat32',40);
Insert into put_line_item values('#Pur5','#Mat33',100);
Insert into put_line_item values('#Pur7','#Mat34',200);
Insert into put_line_item values('#Pur7','#Mat35',210);
Insert into put_line_item values('#Pur7','#Mat36',205);
Insert into put_line_item values('#Pur8','#Mat37',300);
Insert into put_line_item values('#Pur8','#Mat38',200);
Insert into put_line_item values('#Pur8','#Mat39',200);

Insert into required_by_job values('#SK-BM1','#Job0001');
Insert into required_by_job values('#SK-ME1','#Job0002');
Insert into required_by_job values('#SK-C02','#Job0003');
Insert into required_by_job values('#SK-HC1','#Job0004');

Insert into required_by_pos values('#SK-BM1','#Pos0001');
Insert into required_by_pos values('#SK-ME1','#Pos0002');
Insert into required_by_pos values('#SK-C02','#Pos0003');
Insert into required_by_pos values('#SK-HC1','#Pos0004');
Insert into required_by_pos values('#SK-ME1','#Pos0001');
Insert into required_by_pos values('#SK-HC1','#Pos0003');


Insert into sup_purchases values('#Pur1','#C1');
Insert into sup_purchases values('#Pur2','#C2');
Insert into sup_purchases values('#Pur3','#C3');
Insert into sup_purchases values('#Pur4','#C4');
Insert into sup_purchases values('#Pur5','#C5');
Insert into sup_purchases values('#Pur6','#C6');
Insert into sup_purchases values('#Pur7','#C7');
Insert into sup_purchases values('#Pur8','#C8');

Insert into supplied_by values('#Mat1','#C1');
Insert into supplied_by values('#Mat2','#C1');
Insert into supplied_by values('#Mat3','#C1');
Insert into supplied_by values('#Mat4','#C1');
Insert into supplied_by values('#Mat5','#C1');
Insert into supplied_by values('#Mat6','#C1');
Insert into supplied_by values('#Mat7','#C1');
Insert into supplied_by values('#Mat8','#C2');
Insert into supplied_by values('#Mat9','#C2');
Insert into supplied_by values('#Mat10','#C2');
Insert into supplied_by values('#Mat11','#C3');
Insert into supplied_by values('#Mat12','#C3');
Insert into supplied_by values('#Mat13','#C3');
Insert into supplied_by values('#Mat14','#C3');
Insert into supplied_by values('#Mat15','#C3');
Insert into supplied_by values('#Mat16','#C3');
Insert into supplied_by values('#Mat17','#C3');
Insert into supplied_by values('#Mat18','#C3');
Insert into supplied_by values('#Mat19','#C4');
Insert into supplied_by values('#Mat20','#C4');
Insert into supplied_by values('#Mat21','#C4');
Insert into supplied_by values('#Mat22','#C2');
Insert into supplied_by values('#Mat23','#C2');
Insert into supplied_by values('#Mat24','#C2');
Insert into supplied_by values('#Mat25','#C2');
Insert into supplied_by values('#Mat26','#C2');
Insert into supplied_by values('#Mat27','#C2');
Insert into supplied_by values('#Mat28','#C2');
Insert into supplied_by values('#Mat29','#C2');
Insert into supplied_by values('#Mat30','#C2');
Insert into supplied_by values('#Mat31','#C2');
Insert into supplied_by values('#Mat32','#C2');
Insert into supplied_by values('#Mat33','#C2');
Insert into supplied_by values('#Mat34','#C2');
Insert into supplied_by values('#Mat35','#C2');
Insert into supplied_by values('#Mat36','#C2');
Insert into supplied_by values('#Mat37','#C2');
Insert into supplied_by values('#Mat38','#C2');
Insert into supplied_by values('#Mat39','#C2');


Insert into works values('#P1','#Job0001','4/10/2020',NULL);
Insert into works values('#P2','#Job0002','4/10/2020',NULL);
Insert into works values('#P3','#Job0003','4/10/2020',NULL);
Insert into works values('#P4','#Job0004','4/10/2020',NULL);
Insert into works values('#P5','#Job0001','4/10/2020',NULL);
Insert into works values('#P6','#Job0002','4/10/2020',NULL);
Insert into works values('#P7','#Job0003','4/10/2020',NULL);
Insert into works values('#P8','#Job0004','4/10/2020',NULL);
Insert into works values('#P9','#Job0001','4/10/2020',NULL);
Insert into works values('#P10','#Job0002','4/10/2020',NULL);
Insert into works values('#P11','#Job0003','4/10/2020',NULL);
Insert into works values('#P12','#Job0004','4/10/2020',NULL);


