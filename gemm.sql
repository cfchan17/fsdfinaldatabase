create table users (
	user_id varchar(255) not null,
	password varchar(64) not null,
	fullname varchar(255) not null,
	dob date not null,
	email varchar(255) not null,
    country varchar(255) not null,
    profile_name varchar(255) not null,
	profile_pic varchar(255),
    profile_quote varchar(255),
	primary key(user_id)
);

create table follow (
	user_id varchar(255) not null,
	follow_id varchar(255) not null,
    foreign key(user_id) references users(user_id),
    foreign key(follow_id) references users(user_id),
	primary key(user_id, follow_id)
);

insert into users(user_id, password, fullname, dob, email, country, profile_name, profile_pic, profile_quote) values
	('fred', sha1('fred'), 'Fred Jang', '1990-02-17', 'fred@gmail.com', 'singapore', 'Fred The Day', null, 'Eating is life!'),
	('wilma', sha1('wilma'), 'Wilma Lee', '1995-05-22', 'wilma@gmail.com', 'singapore', 'Wilma Lee', null, 'I want to sleep!!!'),
	('jacob', sha1('jacob'), 'Jacob Jang', '1990-02-17', 'jacob@gmail.com', 'singapore', 'Jake The Storm', null, 'All day every day!'),
	('eric', sha1('eric'), 'Eric Lee', '1995-05-22', 'eric@gmail.com', 'singapore', 'Eric Lee', null, 'Bohemian'),
    ('john', sha1('john'), 'John Jo', '1990-02-17', 'john@gmail.com', 'singapore', 'Johnnie B Goode', null, 'Life is good!'),
	('jay', sha1('jay'), 'Jay Lee', '1995-05-22', 'jay@gmail.com', 'singapore', 'Jay One', null, 'Sleepy.....'),
    ('ulrich', sha1('ulrich'), 'Ulrich Chan', '1990-02-17', 'ulrich@gmail.com', 'singapore', 'Ulrich Rich', null, 'Seize the day!'),
	('emma', sha1('emma'), 'Emma Watson', '1995-05-22', 'emma@gmail.com', 'singapore', 'Emma Namma', null, 'Good day to you!'),
    ('jane', sha1('jane'), 'Jane Kim', '1990-02-17', 'jane@gmail.com', 'singapore', 'Jane Jane', null, 'Hey there!'),
	('robbie', sha1('robbie'), 'Robbie Wilson', '1995-05-22', 'robbie@gmail.com', 'singapore', 'Call Me Rob', null, 'Welcome to my page!');