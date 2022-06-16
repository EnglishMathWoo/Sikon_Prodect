DROP TABLE coupon CASCADE CONSTRAINTS;
DROP TABLE couponholder CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE bookmark CASCADE CONSTRAINTS;
DROP TABLE ingredient CASCADE CONSTRAINTS;
DROP TABLE recipe CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE users CASCADE CONSTRAINTS;
DROP TABLE license CASCADE CONSTRAINTS;
DROP TABLE career CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE purchase CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE cook CASCADE CONSTRAINTS;
DROP TABLE heart CASCADE CONSTRAINTS;
DROP TABLE wish CASCADE CONSTRAINTS;
DROP TABLE apply CASCADE CONSTRAINTS;
DROP TABLE alarm CASCADE CONSTRAINTS;
DROP TABLE ranking CASCADE CONSTRAINTS;
DROP table point CASCADE CONSTRAINTS; 
DROP table love  CASCADE CONSTRAINTS; 

DROP SEQUENCE seq_coupon_coupon_no;
DROP SEQUENCE seq_couponhodler_issue_no;
DROP SEQUENCE seq_notice_notice_no;
DROP SEQUENCE seq_bookmark_no;
DROP SEQUENCE seq_ingredient_no;
DROP SEQUENCE seq_recipe_no;
DROP SEQUENCE seq_review_no;
DROP SEQUENCE seq_license_license_no;
DROP SEQUENCE seq_career_career_no;
DROP SEQUENCE seq_product_prod_no;
DROP SEQUENCE seq_purchase_tran_no;
DROP SEQUENCE seq_cart_cart_no;
DROP SEQUENCE seq_cook_cook_no;
DROP SEQUENCE seq_wish_wish_no;
DROP SEQUENCE seq_heart_heart_no;
DROP SEQUENCE seq_apply_apply_no;
DROP SEQUENCE seq_alarm_alarm_no;
DROP SEQUENCE seq_ranking_ranking_no;
DROP SEQUENCE seq_point_point_no;
DROP SEQUENCE seq_love_love_no;

CREATE SEQUENCE seq_coupon_coupon_no INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_couponhodler_issue_no INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_notice_notice_no INCREMENT BY 1 START WITH 10000;
CREATE  SEQUENCE  seq_recipe_no	 INCREMENT  BY  1  START  WITH  10000;
CREATE  SEQUENCE  seq_ingredient_no	 INCREMENT  BY  1  START  WITH  10000;
CREATE  SEQUENCE  seq_bookmark_no	 INCREMENT  BY  1  START  WITH  10000;
CREATE  SEQUENCE  seq_review_no	 INCREMENT  BY  1  START  WITH  10000;
CREATE SEQUENCE seq_license_license_no INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_career_career_no INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_product_prod_no 	INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_purchase_tran_no 	INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_cart_cart_no 		INCREMENT BY 1 START WITH 10000;
CREATE  SEQUENCE  seq_cook_cook_no	 INCREMENT  BY  1  START  WITH  10000;
CREATE SEQUENCE seq_wish_wish_no	  INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_heart_heart_no	  INCREMENT BY 1 START WITH 1;
CREATE  SEQUENCE  seq_apply_apply_no	 INCREMENT  BY  1  START  WITH  10000;
CREATE  SEQUENCE  seq_alarm_alarm_no	 INCREMENT  BY  1  START  WITH  10000;
CREATE  SEQUENCE  seq_ranking_ranking_no INCREMENT  BY  1  START  WITH  10000;
CREATE SEQUENCE seq_point_point_no INCREMENT BY 1 START WITH 10000;
CREATE SEQUENCE seq_love_love_no    INCREMENT BY 1 START WITH 10000;  

CREATE TABLE users ( 
	user_id 	VARCHAR2(50)	NOT NULL,
	user_name 	VARCHAR2(20)	NOT NULL,
	password 	VARCHAR2(30)	NOT NULL,
	user_birth 	VARCHAR2(20),
	user_nickname 	VARCHAR2(40)	UNIQUE  NOT NULL,
	user_image 	VARCHAR2(100)	DEFAULT '??.jpg',
	user_addr 	VARCHAR2(500),
	role 		VARCHAR2(20) 	DEFAULT 'user'	NOT NULL,
	user_phone 	VARCHAR2(20)	UNIQUE,
	holdpoint 	NUMBER(38)	DEFAULT '0' NOT NULL,
	mentor_apply 	VARCHAR2(20)	NOT NULL,
	login_path      VARCHAR2(20)    DEFAULT 'S' NOT NULL,
	user_regdate 	DATE 		NOT NULL,
	quit_date 	DATE,
	quit_status 	VARCHAR2(20)	DEFAULT 'N' NOT NULL,
	PRIMARY KEY(user_id)
);

CREATE TABLE license ( 
	license_no 	NUMBER(38)  	PRIMARY KEY,
	license_name 	VARCHAR2(30) 	,
	license_institution 	VARCHAR2(40) 	,
	license_date 	DATE 		,
	user_id 		VARCHAR2(50)  	REFERENCES users(user_id) ON DELETE CASCADE	
);

CREATE TABLE career ( 
	career_no 	NUMBER(38)	,
	company 	VARCHAR2(30) 	,
	start_date 		DATE 		,
	end_date 		DATE 		,
	career_experience 	VARCHAR2(1000) 	,
	user_id 		VARCHAR2(50) 	REFERENCES users(user_id) ON DELETE CASCADE,
	PRIMARY KEY(career_no)	
);

CREATE TABLE coupon ( 
	coupon_no NUMBER NOT NULL,
	coupon_name VARCHAR2(100) NOT NULL,
	discount_rate NUMBER(3,2) NOT NULL,
	discount_value NUMBER NOT NULL,
	coupon_regdate DATE NOT NULL,
	PRIMARY KEY(coupon_no)
);

CREATE TABLE couponholder ( 
	issue_no NUMBER NOT NULL,
	coupon_no NUMBER NOT NULL,
	holder_id VARCHAR2(50) NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	issue_status VARCHAR2(20) NOT NULL,
	PRIMARY KEY(issue_no)
);

CREATE TABLE notice ( 
	notice_no NUMBER NOT NULL,
	notice_title  VARCHAR2(100) NOT NULL,
	notice_content VARCHAR2(2000) NOT NULL,
	notice_date DATE NOT NULL,
	notice_image VARCHAR2(100),
	PRIMARY KEY(notice_no) 
);

CREATE TABLE recipe(
	recipe_no NUMBER 	NOT NULL,
	writer_nickname  VARCHAR2(50) REFERENCES  users(user_nickname),
	recipe_name  VARCHAR2(100) NOT NULL,
	recipe_detail  VARCHAR2(200)  NOT NULL,
	detail  VARCHAR2(600) NOT NULL,
	recipe_img VARCHAR2(200) NOT NULL,
	recipe_video VARCHAR2(200),
	recipe_difficulty VARCHAR2(20) NOT NULL,
	recipe_theme VARCHAR2(20) NOT NULL,
	cooking_time NUMBER NOT NULL,		 
	recipe_order  CLOB NOT NULL,
	recipe_regdate  DATE NOT NULL,
	review_num  NUMBER NOT NULL,
	recipe_views  NUMBER NOT NULL, 
	PRIMARY KEY(recipe_no)
);

CREATE TABLE ingredient(
	ingredient_no   NUMBER  NOT NULL,
	ingredient_name  VARCHAR2(50)  NOT NULL,
	ingredient_amount  VARCHAR2(30)  NOT NULL,
	recipe_no   NUMBER  REFERENCES recipe(recipe_no)  ON DELETE CASCADE,
	PRIMARY KEY(ingredient_no)
);


CREATE TABLE bookmark(
bookmark_no  NUMBER NOT NULL,
recipe_no NUMBER REFERENCES recipe(recipe_no) ON DELETE CASCADE,
user_id   VARCHAR2(50)   	REFERENCES  users(user_id) ON DELETE CASCADE,
PRIMARY KEY(bookmark_no)
);

CREATE TABLE product ( 
	prod_no 			NUMBER 		NOT NULL, 
	prod_name 		VARCHAR2(100) 	NOT NULL, 
	prod_price 		NUMBER 		NOT NULL, 
	prod_detail 		VARCHAR2(200), 
	prod_disrate 		NUMBER(3,2),  
	prod_disprice 		NUMBER, 
	prod_thumbnail 		VARCHAR2(500) 	NOT NULL, 
	prod_content 		CLOB 		NOT NULL, 
	prod_stock 		NUMBER	 	NOT NULL, 
	prod_theme 		VARCHAR2(10) 	NOT NULL, 
	prod_status 		VARCHAR2(10) 	NOT NULL, 
	coupon_apply 		VARCHAR2(10) 	NOT NULL, 
	prod_regdate 		DATE, 
	PRIMARY KEY(prod_no)
);

CREATE TABLE purchase ( 
	tran_no 			NUMBER 		NOT NULL, 
	prod_no 			NUMBER  	NOT NULL 	REFERENCES 	product(prod_no), 
	user_id 	 		VARCHAR2(50)  	NOT NULL 	REFERENCES 	users(user_id), 
	serial_no 			VARCHAR2(50) 	NOT NULL, 
	receiver_name 		VARCHAR2(20)  	NOT NULL,  
	receiver_phone 		VARCHAR2(20)  	NOT NULL, 
	receiver_email 		VARCHAR2(20)  	NOT NULL, 
	quantity 			NUMBER, 
	divy_addr 		VARCHAR2(500) 	NOT NULL, 
	divy_message 		VARCHAR2(200), 
	used_coupon 		VARCHAR2(50), 
	used_point 			NUMBER, 
	earn_point 			NUMBER 	NOT NULL,  
	orderdate 		DATE 		NOT NULL,  
	payment_opt 		VARCHAR2(20) 	NOT NULL, 
	divy_status 		VARCHAR2(20) 	NOT NULL, 
	invoice_num 		VARCHAR2(100), 	
	divy_fee 			NUMBER, 
	review_status 		VARCHAR2(20) 	NOT NULL, 
	PRIMARY KEY(tran_no)
);

CREATE TABLE cart ( 
	cart_no 			NUMBER 		NOT NULL, 
	prod_no 			NUMBER  	NOT NULL 	REFERENCES 	product(prod_no), 
	user_id 	 		VARCHAR2(50)  	NOT NULL 	REFERENCES 	users(user_id), 
	quantity 			NUMBER, 
	prod_name 		VARCHAR2(100),
	prod_image 		VARCHAR2(500),
	prod_price 		NUMBER,
	PRIMARY KEY(cart_no)
);

CREATE TABLE cook ( 
	cook_no 			 			NUMBER 		 		NOT NULL,
	cook_name 			 	VARCHAR2(100)  	NOT NULL,
	cook_filename                                      VARCHAR2(200),
	cook_brief 		 		VARCHAR2(200),
	cook_difficuty			   		     VARCHAR2(20)                   NOT NULL,
	cook_price 				 NUMBER(10)  NOT NULL,	
	cook_theme 			 	VARCHAR2(20) NOT NULL,	
	apl_startime     				 VARCHAR2(200) NOT NULL,	
	apl_endtime         			 VARCHAR2(200) NOT NULL,	
	start_time         			 VARCHAR2(200) NOT NULL,	
	end_time         			 VARCHAR2(200) NOT NULL,
	cook_recruit                               NUMBER 		 		NOT NULL,		
	cook_location         			 VARCHAR2(200)    not null,
	cook_regdate         			 DATE    not null,	
	cook_video         			VARCHAR2(200)  ,
	cook_stock         			 NUMBER    not null,
	heart_hit 					 NUMBER    default 0  not null,
	cook_content 		                  VARCHAR2(2000)           NOT NULL,
	mentor_nickname			 	VARCHAR2(50)	 NOT  NULL  REFERENCES  users(user_nickname) ON DELETE CASCADE,
	mentor_id 			 	VARCHAR2(50)	 NOT  NULL  REFERENCES  users(user_id) ON DELETE CASCADE, 
	PRIMARY KEY(cook_no)
);

CREATE TABLE apply ( 
	apply_no 			 		NUMBER 			 NOT  NULL,
	cook_no 			 		NUMBER		 NOT  NULL  REFERENCES  cook(cook_no) ON DELETE CASCADE,
	applier_id 			 	VARCHAR2(50)	 NOT  NULL  REFERENCES  users(user_id) ON DELETE CASCADE,
	payment_option	 	VARCHAR(50),	
	apply_status 	VARCHAR(20),
	cook_status         			 NUMBER  not null,
	check_date 		 	DATE,
	review_status 		VARCHAR2(20) 	NOT NULL,
	cook_price 		NUMBER(10)  NOT NULL ,	
	PRIMARY KEY(apply_no)
);

CREATE TABLE wish(
	wish_no				  NUMBER 			  	  NOT NULL,
	cook_no 			 		NUMBER		 NOT  NULL  REFERENCES  cook(cook_no) ON DELETE CASCADE,
	user_id				  VARCHAR2(50)	    NOT NULL REFERENCES     users(user_id) ON DELETE CASCADE,
	cook_status NUMBER,
	cook_name 			 	VARCHAR2(100)  	NOT NULL,
	cook_filename VARCHAR2(200),
	cook_price 				 NUMBER(10)  NOT NULL,	
		PRIMARY KEY(wish_no)
);

CREATE TABLE heart (
	heart_no				  NUMBER 			  	  NOT NULL,
	cook_no 			 		NUMBER		 NOT  NULL  REFERENCES  cook(cook_no) ON DELETE CASCADE,
	user_id				  VARCHAR2(50)	    NOT NULL REFERENCES     users(user_id) ON DELETE CASCADE,
	heart_check                           NUMBER(20)         DEFAULT 0              NOT NULL,	
	PRIMARY KEY(heart_no)
);

CREATE TABLE love(
love_no                 NUMBER NOT NULL,
user_nickName      VARCHAR2(50)	 NOT  NULL  REFERENCES  users(user_nickname) ON DELETE CASCADE,
user_id              VARCHAR2(50)   	REFERENCES  users(user_id) ON DELETE CASCADE,
love_check                           NUMBER(20)         DEFAULT 0              NOT NULL,	
PRIMARY KEY(love_no)
);

CREATE TABLE review(
	review_no  NUMBER 		 		NOT NULL,
           review_category        VARCHAR2(20)  NOT NULL,
	writer_nickname   VARCHAR2(50)   	REFERENCES  users(user_nickname) ,
	review_content         VARCHAR2(400)   NOT NULL,
	review_img    VARCHAR2(100),	
	review_regdate        DATE NOT NULL,
	recipe_no   NUMBER(16)    REFERENCES  recipe(recipe_no) ON DELETE CASCADE,
	prod_no   NUMBER(16)     REFERENCES  product(prod_no) ON DELETE CASCADE,
	cook_no   NUMBER(16)     REFERENCES  cook(cook_no) ON DELETE CASCADE,
	status    NUMBER(16)   ,
	PRIMARY KEY(review_no)
);

CREATE TABLE alarm ( 
	alarm_no 	NUMBER(38) 	NOT NULL, 
	alarm_target 	VARCHAR2(100),
	alarm_content 	VARCHAR2(4000), 
	alarm_status 	VARCHAR2(20), 
	alarm_date 	DATE 		NOT NULL,	
	PRIMARY KEY(alarm_no)
);

CREATE TABLE ranking ( 
	ranking_no NUMBER NOT NULL,
	recipe_no NUMBER, 
	view_date DATE, 
	user_nickname VARCHAR2(200), 
	user_id VARCHAR2(200), 
	love_date DATE, 
	search_keyword VARCHAR2(200), 
	search_date DATE, 
	PRIMARY KEY(ranking_no) 
);

CREATE TABLE point ( 
	point_no 		NUMBER,  
	user_id 		VARCHAR2(30) 	REFERENCES users(user_id), 
	point_category 	VARCHAR2(10), 	
	point_type 	VARCHAR2(10), 
	total_point 	NUMBER, 
	point_score 	NUMBER,
	point_regdate 	DATE, 
  	PRIMARY KEY(point_no)
); 


commit;