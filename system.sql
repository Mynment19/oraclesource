<<<<<<< HEAD
-- »ç¿ëÀÚ : scott, hr => µ¥ÀÌÅÍº£ÀÌ½º Á¢¼ÓÇÏ¿© µ¥ÀÌÅÍ¸¦ °ü¸®ÇÏ´Â °èÁ¤
--          Å×ÀÌºí, ÀÎµ¦½º, ºä µî ¿©·¯ °´Ã¼°¡ »ç¿ëÀÚº°·Î »ý¼ºµÊ
--          ¾÷¹«¿¡ µû¶ó »ç¿ëÀÚµéÀ» ³ª´²¼­ °ü¸®


-- ½ºÅ°¸¶ : µ¥ÀÌÅÍ°£ °ü°è, µ¥ÀÌÅÍ ±¸Á¶, Á¦¾àÁ¶°Ç µî µ¥ÀÌÅÍ¸¦ °ü¸® ÀúÀåÇÏ±â À§ÇØ Á¤ÀÇÇÑ µ¥ÀÌÅÍº£ÀÌ½º ±¸Á¶ÀÇ ¹üÀ§
-- ½ºÅ°¸¶ == »ç¿ëÀÚ(¿À¶óÅ¬ µ¥ÀÌÅÍº£ÀÌ½º °æ¿ì)

-- »ç¿ëÀÚ »ý¼º : »ç¿ëÀÚ »ý¼º ±ÇÇÑÀÌ ÇÊ¿äÇÔ ==> sys, system

-- ¿À¶óÅ¬ ¹öÀü ¿Ã¶ó°¡¸é¼­ »ç¿ëÀÚ »ý¼º½Ã ¿ä±¸ÇÏ´Â Á¢µÎ»ç »ý·«À» À§ÇØ
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- »ç¿ëÀÚ »ý¼º
-- ºñ¹Ð¹øÈ£´Â ´ë¼Ò¹®ÀÚ ±¸º°ÇÔ
=======
-- ëŒ€ì†Œë¬¸ìž êµ¬ë³„í•˜ì§€ ì•ŠìŒ(ë‹¨, ë¹„ë°€ë²ˆí˜¸ëŠ” êµ¬ë³„í•¨)
-- CREATE : ìƒì„± / ALTER : ìˆ˜ì • / DROP : ì‚­ì œ , DELETE : ì‚­ì œ

-- ì˜¤ë¼í´ ë²„ì „ì´ ë³€ê²½ë˜ë©´ì„œ ì‚¬ìš©ìž ìƒì„± ì‹œ c## ë¬¸ìžë¥¼ ë„£ì–´ì„œ ë§Œë“¤ë„ë¡ ë³€ê²½ ë¨
-- JAVADB => c##JAVADB ì´ëŸ° ë°©ì‹ì„ c## ì‚¬ìš©í•˜ì§€ ì•Šê² ìŒ
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
 
-- user ìƒì„±ì€ sys, system ë§Œ ê°€ëŠ¥
-- user ìƒì„± (ê³µê°„ í• ë‹¹)
-- CREATE USER ì‚¬ìš©ìžì´ë¦„ IDENTIFIED BY ë¹„ë°€ë²ˆí˜¸
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
CREATE USER JAVADB IDENTIFIED BY 12345
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

<<<<<<< HEAD
ALTER USER javadb QUOTA 2M ON USERS;

-- »ç¿ëÀÚ ±ÇÇÑ ºÎ¿©
GRANT CONNECT, RESOURCE TO JAVADB;

=======
-- GRANT : ê¶Œí•œ ë¶€ì—¬ (ì‚¬ìš©ìž ìƒì„±ë§Œ í•´ì„œëŠ” ì•„ë¬´ê²ƒë„ í•  ìˆ˜ ì—†ìŒ)
GRANT CONNECT, RESOURCE TO JAVADB;
 
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

CREATE USER SCOTT IDENTIFIED BY TIGER
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;
<<<<<<< HEAD

-- SCOTT ¿¡°Ô ºÎ¿©µÈ ±ÇÇÑ
GRANT CONNECT, RESOURCE TO SCOTT;
-- ºä »ý¼º ±ÇÇÑ ºÎ¿©
GRANT CREATE VIEW TO SCOTT;
-- SYNONYM »ý¼º ±ÇÇÑ ºÎ¿©
GRANT CREATE SYNONYM TO SCOTT;
GRANT CREATE PUBLIC SYNONYM TO SCOTT;


=======
  
GRANT CONNECT, RESOURCE TO SCOTT;
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

select * from all_users;

GRANT UNLIMITED TABLESPACE TO SCOTT;

<<<<<<< HEAD


=======
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO SCOTT IDENTIFIED BY TIGER;
ALTER USER SCOTT DEFAULT TABLESPACE USERS;
ALTER USER SCOTT TEMPORARY TABLESPACE TEMP;

<<<<<<< HEAD
-- test »ç¿ëÀÚ »ý¼º / ºñ¹ø 12345
CREATE USER test IDENTIFIED BY 12345;

-- Á¢¼Ó±ÇÇÑ ºÎ¿©ÇÏÁö ¾ÊÀ¸¸é ¾ÈµÊ

-- ±ÇÇÑ ±Ç¸®
-- 1) ½Ã½ºÅÛ ±ÇÇÑ
--    »ç¿ëÀÚ »ý¼º(CREATE USER) / ¼öÁ¤(ALTER USER) / »èÁ¦(DROP USER)
--    µ¥ÀÌÅÍº£ÀÌ½º Á¢±Ù (CREATE SESSION) / ¼öÁ¤ (ALTER SESSION)
--    ¿©·¯ °´Ã¼ »ý¼º(view, synonym) ¹× °ü¸® ±ÇÇÑ


-- 2) °´Ã¼ ±ÇÇÑ
--    Å×ÀÌºí ¼öÁ¤, »èÁ¦, ÀÎµ¦½º »ý¼º, »ðÀÔ, ÂüÁ¶, Á¶È¸, ¼öÁ¤
--    ºä »èÁ¦, »ðÀÔ, »ý¼º, Á¶È¸, ¼öÁ¤
--    ½ÃÄö½º ¼öÁ¤, Á¶È¸
--    ÇÁ·Î½ÃÀú, ÇÔ¼ö, ÆÐÅ°Áö ±ÇÇÑ



-- ±ÇÇÑ ºÎ¿©

-- CREATE SESSION À» test ¿¡°Ô ºÎ¿©
GRANT CREATE SESSION TO test;

GRANT RESOURCE, CREATE TABLE TO test;

-- Å×ÀÌºí ½ºÆäÀÌ½º USERS¿¡ ±ÇÇÑÀÌ ¾ø½À´Ï´Ù.
ALTER USER test DEFAULT TABLESPACE USERS;
ALTER USER test TEMPORARY TABLESPACE TEMP;
ALTER USER test QUOTA 2M ON USERS;  -- USERS ¿¡ °ø°£ ¼³Á¤

-- scott ¿¡°Ô test°¡ »ý¼ºÇÑ member Å×ÀÌºí Á¶È¸ ±ÇÇÑ ºÎ¿©
-- GRANT SELECT ON member TO scott;

-- ±ÇÇÑ Ãë¼Ò
-- REVOKE SELECT, INSERT ON member FROM scott;

-- ·Ñ : ¿©·¯ ±ÇÇÑµéÀÇ ¸ðÀÓ
-- CONNECT ·Ñ : CREATE SESSION
-- RESOURCE ·Ñ : CREATE TRIGGER, CREATE SEQUENCE, CREATE PROCEDURE, CREATE TABLE...



-- »ç¿ëÀÚ »èÁ¦
DROP USER test;
DROP USER test CASCADE; -- test¿Í °ü·ÃµÈ ¸ðµç °´Ã¼ °°ÀÌ »èÁ¦








-- »ç¿ëÀÚ »ý¼º + Å×ÀÌºí ½ºÆäÀÌ½º ±ÇÇÑ ºÎ¿©
CREATE USER test2 IDENTIFIED BY 12345
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

-- ±ÇÇÑºÎ¿©
GRANT CONNECT, RESOURCE TO test2;











=======
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b




<<<<<<< HEAD
=======
 
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
