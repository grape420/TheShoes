-- 게시판 카테고리 BOARD_CATEGORY
INSERT INTO BOARD_CATEGORY VALUES (1, '공지사항'); 
INSERT INTO BOARD_CATEGORY VALUES (2, 'FAQ'); 
INSERT INTO BOARD_CATEGORY VALUES (3, '리셀'); 

-- 게시판(FAQ) BOARD_FAQ
INSERT INTO BOARD VALUES (SEQ_BOARD_CODE.NEXTVAL, 'USER03', 2, '상품 구매는 어떻게 하나요?',
                            '서비스 가입 후 로그인 한 회원은 누구나 상품을 구매할 수 있습니다. 
                            상품을 검색하고, 원하는 사이즈를 선택한 후 구매 버튼을 누르면 즉시 구매 혹은 구매 입찰이 가능합니다. 
                            즉시 구매하거나 입찰 후 거래가 체결되면 판매자가 상품을 검수 센터로 전달하여 검수를 진행하게 되며, 검수를 합격한 상품은 구매자에게 안전하게 배송됩니다.', 
                            SYSDATE, DEFAULT, 1);
INSERT INTO BOARD VALUES (SEQ_BOARD_CODE.NEXTVAL, 'USER03', 2, '결제는 언제 진행되나요?',
                            '구매 입찰을 통해 구매 희망가를 제시하신 경우, 해당 가격에 판매를 원하는 판매자가 판매 희망가를 등록하면 해당 시점에 바로 일시불로 결제가 진행됩니다. 
                            즉시 구매는 바로 결제가 진행됩니다.', 
                            SYSDATE, DEFAULT, 2);
INSERT INTO BOARD VALUES (SEQ_BOARD_CODE.NEXTVAL, 'USER03', 2, '배송 주소 변경은 어떻게 하나요?',
                            '구매 입찰 중인 주문은 언제든지 "입찰 변경하기" 버튼을 선택하여 주소를 변경하실 수 있습니다. 
                            구매 진행 중인 주문은 해당 주문의 상세화면에서 진행 상황이 <대기 중 / 발송완료 / 입고완료>인 경우 배송 주소에서 "배송지 변경" 버튼으로 변경 가능합니다.', 
                            SYSDATE, DEFAULT, 3);
INSERT INTO BOARD VALUES (SEQ_BOARD_CODE.NEXTVAL, 'USER03', 2, '구매한 상품을 반품할 수 있나요?',
                            '원칙적으로는 검수 합격을 한 상품에 대하여 반품이 불가능 합니다. 
                            사이즈 선택 실수나 단순 변심의 경우에는 THE SHOES에서 다시 판매하실 수 있습니다.', 
                            SYSDATE, DEFAULT, 4);                            
INSERT INTO BOARD VALUES (SEQ_BOARD_CODE.NEXTVAL, 'USER03', 2, '국내 발매 상품인지 확인하고 싶어요.',
                            'THE SHOES에서는 정품이고 새상품이면 발매 국가가 어디인지와 상관없이 거래가 가능합니다. 
                            구매하신 상품이 국내 발매 상품인지 여부(나이키코리아탭/아디다스코리아탭/컨버스코리아탭 등)는 확인이 어려우며, 
                            해당 사유로 인한 구매 취소는 불가능합니다.', 
                            SYSDATE, DEFAULT, 5);        
                            

-- 댓글 COMMENTS
INSERT INTO COMMENTS VALUES (SEQ_COMMENTS_CODE.NEXTVAL, SEQ_BOARD_CODE.CURRVAL, '판매되었나요?',
                                DEFAULT, SYSDATE);
INSERT INTO COMMENTS VALUES (SEQ_COMMENTS_CODE.NEXTVAL, SEQ_BOARD_CODE.CURRVAL, '구매하고 싶어요~~',
                                DEFAULT, SYSDATE);
INSERT INTO COMMENTS VALUES (SEQ_COMMENTS_CODE.NEXTVAL, SEQ_BOARD_CODE.CURRVAL, '구매 가능할까요??',
                                DEFAULT, SYSDATE);
INSERT INTO COMMENTS VALUES (SEQ_COMMENTS_CODE.NEXTVAL, SEQ_BOARD_CODE.CURRVAL, '<광고> 여기가 더 싸요!! https://www.naver.com/ ',
                                DEFAULT, SYSDATE);
INSERT INTO COMMENTS VALUES (SEQ_COMMENTS_CODE.NEXTVAL, SEQ_BOARD_CODE.CURRVAL, '비밀입니다~~~!',
                                'N', SYSDATE);
-- 시퀀스 생성
DROP SEQUENCE SEQ_COMMENTS_CODE;
DROP SEQUENCE SEQ_BOARD_CODE;
DROP SEQUENCE SEQ_EVENT_CODE;
DROP SEQUENCE SEQ_CS_BOARD_CODE;
DROP SEQUENCE SEQ_SHOES_CATEGORY_CODE;
DROP SEQUENCE SEQ_SHOES_CODE;
DROP SEQUENCE SEQ_WISHLIST_CODE;
DROP SEQUENCE SEQ_RT_CODE;
DROP SEQUENCE SEQ_ST_CODE;
DROP SEQUENCE SEQ_CATEGORY_FAQ_CODE;
DROP SEQUENCE SEQ_CATEGORY_NOTICE_CODE;
DROP SEQUENCE SEQ_CATEGORY_RESELL_CODE;

CREATE SEQUENCE SEQ_COMMENTS_CODE
START WITH 1;
CREATE SEQUENCE SEQ_BOARD_CODE
START WITH 1;
CREATE SEQUENCE SEQ_EVENT_CODE
START WITH 1;
CREATE SEQUENCE SEQ_CS_BOARD_CODE
START WITH 1;
CREATE SEQUENCE SEQ_SHOES_CATEGORY_CODE
START WITH 1;
CREATE SEQUENCE SEQ_SHOES_CODE
START WITH 1;
CREATE SEQUENCE SEQ_WISHLIST_CODE
START WITH 1;
CREATE SEQUENCE SEQ_RT_CODE
START WITH 1;
CREATE SEQUENCE SEQ_ST_CODE
START WITH 1;
CREATE SEQUENCE SEQ_CATEGORY_FAQ_CODE
START WITH 1;
CREATE SEQUENCE SEQ_CATEGORY_NOTICE_CODE
START WITH 1;
CREATE SEQUENCE SEQ_CATEGORY_RESELL_CODE
START WITH 1;

-- 응모내역 EVENT
-- 응모상태 (1:미당첨, 2:구매안함, 3:구매/상품준비중, 4:배송중, 5:배송완료)
INSERT INTO EVENT VALUES (SEQ_EVENT_CODE.NEXTVAL, 'USER01', SEQ_SHOES_CODE.CURRVAL, SYSDATE, 1, '1');
INSERT INTO EVENT VALUES (SEQ_EVENT_CODE.NEXTVAL, 'USER01', SEQ_SHOES_CODE.CURRVAL, SYSDATE, 2, '2');
INSERT INTO EVENT VALUES (SEQ_EVENT_CODE.NEXTVAL, 'USER02', SEQ_SHOES_CODE.CURRVAL, SYSDATE, 3, '3');
INSERT INTO EVENT VALUES (SEQ_EVENT_CODE.NEXTVAL, 'USER02', SEQ_SHOES_CODE.CURRVAL, SYSDATE, 4, '4');
INSERT INTO EVENT VALUES (SEQ_EVENT_CODE.NEXTVAL, 'USER04', SEQ_SHOES_CODE.CURRVAL, SYSDATE, 5, '5');
INSERT INTO EVENT VALUES (SEQ_EVENT_CODE.NEXTVAL, 'USER04', SEQ_SHOES_CODE.CURRVAL, SYSDATE, 6, '1');
INSERT INTO EVENT VALUES (SEQ_EVENT_CODE.NEXTVAL, 'USER05', SEQ_SHOES_CODE.CURRVAL, SYSDATE, 7, '2');
INSERT INTO EVENT VALUES (SEQ_EVENT_CODE.NEXTVAL, 'USER05', SEQ_SHOES_CODE.CURRVAL, SYSDATE, 8, '3');
               
-- 당첨자 WINNER
INSERT INTO WINNER VALUES('USER05', SEQ_EVENT_CODE.CURRVAL, DEFAULT, SYSDATE);

-- 고객문의 CS_BOARD
INSERT INTO CS_BOARD VALUES(SEQ_CS_BOARD_CODE.NEXTVAL, 'USER01', '배송이 왜 이렇게 느려요~~', '제가 찾으러 갈게요 그냥!!! 주소를 알려주시오!!',SYSDATE);
INSERT INTO CS_BOARD VALUES(SEQ_CS_BOARD_CODE.NEXTVAL, 'USER02', '더슈즈 짱!', '예쁜 거 많이 내주셔서 감사해요~~',SYSDATE);
INSERT INTO CS_BOARD VALUES(SEQ_CS_BOARD_CODE.NEXTVAL, 'USER04', '업무시간이 이상해요', '더슈즈 영업 시간에는 함정이 있다 두둥',SYSDATE);
INSERT INTO CS_BOARD VALUES(SEQ_CS_BOARD_CODE.NEXTVAL, 'USER05', '재입고 문의', '재입고 예정 날짜를 알고 싶어요ㅜㅜ',SYSDATE);
INSERT INTO CS_BOARD VALUES(SEQ_CS_BOARD_CODE.NEXTVAL, 'USER05', '제가 당첨자입니다 음하하', '여러분 싸라해여 제가 당첨이라니 더 슈즈 체고체고~!!!',SYSDATE);


-- 관심상품 WISHLIST
-- '추첨상태' 컬럼 삭제
INSERT INTO WISHLIST VALUES(SEQ_WISHLIST_CODE.NEXTVAL, 'USER01', 1);
INSERT INTO WISHLIST VALUES(SEQ_WISHLIST_CODE.NEXTVAL, 'USER02', 2);
INSERT INTO WISHLIST VALUES(SEQ_WISHLIST_CODE.NEXTVAL, 'USER04', 2);
INSERT INTO WISHLIST VALUES(SEQ_WISHLIST_CODE.NEXTVAL, 'USER04', 3);
INSERT INTO WISHLIST VALUES(SEQ_WISHLIST_CODE.NEXTVAL, 'USER05', 5);


