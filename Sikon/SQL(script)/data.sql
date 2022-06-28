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
VALUES ( seq_license_license_no.nextval, '한식기능사', '한국산업인력공단', '2018-07-27', 'user3@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '신라호텔', '2015-05-01', '2018-03-01', '뷔페 한식 담당', 'user3@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '양식기능사', '한국산업인력공단', '2019-05-30', 'user3@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '롯데호텔', '2018-08-30', '2022-07-07', '조리실 총괄 쉐프', 'user3@naver.com')
select *from dual;

INSERT all
INTO users
VALUES ( 'mentor@naver.com', 'mentor', '1234', '1994-11-11', 'mentor', '마동석요리.jpg', '서울시 서초구', 'mentor', '01023341000', 100000, 'Y', default, SYSDATE, NULL, 'N')
INTO license
VALUES ( seq_license_license_no.nextval, '1종보통', '서초경찰서', '2018-05-24', 'mentor@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '비스트로 라온', '2013-05-24', '2015-05-24', '중식 등 조리업무', 'mentor@naver.com')
select*from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '중식기능사', '한국산업인력공단', '2019-06-16', 'mentor@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '비어첸코다리', '2014-08-30', '2017-08-21', '조리실 및 자재관리', 'mentor@naver.com')
select *from dual;

INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, login_path, user_regdate, quit_status  )
VALUES ( 'mentor1@naver.com', 'mentor1', '1234', '1994-11-11', 'mentor1', '고든램지.jpg', '서울시 서초구', 'mentor', '01033337777', 100000, 'Y', default, SYSDATE, 'N');

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '양식기능사', '한국산업인력공단', '2015-02-01', 'mentor1@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '고든램지버거', '2013-06-06', '2014-11-10', '식자재 관리 및 버거 제조', 'mentor1@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '일식기능사', '한국산업인력공단', '2016-08-22', 'mentor1@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '행복한 밥상', '2016-04-24', '2019-05-24', '조리파트, 식단작성 및 검식과 배식', 'mentor1@naver.com')
select *from dual;

INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, login_path, user_regdate, quit_status  )
VALUES ( 'mentor2@naver.com', 'mentor2', '1234', '1994-11-11', 'mentor2', '168939.jpg', '서울시 서초구', 'mentor', '01033331111', 100000, 'Y', default, SYSDATE, 'N');

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '바리스타 자격증', '한국커피협회', '2016-05-05', 'mentor2@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '엘비젼', '2015-07-13', '2016-08-08', '직원구내식당 조리사/찬모', 'mentor2@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '조리 기능장', '한국산업인력공단', '2017-10-09', 'mentor2@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '아웃백스테이크하우스', '2017-01-01', '2020-12-31', '스테이크서빙', 'mentor2@naver.com')
select *from dual;

INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, login_path, user_regdate, quit_status  )
VALUES ( 'mentor3@naver.com', 'mentor3', '1234', '1994-11-11', 'mentor3', '호빵맨.png', '서울시 서초구', 'mentor', '01033338888', 100000, 'Y', default, SYSDATE, 'N');

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '복어조리 산업기사', '한국산업인력공단', '2017-11-13', 'mentor3@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '미도참치', '2017-09-29', '2018-06-30', '복어 조리 및 생선 관리', 'mentor3@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '한식조리산업기사', '한국산업인력공단', '2018-01-09', 'mentor3@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '한국축지', '2018-11-24', '2019-10-09', '점포 영업 및 매출 관리', 'mentor3@naver.com')
select *from dual;

INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, login_path, user_regdate, quit_status  )
VALUES ( 'mentor4@naver.com', 'mentor4', '1234', '1994-11-11', 'mentor4', '백종원.jpg', '서울시 서초구', 'mentor', '01032125777', 100000, 'Y', default, SYSDATE, 'N');

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, '제빵 기능사', '한국산업인력공단', '2017-05-24', 'mentor4@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, '파리바게트', '2011-05-24', '2015-07-11', '소보로빵 전문 제작', 'mentor4@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, NULL, NULL, NULL, 'mentor4@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, NULL, NULL, NULL, NULL, 'mentor4@naver.com')
select *from dual;


INSERT all
INTO users
VALUES ( 'admin@naver.com', 'admin', '1234', '1994-11-11', 'admin', '60a81c75-c604-4abf-a119-364aa1dd7f1f.jpg', '서울시 서초구', 'admin', '01023341200', 100000, 'Y', default, SYSDATE, NULL, 'N')
INTO license
VALUES ( seq_license_license_no.nextval, NULL, NULL, NULL, 'admin@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, NULL, NULL, NULL, NULL, 'admin@naver.com')
select *from dual;

INSERT all
INTO license
VALUES ( seq_license_license_no.nextval, NULL, NULL, NULL, 'admin@naver.com' )
INTO career
VALUES (  seq_career_career_no.nextval, NULL, NULL, NULL, NULL, 'admin@naver.com')
select *from dual;

INSERT 
INTO coupon(coupon_no, coupon_name, discount_rate, discount_value, coupon_regdate)
VALUES (seq_coupon_coupon_no.NEXTVAL, '50% 할인쿠폰', 0.5, 0, SYSDATE);

INSERT 
INTO coupon(coupon_no, coupon_name, discount_rate, discount_value, coupon_regdate)
VALUES (seq_coupon_coupon_no.NEXTVAL, '8000원 할인 쿠폰', 0, 8000, SYSDATE);

INSERT 
INTO coupon(coupon_no, coupon_name, discount_rate, discount_value, coupon_regdate)
VALUES (seq_coupon_coupon_no.NEXTVAL, '10% 할인쿠폰', 0.1, 0, SYSDATE);

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
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10002, 'user@naver.com', '2022/01/19', '2022/07/30', '002');

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10002, 'user@naver.com', '2022/06/01', '2022/09/09', '002');

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10000, 'user3@naver.com', '2022/04/12', '2022/05/11', '003');

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10001, 'user2@naver.com', '2022/05/30', '2022/11/10', '001');

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10002, 'user2@naver.com', '2022/03/09', '2022/12/31', '001');

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10001, 'user3@naver.com', '2022/06/01', '2022/09/08', '002');

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10003, 'mentor@naver.com', '2022/03/09', '2022/08/21', '001');

INSERT 
INTO couponholder(issue_no, coupon_no, holder_id, start_date, end_date, issue_status) 
VALUES (seq_couponhodler_issue_no.NEXTVAL, 10000, 'mentor2@naver.com', '2022/06/01', '2022/06/09', '003');

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
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor2', '새우두부찜', '건강한 중국식 가정요리','담백한 두부 안에 새우를 쏘~옥 넣어 만든 건강한 중국식 가정요리! 새우두부찜이에요. 네모모양으로 자른 두부의 속을 파내 동글동글 굴린 새우를 넣어 찜통에 쪄냈어요. 소스도 과하지 않게 굴소스, 간장 등으로만 맛을 내어 건강하고 담백하게 요리를 즐기실 수 있어요. 완성된 요리도 근사해서 홈파티, 초대요리로도 너무 좋답니다.', '새우두부찜.jpg', null, '중급', '중식', 35, '내용' , SYSDATE, 0, 0);


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
SELECT '소금' AS ingredientName , '1줌' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user', '크로핀','크림이 꽉 찬', '크로와상과 머핀이 만나 탄생한 크로핀! 먹기 아쉬울 정도로 예쁜 비주얼과 뛰어난 맛으로 SNS에서 많은 인기를 끌었죠. 크로와상 냉동 생지를 활용해 집에서도 간단하게 만들 수 있다는 사실 다들 알고 계셨나요? 게다가 필링을 가득 넣어 더욱 부드럽고 맛있답니다. 딸기 필링과 얼그레이 필링 뿐만 아니라 커스터드 또는 초코크림, 잼 등 기호에 따라 다양하게 넣어서 즐길 수 있어요. 크로와상 생지의 무궁무진한 변신! 함께 따라해 보아요.', 'Step 7.jpg', null, '중급', '간식', 50, '내용' , SYSDATE, 0, 0);

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
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor2', '달걀 만두
', '입안 가득 차는 쫄깃함
','영양분이 풍부한 달걀과 쫀득한 식감을 자랑하는 당면으로 간단하게 만드는 달걀 만두를 소개해 드려요. 만두피가 없는 만두라 아이들 간식과 야식으로도 좋아요. 입안 가득 차는 쫄깃함과 고소함을 경험해 보세요.', '달걀만두.PNG', null, '초급', '한식', 30, '내용' , SYSDATE, 0, 0);


insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '달걀' AS ingredientName , '4개' AS ingredientAmount FROM DUAL
union all
SELECT '당면' AS ingredientName , '한 줌(100g)' AS ingredientAmount FROM DUAL
union all
SELECT '대파' AS ingredientName , '½대' AS ingredientAmount FROM DUAL
union all
SELECT '당근' AS ingredientName , '⅙개' AS ingredientAmount FROM DUAL
union all
SELECT '식용유' AS ingredientName , '적당량' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor3', '단호박 스프레드 토스트', 
'노랗고 노랗고 달콤하네', '찜통에 찐 단호박은 노란 속살에 수분이 갇혀 무척 촉촉하답니다. 단호박을 뜨거울 때 으깨고 치즈를 넣으면 더욱 쫀득한 스프레드가 되지요. 구운 빵에 스프레드를 듬뿍 올려 먹으면 달콤한 풍미에 금세 행복해질거예요. 단호박 자체로 충분히 달콤한 맛과 부드러운 식감을 즐길 수 있으니 연유는 취향에 따라 양을 조절해주세요!',
 '단스토.jpg', null, '초급', '간식', 40, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '바게트(슬라이스)' AS ingredientName , '4장' AS ingredientAmount FROM DUAL
union all
SELECT '단호박' AS ingredientName , '½개' AS ingredientAmount FROM DUAL
union all
SELECT '파슬리가루' ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '모차렐라 치즈(슈레드)' AS ingredientName , '½컵' AS ingredientAmount FROM DUAL
union all
SELECT '연유' AS ingredientName , '4큰술' AS ingredientAmount FROM DUAL
union all
SELECT '크러쉬드 레드페퍼' AS ingredientName , '¼작은술' AS ingredientAmount FROM DUAL
  ) A;


 INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor2', '보리새우 시금치 된장국
', '새우향이 그윽한
','보리새우의 고소한 단맛과 진하고 구수한 된장의 영양이 어우러진 일품 시금치 된장국이에요.', '보리새우.jpg', null, '초급', '한식', 17, '내용' , SYSDATE, 0, 0);


insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '시금치' AS ingredientName , '220g' AS ingredientAmount FROM DUAL
union all
SELECT '된장' AS ingredientName , '2큰술' AS ingredientAmount FROM DUAL
union all
SELECT '물
' AS ingredientName , '컵' AS ingredientAmount FROM DUAL
union all
SELECT '보리새우' AS ingredientName , '2큰술
' AS ingredientAmount FROM DUAL
union all
SELECT '다진마늘' AS ingredientName , '100g' AS ingredientAmount FROM DUAL
union all
SELECT '국간장' AS ingredientName , '1큰술' AS ingredientAmount FROM DUAL
  ) A;

    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor3', '동파육
','촉촉한 살코기가 먹음직스러운
', '중국의 대표요리 동파육은 소동파가 개발해 백성들에게 나누어 주었다는 훈훈한 유래를 갖고 있어요. 돼지고기의 향과 부드러운 식감, 윤기가 흐르는 진한 갈색의 먹음직스러운 색감까지 모두 갖추어 손님 초대에 손색 없는 요리랍니다. ', 
'동파육.jpg', null, '고급', '중식', 110, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '삼겹살' AS ingredientName , '800g' AS ingredientAmount FROM DUAL
union all
SELECT '흑설탕' AS ingredientName , '2큰술' AS ingredientAmount FROM DUAL
union all
SELECT '건고추' AS ingredientName , '2개' AS ingredientAmount FROM DUAL
union all
SELECT '숙주' AS ingredientName , '한 줌' AS ingredientAmount FROM DUAL
union all
SELECT '올리브오일' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '영양부추' AS ingredientName , '1/6단' AS ingredientAmount FROM DUAL
union all
SELECT '월계수잎' AS ingredientName , '3장' AS ingredientAmount FROM DUAL
union all
SELECT '굴소스' AS ingredientName , '1큰술' AS ingredientAmount FROM DUAL
  ) A;
  
INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor2', '스팸 마요 덮밥
', '간단하지만 근사한
','간단하지만 근사한 스팸마요 덮밥을 소개합니다. 스팸의 짠맛으로 시작해 양파의 달달함과 마요네즈의 고소함으로 끝나는 덮밥! 간단한 요리를 선호하시는 자취생, 그리고 아이들을 취향 저격 레시피랍니다. 오늘 저녁은 무엇을 먹어야 할지 고민이라면? 스팸마요 덮밥을 추천해요.',
'스팸마요덮.PNG', null, '초급', '한식', 20, '내용' , SYSDATE, 0, 0);


insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '스팸' AS ingredientName , '½개
' AS ingredientAmount FROM DUAL
union all
SELECT '양파' AS ingredientName , '⅓ 개
' AS ingredientAmount FROM DUAL
union all
SELECT '밥' AS ingredientName , '1공기
' AS ingredientAmount FROM DUAL
union all
SELECT '달걀' AS ingredientName , '2개
' AS ingredientAmount FROM DUAL
union all
SELECT '마요네즈' AS ingredientName , '1작은술
' AS ingredientAmount FROM DUAL
union all
SELECT '식용유' AS ingredientName , '10g
' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user3', '붕어빵', 
'우리 집이 붕세권!', '반죽할 필요 없이 간~단하게 만드는 핫도그 레시피를 알려드릴게요. 식빵 속에 소시지, 치즈를 넣고 돌돌 말아 내면 완성! 식빵 핫도그는 아이들 간식으로도 좋고 샐러드, 볶음면 등과 함께 곁들이면 가벼운 한 끼로도 즐길 수 있답니다. 바삭바삭 핫도그! 정말 간단하니 맛있게 만들어 보세요.',
 '붕어빵.jpg', null, '중급', '간식', 50, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '와플믹스' AS ingredientName , '400g' AS ingredientAmount FROM DUAL
union all
SELECT '불린 팥' AS ingredientName , '1컵' AS ingredientAmount FROM DUAL
union all
SELECT '설탕' ingredientName , '½컵' AS ingredientAmount FROM DUAL
union all
SELECT '물엿 (또는 올리고당)' AS ingredientName , '¼컵' AS ingredientAmount FROM DUAL
union all
SELECT '물' AS ingredientName , '1컵' AS ingredientAmount FROM DUAL
union all
SELECT '식용유' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
  ) A;

     INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user', '라자냐
','오랜 시간과 정성이 담긴
', '마치 오븐 스파게티처럼 보이는 라자냐는 이탈리아 파스타 요리 중 하나예요. 반죽을 얇게 밀어 넓적한 직사각형 모양으로 자른 파스타를 라구 알라 볼로네제, 베샤멜 소스, 파르미지아노 레지아노 치즈 등의 속 재료와 함께 층층이 쌓은 후 오븐에 구운 요리랍니다. 이처럼 오랜 시간과 정성이 들어가는 라자냐는 이탈리아에서 축제 또는 결혼식, 손님을 대접할 때 등장하는 요리라고 해요. 오늘은 정성이 가득한 라자냐를 한 번 만들어 볼게요! 정성이 들어가는 만큼 깊은 맛과 풍미는 인스턴트와 비교할 수 없어요. 라구소스를 끓여 놓으면 활용할 곳이 많으니 한 번에 많이 만들어 두고두고 먹어도 좋아요. 고급스럽고 예쁜 라자냐로 식탁을 빛내보세요.', 
'라자냐.jpg', null, '고급', '양식', 100, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '간 소고기
' AS ingredientName , '500g' AS ingredientAmount FROM DUAL
union all
SELECT '라자냐' AS ingredientName , '6장
' AS ingredientAmount FROM DUAL
union all
SELECT '마늘' AS ingredientName , '2쪽
' AS ingredientAmount FROM DUAL
union all
SELECT '당근' AS ingredientName , '½개
' AS ingredientAmount FROM DUAL
union all
SELECT '셀러리' AS ingredientName , '1대' AS ingredientAmount FROM DUAL
union all
SELECT '양파' AS ingredientName , '3개' AS ingredientAmount FROM DUAL
union all
SELECT '토마토소스' AS ingredientName , '1병 (300g)
' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '돼지고기 수육 양념 조림
','맛있는 수육 더 맛있게 먹기!
', '안 그래도 맛있는 수육을 더 맛있게 먹는 방법! 사과, 대파 등을 넣어 누린내 없이 부드럽게 삶은 수육을 양념에 조려 색다르게 즐겨보세요. 매콤 짭조름한 양념에 맛있게 조린 후 먹기 좋게 썰어내면 돼지고기 수육 양념 조림이 완성됩니다. 아삭한 묵은지에 파무침을 곁들여 먹어도 좋고 새콤 달달한 명이나물에 싸서 먹어도 정말 맛있는데요. 초대요리와 술안주로도 내놓아도 참 좋아요. 특별하게 따뜻한 밥 위에 올려 덮밥으로 활용해도 맛있답니다. 이번 명절, 휴일엔 맛있는 돼지고기 수육 양념 조림으로 풍성하게 보내세요!', '돼수양.jpg', null, '고급', '한식', 80, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '삼겹살 또는 오겹살
' AS ingredientName , '800g' AS ingredientAmount FROM DUAL
union all
SELECT '대파' AS ingredientName , '¼단
' AS ingredientAmount FROM DUAL
union all
SELECT '부추' AS ingredientName , '반 줌
' AS ingredientAmount FROM DUAL
union all
SELECT '양파' AS ingredientName , '⅓개
' AS ingredientAmount FROM DUAL
  ) A;
  
INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user3', '열무 비빔국수
','살얼음 동동~
', '아삭하고 개운한 맛이 참 좋은 열무김치가 집에 있으시다면 바로 열무 비빔국수 만들어 보세요~ 집에 있는 재료로 만들어 간단하면서도 입맛 돋우는 한 끼가 될 거예요!',
'열무비빔.PNG', null, '중급', '한식', 30, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '중면' AS ingredientName , '200g' AS ingredientAmount FROM DUAL
union all
SELECT '열무김치' AS ingredientName , '1컵' AS ingredientAmount FROM DUAL
union all
SELECT '통깨' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '오이' AS ingredientName , '½개' AS ingredientAmount FROM DUAL
  ) A;
 

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor3', '타코야끼', 
'겨울 간식 최강자', '길거리 음식을 먹는 것이 걱정된다면 집에서 만들어 보는 건 어떠세요? 오늘 소개해드릴 음식은 겨울철 길거리 음식 최강자 타코야끼입니다. 커다란 문어와 입천장이 뜨거워지는 반죽은 언제나 입안에서 사르르 녹아 없어지죠. ',
 '타코야끼.jpg', null, '중급', '일식', 20, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '문어' AS ingredientName , '120g' AS ingredientAmount FROM DUAL
union all
SELECT '가쓰오부시' AS ingredientName , '한줌' AS ingredientAmount FROM DUAL
union all
SELECT '밀가루' ingredientName , '110g' AS ingredientAmount FROM DUAL
union all
SELECT '마요네즈' AS ingredientName , '2큰술' AS ingredientAmount FROM DUAL
union all
SELECT '돈가스 소스 (또는 우스터 소스)' AS ingredientName , '4큰술' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user3', '가리비 칼국수
','담백하고 시원한 맛!
', '담백하면서 독특한 풍미가 있는 가리비는 국물 요리에서 더욱 빛이 나는데요. 감칠맛 나는 시원한 국물이 입맛을 사로잡기 때문이에요. 그래서 준비한 오늘의 레시피! 가리비를 넣고 끓여 시원한 맛이 일품인 가리비 칼국수랍니다. 큼지막한 가리비가 들어가 보기에도 좋고 맛도 깊어진 가리비 칼국수예요. 칼국수가 당기는 날, 담백하고 시원한 가리비 칼국수를 드셔보세요!', 
'가리비칼국수.PNG', null, '중급', '한식', 35, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '칼국수 면' AS ingredientName , '2인분 (300g)' AS ingredientAmount FROM DUAL
union all
SELECT '가리비 (소)' AS ingredientName , '15개' AS ingredientAmount FROM DUAL
union all
SELECT '미더덕 (또는 오만둥이)' AS ingredientName , '½컵' AS ingredientAmount FROM DUAL
union all
SELECT '감자' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
union all
SELECT '양파' AS ingredientName , '¼개' AS ingredientAmount FROM DUAL
union all
SELECT '멸치 새우 다시마 육수
' AS ingredientName , '7컵
' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user3', '연어장과 연어덮밥', 
'첫 숟가락부터 반하게 될', '비타민이 풍부한 생선인 연어는 윤기도는 색감부터 입맛을 자극하는데요~ 연어가 밥과 이렇게 잘 어울렸는지, 한 숟가락을 뜨자마자 깜짝 놀라실 거예요. 연어장으로 만들어 반찬 없이도 맛있는 한 끼를 즐겨보세요!',
 '연어덮밥.jpg', null, '초급', '일식', 45, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '생연어' AS ingredientName , '600g' AS ingredientAmount FROM DUAL
union all
SELECT '양파' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
union all
SELECT '레몬' ingredientName , '1/2개' AS ingredientAmount FROM DUAL
union all
SELECT '간장' AS ingredientName , '1컵' AS ingredientAmount FROM DUAL
union all
SELECT '가츠오부시' AS ingredientName , '1/2컵' AS ingredientAmount FROM DUAL
union all
SELECT '홍고추' AS ingredientName , '2개' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '낙지 초무침
','폴킴이 알려주는
', '안녕하세요! 노래하는 폴킴 아니 요리하는 폴킴입니다. 술이 당기는 날엔? 무조건 낙지 초무침을 만들어 보세요~ 새콤달콤하면서 매콤하기까지 한 양념장이 매력적인 낙지 초무침 레시피는 술안주로 최고예요. 살짝 데쳐 쫄깃하면서 부~드러운 낙지에 입맛 돋우는 양념장으로 무쳐내면 요리 끝이에요! 낙지는 타우린 성분이 풍부해 우리 몸의 기력을 회복 시켜 주는데요. 낙지 초무침으로 환절기 기력도 챙기고 술안주로 맛있게 즐겨도 보세요. ', 
'낙지 초무침.PNG', null, '초급', '한식', 20, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '손질 낙지
' AS ingredientName , '300g' AS ingredientAmount FROM DUAL
union all
SELECT '양파' AS ingredientName , '⅓개' AS ingredientAmount FROM DUAL
union all
SELECT '미나리' AS ingredientName , '한 줌 (40g)' AS ingredientAmount FROM DUAL
union all
SELECT '청양고추' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user3', '냉이 차돌박이 솥밥
','봄 내음 물씬~', '꽃샘추위도 잠시, 언제 추웠냐는 듯 창밖으로만 봐도 이제 완연한 봄이라는 게 실감이 나네요. 오늘은 봄 내음이 물씬 풍기는 냉이와 고소한 풍미의 차돌박이로 만드는 ‘냉이 차돌박이 솥밥’ 레시피를 소개해 드려요. 냉이와 차돌박이의 조합은 맛은 물론, 영양까지 잡아 나른한 봄에 먹기 좋은 한 그릇 음식이랍니다. 짭조름한 양념간장에 슥슥 비벼 먹으면 더 풍부한 맛을 즐길 수 있어요.', 
'냉차솥.PNG', null, '고급', '한식', 50, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '냉이' AS ingredientName , '한 줌 (200g)
' AS ingredientAmount FROM DUAL
union all
SELECT '차돌박이' AS ingredientName , '200g
' AS ingredientAmount FROM DUAL
union all
SELECT '쌀' AS ingredientName , '2컵 (360g)
' AS ingredientAmount FROM DUAL
union all
SELECT '다시마 육수' AS ingredientName , '2컵
' AS ingredientAmount FROM DUAL
  ) A;


  
    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor4', '찹쌀 샤오마이
','쫀득하게 씹히는
', '물에 불린 찹쌀을 이용하여 딤섬을 만들면 든든한 한 끼 식사로 좋아요. 찹쌀은 멥쌀보다 찰져 소화기능이 약한 사람에게 좋고, 비만 예방에 좋답니다.', 
'찹쌀샤오마이.jpg', null, '초급', '중식', 20, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '찹쌀' AS ingredientName , '200g' AS ingredientAmount FROM DUAL
union all
SELECT '불린 샤미' AS ingredientName , '30ml' AS ingredientAmount FROM DUAL
union all
SELECT '달걀노른자' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
union all
SELECT '물' AS ingredientName , '100g' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '달걀 간장 비빔국수
','촉촉한 반숙이 매력적인', '우리 간단하고 맛있는 한 끼 같이 해볼까요? 빠르지만 맛은 보장하는 달걀 간장 비빔국수 레시피를 알려드릴게요. 빨간 양념의 비빔국수 대신 맵지 않아 누구나 맛있게 먹을 수 있는 간장으로 비빔국수를 만들어봤어요. 달달하면서 짭조름한 간장의 맛과 단백질 보충을 해주는 반숙 달걀의 조합은 정말 누구나 좋아할 만한 맛이랍니다. 살짝 촉촉한 달걀노른자에 비빔국수 양념을 비벼 먹어도 꿀맛이에요.', 
'간장비빔국수.PNG', null, '초급', '한식', 30, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '달걀' AS ingredientName , '2개' AS ingredientAmount FROM DUAL
union all
SELECT '소면' AS ingredientName , '200g' AS ingredientAmount FROM DUAL
union all
SELECT '쪽파' AS ingredientName , '½대
' AS ingredientAmount FROM DUAL
union all
SELECT '통깨' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
  ) A;

  INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user3', '만둣국
','뜨끈뜨끈한
', '보기만 해도 배부른 두~툼한 왕만두로 만둣국을 만들어 보세요! 멸치 다시마 육수를 이용해 깔끔하면서도 시원하게 먹을 수 있어요. 따듯한 국물이 촉촉하게 배인 만두 한 입, 국물 한 입이면 마음이 따듯해진답니다. 집에 있는 만두로 간단하게 한 끼를 만들어 먹어도 좋고, 연휴에 쉽고 빠르게 뚝딱 차려 내어도 좋은 만둣국!', 
'만둣국.PNG', null, '중급', '한식', 30, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '왕만두' AS ingredientName , '6개 (150g)
' AS ingredientAmount FROM DUAL
union all
SELECT '달걀' AS ingredientName , '1개
' AS ingredientAmount FROM DUAL
union all
SELECT '대파' AS ingredientName , '⅙대
' AS ingredientAmount FROM DUAL
union all
SELECT '멸치 다시마 육수
' AS ingredientName , '5컵
' AS ingredientAmount FROM DUAL
  ) A;
  

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user3', '쪽파 크림치즈 연어베이글', 
'뉴욕 브런치 맛집에 온 듯한', '짭조름한 소금빵 열풍에 이어 쫄깃한 식감과 담백 고소한 맛의 베이글이 최근 큰 인기를 끌고 있어요. 그냥 먹어도 맛있지만 잼이나 치즈를 바르거나, 샌드위치로 만드는 등 어떻게 먹어도 맛있는 베이글! 오늘은 마치 뉴욕의 브런치 맛집에서 아침의 여유를 만끽하는 듯한 쪽파 크림치즈 연어 베이글 레시피를 소개해요.',
 '쪽크연베.jpg', null, '초급', '간식', 15, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '베이글' AS ingredientName , '2개' AS ingredientAmount FROM DUAL
union all
SELECT '훈제연어' AS ingredientName , '50g' AS ingredientAmount FROM DUAL
union all
SELECT '적양파' ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '쪽파' AS ingredientName , '2대' AS ingredientAmount FROM DUAL
union all
SELECT '크림치즈' AS ingredientName , '300g' AS ingredientAmount FROM DUAL
union all
SELECT '케이퍼' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
  ) A;  
  
  
  INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user', '산더미 물갈비
','이름만 들어도 푸짐한
', '산더미 물갈비? 이름만 들어도 푸짐한 요리가 떠오르지 않나요? 산더미 물갈비는 샤부샤부용 쇠고기와 소갈비, 콩나물, 버섯 등 여러 가지 고기와 채소가 푸짐하게 올라가는 음식이에요. 얼큰한 갈비 육수에 콩나물와 미나리를 더해 깊고 시원한 국물 맛이 일품이랍니다. *산더미 물갈비 더 맛있게 먹는 꿀Tip 남은 국물에 우동사리를 넣어보세요. 얼큰한 국물과 탱글한 우동 면발의 환상 조합! 마무리론 볶음밥 잊지 않으셨죠?', 
'산더미물갈비.PNG', null, '초급', '한식', 90, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '소갈비
' AS ingredientName , '8대
' AS ingredientAmount FROM DUAL
union all
SELECT '쇠고기 (샤부샤부용)
' AS ingredientName , '200g
' AS ingredientAmount FROM DUAL
union all
SELECT '양파' AS ingredientName , '½개
' AS ingredientAmount FROM DUAL
union all
SELECT '느타리버섯
' AS ingredientName , '1봉' AS ingredientAmount FROM DUAL
  ) A;

  
INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor3', '참치타다키', 
'특별한 안주가 생각나는 날', '일식 주점에서 만나볼 수 있는 참치타다키는 참치 겉면만 살짝 익혀서 상큼한 소스와 함께 내는 일본식 안주예요. 겉면은 쫄깃하고 고소한 맛을 내고 분홍빛 속살은 부드럽게 혀에서 녹아 내린답니다. ',
 '참치타다끼.jpg', null, '중급', '일식', 40, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '냉동참치' AS ingredientName , '1토막(100g)' AS ingredientAmount FROM DUAL
union all
SELECT '라임 또는 레몬' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
union all
SELECT '래디사' ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '어린잎채소' AS ingredientName , '한 줌' AS ingredientAmount FROM DUAL
union all
SELECT '올리브오일' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '통깨' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
  ) A;


    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor4', '해장짬뽕
','얼큰한 해물 국물
', '각종 해산물과 채소를 고추기름에 볶은 뒤 끓여 얼큰하고 개운한 국물맛이 감동을 불러 일으켜요. 우리에겐 너무도 익숙한 중식, 얼큰한 짬뽕을 함께 만들어 보세요~', 
'해장짬뽕.jpg', null, '중급', '중식', 35, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '오징어' AS ingredientName , '½마리' AS ingredientAmount FROM DUAL
union all
SELECT '고춧가루' AS ingredientName , '2큰술' AS ingredientAmount FROM DUAL
union all
SELECT '알새우' AS ingredientName , '6~8마리' AS ingredientAmount FROM DUAL
union all
SELECT '목이버섯' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
union all
SELECT '다진마늘' AS ingredientName , '1작은술' AS ingredientAmount FROM DUAL
  ) A;

    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor', '어묵 김밥
','손이 가요 손이 가!
', '손이 가요 손이 가 어묵 김밥에 손이 가요! 자꾸만 먹고 싶은 매콤 어묵 김밥 레시피 비법이 궁금하시다면? 냉장고 속 어묵, 달걀, 묵은지로 간단하게 만들어 보세요. 김밥과 또 다른 매력의 어묵 김밥에 중독되실 수도 있답니다. (조심!)', 
'어묵김밥.PNG', null, '초급', '한식', 30, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '밥' AS ingredientName , '2공기
' AS ingredientAmount FROM DUAL
union all
SELECT '어묵' AS ingredientName , '5장
' AS ingredientAmount FROM DUAL
union all
SELECT '청양고추' AS ingredientName , '4개
' AS ingredientAmount FROM DUAL
union all
SELECT '달걀' AS ingredientName , '4개
' AS ingredientAmount FROM DUAL
  ) A;
  

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor4', '토마토바질에이드', 
'여름을 시원하게!', '비타민이 가~득! 항산화 효과가 있는 만능 채소 토마토! 탱글탱글하고 알차게 익은 방울토마토로 에이드를 만들어 볼 건데요. 토마토 바질 청과 탄산수면 끝이랍니다~',
 '토마토바질에이드.jpg', null, '초급', '간식', 15, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '방울토마토' AS ingredientName , '60개(550g)' AS ingredientAmount FROM DUAL
union all
SELECT '설탕' AS ingredientName , '500g' AS ingredientAmount FROM DUAL
union all
SELECT '라임즙' ingredientName , '2큰술' AS ingredientAmount FROM DUAL
union all
SELECT '바질잎' AS ingredientName , '8g' AS ingredientAmount FROM DUAL
union all
SELECT '토마토 청' ingredientName , '½컵' AS ingredientAmount FROM DUAL
union all
SELECT '바질잎' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '탄산수' ingredientName , '2컵' AS ingredientAmount FROM DUAL
  ) A;

    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor1', '육전 비빔면
','남은 육전을 활용해요!
', '남은 육전을 활용한 육전 비빔면을 만들어 볼게요! 최근에는 요리 예능 방송에 소개가 되어 이슈가 되었는데요. 바로 따라 하고 싶을 정도로 맛있어 보인 육전 비빔면이랍니다. 정말 간단하지만, 맛없을 수가 없는 레시피예요. 육전의 부드럽고 담백한 맛과 비빔면의 양념 소스와 잘 어울리니 올 추석 남은 육전으로 꼭 한 번 만들어 보세요.', 
'육전비빔면.PNG', null, '중급', '한식', 20, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '육전' AS ingredientName , '6장' AS ingredientAmount FROM DUAL
union all
SELECT '중면' AS ingredientName , '200g' AS ingredientAmount FROM DUAL
union all
SELECT '오이' AS ingredientName , '⅓개
' AS ingredientAmount FROM DUAL
union all
SELECT '쪽파' AS ingredientName , '2대' AS ingredientAmount FROM DUAL
  ) A;
  
      INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor1', '접어먹는 김밥
','1,2,3! 접으면 끝나는', '요즘 SNS에서 핫한 레시피! 접어먹는 김밥을 만들어 보았어요. 이리저리 착착 접히는 모습이 신기하면서도 기발한 김밥이랍니다. 옆구리가 터질 염려가 없어 누구나 쉽게 만들 수 있어요. 돌돌 마는 김밥이 어려우셨던 분들, 간단하게 김밥을 즐기고 싶은 분들에게 좋은 요리예요. 한 끼 식사로도 좋고, 도시락 메뉴로 활용하기 좋은 접어먹는 김밥! 꼭 한 번 만들어 보세요~', 
'접어먹는김밥.PNG', null, '중급', '한식', 20, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '김밥용김
' AS ingredientName , '4장
' AS ingredientAmount FROM DUAL
union all
SELECT '밥
' AS ingredientName , '1공기' AS ingredientAmount FROM DUAL
union all
SELECT '슬라이스 치즈
' AS ingredientName , '4장
' AS ingredientAmount FROM DUAL
union all
SELECT '상추' AS ingredientName , '8장
' AS ingredientAmount FROM DUAL
  ) A;
  

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '낫토마메밀국수', 
'속이 편안한 건강식', '세계 5대 장수 식품의 하나인 낫토와 산에서 나는 장어라 불리는 마, 모두 몸에 좋은건 알지만 쉽게 손이 가지 않지요? 낫토의 강한 냄새와 끈적임, 마의 미끄덩거리는 질감이 부담스럽다면 메밀국수와 함께 즐겨보세요. ',
 '낫토마메밀국수.jpg', null, '초급', '일식', 20, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '메밀국수' AS ingredientName , '100g' AS ingredientAmount FROM DUAL
union all
SELECT '낫토' AS ingredientName , '1팩' AS ingredientAmount FROM DUAL
union all
SELECT '마' ingredientName , '100g' AS ingredientAmount FROM DUAL
union all
SELECT '달걀노른자' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
union all
SELECT '오이지' AS ingredientName , '4조각' AS ingredientAmount FROM DUAL
union all
SELECT '쯔유' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
  ) A;

        INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '콩나물제육볶음
','아삭한 식감이 더해진
', '제육볶음을 만들 때 대파를 송송 썰어 넣어 파향을 즐겨도 좋지만 콩나물을 듬뿍 넣어 먹어도 아주 맛있답니다. 콩나물을 넣으면 구수한 콩나물의 채수와 아삭한 식감이 더해져 더욱 맛있는 제육볶음을 만들 수 있어요. 콩나물은 채수를 많이 머금고 있어서 평소보다 양념의 간을 조금 더 세게 잡는 것이 콩나물제육볶음의 포인트인데요~ 매콤하고 간간하게 볶아 맛있게 즐겨볼까요?', 
'콩나물제육볶음.PNG', null, '중급', '한식', 35, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '돼지고기
' AS ingredientName , '350g
' AS ingredientAmount FROM DUAL
union all
SELECT '콩나물' AS ingredientName , '100g' AS ingredientAmount FROM DUAL
union all
SELECT '깻잎' AS ingredientName , '6장' AS ingredientAmount FROM DUAL
union all
SELECT '양파' AS ingredientName , '80g' AS ingredientAmount FROM DUAL
  ) A;


 INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor', '통삼겹 크림파스타
','미국산 돼지고기로 감칠맛, 풍미를 더한
', '요즘 핫한 파스타 맛집에서 맛 볼 법한 통삼겹 크림 파스타! 멀리 갈 필요 없이 집에서도 맛집 레시피를 즐길 수 있는 방법 소개해요. 이번 파스타의 메인 재료인 돼지고기만 잘 골라도 맛의 퀄리티를 확 높여줄 수 있는데요. 특별히 옥수수를 먹여 키워서 더욱 고소한 미국산 돼지고기를 사용했어요. 부드러운 육질과 깊고 진한 풍미를 느낄 수 있는 고기의 감칠맛이 더해져 크림 파스타의 풍미를 한껏 끌어 올려준답니다. ', 
'통삼겹양식크림.jpg', null, '중급', '양식', 40, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '스파게티 면
' AS ingredientName , '160g
' AS ingredientAmount FROM DUAL
union all
SELECT '통삼겹살
' AS ingredientName , '600g' AS ingredientAmount FROM DUAL
union all
SELECT '양송이버섯
' AS ingredientName , '3개
' AS ingredientAmount FROM DUAL
union all
SELECT '마늘' AS ingredientName , '
4쪽' AS ingredientAmount FROM DUAL
union all
SELECT '올리브유' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '후추' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
  ) A;
  
   INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor1', '구운 브리 치즈 샐러드
','한 점의 예술 작품같은
', '피트 몬드리안이란 작가의 그림에서 영감을 받아 만든 샐러드예요. 치즈는 녹아내릴 수 있어서 재빠르게 굽는 것이 중요하답니다. 브리 치즈 대신 까망베르 치즈를 사용해도 좋아요!', 
'구운 브리 치즈 샐러드.jpg', null, '초급', '양식', 20, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '브리치즈' AS ingredientName , '½개
' AS ingredientAmount FROM DUAL
union all
SELECT '어린 양배추
' AS ingredientName , '1개
' AS ingredientAmount FROM DUAL
union all
SELECT '애호박' AS ingredientName , '⅓개
' AS ingredientAmount FROM DUAL
union all
SELECT '비트' AS ingredientName , '30g' AS ingredientAmount FROM DUAL
  ) A;
  

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user', '식빵 핫도그', 
'반죽할 필요 없는', '반죽할 필요 없이 간~단하게 만드는 핫도그 레시피를 알려드릴게요. 식빵 속에 소시지, 치즈를 넣고 돌돌 말아 내면 완성! 식빵 핫도그는 아이들 간식으로도 좋고 샐러드, 볶음면 등과 함께 곁들이면 가벼운 한 끼로도 즐길 수 있답니다. 바삭바삭 핫도그! 정말 간단하니 맛있게 만들어 보세요.',
 '식빵핫도그.jpg', null, '초급', '간식', 30, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '식빵' AS ingredientName , '5개' AS ingredientAmount FROM DUAL
union all
SELECT '후랑크 소시지' AS ingredientName , '5개' AS ingredientAmount FROM DUAL
union all
SELECT '모차렐라 슬라이스 치즈' ingredientName , '5장' AS ingredientAmount FROM DUAL
union all
SELECT '달걀' AS ingredientName , '2개' AS ingredientAmount FROM DUAL
union all
SELECT '빵가루' AS ingredientName , '1컵' AS ingredientAmount FROM DUAL
union all
SELECT '튀김유' AS ingredientName , '적당량' AS ingredientAmount FROM DUAL
union all
SELECT '케첩' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
  ) A;

   INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor1', '문어 꾸스꾸스
','고급 가정식 파스타
', '쿠스쿠스는 밀가루를 손으로 비벼 만든 좁쌀같은 알갱이 모양의 파스타를 뜻해요. 주로 스튜나 고기에 곁들여 먹는답니다. 요리할 때 문어는 때리지 않으면 질기기 때문에 꼭 많이 두들겨 사용해 주세요.', 
'문어 꾸스꾸스.jpg', null, '중급', '양식', 40, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '돌문어' AS ingredientName , '½마리
' AS ingredientAmount FROM DUAL
union all
SELECT '꾸스꾸스' AS ingredientName , '80g
' AS ingredientAmount FROM DUAL
union all
SELECT '양파' AS ingredientName , '⅓개
' AS ingredientAmount FROM DUAL
union all
SELECT '마늘' AS ingredientName , '1개
' AS ingredientAmount FROM DUAL
  ) A;

  
    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor', '김치 로제파스타
','한식파도 반할
', '붉은색의 토마토소스와 흰색의 크림소스가 만나 예쁜 봄의 꽃을 연상시키는 로제 파스타. 오늘은 매콤 아삭한 김치를 넣어 한식 파도 반할만한 ‘김치 로제파스타’를 소개해 드려요. 생크림 대신 우유와 치즈를 넣어 느끼함은 덜고, 오동통한 새우를 듬뿍 넣어 풍미는 UP! 냉장고에 있는 재료만으로도 근사한 한 끼를 만들 수 있어요.', 
'김치로제파스타.jpg', null, '중급', '양식', 35, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '스파게티 면
' AS ingredientName , '두 줌 (160g)
' AS ingredientAmount FROM DUAL
union all
SELECT '배추김치(숙성)' AS ingredientName , '½컵 (70g)' AS ingredientAmount FROM DUAL
union all
SELECT '베이컨' AS ingredientName , '4장
' AS ingredientAmount FROM DUAL
union all
SELECT '토마토 소스
' AS ingredientName , '1컵' AS ingredientAmount FROM DUAL
union all
SELECT '우유
' AS ingredientName , '1+½컵' AS ingredientAmount FROM DUAL
  ) A;
  
 
  INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor3', '마라탕
','얼얼한 매운 맛의
', '중국에서 가장 매운 음식으로 손꼽히는 마라탕이 한국에서도 큰 인기를 끌고 있죠? 여러 가지 재료가 들어가는 마라탕은 맵고 얼큰한 맛이 특징이지만 땅콩버터를 넣으면 구수한 맛이 더해집니다. 빵과 곁들여도 좋으니 취향껏 색다르게 즐겨보세요!', 
'마라탕.jpg', null, '중급', '중식', 50, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '마라소스' AS ingredientName , '110g' AS ingredientAmount FROM DUAL
union all
SELECT '소고기 샤브용' AS ingredientName , '150g' AS ingredientAmount FROM DUAL
union all
SELECT '청경채' AS ingredientName , '20g' AS ingredientAmount FROM DUAL
union all
SELECT '새우' AS ingredientName , '110g' AS ingredientAmount FROM DUAL
  ) A;

    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user3', '양송이새우핑거푸드
','한입 가득 영양만점
', '와인과 함께 즐기기에도, 분위기를 띄우기에도 손색없는 레시피를 준비했어요. 양송이가 동글동글 귀여워 핑거푸드로 잘 어울려요~ 새우, 치즈를 듬뿍 올려 입안 가득 풍부한 맛을 느껴보세요.', 
'양송이새우핑거푸드.jpg', null, '초급', '양식', 30, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '양송이' AS ingredientName , '15개
' AS ingredientAmount FROM DUAL
union all
SELECT '새우' AS ingredientName , '10마리
' AS ingredientAmount FROM DUAL
union all
SELECT '양파' AS ingredientName , '1/2개
' AS ingredientAmount FROM DUAL
union all
SELECT '시판 토마토소스
' AS ingredientName , '1/2컵
' AS ingredientAmount FROM DUAL
  ) A;
  
     INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '봉골레파스타
','바지락을 듬뿍 넣어 담백한
', '이탈리아어로 조개를 의미하는 봉골레! 바지락을 듬뿍 넣어 감칠맛을 살린 봉골레 파스타를 준비해봤어요. 간단하지만 분위기 있는 식탁을 만들어주는 마법 같은 요리랍니다. 봉골레 파스타로 사랑스러움을 더해보세요.', 
'페퍼론치노_페페로치노.jpg', null, '고급', '양식', 30, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '스파게티' AS ingredientName , '160g
' AS ingredientAmount FROM DUAL
union all
SELECT '바지락' AS ingredientName , '500g' AS ingredientAmount FROM DUAL
union all
SELECT '마늘' AS ingredientName , '5쪽' AS ingredientAmount FROM DUAL
union all
SELECT '페페론치노 (또는 건고추 2개)' AS ingredientName , '4개
' AS ingredientAmount FROM DUAL
union all
SELECT '이태리파슬리
' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '화이트와인' AS ingredientName , '1/3컵
' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '야키도리', 
'온 가족이 함께 즐기는 꼬치구이', '온 가족이 함께 즐겨 먹을 수 있는 꼬치구이를 소개할게요. 각종 고기와 해산물, 채소류 등 먹고 싶은 음식을 꼬치에 꽂아서 먹는 꼬치 요리는 맛도 좋을 뿐 아니라 가족이 함께 만드는 재미까지 더해진 음식이에요. ',
 '야키도리.jpg', null, '초급', '일식', 40, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '새우' AS ingredientName , '5마리' AS ingredientAmount FROM DUAL
union all
SELECT '시사모(열빙어)' AS ingredientName , '4마리' AS ingredientAmount FROM DUAL
union all
SELECT '닭다리살' ingredientName , '300g' AS ingredientAmount FROM DUAL
union all
SELECT '대파' AS ingredientName , '2~3대' AS ingredientAmount FROM DUAL
union all
SELECT '소금.후추.청주' AS ingredientName , '약간씩' AS ingredientAmount FROM DUAL
union all
SELECT '간장' AS ingredientName , '3큰술' AS ingredientAmount FROM DUAL
  ) A;  

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor2', '날치알 수정교자
','꽃봉우리 모양의
', '톡톡 터지는 날치알을 이용하여 꽃 모양을 만들어 보기에도 좋고 맛도 좋은 수정교자를 만들 수 있어요. 날치알 수정교자는 적은 양의 날치알을 사용하기 때문에 남은 재료는 냉동실에 넣어 보관하는게 좋답니다.', 
'날치알 수정교자.jpg', null, '중급', '중식', 50, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '새우' AS ingredientName , '200g' AS ingredientAmount FROM DUAL
union all
SELECT '죽순' AS ingredientName , '30g
' AS ingredientAmount FROM DUAL
union all
SELECT '돼지고기 A 지방
' AS ingredientName , '50g
' AS ingredientAmount FROM DUAL
union all
SELECT '날치알' AS ingredientName , '50g
' AS ingredientAmount FROM DUAL
  ) A;
  

  
    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor4', '채소춘권
','춘권의 기본
', '여러 모양과 크기를 지닌 춘권은 수세기에 걸쳐 아시아에서 유행하는 간식거리예요. 중국에서 봄에 열리는 신년 행사인 춘절에 먹었다 하여 춘권으로 불린다고 알려져 있답니다.', 
'채소춘권.jpg', null, '초급', '중식', 30, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '당근' AS ingredientName , '50g' AS ingredientAmount FROM DUAL
union all
SELECT '샐러리' AS ingredientName , '40g' AS ingredientAmount FROM DUAL
union all
SELECT '닭가슴살' AS ingredientName , '100g' AS ingredientAmount FROM DUAL
union all
SELECT '춘권피' AS ingredientName , '6장' AS ingredientAmount FROM DUAL
  ) A;

  
    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '쇠고기 미역국
','미역국의 정석', '쇠고기를 넣은 미역국은 한국인의 소울푸드 중 하나가 아닐까 싶어요. 감칠맛 넘치는 따끈한 국물에 부드럽게 씹히는 쇠고기 한 조각, 맛있는 미역국 한 그릇이 주는 행복은 정말 크죠. 누가 끓여도 맛있도록, 쇠고기 미역국 레시피를 준비해 보았어요. 함께 만들어 보실까요?', 
'미역꾹.PNG', null, '초급', '한식', 50, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '자른 쇠고기 양지(또는 등심)
' AS ingredientName , '100g
' AS ingredientAmount FROM DUAL
union all
SELECT '자른 미역
' AS ingredientName , '20g (⅔컵)
' AS ingredientAmount FROM DUAL
union all
SELECT '참기름 (또는 들기름)
' AS ingredientName , '2큰술
' AS ingredientAmount FROM DUAL
union all
SELECT '국간장' AS ingredientName , '2큰술
' AS ingredientAmount FROM DUAL
union all
SELECT '다진 마늘
' AS ingredientName , '1큰술
' AS ingredientAmount FROM DUAL
  ) A;
  
    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor4', '찹쌀탕수육
','겉은 바삭 속은 쫀득
', '겉은 바삭하고 속은 쫀득한 식감의 만다린식 탕수육 요리예요. 한입씩 베어물 때마다 식감에 반하실 거예요~', 
'찹쌀탕수육.jpg', null, '중급', '중식', 35, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '돼지고기 등심' AS ingredientName , '250g' AS ingredientAmount FROM DUAL
union all
SELECT '다진생강' AS ingredientName , '½작은술' AS ingredientAmount FROM DUAL
union all
SELECT '찹쌀가루' AS ingredientName , '⅓컵(50g)' AS ingredientAmount FROM DUAL
union all
SELECT '베이킹파우더' AS ingredientName , '2작은술(10g)' AS ingredientAmount FROM DUAL
  ) A;



  INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor', '묵은지 유부 쌈밥
','한 입에 쏙~
', '포근한 햇볕과 바람 덕분에 가만히 있어도 기분이 좋은 요즘이에요. 오늘은 겨우내 냉장고 깊은 곳에서 새콤하게 잘 익은 묵은지를 꺼내 볼게요. 아삭한 식감의 묵은지에 짭조름한 유부 조림과 야채를 넣고, 미나리로 묶어 단아한 마무리까지. 봄기운이 물씬 느껴지는 ‘묵은지 유부 쌈밥’ 으로 나른한 미각을 깨워보세요. 한입에 쏙 들어가는 사이즈로, 입 안 가득 채워지는 맛을 경험해 보세요.', 
'묵은주유부쌈밥.PNG', null, '고급', '한식', 40, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '밥' AS ingredientName , '2공기
' AS ingredientAmount FROM DUAL
union all
SELECT '묵은지 (또는 잘익은 배추김치)
' AS ingredientName , '⅓쪽
' AS ingredientAmount FROM DUAL
union all
SELECT '달걀' AS ingredientName , '2개
' AS ingredientAmount FROM DUAL
union all
SELECT '오이' AS ingredientName , '½개
' AS ingredientAmount FROM DUAL
union all
SELECT '냉동유부' AS ingredientName , '8장
' AS ingredientAmount FROM DUAL
union all
SELECT '미나리
' AS ingredientName , '한줌' AS ingredientAmount FROM DUAL
  ) A;

    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor4', '어향육슬덮밥
','다양한 맛이 한 그릇에!
', '어향육슬은 위샹러우쓰라고 불리는 중국 쓰촨 지방의 음식인데요. 짭짜름하고 매콤, 달콤한, 그리고 약간의 신맛이 나는 소스를 실처럼 가느다랗게 썬 돼지고기와 각종 채소와 함께 볶아낸 요리랍니다! ', 
'어향육슬덮밥.jpg', null, '중급', '중식', 45, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '돼지고기(잡채용)' AS ingredientName , '300g' AS ingredientAmount FROM DUAL
union all
SELECT '치킨육수(또는 물)' AS ingredientName , '1컵' AS ingredientAmount FROM DUAL
union all
SELECT '홍고추' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
union all
SELECT '두반장' AS ingredientName , '1+1/2큰술' AS ingredientAmount FROM DUAL
union all
SELECT '고추기름' AS ingredientName , '2큰술' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor2', '붓카케 우동', 
'탱글탱글! 차가운 면발!', '여름날 즐기기 좋은 차가운 우동! 붓카케 우동 레시피를 우리의식탁에 공개합니다! 다가오는 무더위를 날려줄 붓카케 우동 레시피 놓치치 마세요. ',
 '붓카게우동.jpg', null, '초급', '일식', 15, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '우동면' AS ingredientName , '2개' AS ingredientAmount FROM DUAL
union all
SELECT '쯔유 (우동용)' AS ingredientName , '6큰술' AS ingredientAmount FROM DUAL
union all
SELECT '레몬' ingredientName , '2조각' AS ingredientAmount FROM DUAL
union all
SELECT '김밥 김' AS ingredientName , '½장' AS ingredientAmount FROM DUAL
union all
SELECT '다진 생강' AS ingredientName , '1큰술' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user3', '밀푀유나베', 
'시원한 국물이 일품인', '따끈한 국물이 생각나는 요즘 만들기도 간단하고 맛과 담음새까지 좋은 밀푀유나베 만드는 법을 알려드릴게요. 밀푀유나베는 ‘천개의 잎사귀’ 라는 뜻인데 겹겹이 쌓인 채소와 고기가 보기에도 좋고 맛도 좋아서 손님 초대용 음식으로 준비하셔도 좋답니다.',
 '밀푀유나베.jpg', null, '초급', '일식', 45, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '한우 불고기용' AS ingredientName , '300g' AS ingredientAmount FROM DUAL
union all
SELECT '깻잎' AS ingredientName , '2장' AS ingredientAmount FROM DUAL
union all
SELECT '알배추' ingredientName , '1포기' AS ingredientAmount FROM DUAL
union all
SELECT '표고버섯' AS ingredientName , '3개' AS ingredientAmount FROM DUAL
union all
SELECT '국간장' AS ingredientName , '1/2큰술' AS ingredientAmount FROM DUAL
  ) A;

    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '연어 브루스케타
','근사한 핑거푸드
', '간단하게 즐기는 핑거푸드! 혈관 질환 예방에 좋은 연어 좋아하시는 분들 많죠. 간단하지만 멋스러운 연어 브루스케타로 만들어보세요. 연어의 생생한 맛이 살아 있어 자꾸만 손이 간답니다. 브런치, 간식, 술안주, 에피타이저 등 다양한 날에 활용해 보세요.', 
'연어브루.PNG', null, '고급', '양식', 20, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '훈제연어 슬라이스
' AS ingredientName , '180g
' AS ingredientAmount FROM DUAL
union all
SELECT '바게트' AS ingredientName , '½개
' AS ingredientAmount FROM DUAL
union all
SELECT '메이플시럽' AS ingredientName , '¼컵
' AS ingredientAmount FROM DUAL
union all
SELECT '딜 (생략 가능)' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor', '나가사키짬뽕', 
'깊은 국물 맛이 그리울 때', '개운하고 구수한 국물이 매력적인 나가사키 짬뽕! 나가사키 짬뽕의 육수는 원래 돼지뼈와 닭고기로 진하게 우려내야 하지만 아내의 식탁에서는 사골육수로 만들어보려해요. ',
 '나가사키짬뽕.jpg', null, '중급', '일식', 40, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '생면' AS ingredientName , '2인분' AS ingredientAmount FROM DUAL
union all
SELECT '시판용 사골 육수' AS ingredientName , '500ml' AS ingredientAmount FROM DUAL
union all
SELECT '바지락' ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '새우' AS ingredientName , '6마리' AS ingredientAmount FROM DUAL
union all
SELECT '홍합' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '국간장' AS ingredientName , '1큰술' AS ingredientAmount FROM DUAL
  ) A;

    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '선 드라이 토마토 부르스게타
','선 드라이 토마토 페스토로 만든
', '선 드라이 토마토 페스토를 활용해 만든 초간단 부르스게타! 부르스게타는 바게트에 치즈, 과일, 소스 등을 얹은 이탈리아 요리를 말해요. 오늘은 선 드라이 토마토 페스토로 더 쉽고 더 풍미 있는 부르스게타를 만들어 볼 건데요. 바게트, 선 드라이 페스토, 올리브오일, 치즈만 있으면 요리가 완성된답니다. 식전에 입맛을 돋우는 전채요리 혹은 와인 안주 등으로 다양하게 활용해 보세요!', 
'토마토부르스게타.jpg', null, '초급', '양식', 25, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '바게트' AS ingredientName , '½개
' AS ingredientAmount FROM DUAL
union all
SELECT '선 드라이 토마토 페스토
' AS ingredientName , '2큰술
' AS ingredientAmount FROM DUAL
union all
SELECT '올리브오일' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '파마산 치즈
' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '파슬리
' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '아보카도 아이스크림',
'고소한 부드러움에 달콤함이 더해진', '진하고 부드러운 코코넛밀크가 아보카도와 만나 건강하고 맛있는 아이스크림이 되었어요. 남녀노소 누구나 좋아할 최고의 디저트랍니다. 달콤한 초콜릿 소스나 향긋한 민트잎, 잘게 다진 견과류를 올려도 무척 잘 어울리니 취향껏 맛있게 만들어 즐겨보세요!',
 '아보카도아이스크림.jpg', null, '중급', '간식', 80, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '아보카도' AS ingredientName , '3개' AS ingredientAmount FROM DUAL
union all
SELECT '코코넛밀크' AS ingredientName , '2.5컵' AS ingredientAmount FROM DUAL
union all
SELECT '꿀' ingredientName , '½컵' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor', '장어지라시초밥', 
'힘이 불끈 솟는 보양식', '보기만 해도 힘이 불끈 솟는 장어를 덮밥으로 즐겨보세요. 장어에는 칼슘은 물론 비타민A, B, 불포화지방이 풍부해 혈액순환을 원활하게 해주고 원기 회복을 돕는답니다. ',
 '장어지라시덮밥.jpg', null, '고급', '일식', 60, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '밥' AS ingredientName , '2공기' AS ingredientAmount FROM DUAL
union all
SELECT '장어' AS ingredientName , '2마리' AS ingredientAmount FROM DUAL
union all
SELECT '달걀' ingredientName , '2개' AS ingredientAmount FROM DUAL
union all
SELECT '청주' AS ingredientName , '2큰술' AS ingredientAmount FROM DUAL
union all
SELECT '맛술' AS ingredientName , '4큰술' AS ingredientAmount FROM DUAL
union all
SELECT '올리고당' AS ingredientName , '2큰술' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user', '고등어덮밥', 
'근사하고 정갈한 한 끼', '근사하고 정갈한 식사 한 끼! 고등어 덮밥은 어떠신가요? 살이 통통하게 오른 제철 고등어를 달콤 짭조름한 데리야키 소스에 졸여 따듯한 밥 위에 올렸어요. 소스로 간이 밴 고등어 한 점과 밥 한 숟가락의 완벽한 밸런스! 간편하면서도 색다른 메뉴랍니다~',
 '고등어덮밥.jpg', null, '중급', '일식', 35, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '순살 고등어' AS ingredientName , '2쪽' AS ingredientAmount FROM DUAL
union all
SELECT '적양파' AS ingredientName , '¼개' AS ingredientAmount FROM DUAL
union all
SELECT '연와사비' ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '실파' AS ingredientName , '2줄기' AS ingredientAmount FROM DUAL
union all
SELECT '잎채소' AS ingredientName , '약간' AS ingredientAmount FROM DUAL
union all
SELECT '밥' AS ingredientName , '2공기' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor2', '아스파라거스스무디', 
'숙취해소와 피로회복에 좋은', '죽순과 비슷하게 생긴 아스파라거스는 주로 샐러드나 스테이크 요리의 가니쉬로 요리해 먹는데요. 그 이름답게 숙취에 좋은 아스파라긴산을 듬뿍 함유하고 있고 피로회복에 좋은 비타민b군도 다량 포함하고 있답니다. 달달한 바나나와 고소한 우유 1컵과 갈아내면 영양도 두루 섭취할 수 있고 숙취해소나 피로회복에도 매우 좋은 스무디예요!',
 '아스파라거스스무디.jpg', null, '초급', '간식', 10, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '바나나' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
union all
SELECT '아스파라거스' AS ingredientName , '2대' AS ingredientAmount FROM DUAL
union all
SELECT '우유' ingredientName , '1컵' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '산타 할아버지 토스트', 
'Merry Christmas!!', '수많은 휴일 중 따듯하고 기분 좋은 날을 꼽으라면 크리스마스를 빼놓을 수 없을 것 같은데요. 오늘은 크리스마스에 정말 잘 어울리는 토스트 3가지를 준비했어요. 두 번째 크리스마스 토스트는 산타 할아버지 토스트랍니다. 하얀 치즈 수염이 매력적인 산타 할아버지를 토스트로 먼저 만나보세요!',
 '산타토스트.jpg', null, '초급', '간식', 15, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '식빵' AS ingredientName , '1장' AS ingredientAmount FROM DUAL
union all
SELECT '리코타 치즈' AS ingredientName , '4큰술' AS ingredientAmount FROM DUAL
union all
SELECT '땅콩잼' ingredientName , '½큰술' AS ingredientAmount FROM DUAL
union all
SELECT '딸기' AS ingredientName , '3개' AS ingredientAmount FROM DUAL
union all
SELECT '초콜렛' ingredientName , '3개' AS ingredientAmount FROM DUAL
  ) A;



    INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor4', '양장피
','새콤하고 톡 쏘는 겨자의 맛!
', '양장피! 새콤하고 톡 쏘는 겨자 향이 매력적인 중국요리 중 하나죠. 그런데 양장피의 메인 재료가 무엇인지 궁금하지 않으신가요? 양장피는 전분으로 만든 얇은 판과 채소, 소스를 뿌려 만든 요리랍니다!', 
'양장피.jpg', null, '초급', '중식', 25, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '돼지고기(잡채용)' AS ingredientName , '150g' AS ingredientAmount FROM DUAL
union all
SELECT '오징어(몸통)' AS ingredientName , '1마리' AS ingredientAmount FROM DUAL
union all
SELECT '크래미' AS ingredientName , '2줄' AS ingredientAmount FROM DUAL
union all
SELECT '연겨자' AS ingredientName , '1큰술' AS ingredientAmount FROM DUAL
union all
SELECT '피망' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor2', '사탕 쿠키',
'달달한 쿠키가 생각난다면', '달달한 쿠키가 생각난다면, 사탕 쿠키를 꺼내먹어요! 귀여운 모양에 따라 맛도 재미도 배가 되는 베이킹 타임이랍니다.',
 '사탕쿠키.jpg', null, '중급', '간식', 50, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '버터(실온)' AS ingredientName , '130g' AS ingredientAmount FROM DUAL
union all
SELECT '설탕' AS ingredientName , '80g' AS ingredientAmount FROM DUAL
union all
SELECT '달걀' ingredientName , '1개' AS ingredientAmount FROM DUAL
union all
SELECT '박력분' AS ingredientName , '200g' AS ingredientAmount FROM DUAL
union all
SELECT '아몬드 가루' ingredientName , '50g' AS ingredientAmount FROM DUAL
union all
SELECT '잘게 부순 사탕' ingredientName , '5~6개' AS ingredientAmount FROM DUAL
  ) A;


INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user2', '텐동', 
'보기만해도 행복해지는', '어떤 튀김부터 먹을까 행복한 고민이 돼요~ 하나씩 골라먹는 재미가 있는 튀김덮밥을 준비했답니다. 재료에는 없지만 평소 좋아했던 재료들을 튀겨내도 좋겠죠? 정성을 더한 가쓰오부시 소스도 꼭 곁들여주세요!',
 '텐동.jpg', null, '중급', '일식', 45, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '생새우' AS ingredientName , '6마리' AS ingredientAmount FROM DUAL
union all
SELECT '깻잎' AS ingredientName , '2장' AS ingredientAmount FROM DUAL
union all
SELECT '튀김가루' ingredientName , '1컵' AS ingredientAmount FROM DUAL
union all
SELECT '꽈리고추' AS ingredientName , '4개' AS ingredientAmount FROM DUAL
union all
SELECT '연근' AS ingredientName , '1/6개' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor3', '딸기 탕후루',
'달콤한 하루를 원한다면', '아이들과 함께 만들기 좋은 겨울 간식, 딸기 탕후루! 간단하면서 달콤하고 먹는 재미가 있는 딸기 탕후루예요. (꿀Tip! 딸기 뿐만 아니라 포도, 귤, 블루베리 등 다양한 과일로도 만들 수 있어요) 에이드에 만든 딸기 탕후루를 넣어 홈 카페처럼 예쁘게 사진을 찍기도 좋답니다. 보기에도 맛도 달콤한 딸기 탕후루로 오늘 하루를 달콤하게 보내보세요!',
 '딸기탕후루.jpg', null, '초급', '간식', 40, '내용' , SYSDATE, 0, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '딸기' AS ingredientName , '10개' AS ingredientAmount FROM DUAL
union all
SELECT '나무 꼬치' AS ingredientName , '10개' AS ingredientAmount FROM DUAL
union all
SELECT '설탕' ingredientName , '1컵' AS ingredientAmount FROM DUAL
union all
SELECT '물' AS ingredientName , '½컵' AS ingredientAmount FROM DUAL
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
VALUES (seq_review_no.nextval  ,'COOK' , 'user', '아주 좋았습니다.', 'summerNotefa2fdebe-6d98-48a7-a5a3-c85a61a9092c.jpg', SYSDATE, NULL, NULL, 10000);

INSERT
INTO review
VALUES (seq_review_no.nextval  ,'REC' , 'user', '맛있어요!!!!',NULL, SYSDATE, 10006, NULL, NULL);

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