/*
comment
*/

/*
טבלה של פקיד
*/
CREATE TABLE officers (
workerNumber VARCHAR(45) NOT NULL PRIMARY KEY,
name VARCHAR(45) NOT NULL,
seniority INTEGER NOT NULL,
phoneNumber VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL,
adress VARCHAR(45) NOT NULL,
birth DATE
       );
 
/*
טבלה של לקוח
*/
CREATE TABLE clients (
id INTEGER NOT NULL PRIMARY KEY,
name_client VARCHAR(45) NOT NULL,
phoneNumber VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL,
adress VARCHAR(45) NOT NULL,
birth DATE,
location VARCHAR(45) NOT NULL,
trialType VARCHAR(45) NOT NULL
);

/*
טבלה של פרקליט
*/
CREATE TABLE lawyers (
id INTEGER NOT NULL PRIMARY KEY,
name_lawyer VARCHAR(45) NOT NULL,
phoneNumber VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL,
adress VARCHAR(45) NOT NULL,
birth DATE,
location VARCHAR(45) NOT NULL,
seniority INTEGER NOT NULL,
speciality VARCHAR(45) NOT NULL,
numberOfcases INTEGER NOT NULL
);


/*
טבלה של דיון
*/

CREATE TABLE discussions (
loction VARCHAR(45) NOT NULL,
hour_discussion TIME,
date_discussion DATE,
judgeName VARCHAR(45) NOT NULL,
clientName VARCHAR(45) NOT NULL,
CONSTRAINT PK_discussion PRIMARY KEY (clientName, hour_discussion, date_discussion),
 FOREIGN KEY (clientName) REFERENCES clients(name_client)
);
/*
טבלה של תיק
*/
CREATE TABLE cases (
numberOfcase INTEGER NOT NULL PRIMARY KEY,
openingDate DATE,
closingDate DATE,
status  VARCHAR(45) NOT NULL,
client_name VARCHAR(45) NOT NULL,
trialType VARCHAR(45) NOT NULL,
FOREIGN KEY (client_name) REFERENCES clients(name_client),
FOREIGN KEY (trialType) REFERENCES clients(trialType)
);
/*
טבלה של קריטריון
*/
CREATE TABLE criterions (
criterionType VARCHAR(45) NOT NULL PRIMARY KEY,
criterion_counter INTEGER NOT NULL,
caseNumber INTEGER NOT NULL,
FOREIGN KEY (caseNumber) REFERENCES cases (numberOfcase)
);







INSERT INTO officers
VALUES ('111','eyal','10','66772266','eyal@gmail.com','tel aviv','04/01/2010');
VALUES ('112','lihi','11','2227734','lihi@gmail.com','yafo','03/02/1988');
VALUES ('113','nethanel','9','3377881','nethanel@gmail.com','beer sheva','09/05/2011');
VALUES ('114','noa','3','908762','noa@gmail.com','haifa','08/07/1997');

INSERT INTO clients
VALUES ('207783',' Patricia','0547332',' sed.hendrerit@tempus.org ','hasomer','01/01/1990','tel aviv',' Administrative Law');
VALUES ('205667','Odette','052345','adipiscing@Suspendissealiquetmolestie.ca','benyehuda','02/12/2017','yafo',' Administrative Law');
VALUES ('318907','dominic','0512346','nibh.Quisque.nonummy@ac.co.uk ','bengurion','13/04/2000','beer sheva','criminal law');
VALUES ('208799','michael','054778','michael@gmail.com','david','02/03/1995','ramat hasharon','criminal law');

INSERT INTO lawyers
VALUES('134','BoRasmussen','1745623','mauris@sociosquadlitora.org','avraham avinu','04/05/2002','tel aviv','8','criminal law','5');
VALUES('124',' Dean Obrien','1755523','mahgss@sociosquadlitora.org','sarah yemino','04/07/1988','haifa','10','criminal law','3');
VALUES('156',' Gloria Jimenez','1888723','magloria@sociosquadlitora.org','ben yehoda','01/05/1880','petah tikva','7',' Administrative law','2');
VALUES('188',' Lance Horne','1255423','mlance@sociosquadlitora.org','hatamar','04/09/1999','beersheva','6',' Administrative law','6');


INSERT INTO discussions
VALUES('haifa','09:30','02/03/2020',' Nissim Nielsen', 'Patricia');
VALUES('beer sheva','10:30','02/04/2020',' Logan Flores ', 'odette');
VALUES('tel aviv','09:30','01/05/2020',' Elton Bullock', 'dominic');
VALUES('ramat gan','09:30','01/03/2020','Thor Potts', 'michael');

INSERT INTO cases
VALUES('144','01/05/2019','','active','Patricia',' Administrative Law');
VALUES('199','01/06/2018','','active','dominic','criminal Law');
VALUES('201','08/09/2019','','active',' odette ',' Administrative Law');
VALUES('607','11/12/2019','','active',' michael ',' criminal Law');

INSERT INTO criterions
VALUES('Administrative Law','2','201');
VALUES('Administrative Law','1','144');
VALUES('criminal Law','3','199');
VALUES(' criminal Law','2','607');


