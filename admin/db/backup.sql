DROP TABLE IF EXISTS account;

CREATE TABLE `account` (
  `u_id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(40) NOT NULL,
  `status` varchar(23) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO account VALUES("5","habitu/5","asefa","admin","1");
INSERT INTO account VALUES("6","habitu/6","kenaw","wmersu","1");
INSERT INTO account VALUES("7","simegnaw/7","efadbd50863a3c8e7b964b68da5bece9","admin","1");
INSERT INTO account VALUES("8","simegnaw/8","81dc9bdb52d04dc20036dbd8313ed055","ebmersu","0");
INSERT INTO account VALUES("9","habitukk/9     ","81dc9bdb52d04dc20036dbd8313ed055","director","1");
INSERT INTO account VALUES("10","habitu/10","202cb962ac59075b964b07152d234b70","admin","1");
INSERT INTO account VALUES("11","habitu/11","81dc9bdb52d04dc20036dbd8313ed055","ebmersu","1");
INSERT INTO account VALUES("12","habitu/12","81dc9bdb52d04dc20036dbd8313ed055","wmersu","1");
INSERT INTO account VALUES("13","biniam/13","81dc9bdb52d04dc20036dbd8313ed055","director","1");
INSERT INTO account VALUES("14","habitu/14","81dc9bdb52d04dc20036dbd8313ed055","teacher","1");
INSERT INTO account VALUES("15","nigusu/15","81dc9bdb52d04dc20036dbd8313ed055","wmersu","1");
INSERT INTO account VALUES("16","hilena/16","81dc9bdb52d04dc20036dbd8313ed055","wmersu","1");
INSERT INTO account VALUES("17","biniam/17","d6d9dbd662b58c3e9aee21887ed66397","wmersu","1");
INSERT INTO account VALUES("18","simegnaw/18","b3d3cf1979cf9a989eeefe224bbb7ebb","wmersu","1");
INSERT INTO account VALUES("19","senayt/19","ce90345b7128e7bfba1e66ec9626092c","teacher","1");
INSERT INTO account VALUES("20","elisai/20","4bcea9d9e2eab0e7ca7657ca7d9ab9fe","teacher","1");
INSERT INTO account VALUES("21","guta/21","e7a015e7a73f10eec1b2f94c2b92b5dd","director","1");
INSERT INTO account VALUES("22","habtie/22","0e5151efd31c14fbdec4de4b9c28093d","teacher","1");
INSERT INTO account VALUES("23","hagos/23","ee239cd3f7b5c5aa4cf44070aef7c2c2","teacher","1");
INSERT INTO account VALUES("24","meron/24","5f304229faea3c369c69e5830ed8198d","teacher","1");
INSERT INTO account VALUES("25","wubetu/24","aa9b5cab18f759e082d296ea9769afd5","director","1");
INSERT INTO account VALUES("26","tadese/26","721a51991badc292069f08d2c0100522","director","1");
INSERT INTO account VALUES("27","medanit/27","b866700ce38e29e0bfedf0b9febef851","director","1");
INSERT INTO account VALUES("28","beti/28","a90196bca61f5636ffc153b0fbf6ced5","director","1");
INSERT INTO account VALUES("29","senayt/29","1cc3249efd67028367f9fb2699a9607f","teacher","1");
INSERT INTO account VALUES("30","wubet/30","cf0e2352ed5f2aca979778e3c23ff3f2","teacher","1");
INSERT INTO account VALUES("31","Habitu/31","ea08eb97924fe135165f084d5f950975","teacher","1");
INSERT INTO account VALUES("32","Habitu/32","ea08eb97924fe135165f084d5f950975","director","1");
INSERT INTO account VALUES("33","habitu/33","ea08eb97924fe135165f084d5f950975","director","1");
INSERT INTO account VALUES("105","habitu/105","15f8ac16661317fd9f9ebb3c84d72230","wmersu","1");
INSERT INTO account VALUES("106","simegnaw/106","efadbd50863a3c8e7b964b68da5bece9","wmersu","1");
INSERT INTO account VALUES("109","habitu/109","efadbd50863a3c8e7b964b68da5bece9","admin","1");
INSERT INTO account VALUES("117","simegnaw/117","efadbd50863a3c8e7b964b68da5bece9","wmersu","1");


DROP TABLE IF EXISTS apply_date;

CREATE TABLE `apply_date` (
  `ApplyDateID` int NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  PRIMARY KEY (`ApplyDateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO apply_date VALUES("1","2023-07-01","2023-08-05");


DROP TABLE IF EXISTS archive_result;

CREATE TABLE `archive_result` (
  `Ar_id` int NOT NULL AUTO_INCREMENT,
  `RID` int NOT NULL,
  `wcode` varchar(88) NOT NULL,
  `Fname` varchar(45) NOT NULL,
  `Lname` varchar(45) NOT NULL,
  `major` varchar(50) NOT NULL,
  `T_woreda_id` varchar(88) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`Ar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO archive_result VALUES("1","19","Itang Special","senayt","bassie","Physics","Itang Special","2023-06-25");
INSERT INTO archive_result VALUES("2","20","Itang Special","elisai","elias","Chemistry","Abob","2023-06-25");
INSERT INTO archive_result VALUES("3","21","Itang Special","guta","dasalegn","ICT","Gog","2023-06-25");
INSERT INTO archive_result VALUES("4","22","Godere","habtie","dagne","ICT","Abob","2023-06-25");
INSERT INTO archive_result VALUES("5","23","Godere","hagos","belay","Amharic","Abob","2023-06-25");
INSERT INTO archive_result VALUES("6","19","Itang Special","senayt","bassie","Physics","Itang Special","2023-06-25");
INSERT INTO archive_result VALUES("7","20","Itang Special","elisai","elias","Chemistry","Abob","2023-06-25");
INSERT INTO archive_result VALUES("8","21","Itang Special","guta","dasalegn","ICT","Gog","2023-06-25");
INSERT INTO archive_result VALUES("9","22","Godere","habtie","dagne","ICT","Abob","2023-06-25");
INSERT INTO archive_result VALUES("10","23","Godere","hagos","belay","Amharic","Abob","2023-06-25");


DROP TABLE IF EXISTS archive_school_form;

CREATE TABLE `archive_school_form` (
  `Aid` int NOT NULL AUTO_INCREMENT,
  `trid` int NOT NULL,
  `Fname` varchar(45) NOT NULL,
  `Lname` varchar(45) NOT NULL,
  `dateofocp` date NOT NULL,
  `major` varchar(88) NOT NULL,
  `wcode` int NOT NULL,
  `sid` varchar(110) NOT NULL,
  `service` int NOT NULL,
  `first_choice` varchar(110) NOT NULL,
  `second_choice` varchar(88) NOT NULL,
  `third_choice` varchar(45) NOT NULL,
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



DROP TABLE IF EXISTS archive_school_result;

CREATE TABLE `archive_school_result` (
  `Arid` int NOT NULL AUTO_INCREMENT,
  `RID` int NOT NULL,
  `sid` varchar(110) NOT NULL,
  `wcode` varchar(45) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(88) NOT NULL,
  `major` varchar(45) NOT NULL,
  `T_School_id` int NOT NULL,
  PRIMARY KEY (`Arid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



DROP TABLE IF EXISTS archive_transfer_form;

CREATE TABLE `archive_transfer_form` (
  `Ar_id` int NOT NULL AUTO_INCREMENT,
  `wtrid` int NOT NULL,
  `Fname` varchar(88) NOT NULL,
  `Lname` varchar(45) NOT NULL,
  `dateofocp` date NOT NULL,
  `major` varchar(88) NOT NULL,
  `wcode` varchar(45) NOT NULL,
  `service` int NOT NULL,
  `first_choice` varchar(50) NOT NULL,
  `second_choice` varchar(88) NOT NULL,
  PRIMARY KEY (`Ar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



DROP TABLE IF EXISTS request_table;

CREATE TABLE `request_table` (
  `R_id` int NOT NULL AUTO_INCREMENT,
  `Did` int NOT NULL,
  `wcode` int NOT NULL,
  `sid` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Amharic` int NOT NULL,
  `English` int NOT NULL,
  `Biology` int NOT NULL,
  `Chemistry` int NOT NULL,
  `Physics` int NOT NULL,
  `ICT` int NOT NULL,
  `Total_teach` int NOT NULL,
  PRIMARY KEY (`R_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO request_table VALUES("2","21","1","101","guta","1","1","0","0","1","0","4");
INSERT INTO request_table VALUES("3","25","2","102","wubetu","0","1","0","0","1","0","4");
INSERT INTO request_table VALUES("4","26","8","103","tadese","0","0","0","1","0","1","7");
INSERT INTO request_table VALUES("5","28","6","104","beti","0","0","1","1","0","0","5");
INSERT INTO request_table VALUES("7","13","1","100","biniam","4","3","3","8","1","3","22");


DROP TABLE IF EXISTS result;

CREATE TABLE `result` (
  `RID` int NOT NULL,
  `sid` varchar(100) NOT NULL,
  `wcode` int NOT NULL,
  `Fname` varchar(40) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `major` varchar(100) NOT NULL,
  `T_School_id` int NOT NULL,
  PRIMARY KEY (`RID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO result VALUES("14","schoolA","1","habitu","kenaw","Biology","100");


DROP TABLE IF EXISTS school;

CREATE TABLE `school` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `slevel` varchar(100) NOT NULL,
  `wcode` int NOT NULL,
  `rank` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `wcode` (`wcode`),
  CONSTRAINT `school_ibfk_1` FOREIGN KEY (`wcode`) REFERENCES `woreda` (`wcode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

INSERT INTO school VALUES("100","schoolA","Secondary School","1","2","2023-04-16");
INSERT INTO school VALUES("101","schoolB","Secondary School","2","2","2023-04-16");
INSERT INTO school VALUES("102","schoolC","primary School","8","2","2023-04-16");
INSERT INTO school VALUES("103","schoolD","primary School","8","2","2023-04-16");
INSERT INTO school VALUES("104","Abay Minch","Secondary School","6","2","2023-04-17");
INSERT INTO school VALUES("105","Gishi Abay","Secondary School","7","2","2023-04-17");
INSERT INTO school VALUES("109","Tewodros I","Secondary School","1","1","2023-06-25");
INSERT INTO school VALUES("110","Menelik II","Secondary School","1","1","2023-06-25");


DROP TABLE IF EXISTS teacher;

CREATE TABLE `teacher` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `age` varchar(40) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `role` varchar(100) NOT NULL,
  `dateofocp` date NOT NULL,
  `levelofedu` varchar(30) NOT NULL,
  `major` varchar(100) NOT NULL,
  `wcode` int NOT NULL,
  `sid` varchar(100) NOT NULL,
  `service` int DEFAULT NULL,
  `salary` int NOT NULL,
  `To_day` date NOT NULL,
  PRIMARY KEY (`t_id`),
  KEY `wcode` (`wcode`),
  KEY `sid` (`sid`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`wcode`) REFERENCES `woreda` (`wcode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

INSERT INTO teacher VALUES("13","biniam","fenta","23","male","director","2017-05-16","Degree","Chemistry","1","100","192758400","3000","2023-06-25");
INSERT INTO teacher VALUES("14","habitu","kenaw","23","male","teacher","2017-05-16","Degree","Biology","1","100","192758400","3000","2023-06-25");
INSERT INTO teacher VALUES("19","senayit","bassie","23","femal","teacher","2017-05-16","Degree","Biology","1","100","192758400","3000","2023-06-25");
INSERT INTO teacher VALUES("20","elisai","elias","23","male","teacher","2016-04-16","Degree","Amharic","1","100","226886400","3000","2023-06-25");
INSERT INTO teacher VALUES("21","guta","dasalegn","23","femal","teacher","2019-05-16","Degree","English","1","102","129686400","1234","2023-06-25");
INSERT INTO teacher VALUES("23","hagos","belay","23","male","teacher","2016-12-09","Degree","Biology","1","103","206409600","3465","2023-06-25");
INSERT INTO teacher VALUES("24","meron","birhanu","23","femal","teacher","2019-05-17","Degree","Amharic","1","100","129600000","4906","2023-06-25");
INSERT INTO teacher VALUES("25","wubetu","minwyelet","23","male","teacher","2015-05-17","Degree","Amharic","6","101","255830400","5345","2023-06-25");
INSERT INTO teacher VALUES("26","tadese","demilew","25","male","teacher","2016-04-17","Degree","Physics","6","102","226800000","3465","2023-06-25");
INSERT INTO teacher VALUES("27","medanit","fekadu","24","male","teacher","2018-04-17","Degree","Chemistry","6","103","163728000","4906","2023-06-25");
INSERT INTO teacher VALUES("28","beti","negrew","22","male","teacher","2018-04-17","Degree","ICT","6","104","163728000","5345","2023-06-25");
INSERT INTO teacher VALUES("29","senayt","Alamiy","20","femal","teacher","2018-12-17","Degree","ICT","6","104","142646400","5345","2023-06-25");
INSERT INTO teacher VALUES("30","wubet","salehu","23","male","teacher","2017-03-17","Degree","Amharic","6","101","197942400","5345","2023-06-25");


DROP TABLE IF EXISTS transfer_form;

CREATE TABLE `transfer_form` (
  `trid` int NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `age` varchar(40) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `dateofocp` date NOT NULL,
  `levelofedu` varchar(100) NOT NULL,
  `major` varchar(100) NOT NULL,
  `wcode` int NOT NULL,
  `sid` varchar(100) NOT NULL,
  `service` int NOT NULL,
  `multiplayer` double NOT NULL,
  `sum_E` int NOT NULL,
  `first_choice` varchar(100) NOT NULL,
  `second_choice` varchar(100) NOT NULL,
  `third_choice` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`trid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO transfer_form VALUES("14","habitu","kenaw","23","male","2017-05-16","Degree","Biology","1","schoolA","192758400","1","192758400","100","110","109","pandding");
INSERT INTO transfer_form VALUES("19","senayt","bassie","23","femal","2016-04-17","Degree","Physics","1","schoolA","192758400","1.1","192758400","111","114","113","transfered");
INSERT INTO transfer_form VALUES("20","elisai","elias","23","male","2018-04-17","Degree","Chemistry","1","schoolA","226886400","1.1","226886400","111","114","112","transfered");
INSERT INTO transfer_form VALUES("22","habtie","dagne","23","male","2018-04-17","Degree","ICT","2","schoolB","192240000","1.2","207792000","111","112","113","transfered");
INSERT INTO transfer_form VALUES("23","hagos","belay","23","male","2018-12-17","Degree","ICT","2","schoolB","206409600","1.2","206409600","111","112","113","transfered");
INSERT INTO transfer_form VALUES("24","meron","birhanu","23","femal","2017-03-17","Degree","Amharic","2","schoolB","129600000","1.2","129600000","112","114","113","transfered");


DROP TABLE IF EXISTS user;

CREATE TABLE `user` (
  `u_id` int NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` text NOT NULL,
  `age` int NOT NULL,
  `sex` varchar(10) NOT NULL,
  `wcode` int NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO user VALUES("4","simegnaw","asefa","23","male","0","ebmersu","Hasaccount","2023-06-25");
INSERT INTO user VALUES("5","habitu","asefa","23","male","0","admin","Hasaccount","2023-06-25");
INSERT INTO user VALUES("6","habitu","kenaw","23","male","5","wmersu","Hasaccount","2023-06-25");
INSERT INTO user VALUES("7","simegnaw","asefa","23","male","0","admin","Hasaccount","2023-06-25");
INSERT INTO user VALUES("9","simegnaw","asefa","23","male","0","admin","Hasaccount","2023-06-25");
INSERT INTO user VALUES("10","habitu","kenaw","24","male","0","admin","Hasaccount","2023-03-16");
INSERT INTO user VALUES("11","habitu","kenaw","23","male","0","ebmersu","Hasaccount","2023-06-23");
INSERT INTO user VALUES("12","habitu","kenaw","23","male","1","wmersu","Hasaccount","2023-03-16");
INSERT INTO user VALUES("13","biniam","fenta","23","male","1","director","Hasaccount","2023-03-16");
INSERT INTO user VALUES("14","habitu","kenaw","23","male","1","teacher","Hasaccount","2023-03-16");
INSERT INTO user VALUES("15","nigusu","kasaw","25","male","2","wmersu","Hasaccount","2023-06-16");
INSERT INTO user VALUES("16","hilena","worku","23","female","3","wmersu","Hasaccount","2023-06-17");
INSERT INTO user VALUES("17","biniam","fenta","20","male","4","wmersu","Hasaccount","2023-06-28");
INSERT INTO user VALUES("18","simegnaw","asefa","25","male","5","wmersu","Hasaccount","2023-06-30");
INSERT INTO user VALUES("19","senayit","bassie","23","femal","1","teacher","Hasaccount","2023-06-16");
INSERT INTO user VALUES("20","elisai","elias","23","male","1","teacher","Hasaccount","2023-06-16");
INSERT INTO user VALUES("21","guta","dasalegn","23","male","1","director","Hasaccount","2023-06-16");
INSERT INTO user VALUES("22","habtie","dagne","23","male","6","director","Hasaccount","2023-06-17");
INSERT INTO user VALUES("23","hagos","belay","23","male","6","teacher","Hasaccount","2023-06-17");
INSERT INTO user VALUES("24","meron","birhanu","23","female","6","teacher","Hasaccount","2023-06-17");
INSERT INTO user VALUES("25","wubetu","minwyelet","23","male","2","director","Hasaccount","2023-06-17");
INSERT INTO user VALUES("26","tadese","demilew","25","male","8","director","Hasaccount","2023-06-17");
INSERT INTO user VALUES("27","medanit","fekadu","24","femal","7","director","Hasaccount","2022-06-17");
INSERT INTO user VALUES("28","beti","negrew","22","femal","6","director","Hasaccount","2023-06-17");
INSERT INTO user VALUES("30","wubet","salehu","25","male","6","teacher","Hasaccount","2023-06-28");
INSERT INTO user VALUES("33","habitu","kenaw","25","femal","1","director","Hasaccount","2023-06-25");


DROP TABLE IF EXISTS w_request_table;

CREATE TABLE `w_request_table` (
  `Wrid` int NOT NULL,
  `wcode` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Amharic` int NOT NULL,
  `English` int NOT NULL,
  `Biology` int NOT NULL,
  `Chemistry` int NOT NULL,
  `Physics` int NOT NULL,
  `ICT` int NOT NULL,
  `Total_teach` int NOT NULL,
  PRIMARY KEY (`Wrid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO w_request_table VALUES("1","Itang Special","habitu","1","2","1","2","2","1","9");
INSERT INTO w_request_table VALUES("2","Abob","nigusu","3","2","1","2","2","1","11");
INSERT INTO w_request_table VALUES("3","Gog","biniam","1","2","1","1","2","2","9");
INSERT INTO w_request_table VALUES("12","Itang Special","habitu","1","2","1","0","2","1","7");


DROP TABLE IF EXISTS w_transfer_form;

CREATE TABLE `w_transfer_form` (
  `wtrid` int NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `age` varchar(40) NOT NULL,
  `sex` varchar(3) NOT NULL,
  `dateofocp` date NOT NULL,
  `levelofedu` varchar(100) NOT NULL,
  `major` varchar(40) NOT NULL,
  `wcode` varchar(100) NOT NULL,
  `service` int NOT NULL,
  `multiplayer` double NOT NULL,
  `sum_E` int NOT NULL,
  `first_choice` varchar(40) NOT NULL,
  `second_choice` varchar(40) NOT NULL,
  PRIMARY KEY (`wtrid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO w_transfer_form VALUES("14","habitu","kenaw","23","mal","2017-05-16","Degree","Biology","Itang Special","192758400","1","192758400","1","Abob");
INSERT INTO w_transfer_form VALUES("19","senayt","bassie","23","fem","2016-04-17","Degree","Physics","Itang Special","194918400","1.1","226022400","Lare","Itang Special");
INSERT INTO w_transfer_form VALUES("20","elisai","elias","23","mal","2018-04-17","Degree","Chemistry","Itang Special","131846400","1.2","152582400","Jore","Abob");
INSERT INTO w_transfer_form VALUES("21","guta","dasalegn","23","mal","2018-04-17","Degree","ICT","Itang Special","131846400","1.2","152582400","Akobo","Gog");
INSERT INTO w_transfer_form VALUES("22","habtie","dagne","23","mal","2018-12-17","Degree","ICT","Godere","110761200","1.2","126313200","Abob","Lare");
INSERT INTO w_transfer_form VALUES("23","hagos","belay","23","mal","2017-03-17","Degree","Amharic","Godere","166057200","1.2","191977200","Dimma","Abob");
INSERT INTO w_transfer_form VALUES("24","meron","birhanu","23","fem","2016-02-08","Degree","Chemistry","Godere","200876400","1.2","231980400","Jore","Akobo");


DROP TABLE IF EXISTS woreda;

CREATE TABLE `woreda` (
  `wcode` int NOT NULL,
  `wname` varchar(50) NOT NULL,
  `multiplayer` double NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`wcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO woreda VALUES("1","Itang Special","1","2023-05-16");
INSERT INTO woreda VALUES("2","Abob","1","2023-05-16");
INSERT INTO woreda VALUES("3","Gog","1","2023-05-16");
INSERT INTO woreda VALUES("4","Jore","1","2023-05-16");
INSERT INTO woreda VALUES("5","Dimma","1","2023-05-16");
INSERT INTO woreda VALUES("6","Godere","1","2023-05-16");
INSERT INTO woreda VALUES("7","Lare","1","2023-05-16");
INSERT INTO woreda VALUES("8","Akobo","1","2023-05-17");


DROP TABLE IF EXISTS wtow_result;

CREATE TABLE `wtow_result` (
  `RID` int NOT NULL,
  `wcode` varchar(100) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `major` varchar(100) NOT NULL,
  `T_woreda_id` varchar(40) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`RID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



