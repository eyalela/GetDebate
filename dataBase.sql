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
numberOfcases INTEGER NOT NULL,
numberOfcases_counter INTEGER NOT NULL
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
FOREIGN KEY (client_name) REFERENCES clients(name_client)
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

