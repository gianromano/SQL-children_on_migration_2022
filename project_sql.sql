USE inmigration_europe;
SHOW TABLES;

-- asylum_tb table creation. Decisions granting temporary protection by citizenship, age and sex
CREATE TABLE asylum_tb (
id INT NOT NULL AUTO_INCREMENT,
sex ENUM('M','F'),
age VARCHAR(255),
geo CHAR(2),
TIME_PERIOD int DEFAULT NULL,
OBS_VALUE int DEFAULT NULL,
PRIMARY KEY (id),
FOREIGN KEY (geo) REFERENCES geo_country(geo) ON UPDATE CASCADE
);

-- geo_country table. Utilitary table to combine range of ages
CREATE TABLE geo_country (
geo CHAR(2) NOT NULL,
country VARCHAR(255),
PRIMARY KEY (geo)
);

-- inmigration_tb table. Immigration by age and sex
CREATE TABLE inmigration_tb (
id INT NOT NULL AUTO_INCREMENT,
age VARCHAR(255),
sex ENUM('M','F'),
geo CHAR(2),
TIME_PERIOD int DEFAULT NULL,
OBS_VALUE int DEFAULT NULL,
PRIMARY KEY (id),
FOREIGN KEY (geo) REFERENCES geo_country(geo) ON UPDATE CASCADE
);

-- creating Resettled_unaccompanied_minors_tb. Resettled unaccompanied minors by age, sex and citizenship
CREATE TABLE Resettled_unaccompanied_minors_tb (
id INT NOT NULL AUTO_INCREMENT,
sex ENUM('M','F'),
age VARCHAR(255),
geo CHAR(2),
TIME_PERIOD int DEFAULT NULL,
OBS_VALUE int DEFAULT NULL,
PRIMARY KEY (id),
FOREIGN KEY (geo) REFERENCES geo_country(geo) ON UPDATE CASCADE
);

-- populating geo_country
INSERT INTO geo_country (geo, country)
VALUES 
('AT', 'Austria'),
('EL', 'Greece'),
('IE', 'Ireland'),
('MT', 'Malta'),
('RO', 'Romania'),
('SI', 'Slovenia'),
('EU', 'Europe');

-- populating asylum_tb
INSERT INTO asylum_tb (sex,age,geo,TIME_PERIOD,OBS_VALUE)
VALUES
('M', 'Y14-17', 'AT', 2022, 380),
 ('M', 'Y14-17', 'BE', 2022, 480),
 ('M', 'Y14-17', 'BG', 2022, 315),
 ('M', 'Y14-17', 'CH', 2022, 310),
 ('M', 'Y14-17', 'DK', 2022, 185),
 ('M', 'Y14-17', 'EE', 2022, 0),
 ('M', 'Y14-17', 'EL', 2022, 20),
 ('M', 'Y14-17', 'FI', 2022, 205),
 ('M', 'Y14-17', 'HR', 2022, 220),
 ('M', 'Y14-17', 'IE', 2022, 110),
 ('M', 'Y14-17', 'IS', 2022, 0),
 ('M', 'Y14-17', 'IT', 2022, 0),
 ('M', 'Y14-17', 'LI', 2022, 0),
 ('M', 'Y14-17', 'LT', 2022, 355),
 ('M', 'Y14-17', 'LU', 2022, 10),
 ('M', 'Y14-17', 'MT', 2022, 5),
 ('M', 'Y14-17', 'NL', 2022, 265),
 ('M', 'Y14-17', 'NO', 2022, 190),
 ('M', 'Y14-17', 'RO', 2022, 165),
 ('M', 'Y14-17', 'SE', 2022, 255),
 ('M', 'Y14-17', 'SI', 2022, 25),
 ('M', 'Y14-17', 'SK', 2022, 165),
 ('M', 'Y_LT14', 'AT', 2022, 115),
 ('M', 'Y_LT14', 'BE', 2022, 175),
 ('M', 'Y_LT14', 'BG', 2022, 135),
 ('M', 'Y_LT14', 'CH', 2022, 160),
 ('M', 'Y_LT14', 'DK', 2022, 115),
 ('M', 'Y_LT14', 'EE', 2022, 0),
 ('M', 'Y_LT14', 'EL', 2022, 15),
 ('M', 'Y_LT14', 'FI', 2022, 115),
 ('M', 'Y_LT14', 'HR', 2022, 210),
 ('M', 'Y_LT14', 'IE', 2022, 5),
 ('M', 'Y_LT14', 'IS', 2022, 0),
 ('M', 'Y_LT14', 'IT', 2022, 0),
 ('M', 'Y_LT14', 'LI', 2022, 0),
 ('M', 'Y_LT14', 'LT', 2022, 245),
 ('M', 'Y_LT14', 'LU', 2022, 0),
 ('M', 'Y_LT14', 'MT', 2022, 0),
 ('M', 'Y_LT14', 'NL', 2022, 100),
 ('M', 'Y_LT14', 'NO', 2022, 60),
 ('M', 'Y_LT14', 'RO', 2022, 250),
 ('M', 'Y_LT14', 'SE', 2022, 125),
 ('M', 'Y_LT14', 'SI', 2022, 5),
 ('M', 'Y_LT14', 'SK', 2022, 50),
 ('M', 'Y_LT18', 'AT', 2022, 495),
 ('M', 'Y_LT18', 'BE', 2022, 655),
 ('M', 'Y_LT18', 'BG', 2022, 445),
 ('M', 'Y_LT18', 'CH', 2022, 470),
 ('M', 'Y_LT18', 'DK', 2022, 300),
 ('M', 'Y_LT18', 'EE', 2022, 0),
 ('M', 'Y_LT18', 'EL', 2022, 35),
 ('M', 'Y_LT18', 'FI', 2022, 320),
 ('M', 'Y_LT18', 'HR', 2022, 425),
 ('M', 'Y_LT18', 'IE', 2022, 115),
 ('M', 'Y_LT18', 'IS', 2022, 0),
 ('M', 'Y_LT18', 'IT', 2022, 0),
 ('M', 'Y_LT18', 'LI', 2022, 0),
 ('M', 'Y_LT18', 'LT', 2022, 605),
 ('M', 'Y_LT18', 'LU', 2022, 10),
 ('M', 'Y_LT18', 'MT', 2022, 5),
 ('M', 'Y_LT18', 'NL', 2022, 365),
 ('M', 'Y_LT18', 'NO', 2022, 255),
 ('M', 'Y_LT18', 'RO', 2022, 410),
 ('M', 'Y_LT18', 'SE', 2022, 380),
 ('M', 'Y_LT18', 'SI', 2022, 30),
 ('M', 'Y_LT18', 'SK', 2022, 215);

-- populating Resettled_unaccompanied_minors_tb
INSERT INTO Resettled_unaccompanied_minors_tb (sex, age, geo, TIME_PERIOD, OBS_VALUE)
VALUES
('F', 'Y_LT14', 'NO', 2021, 5),
 ('F', 'Y_LT18', 'FI', 2023, 5),
 ('F', 'Y_LT18', 'NO', 2021, 5),
 ('M', 'Y14-17', 'NO', 2021, 5),
 ('M', 'Y14-17', 'NO', 2022, 5),
 ('M', 'Y14-17', 'SE', 2021, 5),
 ('M', 'Y_LT18', 'FI', 2023, 5),
 ('M', 'Y_LT18', 'NO', 2022, 5),
 ('M', 'Y_LT18', 'SE', 2021, 5),
 ('M', 'Y_LT18', 'SE', 2022, 5),
 ('F', 'Y14-17', 'FI', 2022, 5),
 ('F', 'Y14-17', 'NO', 2021, 5),
 ('F', 'Y14-17', 'SE', 2022, 5),
 ('F', 'Y_LT14', 'SE', 2021, 5),
 ('F', 'Y_LT18', 'FI', 2022, 5),
 ('F', 'Y_LT18', 'NO', 2021, 5),
 ('F', 'Y_LT18', 'SE', 2022, 5),
 ('M', 'Y14-17', 'NO', 2023, 5),
 ('M', 'Y14-17', 'SE', 2021, 5),
 ('M', 'Y14-17', 'SE', 2022, 5),
 ('M', 'Y_LT14', 'SE', 2021, 5),
 ('M', 'Y_LT14', 'SE', 2022, 5),
 ('M', 'Y_LT18', 'NO', 2021, 5),
 ('M', 'Y_LT18', 'NO', 2023, 5),
 ('F', 'Y14-17', 'DE', 2021, 5),
 ('F', 'Y14-17', 'DE', 2023, 5),
 ('F', 'Y14-17', 'FI', 2022, 5),
 ('F', 'Y14-17', 'NO', 2023, 5),
 ('F', 'Y_LT18', 'DE', 2021, 5),
 ('F', 'Y_LT18', 'DE', 2023, 5),
 ('F', 'Y_LT18', 'FI', 2022, 5),
 ('F', 'Y_LT18', 'NO', 2023, 5),
 ('F', 'Y_LT18', 'SE', 2021, 5),
 ('M', 'Y14-17', 'DE', 2021, 5),
 ('M', 'Y14-17', 'DE', 2022, 5),
 ('M', 'Y14-17', 'DE', 2023, 5),
 ('M', 'Y14-17', 'FI', 2022, 5),
 ('M', 'Y14-17', 'NO', 2021, 5),
 ('M', 'Y14-17', 'NO', 2023, 5),
 ('M', 'Y_LT18', 'DE', 2021, 5),
 ('M', 'Y_LT18', 'DE', 2022, 5),
 ('M', 'Y_LT18', 'DE', 2023, 5),
 ('M', 'Y_LT18', 'FI', 2022, 5),
 ('M', 'Y_LT18', 'NO', 2021, 5),
 ('M', 'Y_LT18', 'NO', 2023, 5),
 ('M', 'Y14-17', 'SE', 2022, 5),
 ('M', 'Y_LT18', 'SE', 2022, 5),
 ('F', 'Y14-17', 'DE', 2021, 5),
 ('F', 'Y14-17', 'DE', 2023, 5),
 ('F', 'Y14-17', 'FI', 2022, 5),
 ('F', 'Y14-17', 'FI', 2023, 5),
 ('F', 'Y14-17', 'IT', 2021, 5),
 ('F', 'Y14-17', 'NO', 2021, 5),
 ('F', 'Y14-17', 'NO', 2022, 5),
 ('F', 'Y_LT14', 'NO', 2021, 5),
 ('F', 'Y_LT18', 'DE', 2021, 5),
 ('F', 'Y_LT18', 'DE', 2023, 5),
 ('F', 'Y_LT18', 'FI', 2022, 5),
 ('F', 'Y_LT18', 'IT', 2021, 5),
 ('F', 'Y_LT18', 'NO', 2022, 5),
 ('M', 'Y14-17', 'DE', 2021, 5),
 ('M', 'Y14-17', 'DE', 2022, 5),
 ('M', 'Y14-17', 'NO', 2022, 5),
 ('M', 'Y14-17', 'SE', 2023, 5),
 ('M', 'Y_LT18', 'DE', 2021, 5),
 ('M', 'Y_LT18', 'DE', 2022, 5),
 ('M', 'Y_LT18', 'NO', 2022, 5),
 ('M', 'Y_LT18', 'SE', 2023, 5),
 ('F', 'Y_LT18', 'SE', 2022, 5),
 ('M', 'Y14-17', 'DE', 2023, 5),
 ('M', 'Y14-17', 'FI', 2022, 5),
 ('M', 'Y_LT18', 'DE', 2023, 5),
 ('M', 'Y_LT18', 'FI', 2022, 5),
 ('F', 'Y14-17', 'IT', 2021, 5),
 ('F', 'Y_LT18', 'IT', 2021, 5),
 ('F', 'Y_LT18', 'SE', 2022, 5),
 ('M', 'Y_LT18', 'SE', 2022, 5),
 ('F', 'Y14-17', 'SE', 2022, 5),
 ('F', 'Y_LT14', 'SE', 2021, 5),
 ('F', 'Y_LT18', 'SE', 2021, 5),
 ('F', 'Y_LT18', 'SE', 2022, 5),
 ('M', 'Y_LT14', 'SE', 2021, 5),
 ('M', 'Y_LT18', 'SE', 2021, 5),
 ('F', 'Y14-17', 'DE', 2021, 5),
 ('F', 'Y14-17', 'DE', 2023, 5),
 ('F', 'Y14-17', 'FI', 2022, 5),
 ('F', 'Y14-17', 'FI', 2023, 5),
 ('F', 'Y14-17', 'IT', 2021, 5),
 ('F', 'Y14-17', 'NO', 2021, 5),
 ('F', 'Y14-17', 'NO', 2022, 5),
 ('F', 'Y_LT14', 'NO', 2021, 5),
 ('F', 'Y_LT18', 'DE', 2021, 5),
 ('F', 'Y_LT18', 'DE', 2023, 5),
 ('F', 'Y_LT18', 'FI', 2022, 5),
 ('F', 'Y_LT18', 'IT', 2021, 5),
 ('F', 'Y_LT18', 'NO', 2022, 5),
 ('M', 'Y14-17', 'DE', 2021, 5),
 ('M', 'Y14-17', 'DE', 2022, 5),
 ('M', 'Y14-17', 'NO', 2022, 5),
 ('M', 'Y14-17', 'SE', 2023, 5),
 ('M', 'Y_LT18', 'DE', 2021, 5),
 ('M', 'Y_LT18', 'DE', 2022, 5),
 ('M', 'Y_LT18', 'NO', 2022, 5),
 ('M', 'Y_LT18', 'SE', 2023, 5),
 ('M', 'Y_LT14', 'NO', 2021, 10),
 ('F', 'Y14-17', 'SE', 2021, 10),
 ('M', 'Y_LT18', 'SE', 2021, 10),
 ('M', 'Y_LT18', 'SE', 2022, 10),
 ('F', 'Y14-17', 'SE', 2022, 10),
 ('F', 'Y_LT18', 'SE', 2022, 10),
 ('M', 'Y14-17', 'FI', 2023, 10),
 ('M', 'Y_LT18', 'FI', 2023, 10),
 ('F', 'Y14-17', 'NO', 2023, 10),
 ('F', 'Y_LT14', 'SE', 2022, 10),
 ('F', 'Y_LT18', 'FI', 2023, 10),
 ('F', 'Y_LT18', 'NO', 2021, 10),
 ('F', 'Y_LT18', 'NO', 2023, 10),
 ('M', 'Y14-17', 'DE', 2023, 10),
 ('M', 'Y14-17', 'NO', 2021, 10),
 ('M', 'Y_LT14', 'NO', 2021, 10),
 ('M', 'Y_LT14', 'SE', 2022, 10),
 ('M', 'Y_LT18', 'DE', 2023, 10),
 ('M', 'Y14-17', 'NO', 2023, 10),
 ('M', 'Y14-17', 'SE', 2021, 10),
 ('M', 'Y14-17', 'SE', 2022, 10),
 ('M', 'Y_LT18', 'NO', 2023, 10),
 ('M', 'Y_LT18', 'SE', 2021, 10),
 ('F', 'Y14-17', 'NO', 2023, 10),
 ('F', 'Y_LT14', 'SE', 2022, 10),
 ('F', 'Y_LT18', 'FI', 2023, 10),
 ('F', 'Y_LT18', 'NO', 2021, 10),
 ('F', 'Y_LT18', 'NO', 2023, 10),
 ('M', 'Y14-17', 'DE', 2023, 10),
 ('M', 'Y14-17', 'NO', 2021, 10),
 ('M', 'Y_LT14', 'NO', 2021, 10),
 ('M', 'Y_LT14', 'SE', 2022, 10),
 ('M', 'Y_LT18', 'DE', 2023, 10),
 ('M', 'Y_LT18', 'NO', 2021, 15),
 ('F', 'Y_LT18', 'SE', 2021, 15),
 ('F', 'Y_LT14', 'SE', 2021, 15),
 ('M', 'Y14-17', 'FI', 2022, 15),
 ('M', 'Y14-17', 'FI', 2023, 15),
 ('M', 'Y14-17', 'NO', 2023, 15),
 ('M', 'Y_LT14', 'SE', 2021, 15),
 ('M', 'Y_LT18', 'FI', 2022, 15),
 ('M', 'Y_LT18', 'FI', 2023, 15),
 ('M', 'Y_LT18', 'NO', 2023, 15),
 ('M', 'Y_LT18', 'SE', 2022, 15),
 ('F', 'Y_LT14', 'SE', 2021, 15),
 ('M', 'Y14-17', 'FI', 2022, 15),
 ('M', 'Y14-17', 'FI', 2023, 15),
 ('M', 'Y14-17', 'NO', 2023, 15),
 ('M', 'Y_LT14', 'SE', 2021, 15),
 ('M', 'Y_LT18', 'FI', 2022, 15),
 ('M', 'Y_LT18', 'FI', 2023, 15),
 ('M', 'Y_LT18', 'NO', 2023, 15),
 ('M', 'Y14-17', 'IT', 2021, 20),
 ('M', 'Y_LT18', 'IT', 2021, 20),
 ('M', 'Y14-17', 'SE', 2021, 20),
 ('M', 'Y_LT18', 'SE', 2021, 20),
 ('F', 'Y14-17', 'SE', 2021, 20),
 ('F', 'Y14-17', 'SE', 2022, 20),
 ('M', 'Y14-17', 'IT', 2021, 20),
 ('M', 'Y_LT18', 'IT', 2021, 20),
 ('F', 'Y14-17', 'SE', 2021, 20),
 ('F', 'Y14-17', 'SE', 2022, 20),
 ('M', 'Y14-17', 'IT', 2021, 20),
 ('M', 'Y_LT18', 'IT', 2021, 20),
 ('M', 'Y14-17', 'SE', 2022, 25),
 ('M', 'Y_LT18', 'SE', 2022, 25),
 ('M', 'Y_LT18', 'NO', 2021, 25),
 ('M', 'Y_LT18', 'NO', 2021, 25),
 ('F', 'Y_LT18', 'SE', 2022, 30),
 ('F', 'Y_LT18', 'SE', 2022, 30),
 ('F', 'Y_LT18', 'SE', 2021, 35),
 ('F', 'Y_LT18', 'SE', 2021, 35),
 ('M', 'Y14-17', 'SE', 2021, 45),
 ('M', 'Y14-17', 'SE', 2021, 45),
 ('M', 'Y14-17', 'SE', 2022, 50),
 ('M', 'Y14-17', 'SE', 2022, 50),
 ('M', 'Y_LT18', 'SE', 2021, 60),
 ('M', 'Y_LT18', 'SE', 2022, 60),
 ('M', 'Y_LT18', 'SE', 2021, 60),
 ('M', 'Y_LT18', 'SE', 2022, 60);
 
 -- Cleaning columns 
ALTER TABLE inmigration RENAME COLUMN ï»¿age TO age;
ALTER TABLE asylum_tb DROP COLUMN citizen;

-- 1. View created to organize the range of ages in inmigration_tb
DROP VIEW IF EXISTS inmigration_view;
CREATE VIEW inmigration_view AS
SELECT 
    CASE
        WHEN age IN ('Y_LT1', 'Y1','Y2', 'Y3', 'Y4', 'Y5', 'Y6', 'Y7', 'Y8', 'Y9', 'Y10', 'Y11', 'Y12', 'Y13') THEN 'Y_LT14'
        WHEN age IN ('Y14', 'Y15', 'Y16') THEN 'Y14-17'
        ELSE 'Y_LT18'
    END AS age_group,  age, sex, geo, TIME_PERIOD,OBS_VALUE
FROM 
    inmigration_tb;

-- 2. Count the number of immigrants by age group and sex in a specific year: 2022
SELECT age_group, sex, SUM(OBS_VALUE) AS total_immigrants, TIME_PERIOD
FROM inmigration_view 
GROUP BY age_group, sex, TIME_PERIOD
HAVING TIME_PERIOD = '2022';

-- 3. Find the top 5 countries with the highest number of immigrants in a specific year:
SELECT geo_country.country, SUM(inmigration_tb.OBS_VALUE) AS total_immigrants
FROM inmigration_tb
INNER JOIN geo_country ON inmigration_tb.geo = geo_country.geo
WHERE inmigration_tb.TIME_PERIOD = '2022'
GROUP BY geo_country.country
ORDER BY total_immigrants DESC
LIMIT 5;

-- 4. Calculate the total number of asylum decisions granted by citizenship
SELECT geo_country.country, TIME_PERIOD, SUM(asylum_tb.OBS_VALUE) AS total_asylum_decisions
FROM asylum_tb
INNER JOIN geo_country ON asylum_tb.geo = geo_country.geo
WHERE TIME_PERIOD = '2022'
GROUP BY geo_country.country, TIME_PERIOD
ORDER BY geo_country.country ASC;

-- 5.1 asylum_tb by sex MALE
SELECT age, sex, SUM(OBS_VALUE), TIME_PERIOD FROM asylum_tb
GROUP BY age, sex, TIME_PERIOD
HAVING sex = 'M' AND TIME_PERIOD = '2022';

-- 5.2 asylum_tb by sex FEMALE
SELECT age, sex, SUM(OBS_VALUE), TIME_PERIOD FROM asylum_tb
GROUP BY age, sex, TIME_PERIOD
HAVING sex = 'F' AND TIME_PERIOD = '2022';

-- 6. Retrieve the number of resettled unaccompanied minors by age group and sex
SELECT age, sex, SUM(OBS_VALUE) AS total_resettled_minors
FROM resettled_unaccompanied_minors_tb
GROUP BY age, sex;

-- 7.1 resettled_unaccompanied_minors_tb by sex MALE
SELECT age, sex, SUM(OBS_VALUE), TIME_PERIOD FROM resettled_unaccompanied_minors_tb
GROUP BY age, sex, TIME_PERIOD
HAVING sex = 'M' AND TIME_PERIOD = '2022' ;

-- 7.2 resettled_unaccompanied_minors_tb by sex FEMALE
SELECT age, sex, SUM(OBS_VALUE), TIME_PERIOD FROM resettled_unaccompanied_minors_tb
GROUP BY age, sex, TIME_PERIOD
HAVING sex = 'F' AND TIME_PERIOD = '2022' ;

-- 8 Wide view of data for the year 2022 (total immigrants, asylum decisions and resettled unaccompanied minors by age, sex) 
SELECT 
	immigrants.country,
    immigrants.age_group, 
    immigrants.sex, 
    immigrants.total_immigrants, 
    asylum_decisions.total_asylum_decisions, 
    resettled_minors.total_resettled_minors
FROM (
    SELECT 
        gc.country, 
        it.age_group, 
        it.sex, 
        SUM(it.OBS_VALUE) AS total_immigrants
    FROM 
        inmigration_view AS it 
    INNER JOIN 
        geo_country AS gc ON it.geo = gc.geo
    WHERE 
        it.TIME_PERIOD = '2022'
    GROUP BY 
        gc.country, 
        it.age_group, 
        it.sex
) AS immigrants
LEFT JOIN (
    SELECT 
        gc.country,
        at.age,
        at.sex,
        SUM(at.OBS_VALUE) AS total_asylum_decisions
    FROM 
        asylum_tb AS at
    INNER JOIN 
        geo_country AS gc ON at.geo = gc.geo
    WHERE 
        at.TIME_PERIOD = '2022'
    GROUP BY 
        gc.country, 
        at.age, 
        at.sex
) AS asylum_decisions ON immigrants.country = asylum_decisions.country 
                      AND immigrants.age_group = asylum_decisions.age 
                      AND immigrants.sex = asylum_decisions.sex
LEFT JOIN (
    SELECT 
        gc.country,
        rt.age,
        rt.sex,
        SUM(rt.OBS_VALUE) AS total_resettled_minors
    FROM 
        resettled_unaccompanied_minors_tb AS rt
    INNER JOIN 
        geo_country AS gc ON rt.geo = gc.geo
    WHERE 
        rt.TIME_PERIOD = '2022'
    GROUP BY 
        gc.country, 
        rt.age, 
        rt.sex
) AS resettled_minors ON immigrants.country = resettled_minors.country 
                     AND immigrants.age_group = resettled_minors.age 
                     AND immigrants.sex = resettled_minors.sex;
                     
-- ANNEX Count the number of immigrants in a specific year: 2020
SELECT SUM(OBS_VALUE) AS total_immigrants, TIME_PERIOD
FROM inmigration_view 
GROUP BY TIME_PERIOD
HAVING TIME_PERIOD = '2020';

-- ANNEX Count the number of immigrants in a specific year: 2021
SELECT SUM(OBS_VALUE) AS total_immigrants, TIME_PERIOD
FROM inmigration_view 
GROUP BY TIME_PERIOD
HAVING TIME_PERIOD = '2021';

-- ANNEX Count the number of immigrants in a specific year: 2022
SELECT SUM(OBS_VALUE) AS total_immigrants, TIME_PERIOD
FROM inmigration_view 
GROUP BY TIME_PERIOD
HAVING TIME_PERIOD = '2022';

-- ANNEX Count the number of immigrants by age group
SELECT age_group, SUM(OBS_VALUE) AS total_immigrants, TIME_PERIOD
FROM inmigration_view 
GROUP BY age_group, TIME_PERIOD
HAVING TIME_PERIOD = '2022';

-- ANNEX Count the number of immigrants by age group
SELECT age, SUM(OBS_VALUE) AS total_immigrants, TIME_PERIOD
FROM inmigration_view 
GROUP BY age, TIME_PERIOD
HAVING TIME_PERIOD = '2022' AND age IN ('Y_LT1','Y1','Y2','Y3','Y4','Y5','Y6','Y7','Y8','Y9','Y10','Y11','Y12','Y13');

-- ANNEX Count the number of immigrants by sex
SELECT sex, SUM(OBS_VALUE) AS total_immigrants, TIME_PERIOD
FROM inmigration_view 
GROUP BY sex, TIME_PERIOD
HAVING TIME_PERIOD = '2022';





