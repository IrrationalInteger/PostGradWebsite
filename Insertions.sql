go 

use PostGradOffice

--USERS

INSERT INTO PostGradUser VALUES('amr.esmaeel@guc.edu.eg','amr2000')
INSERT INTO PostGradUser VALUES('abdelrahman.khaled@guc.edu.eg','abdelrahman2001')
INSERT INTO PostGradUser VALUES('amr.younis@guc.edu.eg','X67pMbge')
INSERT INTO PostGradUser VALUES('emad.ali@guc.edu.eg','tK7RViou')
INSERT INTO PostGradUser VALUES('zaid.abdelaziz@guc.edu.eg','P2W3vTnD')
INSERT INTO PostGradUser VALUES('youssef.hatem-hamdy@guc.edu.eg','I0ueswP3')
INSERT INTO PostGradUser VALUES('ahmed.ebrahim@guc.edu.eg','36vr57YN')
INSERT INTO PostGradUser VALUES('noura.mohammed@guc.edu.eg','iA7fdlCf')
INSERT INTO PostGradUser VALUES('yasmeen.khaled@guc.edu.eg','6R4Ol2i0')
INSERT INTO PostGradUser VALUES('passant.abbassi@guc.edu.eg','eaAbY50d')
INSERT INTO PostGradUser VALUES('ghader.mahmoud@guc.edu.eg','bNJBUz7pTmd')
INSERT INTO PostGradUser VALUES('nada.nasser@guc.edu.eg','kDm1zAWOOT5YX')
INSERT INTO PostGradUser VALUES('anke.klinger@guc.edu.eg','nG099AcFyt9')
INSERT INTO PostGradUser VALUES('abdallah.fathy@guc.edu.eg','D1RsNh32')
INSERT INTO PostGradUser VALUES('nourhan.el-faransawy@guc.edu.eg','2JRC8RvG')
INSERT INTO PostGradUser VALUES('mostfa.hamouda@guc.edu.eg','9opsxRb9P')
INSERT INTO PostGradUser VALUES('mary.badros@guc.edu.eg','V8iLhayhl')
INSERT INTO PostGradUser VALUES('hitham.ismail@gmail.com','popoK45@sf')
INSERT INTO PostGradUser VALUES('seif.mohamed@gmail.com','sbgb129rtWhi')
INSERT INTO PostGradUser VALUES('slim.abdelnadher@gmail.com','lplop4W6k')
INSERT INTO PostGradUser VALUES('ramy.younis@gmail.com','kln12dfUR')
INSERT INTO PostGradUser VALUES('amr.elmogi@gmail.com','slafknW9E')
INSERT INTO PostGradUser VALUES('milad.micheal@gmail.com','TY10lmsdam')
INSERT INTO PostGradUser VALUES('hany.elsharkawy@gmail.com','sklndWR123v')
INSERT INTO PostGradUser VALUES('nada.sharaf@gmail.com','isajdAn2sjd')
INSERT INTO PostGradUser VALUES('alex.smith@gmail.com','askdn@skskdWEks12')
INSERT INTO PostGradUser VALUES ('ahmed.samy@gmail.com','klngh23ASknbg2')
INSERT INTO PostGradUser VALUES('ali.ghazal@gmial.com','jkbds4Wtr@l')




--ADMINS

INSERT INTO Admin VALUES(5)


--GucianStudent

INSERT INTO GucianStudent VALUES (1,'Amr','Esmaeel','Msc','Pharmacy','Mokatem',1.17,18903)
INSERT INTO GucianStudent VALUES (2,'Abdelraheman','Khaled','Msc','IET','Rehab',1.99,15237)
INSERT INTO GucianStudent VALUES (3,'Amr','Mohamed','Phd','IET','Fifth setelment',0.84,12892)
INSERT INTO GucianStudent VALUES (6,'Youssef','hatem','Phd','Applied Arts','Elmohandseen',2.53,4363)



--NonGucianStudent

INSERT INTO NonGucianStudent VALUES (9,'Yasmeen','Khaled','Phd','Law','Rehab',4.23)
INSERT INTO NonGucianStudent VALUES (10,'Passant','Abbassi','Msc','Civil','ElShorouk',3.12)
INSERT INTO NonGucianStudent VALUES (11,'Ghader','Mahmoud','Phd','BI','Zamalek',0.91)
INSERT INTO NonGucianStudent VALUES (12,'Nada','Nasser','Msc','Pharmacy','Maadi',1.72)
INSERT INTO NonGucianStudent VALUES (13,'Anke','Klinger','Phd','Medicine','Madinty',3.15)
INSERT INTO NonGucianStudent VALUES (14,'Yasmeen','Abdelaziz','Phd','Pharmacy','Madinty',3.12)

--Supervisor

INSERT INTO Supervisor VALUES (4,'Emad ALi','MET')
INSERT INTO Supervisor VALUES (7,'Ahmed Ebrahim','IET')
INSERT INTO Supervisor VALUES (8,'Noura Mohammed','Pharmacy')
INSERT INTO Supervisor VALUES (14,'Abdallah Fathy','Civil')
INSERT INTO Supervisor VALUES (15,'Abdallah Fathy','MET')
INSERT INTO Supervisor VALUES (16,'Mostfa Hamouda','BI')
INSERT INTO Supervisor VALUES (17,'Mary Badros','EMS')
INSERT INTO Supervisor VALUES (26,'Alex Smith','Applied Arts')
INSERT INTO Supervisor VALUES (27,'Ahmed Samy','Law')
INSERT INTO Supervisor VALUES(28,'ali ghazal','Medicine')

--Examinser

INSERT INTO Examiner VALUES(18,'hitham','Engineering','1')
INSERT INTO Examiner VALUES(19,'seif','Pharmacy','1')
INSERT INTO Examiner VALUES(20,'slim','Engineering','0')
INSERT INTO Examiner VALUES(21,'ramy','Law','0')
INSERT INTO Examiner VALUES(22,'amr','Medicine','1')
INSERT INTO Examiner VALUES(23,'milad','Engineering','0')
INSERT INTO Examiner VALUES(24,'hany','Business','1')
INSERT INTO Examiner VALUES(25,'nada','AppliedArts','1')

--Courses

INSERT INTO Course VALUES(2000,4,'CSEN906')
INSERT INTO Course VALUES(1700,2,'CSEN1023')
INSERT INTO Course VALUES(2400,3,'BI901')
INSERT INTO Course VALUES(2100,5,'BI1004')
INSERT INTO Course VALUES(3000,8,'PH1001')
INSERT INTO Course VALUES(1700,2,'LAW1010')
INSERT INTO Course VALUES(1700,6,'CIVIL1021')
INSERT INTO Course VALUES(1700,4,'EMS1013')

-- Payments

INSERT INTO Payment VALUES (1520.00,2,15)
INSERT INTO Payment VALUES (2000.00,2,55)
INSERT INTO Payment VALUES (2300.00,1,31)
INSERT INTO Payment VALUES (1960.00,2,18)
INSERT INTO Payment VALUES (4850.00,1,20)
INSERT INTO Payment VALUES (2400.00,2,15)
INSERT INTO Payment VALUES (1200.00,1,20)
INSERT INTO Payment VALUES (4000.00,1,74)
INSERT INTO Payment VALUES (6000.00,1,56)
INSERT INTO Payment VALUES (3400.00,2,76)
INSERT INTO Payment VALUES (6000.00,1,56)
INSERT INTO Payment VALUES (6500.00,2,34)
INSERT INTO Payment VALUES (3200.00,2,45)
INSERT INTO Payment VALUES (3000.00,3,20)
INSERT INTO Payment VALUES (4000.00,4,20)
INSERT INTO Payment VALUES (7000,1,34)
INSERT INTO Payment VALUES (3000,2,0)
INSERT INTO Payment VALUES (1700,1,0)

--Thesis

INSERT INTO Thesis VALUES('Pharmacy','Msc','Thesis of Pharmacy','1/2/2013','12/11/2015','11/12/2015',91.0,1,4)
INSERT INTO Thesis VALUES('Business','Msc','The correlation between money and shopping','10/10/2013','4/8/2016','1/2/2015',83.0,2,1);
INSERT INTO Thesis VALUES('Business','Phd','Studying histograms leads to better conclusion','10/11/2016','5/7/2018','4/12/2017',94.0,3,0);
INSERT INTO Thesis VALUES('Applied Arts','Msc','The design of tilted triangles on tall buildings','10/12/2011','10/12/2013','1/12/2013',73,4,0)
INSERT INTO Thesis VALUES('Applied Arts','Phd','Taylor polynomial expansion','1/3/2014','1/3/2016','1/3/2015',62,5,7)
INSERT INTO Thesis VALUES('Engineering','Msc','Thesis of Engineering','10/1/2014','4/17/2018','1/2/2016',99.0,6,3)
INSERT INTO Thesis VALUES('Pharmacy','Msc','Cancer treatment','10/28/2014','9/9/2022','12/24/2015',88.0,7,3);
INSERT INTO Thesis VALUES('Medicine','Msc','Thesis of Medicine','7/1/2012','5/24/2017','11/4/2015',94.0,8,2);
INSERT INTO Thesis VALUES('Medicine','Phd','The effect of antibiotics on otorhinolaryngology','10/1/2018','10/10/2023','11/3/2019',99.0,9,1);
INSERT INTO Thesis VALUES('Pharmacy','Msc','cochlear implants on children','10/2/2014','5/7/2017','4/5/2016',86.0,10,3);
INSERT INTO Thesis VALUES('Pharmacy','Phd','Desiging better medication','10/1/2018','5/7/2020','1/2/2019',95.0,11,3);
INSERT INTO Thesis VALUES('Law','Msc','Thesis of Law','10/8/2010','2/4/2012','1/2/2012',79.0,12,7)
INSERT INTO Thesis VALUES('Law','Phd','Comparing the laws of Singapore to Italy','10/19/2013','8/8/2022','7/7/2022',97.0,13,0)
INSERT INTO Thesis VALUES('Engineering','Msc','autonomous systems','11/9/2016','12/6/2018','11/1/2018',91.0,14,0);
INSERT INTO Thesis VALUES('Engineering','Phd',' Turing machine constructs','11/9/2019','10/10/2023','12/3/2021',98.0,15,0);
INSERT INTO Thesis VALUES('Civil','Msc','Thesis of Civil','12/12/2011','5/5/2022','4/4/2022',90,16,2)

--GUCianStudentRegisterThesis

INSERT INTO GUCianStudentRegisterThesis VALUES(1,8,1)
INSERT INTO GUCianStudentRegisterThesis VALUES(2,7,6)
INSERT INTO GUCianStudentRegisterThesis VALUES(3,7,14) 
INSERT INTO GUCianStudentRegisterThesis VALUES(3,7,15)--edited!!!
INSERT INTO GUCianStudentRegisterThesis VALUES(6,26,4)
INSERT INTO GUCianStudentRegisterThesis VALUES(6,26,5)

--nonGUCianStudentRegisterThesis

INSERT INTO NonGUCianStudentRegisterThesis VALUES (9, 27,12)
INSERT INTO NonGUCianStudentRegisterThesis VALUES (9, 27,13)
INSERT INTO NonGUCianStudentRegisterThesis VALUES (10,14,16)
INSERT INTO NonGUCianStudentRegisterThesis VALUES(11,16,2)
INSERT INTO NonGUCianStudentRegisterThesis VALUES(11,16,3)
INSERT INTO NonGUCianStudentRegisterThesis VALUES(12,8,7)
INSERT INTO NonGUCianStudentRegisterThesis VALUES(13,28,8)
INSERT INTO NonGUCianStudentRegisterThesis VALUES(13,28,9)
INSERT INTO NonGUCianStudentRegisterThesis VALUES(14,8,10)
INSERT INTO NonGUCianStudentRegisterThesis VALUES(14,8,11)

-- Installments 

INSERT INTO Installment VALUES('1/21/2015',1,760,'1')
INSERT INTO Installment VALUES('7/21/2014',1,760,'1')
INSERT INTO Installment VALUES('8/4/2015',2,1000,'1')
INSERT INTO Installment VALUES('2/4/2016',2,1000,'1')
INSERT INTO Installment VALUES('9/1/2016',14,1000,'1')
INSERT INTO Installment VALUES('3/1/2017',14,1000,'1')
INSERT INTO Installment VALUES('9/1/2017',14,1000,'1')
INSERT INTO Installment VALUES('9/1/2019',15,1000,'1')
INSERT INTO Installment VALUES('3/1/2020',15,1000,'1')
INSERT INTO Installment VALUES('9/1/2020',15,1000,'1')
INSERT INTO Installment VALUES('3/1/2022',15,1000,'0')
INSERT INTO Installment VALUES('1/21/2014',4,830,'1')
INSERT INTO Installment VALUES('7/21/2015',4,830,'1')
INSERT INTO Installment VALUES('7/21/2016',5,4850.00,'1')
INSERT INTO Installment VALUES('1/21/2011',12,3250.00,'1')
INSERT INTO Installment VALUES('7/21/2012',12,3250.00,'1')
INSERT INTO Installment VALUES('1/21/2013',13,1600.00,'1')
INSERT INTO Installment VALUES('7/2/2013',13,1600.00,'1')
INSERT INTO Installment VALUES ('12/12/2012',16,7000,'0')
INSERT INTO Installment VALUES('1/21/2017',3,2300,'1')
INSERT INTO Installment VALUES('1/21/2015',8,4000,'1')
INSERT INTO Installment VALUES('1/16/2019',9,6000,'1')
INSERT INTO Installment VALUES('1/21/2015',7,1200,'1')
INSERT INTO Installment VALUES('1/21/2015',10,1700,'1')
INSERT INTO Installment VALUES('1/21/2016',10,1700,'1')
INSERT INTO Installment VALUES('1/16/2019',11,6000,'1')
INSERT INTO Installment VALUES ('10/10/2011',17,1500,'1')
INSERT INTO Installment VALUES ('10/10/2012',17,1500,'1')
INSERT INTO Installment VALUES ('8/9/2019',18,1700,'1')

-- NonGUCian Take Courses

INSERT INTO NonGucianStudentTakeCourse    VALUES (12,5,90) 
INSERT INTO NonGucianStudentTakeCourse    VALUES (11,8,85)

-- N
INSERT INTO NonGucianStudentPayForCourse VALUES (12,17,5)
INSERT INTO NonGucianStudentPayForCourse VALUES (11,18,8)


--GUCianProgressReport

 INSERT INTO GUCianProgressReport VALUES(1,1,'5/13/2014',3,50,NULL,1,8)
 INSERT INTO GUCianProgressReport VALUES(1,2,'6/13/2015',0,100,NULL,1,8)
 INSERT INTO GUCianProgressReport VALUES(2,1,'3/20/2016',1,50,NULL,6,7)
 INSERT INTO GUCianProgressReport VALUES(2,2,'2/1/2017',2,100,NULL,6,7)
 INSERT INTO GUCianProgressReport VALUES(3,1,'3/20/2016',2,50,NULL,14,7)
 INSERT INTO GUCianProgressReport VALUES(3,2,'2/1/2017',3,100,NULL,14,7) 
 INSERT INTO GUCianProgressReport VALUES(3,3,'3/20/2019',2,25,NULL,15,7)
 INSERT INTO GUCianProgressReport VALUES(3,4,'2/1/2019',1,50,NULL,15,7)
 INSERT INTO GUCianProgressReport VALUES(3,5,'2/1/2020',2,75,NULL,15,7)
 INSERT INTO GUCianProgressReport VALUES(3,6,'2/1/2021',3,100,NULL,15,7)--edited!!!
 INSERT INTO GUCianProgressReport VALUES(6,1,'10/12/2012',3,100,NULL,4,26)
 INSERT INTO GUCianProgressReport VALUES(6,2,'6/13/2015',2,100,NULL,5,26)

 --NonGUCianProgressReport

 INSERT INTO NonGUCianProgressReport VALUES (9,1,'10/8/2011',2,100,NULL,12,27)
 INSERT INTO NonGUCianProgressReport VALUES(11,1,'5/13/2014',2,100,NULL,2,16)
 INSERT INTO NonGUCianProgressReport VALUES(11,2,'6/13/2017',3,100,NULL,3,16)  
 INSERT INTO NonGUCianProgressReport VALUES(13,1,'5/25/2014',3,31,NULL,8,28)    
 INSERT INTO NonGUCianProgressReport VALUES(14,1,'7/22/2015',2,67,NULL,10,8)
 INSERT INTO NonGUCianProgressReport VALUES(14,2,'5/25/2014',3,88,NULL,11,8)

-- Defense

INSERT INTO Defense VALUES (2,'11/12/2015','D Building',3.5)
INSERT INTO Defense VALUES (1,'1/12/2018','C Building',4)
INSERT INTO Defense VALUES (14,'11/1/2018','C Building',5)
INSERT INTO Defense VALUES (15,'12/3/2021','C Building',4) 
INSERT INTO Defense VALUES(4,'1/12/2013','D Building',76)
INSERT INTO Defense VALUES(5,'1/3/2015','D Building',80) 
INSERT INTO Defense VALUES(12,'1/2/2012','B Building',76)
--INSERT INTO Defense VALUES (2,'1/2/2015','B Building',78) removed!!!
INSERT INTO Defense VALUES (3,'4/12/2017','B Building',89) 
INSERT INTO Defense VALUES (7,'12/24/2015','B Building',99)
INSERT INTO Defense VALUES (8,'11/4/2015','B Building',89)
INSERT INTO Defense VALUES (9,'11/3/2019','B Building',69)
INSERT INTO Defense VALUES (10,'4/5/2016','B Building',70)
INSERT INTO Defense VALUES (11,'1/2/2019','B Building',92)

--ExaminerEvaluateDefense

INSERT INTO ExaminerEvaluateDefense VALUES ('11/12/2015',2,19,NULL)--edited!!!
INSERT INTO ExaminerEvaluateDefense VALUES ('1/12/2018',1,20,NULL)
INSERT INTO ExaminerEvaluateDefense VALUES ('11/1/2018',14,23,NULL)
INSERT INTO ExaminerEvaluateDefense VALUES('1/12/2013',4,25,NULL)
INSERT INTO ExaminerEvaluateDefense VALUES('1/3/2015',5,25,NULL)
INSERT INTO ExaminerEvaluateDefense VALUES('1/2/2012',12,21,NULL)
INSERT INTO ExaminerEvaluateDefense VALUES ('12/3/2021',15,18,NULL)
INSERT INTO ExaminerEvaluateDefense VALUES('11/12/2015',2,24,NULL)--edited!!!
INSERT INTO ExaminerEvaluateDefense VALUES('4/12/2017',3,24,NULL)
INSERT INTO ExaminerEvaluateDefense VALUES('4/5/2016',10,19,NULL)
INSERT INTO ExaminerEvaluateDefense VALUES('1/2/2019',11,19,NULL)
INSERT INTO ExaminerEvaluateDefense VALUES('11/4/2015',8,22,NULL)
INSERT INTO ExaminerEvaluateDefense VALUES('11/3/2019',9,22,NULL)

---Extra Insertions for testing
INSERT INTO Thesis VALUES('Pharmacy','Msc','Thesis of Pharmacy2','1/2/2014','12/11/2015','11/12/2014',97.0,null,2)
INSERT INTO Publication VALUES('Publiciation of Engineering','10/1/2015','C Building','1','Conference of Engineering')
INSERT INTO Publication VALUES('Publiciation of Pharmacy','10/1/2015','B Building','1','Conference of Pharmacy')
INSERT INTO ThesisHasPublication VALUES(6,1)
INSERT INTO ThesisHasPublication VALUES(7,2)