INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, login_path, user_regdate, quit_status  )
VALUES ( 'user@naver.com', 'user', '1234', '1994-11-11', 'user', default, '서울시 서초구', default, '01022249988', 100000, 'N', default, SYSDATE, 'N');

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, NULL, NULL, NULL, 'user@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, NULL, NULL, NULL, NULL, 'user@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, NULL, NULL, NULL, 'user@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, NULL, NULL, NULL, NULL, 'user@naver.com')
select *from dual;

INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, login_path, user_regdate, quit_status  )
VALUES ( 'user2@naver.com', 'user2', '1234', '1994-11-11', 'user2', default, '서울시 서초구', default, '01022247777', 100000, 'N', default, SYSDATE, 'N');

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, NULL, NULL, NULL, 'user2@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, NULL, NULL, NULL, NULL, 'user2@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, NULL, NULL, NULL, 'user2@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, NULL, NULL, NULL, NULL, 'user2@naver.com')
select *from dual;

INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, login_path, user_regdate, quit_status  )
VALUES ( 'user3@naver.com', 'user3', '1234', '1994-11-11', 'user3', default, '서울시 서초구', default, '01044447777', 100000, 'Y', default, SYSDATE, 'N');

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '3종보통', '구청2', '2018-05-24', 'user3@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '삼성', '2018-05-24', '2018-05-24', '1년근무', 'user3@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '3종보통', '구청3', '2019-05-24', 'user3@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '현대', '2018-05-24', '2018-05-24', '2년근무', 'user3@naver.com')
select *from dual;

INSERT all
INTO users
VALUES ( 'mentor@naver.com', 'mentor', '1234', '1994-11-11', 'mentor', '마동석요리.jpg', '서울시 서초구', 'mentor', '01023341000', 100000, 'Y', default, SYSDATE, NULL, 'N')
INTO license
VALUES ( seq_license_license_no.nextval, '1종보통', '강동구청', '2018-05-24', 'mentor@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '삼성', '2013-05-24', '2015-05-24', '1년근무', 'mentor@naver.com')
select*from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '2종보통', '강서구청', '2019-06-24', 'mentor@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '현대', '2014-05-24', '2017-05-24', '2년근무', 'mentor@naver.com')
select *from dual;

INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, login_path, user_regdate, quit_status  )
VALUES ( 'mentor1@naver.com', 'mentor1', '1234', '1994-11-11', 'mentor1', '고든램지.jpg', '서울시 서초구', 'mentor', '01033337777', 100000, 'Y', default, SYSDATE, 'N');

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '자격증1', '구청1', '2015-05-24', 'mentor1@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, 'LG', '2013-05-24', '2014-05-24', '1년근무', 'mentor1@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '자격증2', '구청2', '2016-05-24', 'mentor1@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, 'LG1', '2014-04-24', '2015-05-24', '2년근무', 'mentor1@naver.com')
select *from dual;

INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, login_path, user_regdate, quit_status  )
VALUES ( 'mentor2@naver.com', 'mentor2', '1234', '1994-11-11', 'mentor2', '168939.jpg', '서울시 서초구', 'mentor', '01033331111', 100000, 'Y', default, SYSDATE, 'N');

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '자격증3', '구청3', '2016-05-24', 'mentor2@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, 'LG2', '2015-05-24', '2016-05-24', '3년근무', 'mentor2@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '자격증4', '구청4', '2017-05-24', 'mentor2@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, 'LG3', '2016-04-24', '2017-05-24', '4년근무', 'mentor2@naver.com')
select *from dual;

INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, login_path, user_regdate, quit_status  )
VALUES ( 'mentor3@naver.com', 'mentor3', '1234', '1994-11-11', 'mentor3', '호빵맨.png', '서울시 서초구', 'mentor', '01033338888', 100000, 'Y', default, SYSDATE, 'N');

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '자격증4', '구청4', '2017-05-24', 'mentor3@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, 'LG3', '2017-05-24', '2018-05-24', '5년근무', 'mentor3@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '자격증5', '구청5', '2018-05-24', 'mentor3@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, 'LG4', '2018-04-24', '2019-05-24', '6년근무', 'mentor3@naver.com')
select *from dual;

INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, login_path, user_regdate, quit_status  )
VALUES ( 'mentor4@naver.com', 'mentor4', '1234', '1994-11-11', 'mentor4', '백종원.jpg', '서울시 서초구', 'mentor', '01032125777', 100000, 'Y', default, SYSDATE, 'N');

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '자격증6', '구청6', '2020-05-24', 'mentor4@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, 'LG5', '2019-05-24', '2020-05-24', '7년근무', 'mentor4@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '자격증7', '구청7', '2021-05-24', 'mentor4@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, 'LG6', '2020-04-24', '2021-05-24', '8년근무', 'mentor4@naver.com')
select *from dual;

INSERT all
INTO users
VALUES ( 'admin@naver.com', 'admin', '1234', '1994-11-11', 'admin', '60a81c75-c604-4abf-a119-364aa1dd7f1f.jpg', '서울시 서초구', 'admin', '01023341200', 100000, 'Y', default, SYSDATE, NULL, 'N')
INTO license
VALUES ( seq_license_license_no.nextval, '2종보통', '강남구청', '2017-05-24', 'admin@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '회사', '2011-05-24', '2012-05-24', '9년근무', 'admin@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '1종보통', '강서구청', '2014-05-24', 'admin@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '회사1', '2012-05-24', '2013-05-24', '10년근무', 'admin@naver.com')
select *from dual;

INSERT 
INTO coupon(coupon_no, coupon_name, discount_rate, discount_value, coupon_regdate)
VALUES (seq_coupon_coupon_no.NEXTVAL, '50% 할인쿠폰', 0.5, 0, SYSDATE);

INSERT 
INTO coupon(coupon_no, coupon_name, discount_rate, discount_value, coupon_regdate)
VALUES (seq_coupon_coupon_no.NEXTVAL, '8000원 할인 쿠폰', 0, 8000, SYSDATE);

INSERT 
INTO coupon(coupon_no, coupon_name, discount_rate, discount_value, coupon_regdate)
VALUES (seq_coupon_coupon_no.NEXTVAL, '여름 특가 할인쿠폰', 0.8, 0, SYSDATE);

INSERT 
INTO coupon(coupon_no, coupon_name, discount_rate, discount_value, coupon_regdate)
VALUES (seq_coupon_coupon_no.NEXTVAL, '신규회원 5000원 할인 쿠폰', 0, 5000, SYSDATE);

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10000, 'mentor@naver.com', '2022/05/12', '2022/06/30', '001');

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10001, 'admin@naver.com', '2022/05/30', '2022/06/15', '003');

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10002, 'user@naver.com', '2022/05/12', '2022/07/30', '001');

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10002, 'user@naver.com', '2022/05/12', '2022/06/11', '001');

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '하남쭈꾸미', 10000, '[인기] 재구매율 1위', 0.31, 6900, '01jju00.jpg&', '<p><img src="/summernoteImage/d40fa4e6-b1e7-4a94-a550-294b81687f1f.jpg"><img src="/summernoteImage/e2f4fffc-5b6c-45fb-88ff-a39ea61530f8.gif" style=""><img src="/summernoteImage/a1ffd5b9-f496-473f-8740-94ffdec91ec9.jpg" style=""><img src="/summernoteImage/e0448c06-fe1d-4c65-950a-d807d72ad827.jpg" style=""><img src="/summernoteImage/276e8350-ad83-43f2-95f2-465a70e4e08b.jpg" style=""><img src="/summernoteImage/4d92c92a-1e1a-4ce2-a5ac-108ea40f69a7.jpg" style=""><img src="/summernoteImage/2db12210-5d4c-4bb7-87ad-18bddf483270.jpg" style=""></p>', 100, 'MK', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '두끼 즉석 떡볶이', 12000, '집에서 먹는 맛집', 0.18, 9900, '04dukki00.jpg&', '<p><img src="/summernoteImage/d79899f2-dcb6-4214-80a9-d4699b16196c.jpg" style=""><img src="/summernoteImage/bdbed583-bc97-4d26-8d0e-b93322384a6e.jpg" style=""><img src="/summernoteImage/1872feb2-6c3f-4f5c-980f-4fb3f4fde88c.jpg" style=""><img src="/summernoteImage/f0db2b5d-980a-404f-b585-78248ac1d2fd.jpg" style=""><img src="/summernoteImage/49d73ad9-cdc2-4496-afdf-8ff221080957.jpg" style=""><img src="/summernoteImage/63add70c-3925-4080-9923-362cd9e0f450.jpg" style=""><br></p>', 100, 'MK', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '푸코 로즈골드 파스타집게', 7800, '푸코 로즈골드 실리콘 파스타집게(3color)', 0.14, 6700, '01puko00.jpg&', '<p><img src="/summernoteImage/4ec280cf-6826-489d-b0ac-3049b65f8867.jpg" style=""><img src="/summernoteImage/ce2b9997-17e9-466a-bd4a-f1b468a97ff6.jpg" style=""><img src="/summernoteImage/75baa474-b76e-476c-a84f-65eb5fb2ee66.jpg" style=""><img src="/summernoteImage/52a4aae0-1e0f-4e03-a3af-1322ea6c6a02.jpg" style=""><img src="/summernoteImage/d27643a0-36b4-4b30-9e60-8c144b695e14.jpg" style=""><img src="/summernoteImage/5d6acf04-8479-45c7-9b4f-090035a5840f.jpg" style=""><img src="/summernoteImage/f94c6ce9-ccf1-4865-8630-efcbb7c9f4a2.jpg" style=""><img src="/summernoteImage/1d3f7c0a-cf07-4ab7-8692-18d386e12266.jpg" style=""><br></p>', 100, 'CW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '아임파인 에떼르노 냄비', 79900, '감각적인 디자인의 냄비', 0.75, 19900, '04fine00.jpg&', '<p><img src="/summernoteImage/6d6dd66d-97cf-4cc0-974e-a2e42da8afec.jpg" style=""><img src="/summernoteImage/eca457f5-93bb-4cc5-ad03-be81114e8573.jpg" style=""><img src="/summernoteImage/9cdbfc5b-0cad-43f8-b97b-b2d1a102bebb.jpg" style=""><img src="/summernoteImage/5c316071-82f8-4b22-938e-c4606d157564.jpg" style=""><img src="/summernoteImage/d192fc96-eb24-4d49-84cd-71a508841070.jpg" style=""><img src="/summernoteImage/b480fb50-b97f-48a9-8482-d5a141710703.jpg" style=""><br></p>', 100, 'CW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '플라워 식기세트', 59900, '우아하면서 수수한 멋을 지닌 접시세트', 0.33, 39900, '02flw00.jpg&', '<p><img src="/summernoteImage/ff1aadee-3011-427c-8c5f-008aee5c9dfa.jpg" style=""><img src="/summernoteImage/27c8d5f9-ed6e-4dac-ae87-2b55f626cea0.jpg" style=""><img src="/summernoteImage/e28ea307-0e97-41a7-a84c-9f8b77b16dc9.jpg" style=""><img src="/summernoteImage/e4aaf74f-ed4c-4378-baeb-b2a42f5a3b3e.jpg" style=""><br></p>', 100, 'TW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '푸코 옻칠 반달 우드트레이', 17900, '푸코 옻칠 반달 우드트레이(2color)', 0.13, 15500, '04wood00.jpg&', '<p><img src="/summernoteImage/cc16d31e-8006-4ab9-ab01-daee04df234b.jpg" style=""><img src="/summernoteImage/83a44db9-37cf-4eed-a051-b9f4e69ad6c7.jpg" style=""><img src="/summernoteImage/0af0b749-b6a1-4347-8126-c0ddce239a08.jpg" style=""><img src="/summernoteImage/0e1bcd8f-2a01-49a4-bff3-6c35b5a98d86.jpg" style=""><img src="/summernoteImage/52d9bcbf-89da-4bc6-af8f-e2d546f201f3.jpg" style=""><br></p>', 100, 'TW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , 'TDY 그라인더 웨이브', 6400, 'TDY 그라인더 웨이브180ml(3style)', 0.14, 5500, '03tdy00.jpg&', '<p><img src="/summernoteImage/bd8322e7-26a5-4d81-9cd4-af0e90d70de1.jpg" style=""><img src="/summernoteImage/90ca0095-cf4d-4f27-98e7-01e7b9df093f.jpg" style=""><img src="/summernoteImage/ffcdd8af-0279-4fae-9ab7-955fd529f5fb.jpg" style=""><img src="/summernoteImage/f88113e3-904e-4e7c-96fa-dd8029ba3cea.jpg" style=""><img src="/summernoteImage/554b4236-5a18-4be1-8546-fab474443653.jpg" style=""><img src="/summernoteImage/ed055f2e-a494-4d39-bd2f-f4e3d2d32716.jpg" style=""><img src="/summernoteImage/80792acd-8cf3-404f-a44f-b8025ccec15a.jpg" style=""></p>', 100, 'CW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '미트볼/라자냐/김치맥엔치즈', 16000, '제주 맛집 더캔버스', 0.38, 9900, '02jeju00.jpg&', '<p><img src="/summernoteImage/366eb6bd-3721-43de-837d-980280077f0e.jpg" style=""><img src="/summernoteImage/8cca551f-ce17-420d-a305-9e7682002c89.jpg" style=""><img src="/summernoteImage/6df1aef6-e88b-47d3-8b26-e3a117bbd6fc.jpg" style=""><img src="/summernoteImage/add49d5f-56ca-4a15-8140-9f025a800e56.jpg" style=""><img src="/summernoteImage/775cbcd9-bff5-4866-bb99-cb751411fdcc.jpg" style=""><img src="/summernoteImage/6db30956-f361-417f-ab4a-6fa68719e727.jpg" style=""></p>', 100, 'MK', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '이자잇 두툼 치즈돈까스', 20000, '에어프라이어로 즐기는', 0.25, 15000, '03hambak00.jpg&', '<p><img src="/summernoteImage/3884d8dd-a8de-4627-a6ac-eae988282c29.jpg" style=""><img src="/summernoteImage/288ead7a-3c5d-4575-a5f4-0d1a0226e159.jpg" style=""><img src="/summernoteImage/2bcdbfb0-ee38-436a-9a98-b06c75e8ef79.jpg" style=""><img src="/summernoteImage/6860391b-3e0d-4e7a-a58d-a63c253bedcf.jpg" style=""><img src="/summernoteImage/5e5eae5b-adba-48d2-93a2-a53e3fb14157.jpg" style=""><img src="/summernoteImage/918d67dd-0fce-4c67-854f-019ff1ebd190.jpg" style=""><img src="/summernoteImage/a4e1525a-d6d4-46ad-bc0c-9c54d2debad7.jpg" style=""><img src="/summernoteImage/f3ca7ba6-7e05-4160-a660-a98c55827a4d.jpg" style=""><img src="/summernoteImage/97b1f380-cb78-45c4-9079-6c628af87f58.jpg" style=""><img src="/summernoteImage/67d86748-6e47-48b9-83e0-03e6115a1c4b.jpg" style=""><img src="/summernoteImage/f434e600-8d94-49d8-8d49-0921360261aa.jpg" style=""></p>', 100, 'MK', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '메종드 오로라 유리컵', 12600, '마시피렌체 오로라 유리컵(6style)', 0.13, 10900, '01orora00.jpg&', '<p><img src="/summernoteImage/72ff2e23-40f4-4040-8a77-def8549eaaaf.jpg" style=""><img src="/summernoteImage/30b86d22-f96f-43e4-8b70-876b4a39bcb8.jpg" style=""><img src="/summernoteImage/7ae9d6a0-421a-409c-a52d-dff2b0afb896.jpg" style=""><img src="/summernoteImage/ebd7ce2f-8499-41fd-aa53-3281244d9e68.jpg" style=""><img src="/summernoteImage/61ff9cf1-aaa4-4de2-8e50-278911173fe7.jpg" style=""><img src="/summernoteImage/bd32c1e5-5168-470e-9dce-d355739aa224.jpg" style=""><img src="/summernoteImage/4e857911-3c8f-4709-8880-6fbc00580c1d.jpg" style=""><br></p>', 100, 'TW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '야옹이 식기 7종', 3900, '귀엽고 사랑스러운 접시', 0.26, 2900, '03cat00.jpg&', '<p><img src="/summernoteImage/bde51f58-12e2-47ed-91de-0e6ac0cdfa86.jpg" style=""><img src="/summernoteImage/951205bb-cad8-4498-8aa0-610490e64d56.jpg" style=""><img src="/summernoteImage/35a986f7-5d40-4fde-9f9e-afb58c5bdbf3.jpg" style=""><img src="/summernoteImage/fbbffc76-a3d4-44ab-a925-65954e05ac79.jpg" style=""><img src="/summernoteImage/90ee7b8d-9bd2-4cb3-b7f7-6a01db441bd9.jpg" style=""><br></p>', 100, 'TW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '마시땅 열무국수 5인분', 21000, '여름을 시원하게 만들어줄', 0.17, 17500, '11.jpg&', '<p><img src="/summernoteImage/6b96b18f-03c4-407f-a193-90fa2c53b0bc.jpg" style="width: 838px;"><img src="/summernoteImage/d7c90ea0-200c-4eb5-b7e9-d10514df80df.jpg" style="width: 838px;"><img src="/summernoteImage/24f89591-00bb-4ce2-aca9-c1ed8dd7c083.jpg" style="width: 838px;"><img src="/summernoteImage/da796e68-62e4-4385-a8b0-a29d16baac18.jpg" style="width: 838px;"><img src="/summernoteImage/24e87b99-a1ee-4fde-b06b-4eedab88528c.jpg" style="width: 838px;"><img src="/summernoteImage/a7f26bdc-e7e7-46d1-9f20-026a407d55e8.jpg" style="width: 838px;"><img src="/summernoteImage/7ea86e46-1d15-4dec-8d7d-084fcb025086.jpg" style="width: 838px;"><img src="/summernoteImage/cf8d070d-b8de-45c4-9808-545edf9c6cb9.jpg" style="width: 838px;"><img src="/summernoteImage/f99b7c8e-4dd3-424c-88eb-fb8f801316d1.jpg" style="width: 838px;"><img src="/summernoteImage/3fa26909-adea-4940-bccd-37198920aaa3.jpg" style="width: 838px;"><br></p>', 100, 'MK', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '숯불닭갈비 800g', 18000, '감칠맛나는 양념이 맛있는', 0.12, 15900, '12.jpg&', '<p><img src="/summernoteImage/b37f4bb5-5b36-4974-84ad-0cdcf73d114b.jpg" style="width: 838px;"><img src="/summernoteImage/65e61a0e-7058-4dc8-a5ca-e31e35fdc52c.jpg" style="width: 838px;"><img src="/summernoteImage/67309f5e-daed-42ae-b43a-1db1f1ba7206.jpg" style="width: 838px;"><img src="/summernoteImage/47e9f4e3-84e2-40dd-9443-14ef3483778f.jpg" style="width: 838px;"><img src="/summernoteImage/7740851a-9b33-4e66-a0f7-02034402ff16.jpg" style="width: 838px;"><br></p>', 100, 'MK', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '명품 수제한우 곰탕', 32000, '35년 전통', 0.75, 7900, '13.jpg&', '<p><img src="/summernoteImage/928bc70e-2b64-4367-b974-77d07dbfc441.jpg" style="width: 838px;"><img src="/summernoteImage/f0bcce3e-5c21-4424-9b03-9d63035739be.jpg" style="width: 838px;"><img src="/summernoteImage/64ad007b-4e5f-4619-a2a9-c5ba69f380c1.jpg" style="width: 838px;"><br></p>', 100, 'MK', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '클라우드 스테이크 밀키트', 24000, '부드러운 부채살 스테이크', 0.17, 19900, '14.jpg&', '<p><img src="/summernoteImage/d1f61a42-a71c-43fc-b64f-8dfeb3800dff.jpg" style="width: 838px;"><img src="/summernoteImage/314872c3-b01b-4ea3-9c2b-0ae944c9119b.jpg" style="width: 838px;"><img src="/summernoteImage/c1baec72-b6bf-4924-9a5a-c631d794a440.jpg" style="width: 838px;"><img src="/summernoteImage/baa1a7dd-8f51-4b13-b19f-069436ba099a.jpg" style="width: 838px;"><img src="/summernoteImage/269b4c16-4c94-4abb-93d3-4b7d239c7d74.jpg" style="width: 838px;"><img src="/summernoteImage/4e53bd8c-ee0d-4f1f-9db5-f170ff36327d.jpg" style="width: 838px;"><img src="/summernoteImage/6fd872a3-569d-46f2-a7e8-cdc9e4848bc4.jpg" style="width: 838px;"><img src="/summernoteImage/4a2cb5a4-cce1-49a9-b621-91a2ec04e8f9.jpg" style="width: 838px;"><br></p>', 100, 'MK', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '무농약 작두콩차', 30000, '건강 지키기', 0.14, 25900, '15.jpg&', '<p><img src="/summernoteImage/96c7ace0-5eb7-4bf4-8540-985e145a3b6c.jpg" style="width: 838px;"><img src="/summernoteImage/1a24bc00-ff56-43fb-a2aa-c5f19e880b26.jpg" style="width: 838px;"><img src="/summernoteImage/5cc74450-106b-4dd7-8a29-62bf6e037f49.jpg" style="width: 838px;"><img src="/summernoteImage/c05978c3-41d5-4915-add1-5045e094bb5e.jpg" style="width: 838px;"><br></p>', 100, 'MK', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '모도리 구들 계란말이팬', 53500, '전통과 현대의 조화', 0.27, 38900, '21.jpg&', '<p><img src="/summernoteImage/873b8fca-eea0-4a59-bd5b-10c137203da4.jpg" style="width: 838px;"><img src="/summernoteImage/511c7dab-afc8-4837-bdf4-c289609766ab.jpg" style="width: 838px;"><img src="/summernoteImage/3fc7c13c-cd65-4ebf-b0ce-13207e8f122f.jpg" style="width: 838px;"><img src="/summernoteImage/4b998438-3454-49b8-9fc1-663465468f72.jpg" style="width: 838px;"><img src="/summernoteImage/d329d6fe-f3b3-438a-99b7-00fbc4354d9e.jpg" style="width: 838px;"><img src="/summernoteImage/daf87ff6-16fb-4d4b-a02a-db1aec2ab2a2.jpg" style="width: 838px;"><br></p>
', 100, 'CW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '쿠진아트 스테인리스 계량도구', 36000, 'SNS 필수 계량스푼', 0.11, 32000, '22.jpg&', '<p><img src="/summernoteImage/a6451d2c-953f-4d9a-a2dc-89b80afd68f6.jpg" style="width: 838px;"><img src="/summernoteImage/2e393433-bca9-429e-83dd-e3f6053dfb80.jpg" style="width: 838px;"><img src="/summernoteImage/1b73f494-a804-4cf5-91f4-131325ab5aa1.jpg" style="width: 838px;"><img src="/summernoteImage/22a8eeeb-b745-4e92-bc77-b97e0074589d.jpg" style="width: 838px;"><br></p>', 100, 'CW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '스테인레스 집게 세트', 28000, '프랑스 앙드레자르뎅', 0.08, 25800, '23.jpg&', '<p><img src="/summernoteImage/01de1ac4-9827-4fe6-82b1-09445b8f87ec.jpg" style="width: 838px;"><img src="/summernoteImage/2cced4a6-7f00-4f62-8d7d-2d8c3e1078cf.jpg" style="width: 838px;"><img src="/summernoteImage/5088ebff-2545-42a7-8de3-9e505c6ada54.jpg" style="width: 838px;"><br></p>', 100, 'CW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '조절식 앵글 샤프너', 35000, '마리슈타이거', 0.43, 19800, '24.jpg&', '<p><img src="/summernoteImage/31fecfde-010a-4c70-95a0-4598023c522c.jpg" style="width: 838px;"><img src="/summernoteImage/8770ec5f-65f2-448a-8971-33b63fac6c92.png" style="width: 838px;"><img src="/summernoteImage/50f334ae-ae88-4b89-a46c-1ed7e5d823f5.png" style="width: 838px;"><img src="/summernoteImage/ca7b1ec2-b6e7-40e3-892c-8a7666d36f40.png" style="width: 838px;"><img src="/summernoteImage/b55f14e8-2071-4ade-8f49-80b615312e69.png" style="width: 838px;"><img src="/summernoteImage/2c8eaf0e-897c-4e60-992d-a795e0b9c59f.jpg" style="width: 838px;"><br></p>', 100, 'CW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '아이스크림 스쿱 스푼', 7000, '다양하게 활용하는', 0.1, 6300, '25.jpg&', '<p><img src="/summernoteImage/6bc6fca4-bb15-4eaf-a41b-f42cd3cb9ea0.jpg" style="width: 838px;"><img src="/summernoteImage/7030697c-f4b0-4603-a137-5dc254c5889f.png" style="width: 838px;"><img src="/summernoteImage/ef6adc5a-16b5-4d57-b0ad-11907db09387.png" style="width: 838px;"><img src="/summernoteImage/2e6e40cd-e1a3-4cf3-b2e1-f39077d864c1.jpg" style="width: 838px;"><br></p>', 100, 'CW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '에그 슬라이서', 23000, '삶은 계란 예쁘게 자르기', 0.13, 19900, '26.jpg&', '<p><img src="/summernoteImage/0508317e-70c6-4f78-9260-9398f52f37aa.jpg" style="width: 838px;"><img src="/summernoteImage/1b8d1d8e-d7a0-4bd0-82e9-d5106e300a3e.jpg" style="width: 838px;"><img src="/summernoteImage/789c7a66-66f5-4dcb-9d53-2112fd455be3.jpg" style="width: 838px;"><img src="/summernoteImage/55f445ff-a3f5-4dc7-88b8-a5e45bb870a2.jpg" style="width: 838px;"><img src="/summernoteImage/26d9a817-c3f5-4521-a759-7ce659bf2042.jpg" style="width: 838px;"><br></p>', 100, 'CW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '네칸 나눔 플레이트', 11000, '평범한 한끼도 예쁘게', 0.28, 7900, '32.jpg&', '<p><img src="/summernoteImage/bac1aa79-cdc6-4c8a-b585-83a65a918340.jpg" style="width: 838px;"><img src="/summernoteImage/024f9226-02f9-4698-9900-9b3a732215af.jpg" style="width: 838px;"><img src="/summernoteImage/a7e27f63-2dd5-47f6-82e6-693af05377d4.jpg" style="width: 838px;"><img src="/summernoteImage/34c4dc9a-db85-4595-b2a1-50ffb4372402.jpg" style="width: 838px;"><img src="/summernoteImage/5d780edc-2de2-4139-ad8a-059807f15ab8.jpg" style="width: 838px;"><br></p>', 100, 'TW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '포레 홈 1인 세트', 18000, '미니멀라이프', 0.1, 16200, '33.jpg&', '<p><img src="/summernoteImage/d9b46ea5-8ca9-4929-802b-63d97adc0656.jpg" style="width: 838px;"><img src="/summernoteImage/56ef408b-d4e1-4ccb-be67-4822aff148a8.jpg" style="width: 838px;"><br></p>', 100, 'TW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '내열 유리컵 7종', 4000, '다양한 디자인', 0.1, 3600, '34.jpg&', '<p><img src="/summernoteImage/d6f9cada-f716-4b15-9671-78e023b8e0e8.jpg" style="width: 838px;"><img src="/summernoteImage/9725395f-59f0-4429-a02a-bed154629573.jpg" style="width: 838px;"><img src="/summernoteImage/a9f2bb4e-1942-446d-96eb-4f678823d740.jpg" style="width: 838px;"><img src="/summernoteImage/fc8b14ad-a4ac-4529-9a29-db0ed7d73d84.jpg" style="width: 838px;"><br></p>', 100, 'TW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '원형 나눔 찬통', 12000, '데일리로 사용하기 좋은', 0.21, 9500, '35.jpg&', '<p><img src="/summernoteImage/729e4001-8a0d-4c24-aa02-05e9a0429d46.jpg" style="width: 838px;"><img src="/summernoteImage/35a36392-d9aa-4824-8c87-4a2edefe7eaa.jpg" style="width: 838px;"><img src="/summernoteImage/275f09a8-a380-4b68-b379-3229bd255d1d.jpg" style="width: 838px;"><br></p>', 100, 'TW', 'Y', 'Y', SYSDATE );

INSERT
INTO product( prod_no , prod_name , prod_price, prod_detail, prod_disrate, prod_disprice, prod_thumbnail, prod_content, prod_stock, prod_theme, prod_status, coupon_apply, prod_regdate) 
VALUES (seq_product_prod_no.NEXTVAL , '레트로 로즈컵', 26000, '홈카페 분위기 물씬', 0.54, 12000, '36.jpg&', '<p><img src="/summernoteImage/7f7b6145-0f55-49d0-81ea-453989a5beb3.jpg" style="width: 838px;"><img src="/summernoteImage/08e729d3-4dd6-41e0-8d04-71d694b3df8a.jpg" style="width: 838px;"><img src="/summernoteImage/d2d38d1c-803c-4a7e-9721-1fe6f67913ef.jpg" style="width: 838px;"><img src="/summernoteImage/d594b51e-1287-4982-93cb-ecf9a49e75dd.jpg" style="width: 838px;"><br></p>', 100, 'TW', 'Y', 'Y', SYSDATE );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname, mentor_id  )
VALUES (seq_cook_cook_no.nextval, '진한 카레 쿠킹클래스', '923002a2-2351-4971-8e02-81d7a2ac5911.jpg', '카레 고수로 만들어드리겠습니다', '2', 14000, 'JA', '22/07/01',  '22/07/12', 2, '10:00' , '11:00', '경기 성남시 분당구 대왕판교로 477', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/1.JPG" style=""><img src="/summernoteImage/2JPG.JPG" style=""><img src="/summernoteImage/3.JPG" style=""><img src="/summernoteImage/4.JPG" style=""><img src="/summernoteImage/5.JPG" style=""><br></p>','mentor1', 'mentor1@naver.com' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname, mentor_id  )
VALUES (seq_cook_cook_no.nextval, '일본식 안주 쿠킹클래스', '8a45ba06-0aa4-42f5-8556-b8709b7655e1.jpg', '일본식 안주를 집에서 즐기세요~', '2', 14000, 'JA', '22/07/03',  '22/07/06', 2, '09:00' , '12:00', '서울특별시 강남구 강남대로 328', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/1.JPG" style=""><img src="/summernoteImage/2JPG.JPG" style=""><img src="/summernoteImage/3.JPG" style=""><img src="/summernoteImage/4.JPG" style=""><img src="/summernoteImage/5.JPG" style=""><br></p>','mentor1', 'mentor1@naver.com' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname, mentor_id  )
VALUES (seq_cook_cook_no.nextval, '일본식 메밀소바 쿠킹클래스', '6db6b239-98b6-45d0-92d9-5675c943fbfd.jpg', '일본식 소바를 집에서 즐기세요~', '2', 14000, 'JA', '22/07/03',  '22/07/06', 2, '09:00' , '12:00', '서울특별시 강남구 강남대로 328', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/1.JPG" style=""><img src="/summernoteImage/2JPG.JPG" style=""><img src="/summernoteImage/3.JPG" style=""><img src="/summernoteImage/4.JPG" style=""><img src="/summernoteImage/5.JPG" style=""><br></p>','mentor1', 'mentor1@naver.com' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname, mentor_id  )
VALUES (seq_cook_cook_no.nextval, '일본식 고로케 쿠킹클래스', '8c6e5ffb-ee68-4b55-8d0e-05800624b535.jpg', '따끈한 고로케 한입', '2', 14000, 'JA', '22/07/03',  '22/07/06', 2, '09:00' , '12:00', '서울특별시 강남구 강남대로 328', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/1.JPG" style=""><img src="/summernoteImage/2JPG.JPG" style=""><img src="/summernoteImage/3.JPG" style=""><img src="/summernoteImage/4.JPG" style=""><img src="/summernoteImage/5.JPG" style=""><br></p>','mentor1', 'mentor1@naver.com' );


INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname, mentor_id  )
VALUES (seq_cook_cook_no.nextval, '시원한 레몬에이드 쿠킹클래스', '229918cb-c0c2-496f-8796-003121985a6d.jpg', '아 시원해~~', '3', 10000, 'DE', '22/07/01',  '22/07/12', 2, '10:00', '11:00', '서울특별시 강서구 강서로45다길 30-22', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/p1.JPG" style=""><img src="/summernoteImage/p2.JPG" style=""><img src="/summernoteImage/p3.JPG" style=""><img src="/summernoteImage/p5.JPG" style=""><br></p>','mentor4', 'mentor4@naver.com' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname, mentor_id  )
VALUES (seq_cook_cook_no.nextval, '홈메이드 팬케익 쿠킹클래스', '09e688f7-a0c4-48a7-ac09-9a19306f5757.jpg', '우유와 함께 먹으면?~~', '3', 10000, 'DE', '22/07/18',  '22/07/19', 2, '10:00', '11:00', '서울특별시 강북구 4.19로 74', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/o1.JPG" style=""><img src="/summernoteImage/o2.JPG" style=""><img src="/summernoteImage/o3.JPG" style=""><img src="/summernoteImage/o5.JPG" style=""><br></p>','mentor2', 'mentor2@naver.com' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname, mentor_id  )
VALUES (seq_cook_cook_no.nextval, '집에서도 카페케익을 즐겨볼까요?', 'af827588-f795-4915-ae2e-2c646e466efb.jpg', '아메리카노와 함께 먹으면?~~', '3', 10000, 'DE', '22/07/18',  '22/07/19', 2, '10:00', '11:00', '서울특별시 강북구 4.19로 74', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/o1.JPG" style=""><img src="/summernoteImage/o2.JPG" style=""><img src="/summernoteImage/o3.JPG" style=""><img src="/summernoteImage/o5.JPG" style=""><br></p>','mentor2', 'mentor2@naver.com' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname, mentor_id  )
VALUES (seq_cook_cook_no.nextval, '키토 음식 쿠킹클래스', '045dd96b-9f9b-4a06-be64-a0629aee1700.jpg', '아이들도 잘먹는 키토식단', '1', 9000, 'KO', '22/07/01',  '22/07/12', 2, '10:00', '11:00', '경기 성남시 분당구 대왕판교로 477', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/a1.JPG" style=""><img src="/summernoteImage/a2.JPG" style=""><img src="/summernoteImage/a3.JPG" style=""><img src="/summernoteImage/a4.JPG" style=""><br></p>','mentor2', 'mentor2@naver.com' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname, mentor_id  )
VALUES (seq_cook_cook_no.nextval, '아침에 뭐먹지? 쿠킹클래스', '10a1ec0b-de02-4f4f-9f6f-118c9316bce2.jpg', '아침에 딱 차려주기 좋아요', '1', 9000, 'KO', '22/07/06',  '22/07/15', 2, '10:00', '11:00', '서울특별시 강북구 4.19로11길 33', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/a1.JPG" style=""><img src="/summernoteImage/a2.JPG" style=""><img src="/summernoteImage/a3.JPG" style=""><img src="/summernoteImage/a4.JPG" style=""><br></p>','mentor2', 'mentor2@naver.com' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname, mentor_id  )
VALUES (seq_cook_cook_no.nextval, '여름맞이 팥빙수 디저트클래스', '712d44b4-775f-4002-b473-a737762fb445.jpg', '보기만해도 시원해지는 팥빙수', '2', 100000, 'DE', '22/07/01',  '22/07/12', 1, '10:00', '11:00', '경기 성남시 분당구 대왕판교로 477', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 1, 0, '<p><img src="/summernoteImage/q1.JPG" style=""><img src="/summernoteImage/q2.JPG" style=""><br></p>','mentor2','mentor2@naver.com' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '미국식 햄버거 쿠킹클래스', 'd8db5dd2-5a5c-480f-819b-aedb710aa0e8.jpg', '치즈 듬뿍 진한 햄버거', '1', 14000, 'AM', '22/07/01',  '22/07/12', 1, '10:00', '11:00', '서울특별시 강동구 고덕로80길 7', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 1, 0, '<p><img src="/summernoteImage/6.JPG" style=""><img src="/summernoteImage/6.JPG" style=""><img src="/summernoteImage/7.JPG" style=""><img src="/summernoteImage/8.JPG" style=""><img src="/summernoteImage/9.JPG" style=""><br></p>','mentor3' , 'mentor3@naver.com'  );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '따뜻한 스튜 한 스푼', '2057d2cb-eecd-4b94-9671-abafd7dbd1e7.jpg', '바삭바삭 쿠바샌드위치', '1', 14000, 'AM', '22/07/01',  '22/07/12', 1, '10:00', '11:00', '서울특별시 강동구 고덕로80길 7', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 1, 0, '<p><img src="/summernoteImage/6.JPG" style=""><img src="/summernoteImage/6.JPG" style=""><img src="/summernoteImage/7.JPG" style=""><img src="/summernoteImage/8.JPG" style=""><img src="/summernoteImage/9.JPG" style=""><br></p>','mentor3' , 'mentor3@naver.com'  );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '쿠바샌드위치 쿠킹클래스', '991c1fd7-f932-4fd2-acda-7adc8af0eb2f.jpg', '바삭바삭 쿠바샌드위치', '1', 14000, 'AM', '22/07/01',  '22/07/12', 1, '10:00', '11:00', '서울특별시 강동구 고덕로80길 7', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 1, 0, '<p><img src="/summernoteImage/6.JPG" style=""><img src="/summernoteImage/6.JPG" style=""><img src="/summernoteImage/7.JPG" style=""><img src="/summernoteImage/8.JPG" style=""><img src="/summernoteImage/9.JPG" style=""><br></p>','mentor3' , 'mentor3@naver.com'  );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '이게 샌드위치죠!? 쿠킹클래스', '8c51cdd5-cb8f-4095-8599-c2bc9db74125.jpg', '소풍갈때 꼭 만들어가자!', '1', 14000, 'AM', '22/07/01',  '22/07/12', 1, '10:00', '11:00', '경기 성남시 분당구 대왕판교로 477', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 1, 0, '<p><img src="/summernoteImage/6.JPG" style=""><img src="/summernoteImage/6.JPG" style=""><img src="/summernoteImage/7.JPG" style=""><img src="/summernoteImage/8.JPG" style=""><img src="/summernoteImage/9.JPG" style=""><br></p>','mentor3' , 'mentor3@naver.com'  );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '잘 차린 한정식 쿠킹클래스', '46f0682f-f442-4889-8d54-14076867154d.jpg', '맛있는 한정식 한끼 어때요?', '1', 30000, 'KO', '22/07/01',  '22/07/12', 3, '10:00', '11:00', '서울특별시 강동구 고덕로98길 22', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 3, 0, '<p><img src="/summernoteImage/j1.JPG" style=""><img src="/summernoteImage/j2.JPG" style=""><img src="/summernoteImage/j3.JPG" style=""><br></p>','mentor' , 'mentor@naver.com' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '깔끔한 한정식 쿠킹클래스', '0d234576-004a-4c4e-a87a-078dbf00e629.jpg', '깔끔한 한정식 한끼 어때요?', '1', 30000, 'KO', '22/07/01',  '22/07/12', 3, '10:00', '11:00', '경기 성남시 분당구 대왕판교로 477', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 3, 0, '<p><img src="/summernoteImage/j1.JPG" style=""><img src="/summernoteImage/j2.JPG" style=""><img src="/summernoteImage/j3.JPG" style=""><br></p>','mentor' , 'mentor@naver.com' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '밀페유 나베 쿠킹클래스', '09f21ee8-530a-4919-a30f-f2d9cac6c590.jpg', '일본 가정식의 정석!', '1', 20000, 'JA', '22/07/01',  '22/07/12', 3, '10:00', '11:00', '경기 성남시 분당구 대왕판교로 477', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 3, 0, '<p><img src="/summernoteImage/m1.JPG" style=""><img src="/summernoteImage/m2.JPG" style=""><img src="/summernoteImage/m3.JPG" style=""><img src="/summernoteImage/m4.JPG" style=""><img src="/summernoteImage/m5.JPG" style=""><br></p>','mentor1','mentor1@naver.com'  );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '꾸덕한~ 파스타 쿠킹클래스', '62ea6d66-9fe8-4804-bec8-9336cb8b586a.jpg', '보기만해도 침이 고여요', '1', 14000, 'AM', '22/07/01',  '22/07/12', 2, '10:00', '11:00', '경기 성남시 분당구 대왕판교로 477', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/g4.JPG" style=""><img src="/summernoteImage/f3.JPG" style=""><br></p>','mentor2',  'mentor2@naver.com'  );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '중국식 냉면 쿠킹클래스', '912ec909-2b34-4db1-ae2c-d73de76f4cce.jpg', '중국냉면을 우리집에서도?!', '1', 14000, 'CH', '22/07/01',  '22/07/12', 2, '10:00', '11:00', '경기 성남시 분당구 대왕판교로 477', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/w1.JPG" style=""><img src="/summernoteImage/w2.JPG" style=""><img src="/summernoteImage/w3.JPG" style=""><img src="/summernoteImage/w4.JPG" style=""><br></p>','mentor' , 'mentor@naver.com');

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '일요일에는 짜짱면?!!!', '75507160-9b23-451f-a4cf-a489a859c9cf.jpg', '한 젓가락 하실래에', '1', 14000, 'CH', '22/07/01',  '22/07/12', 2, '10:00', '11:00', '경기 성남시 분당구 대왕판교로 477', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/w1.JPG" style=""><img src="/summernoteImage/w2.JPG" style=""><img src="/summernoteImage/w3.JPG" style=""><img src="/summernoteImage/w4.JPG" style=""><br></p>','mentor' , 'mentor@naver.com');

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '매콤한 고추잡채 쿠킹클래스', 'b2e0b6fd-72a7-4525-ab25-bcf5f944284a.jpg', '한 젓가락 하실래에', '1', 14000, 'CH', '22/07/01',  '22/07/12', 2, '10:00', '11:00', '경기 성남시 분당구 대왕판교로 477', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/w1.JPG" style=""><img src="/summernoteImage/w2.JPG" style=""><img src="/summernoteImage/w3.JPG" style=""><img src="/summernoteImage/w4.JPG" style=""><br></p>','mentor' , 'mentor@naver.com');

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname , mentor_id )
VALUES (seq_cook_cook_no.nextval, '홈메이드 중국요리 쿠킹클래스', '62f6fb70-952e-4ca8-8061-6b7ece5602b3.jpg', '중화요리 이제 시켜먹지마세요', '1', 14000, 'CH', '22/07/01',  '22/07/12', 2, '10:00', '11:00', '경기 성남시 분당구 대왕판교로 477', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 2, 0, '<p><img src="/summernoteImage/w1.JPG" style=""><img src="/summernoteImage/w2.JPG" style=""><img src="/summernoteImage/w3.JPG" style=""><img src="/summernoteImage/w4.JPG" style=""><br></p>','mentor3' , 'mentor3@naver.com');


INSERT 
INTO notice(notice_no, notice_title, notice_content, notice_date) 
VALUES (seq_notice_notice_no.NEXTVAL, '공지합니다', '<p><img src="/summernoteImage/432a9674-4268-4dae-ae14-11eb08d1977d.png" style="width: 1148px;"><br></p>', SYSDATE);

INSERT 
INTO notice(notice_no, notice_title, notice_content, notice_date) 
VALUES (seq_notice_notice_no.NEXTVAL, '여름철 대비 식중독 예방 안내', '<p><img src="/summernoteImage/af463ab4-03fa-4bd2-8a6b-18d71e0b3e2b.jpg" style="width: 1026px;"><br></p>', SYSDATE);

INSERT 
INTO notice(notice_no, notice_title, notice_content, notice_date) 
VALUES (seq_notice_notice_no.NEXTVAL, '환불규정 관련 안내', '<p><img src="/summernoteImage/edc09fc5-c734-4994-be1d-763df4d88626.jpg" style="width: 1000px;"><br></p>', SYSDATE);

INSERT 
INTO notice(notice_no, notice_title, notice_content, notice_date) 
VALUES (seq_notice_notice_no.NEXTVAL, '식탁의 온도 코스닥 상장 안내', '<p><img src="/summernoteImage/a75e48e3-03d6-4712-9c5f-181e35560bf9.jpg" style="width: 800px;"><br></p>', SYSDATE);


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor2', '새우두부찜', '건강한 중국식 가정요리','담백한 두부 안에 새우를 쏘~옥 넣어 만든 건강한 중국식 가정요리! 새우두부찜이에요. 네모모양으로 자른 두부의 속을 파내 동글동글 굴린 새우를 넣어 찜통에 쪄냈어요. 소스도 과하지 않게 굴소스, 간장 등으로만 맛을 내어 건강하고 담백하게 요리를 즐기실 수 있어요. 완성된 요리도 근사해서 홈파티, 초대요리로도 너무 좋답니다.', '새우두부찜.jpg', null, '중급', '중식', 35, '내용' , SYSDATE, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '두부' AS ingredientName , '1모(550g)' AS ingredientAmount FROM DUAL
union all
SELECT '새우살' AS ingredientName , '1컵(150g)' AS ingredientAmount FROM DUAL
union all
SELECT '양송이버섯' AS ingredientName , '4개' AS ingredientAmount FROM DUAL
union all
SELECT '팽이버섯' AS ingredientName , '½봉' AS ingredientAmount FROM DUAL
union all
SELECT '실파' AS ingredientName , '3줄기' AS ingredientAmount FROM DUAL
union all
SELECT '전분가루' AS ingredientName , '1큰술' AS ingredientAmount FROM DUAL
union all
SELECT '참기름' AS ingredientName , '½큰술' AS ingredientAmount FROM DUAL
union all
SELECT '소금' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user', '크로핀','크림이 꽉 찬', '크로와상과 머핀이 만나 탄생한 크로핀! 먹기 아쉬울 정도로 예쁜 비주얼과 뛰어난 맛으로 SNS에서 많은 인기를 끌었죠. 크로와상 냉동 생지를 활용해 집에서도 간단하게 만들 수 있다는 사실 다들 알고 계셨나요? 게다가 필링을 가득 넣어 더욱 부드럽고 맛있답니다. 딸기 필링과 얼그레이 필링 뿐만 아니라 커스터드 또는 초코크림, 잼 등 기호에 따라 다양하게 넣어서 즐길 수 있어요. 크로와상 생지의 무궁무진한 변신! 함께 따라해 보아요.', 'Step 7.jpg', null, '중급', '간식', 50, '내용' , SYSDATE, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '크루아상 생지' AS ingredientName , '6개' AS ingredientAmount FROM DUAL
union all
SELECT '생크림' AS ingredientName , '300ml' AS ingredientAmount FROM DUAL
union all
SELECT '설탕' AS ingredientName , '20g' AS ingredientAmount FROM DUAL
union all
SELECT '높은종이컵' AS ingredientName , '3개' AS ingredientAmount FROM DUAL
  ) A;





INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor', '수원왕갈비통닭', '극한직업의 바로 그 맛','불금에는 치킨 한마리 뚝딱!!' ,'수원왕갈비통닭.jpg', null, '중급', '양식', 10, 'd' , SYSDATE, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '생닭' AS ingredientName , '700g' AS ingredientAmount FROM DUAL
  ) A;

  
INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user', '김치비빔국수', '새콤달콤 비빔국수','여름철 별미로 최고에요!' ,'김치비빔국수.jpg', null, '중급', '한식', 10, 'd' , SYSDATE, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '김치' AS ingredientName , '500g' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor1', '연어초밥', '알래스카산 연어를 올린','알래스카산 연어초밥' , '연어초밥.jpg', null, '고급', '일식', 85, 'd' , SYSDATE, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '연어' AS ingredientName , '100g' AS ingredientAmount FROM DUAL
  ) A;
  
  
INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor2', '초코 크러플', '달콤한 디저트','당이 떨어졌을 때 최고의 선택', '987eb588939a8cb12033994139c0018e.jpg', null, '고급', '간식', 50, 'd' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '초코' AS ingredientName , '100g' AS ingredientAmount FROM DUAL
union all
SELECT '크러플' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor3', '달걀 만두', '만두에 달걀을', '노맛노맛노맛' ,'6605dfaa474f5fb72d3ba125efe14db7.jpg', null, '중급', '한식', 40, 'd' , SYSDATE, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '달걀' AS ingredientName , '3개' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO bookmark
VALUES (seq_bookmark_no.nextval ,'10000' , 'mentor@naver.com');

INSERT
INTO bookmark
VALUES (seq_bookmark_no.nextval ,'10001' , 'mentor@naver.com');

INSERT
INTO bookmark
VALUES (seq_bookmark_no.nextval ,'10000' , 'user@naver.com');

INSERT
INTO bookmark
VALUES (seq_bookmark_no.nextval ,'10001' , 'user@naver.com');
	

INSERT
INTO review
VALUES (seq_review_no.nextval  ,'COOK' , 'user', '아주 좋았습니다.', 'summerNotefa2fdebe-6d98-48a7-a5a3-c85a61a9092c.jpg', SYSDATE, NULL, NULL, 10000, '100');

INSERT
INTO review
VALUES (seq_review_no.nextval  ,'REC' , 'user', '맛있어요!!!!',NULL, SYSDATE, 10006, NULL, NULL, '100');

INSERT 
INTO alarm (alarm_no, alarm_target, alarm_content, alarm_status, alarm_date)
VALUES (seq_alarm_alarm_no.NEXTVAL, 'mentor@naver.com', '축하드립니다!', '001', SYSDATE);

INSERT 
INTO alarm (alarm_no, alarm_target, alarm_content, alarm_status, alarm_date)
VALUES (seq_alarm_alarm_no.NEXTVAL, 'user@naver.com', '알림이 발생하였습니다!', '001', SYSDATE);

INSERT 
INTO alarm (alarm_no, alarm_target, alarm_content, alarm_status, alarm_date)
VALUES (seq_alarm_alarm_no.NEXTVAL, 'user@naver.com', '알림 TEST!', '001', SYSDATE);

INSERT 
INTO alarm (alarm_no, alarm_target, alarm_content, alarm_status, alarm_date)
VALUES (seq_alarm_alarm_no.NEXTVAL, 'user@naver.com', 'HELLO!', '001', SYSDATE);

COMMIT;