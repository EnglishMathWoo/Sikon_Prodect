INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, user_regdate, quit_status  )
VALUES ( 'user@naver.com', 'user', '1234', '19941111', 'user', 'ee.jpg', '서울시 서초구', default, '01022249988', default, 'N', SYSDATE, 'N');

INSERT 
INTO users ( user_id, user_name, password, user_birth, user_nickname, user_image, user_addr, role, user_phone, holdpoint, mentor_apply, user_regdate, quit_status  )
VALUES ( 'test@naver.com', 'test', '1234', '19941111', 'test', default, '서울시 서초구', default, '01022247777', default, 'N', SYSDATE, 'N');

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
INTO coupon(coupon_no, coupon_name, discount_rate, discount_value, coupon_regdate)
VALUES (seq_coupon_coupon_no.NEXTVAL, '5000 할인쿠폰', 0, 5000, SYSDATE);

INSERT 
INTO coupon(coupon_no, coupon_name, discount_rate, discount_value, coupon_regdate)
VALUES (seq_coupon_coupon_no.NEXTVAL, '여름 특가 개꿀 할인쿠폰', 0.8, 0, SYSDATE);

INSERT 
INTO coupon(coupon_no, coupon_name, discount_rate, discount_value, coupon_regdate)
VALUES (seq_coupon_coupon_no.NEXTVAL, '신규회원 가입 축하 쿠폰', 0, 10000, SYSDATE);

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
INTO purchase( tran_no , prod_no, user_id, serial_no, receiver_name, receiver_phone, receiver_email, quantity, divy_addr, divy_message, used_coupon, used_point, earn_point, orderdate, payment_opt, divy_status, invoice_num, divy_fee, review_status) 
VALUES (seq_purchase_tran_no.NEXTVAL , 10000, 'user@naver.com', 'str202206097720618', '힙쟁이', '01012345678', 'heap@naver.com', 5, '/서울시 서초구//', '8층으로 가져다주세요', '10% 할인쿠폰', 500, 270, SYSDATE, 'KA', '001', '송장번호', 3000, '001');

INSERT
INTO cart( cart_no , prod_no, user_id, quantity, prod_name, prod_image, prod_price ) 
VALUES (seq_cart_cart_no.NEXTVAL , 10004, 'user@naver.com', 5, '플라워 식기세트', '02flw00.jpg&', 39900);

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname  )
VALUES (seq_cook_cook_no.nextval, '예다의 화이트초코케익 쿠킹클래스', '0a2bb178-ac96-4c04-85e9-bd424f4d849b.jpg', '진짜 쉬워요', '1', 14000, 'KO', '22/06/10',  '22/06/10', 5, '10:06', '10:06', '강남구 비트캠프', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 20, 0, '<p><img src="/summernoteImage/cc16d31e-8006-4ab9-ab01-daee04df234b.jpg" style=""><img src="/summernoteImage/83a44db9-37cf-4eed-a051-b9f4e69ad6c7.jpg" style=""><img src="/summernoteImage/0af0b749-b6a1-4347-8126-c0ddce239a08.jpg" style=""><img src="/summernoteImage/0e1bcd8f-2a01-49a4-bff3-6c35b5a98d86.jpg" style=""><img src="/summernoteImage/52d9bcbf-89da-4bc6-af8f-e2d546f201f3.jpg" style=""><br></p>','mentor' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname  )
VALUES (seq_cook_cook_no.nextval, '예다의 초코무스 쿠킹클래스', '0a30d45f-d131-4bb6-b0bf-b52fc32065e5.jpg', '진짜 쉬워요', '1', 14000, 'KO', '22/06/10',  '22/06/10', 5, '10:06', '10:06', '강남구 비트캠프', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 20, 0, '<p><img src="/summernoteImage/cc16d31e-8006-4ab9-ab01-daee04df234b.jpg" style=""><img src="/summernoteImage/83a44db9-37cf-4eed-a051-b9f4e69ad6c7.jpg" style=""><img src="/summernoteImage/0af0b749-b6a1-4347-8126-c0ddce239a08.jpg" style=""><img src="/summernoteImage/0e1bcd8f-2a01-49a4-bff3-6c35b5a98d86.jpg" style=""><img src="/summernoteImage/52d9bcbf-89da-4bc6-af8f-e2d546f201f3.jpg" style=""><br></p>','mentor' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname  )
VALUES (seq_cook_cook_no.nextval, '예다의 햄버거 쿠킹클래스', '0ad40938-1b31-4aa2-a3e3-2dcb1cf15655.jpg', '진짜 쉬워요', '1', 14000, 'KO', '22/06/10',  '22/06/10', 5, '10:06', '10:06', '강남구 비트캠프', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 20, 0, '<p><img src="/summernoteImage/cc16d31e-8006-4ab9-ab01-daee04df234b.jpg" style=""><img src="/summernoteImage/83a44db9-37cf-4eed-a051-b9f4e69ad6c7.jpg" style=""><img src="/summernoteImage/0af0b749-b6a1-4347-8126-c0ddce239a08.jpg" style=""><img src="/summernoteImage/0e1bcd8f-2a01-49a4-bff3-6c35b5a98d86.jpg" style=""><img src="/summernoteImage/52d9bcbf-89da-4bc6-af8f-e2d546f201f3.jpg" style=""><br></p>','mentor' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname  )
VALUES (seq_cook_cook_no.nextval, '예다의 파전 쿠킹클래스', '0b4bcd47-b6a6-4abf-9bc5-f7ddd134a5de.jpg', '진짜 쉬워요', '1', 14000, 'KO', '22/06/10',  '22/06/10', 5, '10:06', '10:06', '강남구 비트캠프', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 20, 0, '<p><img src="/summernoteImage/cc16d31e-8006-4ab9-ab01-daee04df234b.jpg" style=""><img src="/summernoteImage/83a44db9-37cf-4eed-a051-b9f4e69ad6c7.jpg" style=""><img src="/summernoteImage/0af0b749-b6a1-4347-8126-c0ddce239a08.jpg" style=""><img src="/summernoteImage/0e1bcd8f-2a01-49a4-bff3-6c35b5a98d86.jpg" style=""><img src="/summernoteImage/52d9bcbf-89da-4bc6-af8f-e2d546f201f3.jpg" style=""><br></p>','mentor' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname  )
VALUES (seq_cook_cook_no.nextval, '예다의 파스타 쿠킹클래스', '0a5f5cc5-0533-4856-8e6d-1f659739627c.jpg', '진짜 쉬워요', '1', 14000, 'KO', '22/06/10',  '22/06/10', 5, '10:06', '10:06', '강남구 비트캠프', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 20, 0, '<p><img src="/summernoteImage/cc16d31e-8006-4ab9-ab01-daee04df234b.jpg" style=""><img src="/summernoteImage/83a44db9-37cf-4eed-a051-b9f4e69ad6c7.jpg" style=""><img src="/summernoteImage/0af0b749-b6a1-4347-8126-c0ddce239a08.jpg" style=""><img src="/summernoteImage/0e1bcd8f-2a01-49a4-bff3-6c35b5a98d86.jpg" style=""><img src="/summernoteImage/52d9bcbf-89da-4bc6-af8f-e2d546f201f3.jpg" style=""><br></p>','mentor' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname  )
VALUES (seq_cook_cook_no.nextval, '예다의 에그타르트 쿠킹클래스', '0f7dd448-0562-4a33-be97-c5db4a7a2e25.jpg', '진짜 쉬워요', '1', 14000, 'KO', '22/06/10',  '22/06/10', 5, '10:06', '10:06', '강남구 비트캠프', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 20, 0, '<p><img src="/summernoteImage/cc16d31e-8006-4ab9-ab01-daee04df234b.jpg" style=""><img src="/summernoteImage/83a44db9-37cf-4eed-a051-b9f4e69ad6c7.jpg" style=""><img src="/summernoteImage/0af0b749-b6a1-4347-8126-c0ddce239a08.jpg" style=""><img src="/summernoteImage/0e1bcd8f-2a01-49a4-bff3-6c35b5a98d86.jpg" style=""><img src="/summernoteImage/52d9bcbf-89da-4bc6-af8f-e2d546f201f3.jpg" style=""><br></p>','mentor' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname  )
VALUES (seq_cook_cook_no.nextval, '예다의 김밥 쿠킹클래스', '0f4ee459-9c66-4d5a-9770-69c5af9f4d4c.jpg', '진짜 쉬워요', '1', 14000, 'KO', '22/06/10',  '22/06/10', 5, '10:06', '10:06', '강남구 비트캠프', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 20, 0, '<p><img src="/summernoteImage/cc16d31e-8006-4ab9-ab01-daee04df234b.jpg" style=""><img src="/summernoteImage/83a44db9-37cf-4eed-a051-b9f4e69ad6c7.jpg" style=""><img src="/summernoteImage/0af0b749-b6a1-4347-8126-c0ddce239a08.jpg" style=""><img src="/summernoteImage/0e1bcd8f-2a01-49a4-bff3-6c35b5a98d86.jpg" style=""><img src="/summernoteImage/52d9bcbf-89da-4bc6-af8f-e2d546f201f3.jpg" style=""><br></p>','mentor' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname  )
VALUES (seq_cook_cook_no.nextval, '예다의 샌드위치 쿠킹클래스', '0e4a0a46-67a0-4dbf-b7a9-c21c9543b154.jpg', '진짜 쉬워요', '1', 14000, 'KO', '22/06/10',  '22/06/10', 5, '10:06', '10:06', '강남구 비트캠프', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 20, 0, '<p><img src="/summernoteImage/cc16d31e-8006-4ab9-ab01-daee04df234b.jpg" style=""><img src="/summernoteImage/83a44db9-37cf-4eed-a051-b9f4e69ad6c7.jpg" style=""><img src="/summernoteImage/0af0b749-b6a1-4347-8126-c0ddce239a08.jpg" style=""><img src="/summernoteImage/0e1bcd8f-2a01-49a4-bff3-6c35b5a98d86.jpg" style=""><img src="/summernoteImage/52d9bcbf-89da-4bc6-af8f-e2d546f201f3.jpg" style=""><br></p>','mentor' );

INSERT
INTO cook(cook_no, cook_name , cook_filename, cook_brief , cook_difficuty, cook_price, cook_theme, apl_startime ,apl_endtime, cook_recruit, start_time,  end_time , cook_location , cook_regdate, cook_video,cook_stock,heart_hit, cook_content,  mentor_nickname  )
VALUES (seq_cook_cook_no.nextval, '예다의 제육덮밥 쿠킹클래스', '0b1a8266-732c-48e6-82f1-25e64f7a2778.jpg', '진짜 쉬워요', '1', 14000, 'KO', '22/06/10',  '22/06/10', 5, '10:06', '10:06', '강남구 비트캠프', SYSDATE, '0e4890a2-0cd5-488b-89a4-51cbac38c8a6.jpg', 20, 0, '<p><img src="/summernoteImage/cc16d31e-8006-4ab9-ab01-daee04df234b.jpg" style=""><img src="/summernoteImage/83a44db9-37cf-4eed-a051-b9f4e69ad6c7.jpg" style=""><img src="/summernoteImage/0af0b749-b6a1-4347-8126-c0ddce239a08.jpg" style=""><img src="/summernoteImage/0e1bcd8f-2a01-49a4-bff3-6c35b5a98d86.jpg" style=""><img src="/summernoteImage/52d9bcbf-89da-4bc6-af8f-e2d546f201f3.jpg" style=""><br></p>','mentor' );



INSERT 
INTO apply(apply_no, cook_no, applier_id, payment_option, apply_status, cook_status, check_date, review_status)
VALUES (seq_apply_apply_no.nextval, '10000', 'mentor@naver.com', '카카오페이', '100', 10, '2022/06/30','001');


INSERT
INTO wish( wish_no , cook_no, user_id, cook_status, cook_name ,cook_filename ,cook_price)
VALUES (seq_wish_wish_no.NEXTVAL, 10020, 'user@naver.com', 5, '예다의 계란 후라이 쿠킹클래스', '0a2bb178-ac96-4c04-85e9-bd424f4d849b.jpg', 14000);

INSERT 
INTO notice(notice_no, notice_title, notice_content, notice_image, notice_date) 
VALUES (seq_notice_notice_no.NEXTVAL, '공지합니다', '<p><img src="/summernoteImage/432a9674-4268-4dae-ae14-11eb08d1977d.png" style="width: 1148px;"><br></p>', NULL, SYSDATE);

INSERT 
INTO notice(notice_no, notice_title, notice_content, notice_image, notice_date) 
VALUES (seq_notice_notice_no.NEXTVAL, '여름철 대비 식중독 예방 안내', '<p><img src="/summernoteImage/af463ab4-03fa-4bd2-8a6b-18d71e0b3e2b.jpg" style="width: 1026px;"><br></p>', NULL, SYSDATE);

INSERT 
INTO notice(notice_no, notice_title, notice_content, notice_image, notice_date) 
VALUES (seq_notice_notice_no.NEXTVAL, '환불규정 관련 안내', '<p><img src="/summernoteImage/edc09fc5-c734-4994-be1d-763df4d88626.jpg" style="width: 1000px;"><br></p>', NULL, SYSDATE);

INSERT 
INTO notice(notice_no, notice_title, notice_content, notice_image, notice_date) 
VALUES (seq_notice_notice_no.NEXTVAL, '식탁의 온도 코스닥 상장 안내', '<p><img src="/summernoteImage/a75e48e3-03d6-4712-9c5f-181e35560bf9.jpg" style="width: 800px;"><br></p>', NULL, SYSDATE);

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'user', '낙지 초무침', '싱싱한 낙지', '36fae4c4237f29668386889b1c772db5.jpg', null, '200', 'KO', 10, 'd' , SYSDATE, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '낙지' AS ingredientName , '1g' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor', '냉이 차돌박이 솥밥', '냉이는 별로예요', '987eb588939a8cb12033994139c0018e.jpg', null, '300', 'CH', 50, 'd' , SYSDATE, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '차돌박이' AS ingredientName , '1g' AS ingredientAmount FROM DUAL
union all
SELECT '냉이' AS ingredientName , '1개' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor', '달걀 만두', '만두에 달걀을', '6605dfaa474f5fb72d3ba125efe14db7.jpg', null, '100', 'DES', 40, 'd' , SYSDATE, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '달걀' AS ingredientName , '3개' AS ingredientAmount FROM DUAL
  ) A;

INSERT
INTO recipe VALUES (seq_recipe_no.nextval ,'mentor', '대패삼겹살된장찌개', '삼겹살+된장찌개 이즈 굿', '7.PNG', null, '300', 'JP', 85, 'd' , SYSDATE, 0);

insert 
into ingredient(ingredient_no,ingredient_name, ingredient_amount, recipe_no)
select seq_ingredient_no.nextval, a.ingredientName,a.ingredientAmount, (select nvl(max(recipe_no),0) from recipe )
from(
SELECT '삼겹살' AS ingredientName , '1인분' AS ingredientAmount FROM DUAL
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