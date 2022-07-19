DROP TABLE GallBoard;
CREATE TABLE GallBoard (
	pkNum 			BIGINT			PRIMARY KEY AUTO_INCREMENT,
	testNum			INT				DEFAULT NULL,
	available		INT				DEFAULT NULL,
	galleryName		VARCHAR(30)		DEFAULT NULL,
	name			VARCHAR(20)		DEFAULT NULL,
	exhibitionArea	VARCHAR(20) 	DEFAULT NULL,
	exhibitonHeight VARCHAR(20) 	DEFAULT NULL,
	specialNote		VARCHAR(100)	DEFAULT NULL,
	rentalFee		VARCHAR(20)		DEFAULT NULL,
	address			VARCHAR(100)	DEFAULT NULL,
	phone			VARCHAR(20)		DEFAULT NULL,
	email			VARCHAR(100)	DEFAULT NULL,
	title			VARCHAR(50)		DEFAULT NULL,
	userId			VARCHAR(30)		DEFAULT NULL,
	boardContent	VARCHAR(2000)	DEFAULT NULL,
	regDate			TIMESTAMP		DEFAULT NULL	DEFAULT CURRENT_TIMESTAMP	
)AUTO_INCREMENT = 1;

SELECT * FROM GallBoard;

INSERT INTO GallBoard (testNum, available, galleryName, name, exhibitionArea,
exhibitonHeight, specialNote, rentalFee, address, phone, email,
title, userId, boardContent)
VALUES (1, 1, '땡떙갤러리', 'KGB', '100M', '20M', '주차장없음', '10만원',
'대구', '010-1234-1234', 'kgb1234@naver.com', '무제','testID', '안녕하세요');

DROP TABLE UserSignUp;
CREATE TABLE UserSignUp (
pkUser			BIGINT			PRIMARY KEY AUTO_INCREMENT,
userId			VARCHAR(20)		DEFAULT NULL,
passwd			VARCHAR(20)		DEFAULT NULL,
koreanName		VARCHAR(20)		DEFAULT NULL,
englishName		VARCHAR(30)		DEFAULT NULL,
ssn				VARCHAR(20)		DEFAULT NULL,
acaBackGround	VARCHAR(30)		DEFAULT NULL,
major			VARCHAR(30)		DEFAULT NULL,
careerYear		VARCHAR(20)		DEFAULT NULL,
careerType		VARCHAR(30)		DEFAULT NULL,
company			VARCHAR(30)		DEFAULT NULL,
portpolio		VARCHAR(30)		DEFAULT NULL,
mainGenre		VARCHAR(30)		DEFAULT NULL,
priceAvg		VARCHAR(30)		DEFAULT NULL,
salesRate		VARCHAR(30)		DEFAULT NULL,
mainArtwork		VARCHAR(30)		DEFAULT NULL,
phoneNumber		VARCHAR(30)		DEFAULT NULL,
email			VARCHAR(30)		DEFAULT NULL,
sns				VARCHAR(30)		DEFAULT NULL,
gender			VARCHAR(10)		DEFAULT NULL,
addr			VARCHAR(30)		DEFAULT NULL,
level			VARCHAR(1)		DEFAULT 1,
regDate			TIMESTAMP		DEFAULT CURRENT_TIMESTAMP
)AUTO_INCREMENT = 1;

SELECT * FROM UserSignUp;

INSERT INTO UserSignUp (userId, passwd, koreanName, englishName, ssn, acaBackGround,
major, careerYear, careerType, company, portpolio, mainGenre, priceAvg, salesRate,
mainArtwork, phoneNumber, email, sns)
VALUES('admin', 'admin', '홍길동', 'KGB', '944121', '대학교 졸업', '미술과','1년이하',
'개인전', 'N', 'N', '조각', '10000', '없음', 'N', '010-1234-5678', 'test@naver.com', '인스타');

DROP TABLE board;
CREATE TABLE board(
	bId 		INT(4) 			NOT NULL AUTO_INCREMENT PRIMARY KEY,
	bName 		VARCHAR(20)		DEFAULT NULL,
	bTitle 		VARCHAR(100)	DEFAULT NULL,
	bContent 	VARCHAR(300)	DEFAULT NULL,
	bDate 		TIMESTAMP 		DEFAULT CURRENT_TIMESTAMP,
	bHit 		INT(4) 			DEFAULT NULL,
	bGroup 		INT(4)			DEFAULT NULL,
	bStep		INT(4)			DEFAULT NULL,
	bIndent 	INT(4)			DEFAULT NULL
)AUTO_INCREMENT = 1;

SELECT * FROM board;