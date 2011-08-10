create table issues(
	id integer auto_increment primary key,
	title char(30) not null,
	description char(255) not null,
	state char(20) not null,
	date char(50) not null);
