CREATE TABLE person (
	id integer PRIMARY KEY AUTOINCREMENT,
	name text,
	address_number integer,
	address_street_name text,
	plate_number text,
	age integer
);

CREATE TABLE car (
	plate_number text,
	model text,
	maker text,
	color text,
	parking_spot text
);

CREATE TABLE interview (
	person_id integer,
	transcript text,
	date date,
	interview_officer text
);

CREATE TABLE yrgo_check_in (
	person_id integer,
	check_in_date date,
	check_in_time integer,
	check_out_time integer,
	car_check_in integer,
	car_check_out integer
);

CREATE TABLE finances (
	person_id integer,
	balance integer,
	income integer,
	outcome integer,
	card_number integer,
	debt integer
);

CREATE TABLE crime_scene_report (
	date date,
	description text,
	location text,
	type text,
	detective text
);
