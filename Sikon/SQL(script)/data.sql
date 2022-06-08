INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, user_regdate, quit_date, quit_status  )
VALUES ( 'user@naver.com', 'user', '1234', '19941111', 'user', 'ee.jpg', '서울시 서초구', default, '01022249988', default, 'N', SYSDATE, to_date('2013/01/14', 'YYYY/MM/DD'), 'N');

INSERT all
INTO users
VALUES ( 'admin@naver.com', 'admin', '1234', '19941111', 'admin', 'ee.jpg', '서울시 서초구', 'admin', '01023341200', default, 'Y', SYSDATE, to_date('2013/01/14', 'YYYY/MM/DD'), 'Y')
INTO license
VALUES ( seq_license_license_no.nextval, '2종보통', '강남구청', to_date('2017/05/24', 'YYYY/MM/DD'), 'admin@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '회사', to_date('2011/05/24', 'YYYY/MM/DD'), to_date('2012/05/24', 'YYYY/MM/DD'), '싸이', 'admin@naver.com')
select *from dual;

INSERT all
INTO users
VALUES ( 'mentor@naver.com', 'mentor', '1234', '19941111', 'mentor', 'ee.jpg', '서울시 서초구', 'mentor', '01023341000', default, 'Y', SYSDATE, to_date('2013/01/14', 'YYYY/MM/DD'), 'Y')
INTO license
VALUES ( seq_license_license_no.nextval, '1종보통', '강동구청', to_date('2018/05/24', 'YYYY/MM/DD'), 'mentor@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '주식회사', to_date('2013/05/24', 'YYYY/MM/DD'), to_date('2015/05/24', 'YYYY/MM/DD'), '싸이', 'mentor@naver.com')
select *from dual;

INSERT 
INTO coupon(coupon_no, coupon_name, discount_rate, discount_value, coupon_regdate)
VALUES (seq_coupon_coupon_no.NEXTVAL, '50% 할인쿠폰', 0.5, 0, SYSDATE);

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10000, 'mentor@naver.com', '2022/05/12', '2022/06/30', '001');

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '계란', 3000, '계란 디테일', 0.10, 2700, '계란thumbnail.jpg', '계란content', 50, 'TW', 'Y', 'Y', SYSDATE );

INSERT
INTO purchase( tran_no , prod_no, user_id, serial_no, receiver_name, receiver_phone, receiver_email, quantity, divy_addr, divy_message, used_coupon, used_point, earn_point, orderdate, payment_opt, divy_status, invoice_num, divy_fee) 
VALUES (seq_purchase_tran_no.NEXTVAL , 10000, 'mentor@naver.com', '2022060310000', '힙쟁이', '01012345678', 'heap@naver.com', 5, '비트캠프', '8층으로 가져다주세요', '10% 할인쿠폰', 500, 270, SYSDATE, 'KA', '001', '송장번호', 3000);

INSERT
INTO cart( cart_no , prod_no, user_id, quantity, prod_name, prod_image, prod_price ) 
VALUES (seq_cart_cart_no.NEXTVAL , 10000, 'user@naver.com', 5, '계란', 'eggs.jpg&', 2700);

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname  )
VALUES (seq_cook_cook_no.nextval, '예다의 계란 후라이 쿠킹클래스', 'yyy.jpg', '진짜 쉬워요', '초급', 14000, '한식', SYSDATE, SYSDATE, 5, SYSDATE, SYSDATE, '강남구 비트캠프', SYSDATE, 'aaa.jpg', 20, 0, '후라이content','mentor' );

INSERT 
INTO apply(apply_no, cook_no, applier_id, payment_option, apply_status, cook_status, check_date)
VALUES (seq_apply_apply_no.nextval, '10000', 'mentor@naver.com', '카카오페이', '100', 10, '2022/06/30');

INSERT
INTO heart(heart_no, cook_no, user_id) 
VALUES(seq_heart_heart_no.nextval, '10000', 'mentor@naver.com');

INSERT
INTO wish( wish_no , cook_no, user_id, cook_status, cook_name ,cook_filename ,cook_price)
VALUES (seq_wish_wish_no.NEXTVAL, 10000, 'mentor@naver.com', 5, '예다의 계란 후라이 쿠킹클래스', 'yyy.jpg', 14000);

INSERT 
INTO notice(notice_no, notice_title, notice_content, notice_image, notice_date) 
VALUES (seq_notice_notice_no.NEXTVAL, '공지합니다', '공지내용입니다', '공지.jpg', SYSDATE);

INSERT ALL
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor', '11', '11', '11', null, '11', '11', 1, 'd' , SYSDATE, 0)
INTO ingredient VALUES(seq_ingredient_no.nextval, '11', '11', seq_recipe_no.nextval)
SELECT * FROM dual;

INSERT
INTO ingredient
VALUES (seq_ingredient_no.nextval ,'야채' , '1g', '10000');

INSERT
INTO bookmark
VALUES (seq_bookmark_no.nextval ,'10000' , 'mentor@naver.com');

INSERT
INTO review
VALUES (seq_review_no.nextval  ,'mentor' , '리뷰내용임', SYSDATE, 'RE', 'aa.jpg', 10000, NULL, NULL, NULL, NULL);

COMMIT;