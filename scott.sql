-- scott

<<<<<<< HEAD
-- emp(employee) Å×ÀÌºí ±¸¼º º¸±â
-- ÇÊµå¸í(¿­ÀÌ¸§)   Á¦¾àÁ¶°Ç     µ¥ÀÌÅÍÅ¸ÀÔ
--     EMPNO(»ç¿ø¹øÈ£)       NOT NULL     NUMBER(4)
--     ENAME(»ç¿ø¸í), JOB(Á÷Ã¥), MGR(Á÷¼Ó»ó°ü ¹øÈ£), HIREDATE(ÀÔ»çÀÏ), SAL(±Þ¿©),COMM(¼ö´ç), DEPTNO(ºÎ¼­¹øÈ£)
--  NUMBER : ¼Ò¼öÁ¡ ÀÚ¸´¼ö¸¦ Æ÷ÇÔÇØ¼­ ÁöÁ¤ °¡´É
--  NUMBER(4) : 4ÀÚ¸® ¼ýÀÚ±îÁö Çã¿ë,   NUMBER(8,2) : ÀüÃ¼ ÀÚ¸´¼ö´Â 8 ÀÚ¸®ÀÌ°í ¼Ò¼öÁ¡ 2ÀÚ¸®¸¦ Æ÷ÇÔÇÑ´Ù
--  VARCHAR2 : °¡º¯Çü ¹®ÀÚ¿­ ÀúÀå
--  VARCHAR2(10) : 10byte ¹®ÀÚ±îÁö ÀúÀå °¡´É
--  DATE : ³¯Â¥ µ¥ÀÌÅÍ

DESC emp; 

-- DEPTNO(ºÎ¼­¹øÈ£), DNAME(ºÎ¼­¸í), LOC(ºÎ¼­À§Ä¡)
DESC dept; 

-- GRADE(±Þ¿©µî±Þ), LOSAL(ÃÖ¼Ò ±Þ¿©¾×), HISAL(ÃÖ´ë ±Þ¿©¾×)
DESC salgrade; 

-- select : µ¥ÀÌÅÍ Á¶È¸
-- Á¶È¸ ¹æ½Ä : ¼¿·º¼Ç(Çà ´ÜÀ§·Î Á¶È¸), ÇÁ·ÎÁ§¼Ç(¿­ ´ÜÀ§·Î Á¶È¸), Á¶ÀÎ(µÎ °³ ÀÌ»óÀÇ Å×ÀÌºíÀ» »ç¿ëÇÏ¿© Á¶È¸)
-- SELECT ¿­ÀÌ¸§1, ¿­ÀÌ¸§2..... (Á¶È¸ÇÒ ¿­ÀÌ ÀüÃ¼¶ó¸é * ·Î Ã³¸®)
-- FROM Å×ÀÌºí¸í;

-- 1. EMP Å×ÀÌºíÀÇ ÀüÃ¼ ¿­À» Á¶È¸
=======
-- emp(employee) í…Œì´ë¸” êµ¬ì„± ë³´ê¸°
-- í•„ë“œëª…(ì—´ì´ë¦„)   ì œì•½ì¡°ê±´     ë°ì´í„°íƒ€ìž…
--     EMPNO(ì‚¬ì›ë²ˆí˜¸)       NOT NULL     NUMBER(4)
--     ENAME(ì‚¬ì›ëª…), JOB(ì§ì±…), MGR(ì§ì†ìƒê´€ ë²ˆí˜¸), HIREDATE(ìž…ì‚¬ì¼), SAL(ê¸‰ì—¬),COMM(ìˆ˜ë‹¹), DEPTNO(ë¶€ì„œë²ˆí˜¸)
--  NUMBER : ì†Œìˆ˜ì  ìžë¦¿ìˆ˜ë¥¼ í¬í•¨í•´ì„œ ì§€ì • ê°€ëŠ¥
--  NUMBER(4) : 4ìžë¦¬ ìˆ«ìžê¹Œì§€ í—ˆìš©,   NUMBER(8,2) : ì „ì²´ ìžë¦¿ìˆ˜ëŠ” 8 ìžë¦¬ì´ê³  ì†Œìˆ˜ì  2ìžë¦¬ë¥¼ í¬í•¨í•œë‹¤
--  VARCHAR2 : ê°€ë³€í˜• ë¬¸ìžì—´ ì €ìž¥
--  VARCHAR2(10) : 10byte ë¬¸ìžê¹Œì§€ ì €ìž¥ ê°€ëŠ¥
--  DATE : ë‚ ì§œ ë°ì´í„°

DESC emp; 

-- DEPTNO(ë¶€ì„œë²ˆí˜¸), DNAME(ë¶€ì„œëª…), LOC(ë¶€ì„œìœ„ì¹˜)
DESC dept; 

-- GRADE(ê¸‰ì—¬ë“±ê¸‰), LOSAL(ìµœì†Œ ê¸‰ì—¬ì•¡), HISAL(ìµœëŒ€ ê¸‰ì—¬ì•¡)
DESC salgrade; 

-- select : ë°ì´í„° ì¡°íšŒ
-- ì¡°íšŒ ë°©ì‹ : ì…€ë ‰ì…˜(í–‰ ë‹¨ìœ„ë¡œ ì¡°íšŒ), í”„ë¡œì ì…˜(ì—´ ë‹¨ìœ„ë¡œ ì¡°íšŒ), ì¡°ì¸(ë‘ ê°œ ì´ìƒì˜ í…Œì´ë¸”ì„ ì‚¬ìš©í•˜ì—¬ ì¡°íšŒ)
-- SELECT ì—´ì´ë¦„1, ì—´ì´ë¦„2..... (ì¡°íšŒí•  ì—´ì´ ì „ì²´ë¼ë©´ * ë¡œ ì²˜ë¦¬)
-- FROM í…Œì´ë¸”ëª…;

-- 1. EMP í…Œì´ë¸”ì˜ ì „ì²´ ì—´ì„ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp;

<<<<<<< HEAD
-- 2. EMP Å×ÀÌºí¿¡¼­ »ç¿ø¹øÈ£,ÀÌ¸§,±Þ¿© ¿­À» Á¶È¸
=======
-- 2. EMP í…Œì´ë¸”ì—ì„œ ì‚¬ì›ë²ˆí˜¸,ì´ë¦„,ê¸‰ì—¬ ì—´ì„ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    sal
FROM
    emp;


<<<<<<< HEAD
-- 3. DEPT Å×ÀÌºí ÀüÃ¼ Á¶È¸
=======
-- 3. DEPT í…Œì´ë¸” ì „ì²´ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    dept;
<<<<<<< HEAD
-- 4. DEPT Å×ÀÌºí¾È¿¡ ºÎ¼­¹øÈ£, Áö¿ª¸¸ Á¶È¸
=======
-- 4. DEPT í…Œì´ë¸”ì•ˆì— ë¶€ì„œë²ˆí˜¸, ì§€ì—­ë§Œ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    deptno,
    loc
FROM
    dept;
    
<<<<<<< HEAD
-- 5. EMP Å×ÀÌºí¾È¿¡ ºÎ¼­¹øÈ£ Á¶È¸
=======
-- 5. EMP í…Œì´ë¸”ì•ˆì— ë¶€ì„œë²ˆí˜¸ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    deptno
FROM
    emp;

<<<<<<< HEAD
-- 6. EMP Å×ÀÌºí¾È¿¡ ºÎ¼­¹øÈ£ Á¶È¸(´Ü, Áßº¹µÈ ºÎ¼­ ¹øÈ£´Â Á¦°Å) 
-- DISTINCT : Áßº¹ Á¦°Å
=======
-- 6. EMP í…Œì´ë¸”ì•ˆì— ë¶€ì„œë²ˆí˜¸ ì¡°íšŒ(ë‹¨, ì¤‘ë³µëœ ë¶€ì„œ ë²ˆí˜¸ëŠ” ì œê±°) 
-- DISTINCT : ì¤‘ë³µ ì œê±°
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT DISTINCT
    deptno
FROM
    emp;
    
<<<<<<< HEAD
-- ¿­ÀÌ ¿©·¯ °³ÀÎ °æ¿ì(¹­¾î¼­ Áßº¹ÀÌ³Ä ¾Æ´Ï³Ä¸¦ ÆÇ´Ü)    
=======
-- ì—´ì´ ì—¬ëŸ¬ ê°œì¸ ê²½ìš°(ë¬¶ì–´ì„œ ì¤‘ë³µì´ëƒ ì•„ë‹ˆëƒë¥¼ íŒë‹¨)    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT DISTINCT
    job,
    deptno
FROM
    emp;
    
<<<<<<< HEAD
-- 7. ¿¬»ê
-- º°Äª : ÇÊµå¿¡ º°ÄªÀ» ÀÓÀÇ·Î ºÎ¿©( as º°Äª, È¤Àº ÇÑÄ­ ¶ç°í º°Äª, º°Äª¿¡ °ø¹éÀÌ ÀÖ´Ù¸é ""·Î ¹­¾îÁÖ±â)
-- »ç¿øµéÀÇ 1³â ¿¬ºÀ ±¸ÇÏ±â ( SAL * 12 + COMM )
=======
-- 7. ì—°ì‚°
-- ë³„ì¹­ : í•„ë“œì— ë³„ì¹­ì„ ìž„ì˜ë¡œ ë¶€ì—¬( as ë³„ì¹­, í˜¹ì€ í•œì¹¸ ë„ê³  ë³„ì¹­, ë³„ì¹­ì— ê³µë°±ì´ ìžˆë‹¤ë©´ ""ë¡œ ë¬¶ì–´ì£¼ê¸°)
-- ì‚¬ì›ë“¤ì˜ 1ë…„ ì—°ë´‰ êµ¬í•˜ê¸° ( SAL * 12 + COMM )
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    sal,
    comm,
    sal * 12 + comm AS annsal
FROM
    emp;

SELECT
    empno,
<<<<<<< HEAD
    ename           »ç¿ø¸í,
    job             "Á÷ Ã¥",
=======
    ename           ì‚¬ì›ëª…,
    job             "ì§ ì±…",
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    sal * 12 + comm annsal
FROM
    emp;
    
<<<<<<< HEAD
-- 8. Á¤·Ä : ORDER BY
--           ³»¸²Â÷¼ø => DESC, ¿À¸§Â÷¼ø => ASC

-- ENAME, SAL ¿­ ÃßÃâÇÏ°í, SAL ³»¸²Â÷¼øÀ¸·Î Á¤·Ä
=======
-- 8. ì •ë ¬ : ORDER BY
--           ë‚´ë¦¼ì°¨ìˆœ => DESC, ì˜¤ë¦„ì°¨ìˆœ => ASC

-- ENAME, SAL ì—´ ì¶”ì¶œí•˜ê³ , SAL ë‚´ë¦¼ì°¨ìˆœìœ¼ë¡œ ì •ë ¬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    sal
FROM
    emp
ORDER BY
    sal DESC;
    
<<<<<<< HEAD
-- ENAME, SAL ¿­ ÃßÃâÇÏ°í, SAL ¿À¸§Â÷¼øÀ¸·Î Á¤·Ä    
=======
-- ENAME, SAL ì—´ ì¶”ì¶œí•˜ê³ , SAL ì˜¤ë¦„ì°¨ìˆœìœ¼ë¡œ ì •ë ¬    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    sal
FROM
    emp
ORDER BY
<<<<<<< HEAD
    sal;    -- ASC »ý·« °¡´É
    
-- ÀüÃ¼ ³»¿ë Ãâ·ÂÇÏ°í, °á°ú°¡ »ç¿ø¹øÈ£ÀÇ ¿À¸§Â÷¼øÀ¸·Î Á¤·Ä    
=======
    sal;    -- ASC ìƒëžµ ê°€ëŠ¥
    
-- ì „ì²´ ë‚´ìš© ì¶œë ¥í•˜ê³ , ê²°ê³¼ê°€ ì‚¬ì›ë²ˆí˜¸ì˜ ì˜¤ë¦„ì°¨ìˆœìœ¼ë¡œ ì •ë ¬    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
ORDER BY
    empno;
    
    
<<<<<<< HEAD
-- ÀüÃ¼ ³»¿ë Ãâ·ÂÇÏ°í, °á°ú°¡ ºÎ¼­¹øÈ£ÀÇ ¿À¸§Â÷¼ø°ú ±Þ¿© ³»¸²Â÷¼øÀ¸·Î Á¤·Ä     
=======
-- ì „ì²´ ë‚´ìš© ì¶œë ¥í•˜ê³ , ê²°ê³¼ê°€ ë¶€ì„œë²ˆí˜¸ì˜ ì˜¤ë¦„ì°¨ìˆœê³¼ ê¸‰ì—¬ ë‚´ë¦¼ì°¨ìˆœìœ¼ë¡œ ì •ë ¬     
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
ORDER BY
    deptno,
    sal DESC;
    

<<<<<<< HEAD
-- [½Ç½À] emp Å×ÀÌºíÀÇ ¸ðµç ¿­ Ãâ·Â
=======
-- [ì‹¤ìŠµ] emp í…Œì´ë¸”ì˜ ëª¨ë“  ì—´ ì¶œë ¥
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- empno => employee_no
-- ename => employee_name
-- mgr => manager
-- sal => salary
-- comm => commission
-- deptno => department_no
<<<<<<< HEAD
-- ºÎ¼­ ¹øÈ£¸¦ ±âÁØÀ¸·Î ³»¸²Â÷¼øÀ¸·Î Á¤·ÄÇÏµÇ ºÎ¼­¹øÈ£°¡ °°´Ù¸é 
-- »ç¿ø ÀÌ¸§À» ±âÁØÀ¸·Î ¿À¸§Â÷¼ø Á¤·Ä
=======
-- ë¶€ì„œ ë²ˆí˜¸ë¥¼ ê¸°ì¤€ìœ¼ë¡œ ë‚´ë¦¼ì°¨ìˆœìœ¼ë¡œ ì •ë ¬í•˜ë˜ ë¶€ì„œë²ˆí˜¸ê°€ ê°™ë‹¤ë©´ 
-- ì‚¬ì› ì´ë¦„ì„ ê¸°ì¤€ìœ¼ë¡œ ì˜¤ë¦„ì°¨ìˆœ ì •ë ¬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    empno  AS employee_no,
    ename  employee_name,
    mgr    AS manager,
    sal    AS salary,
    comm   commission,
    deptno department_no
FROM
    emp
ORDER BY
    deptno DESC,
    ename ASC;
    
<<<<<<< HEAD
-- WHERE : Æ¯Á¤ Á¶°ÇÀ» ±âÁØÀ¸·Î ¿øÇÏ´Â ÇàÀ» Á¶È¸

-- ºÎ¼­¹øÈ£°¡ 30ÀÎ µ¥ÀÌÅÍ¸¸ Á¶È¸
=======
-- WHERE : íŠ¹ì • ì¡°ê±´ì„ ê¸°ì¤€ìœ¼ë¡œ ì›í•˜ëŠ” í–‰ì„ ì¡°íšŒ

-- ë¶€ì„œë²ˆí˜¸ê°€ 30ì¸ ë°ì´í„°ë§Œ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
<<<<<<< HEAD
    deptno = 30;  --  = : °°´Ù
    
-- »ç¿ø¹øÈ£°¡ 7782ÀÎ »ç¿ø Á¶È¸    
=======
    deptno = 30;  --  = : ê°™ë‹¤
    
-- ì‚¬ì›ë²ˆí˜¸ê°€ 7782ì¸ ì‚¬ì› ì¡°íšŒ    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    empno = 7782;   

<<<<<<< HEAD
-- ºÎ¼­¹øÈ£°¡ 30ÀÌ°í, »ç¿øÁ÷Ã¥ÀÌ SALESMANÀÎ Çà Á¶È¸
=======
-- ë¶€ì„œë²ˆí˜¸ê°€ 30ì´ê³ , ì‚¬ì›ì§ì±…ì´ SALESMANì¸ í–‰ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
        deptno = 30
    AND job = 'SALESMAN';   

<<<<<<< HEAD
-- »ç¿ø¹øÈ£°¡ 7499ÀÌ°í, ºÎ¼­¹øÈ£°¡ 30ÀÎ Çà Á¶È¸
=======
-- ì‚¬ì›ë²ˆí˜¸ê°€ 7499ì´ê³ , ë¶€ì„œë²ˆí˜¸ê°€ 30ì¸ í–‰ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
        empno = 7499
    AND deptno = 30;  

<<<<<<< HEAD
-- ºÎ¼­¹øÈ£°¡ 30ÀÌ°Å³ª, »ç¿øÁ÷Ã¥ÀÌ CLERK ÀÎ Çà Á¶È¸
=======
-- ë¶€ì„œë²ˆí˜¸ê°€ 30ì´ê±°ë‚˜, ì‚¬ì›ì§ì±…ì´ CLERK ì¸ í–‰ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    deptno = 30
    OR job = 'CLERK';     


<<<<<<< HEAD
-- »ê¼ú¿¬»êÀÚ : +, -, *, /, mod(³ª¸ÓÁö- Ç¥ÁØÀº ¾Æ´Ô(¿À¶óÅ¬¿¡¼­¸¸ Á¦°ø))
-- ºñ±³¿¬»êÀÚ : >, >=, <, <=
-- µî°¡ºñ±³¿¬»êÀÚ : =,  !=, <>, ^= (!=, <>, ^= : A°ª°ú B°ªÀÌ ´Ù¸¦ °æ¿ì true, °°Àº °æ¿ì false)
-- ³í¸®ºÎÁ¤¿¬»êÀÚ : NOT
-- IN ¿¬»êÀÚ
-- BETWEEN A AND B ¿¬»êÀÚ
-- LIKE¿¬»êÀÚ¿Í ¿ÍÀÏµå Ä«µå(_, %)
-- IS NULL ¿¬»êÀÚ
-- ÁýÇÕ¿¬»êÀÚ : UNION(ÇÕÁýÇÕ-Áßº¹Á¦°Å), UNION ALL(ÇÕÁýÇÕ-Áßº¹Æ÷ÇÔ), MINUS(Â÷ÁýÇÕ), INTERSECT(±³ÁýÇÕ)

-- ¿¬»êÀÚ ¿ì¼±¼øÀ§
-- 1) »ê¼ú¿¬»êÀÚ *, /
-- 2) »ê¼ú¿¬»êÀÚ +, -
-- 3) ºñ±³¿¬»êÀÚ
=======
-- ì‚°ìˆ ì—°ì‚°ìž : +, -, *, /, mod(ë‚˜ë¨¸ì§€- í‘œì¤€ì€ ì•„ë‹˜(ì˜¤ë¼í´ì—ì„œë§Œ ì œê³µ))
-- ë¹„êµì—°ì‚°ìž : >, >=, <, <=
-- ë“±ê°€ë¹„êµì—°ì‚°ìž : =,  !=, <>, ^= (!=, <>, ^= : Aê°’ê³¼ Bê°’ì´ ë‹¤ë¥¼ ê²½ìš° true, ê°™ì€ ê²½ìš° false)
-- ë…¼ë¦¬ë¶€ì •ì—°ì‚°ìž : NOT
-- IN ì—°ì‚°ìž
-- BETWEEN A AND B ì—°ì‚°ìž
-- LIKEì—°ì‚°ìžì™€ ì™€ì¼ë“œ ì¹´ë“œ(_, %)
-- IS NULL ì—°ì‚°ìž
-- ì§‘í•©ì—°ì‚°ìž : UNION(í•©ì§‘í•©-ì¤‘ë³µì œê±°), UNION ALL(í•©ì§‘í•©-ì¤‘ë³µí¬í•¨), MINUS(ì°¨ì§‘í•©), INTERSECT(êµì§‘í•©)

-- ì—°ì‚°ìž ìš°ì„ ìˆœìœ„
-- 1) ì‚°ìˆ ì—°ì‚°ìž *, /
-- 2) ì‚°ìˆ ì—°ì‚°ìž +, -
-- 3) ë¹„êµì—°ì‚°ìž
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- 4) IS NULL, IS NOT NULL, LIKE, IN
-- 5) BETWEEN A AND B
-- 6) NOT
-- 7) AND
-- 8) OR
<<<<<<< HEAD
-- ¿ì¼±¼øÀ§¸¦ Áà¾ß ÇÑ´Ù¸é ¼Ò°ýÈ£ »ç¿ë ÃßÃµ



-- EMP Å×ÀÌºí¿¡¼­ ±Þ¿© ¿­¿¡ 12¸¦ °öÇÑ °ªÀÌ 36000 ÀÎ Çà Á¶È¸
=======
-- ìš°ì„ ìˆœìœ„ë¥¼ ì¤˜ì•¼ í•œë‹¤ë©´ ì†Œê´„í˜¸ ì‚¬ìš© ì¶”ì²œ



-- EMP í…Œì´ë¸”ì—ì„œ ê¸‰ì—¬ ì—´ì— 12ë¥¼ ê³±í•œ ê°’ì´ 36000 ì¸ í–‰ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal * 12 = 36000;

<<<<<<< HEAD
-- ename ÀÌ F ÀÌÈÄÀÇ ¹®ÀÚ·Î ½ÃÀÛÇÏ´Â »ç¿ø Á¶È¸
-- ¹®ÀÚ Ç¥Çö½Ã '' ¸¸ »ç¿ë
=======
-- ename ì´ F ì´í›„ì˜ ë¬¸ìžë¡œ ì‹œìž‘í•˜ëŠ” ì‚¬ì› ì¡°íšŒ
-- ë¬¸ìž í‘œí˜„ì‹œ '' ë§Œ ì‚¬ìš©
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename >= 'F';

SELECT
    *
FROM
    emp
WHERE
    ename <= 'FORZ';

<<<<<<< HEAD
-- JOBÀÌ MANAGER, SALESMAN, CLERK »ç¿ø Á¶È¸
=======
-- JOBì´ MANAGER, SALESMAN, CLERK ì‚¬ì› ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';
    
<<<<<<< HEAD
-- sal ÀÌ 3000 ÀÌ ¾Æ´Ñ »ç¿ø Á¶È¸
=======
-- sal ì´ 3000 ì´ ì•„ë‹Œ ì‚¬ì› ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal != 3000;

SELECT
    *
FROM
    emp
WHERE
    sal <> 3000;

SELECT
    *
FROM
    emp
WHERE
    sal^= 3000;    
    
    
<<<<<<< HEAD
-- JOBÀÌ MANAGER, SALESMAN, CLERK »ç¿ø Á¶È¸ ==> IN ¿¬»êÀÚ
=======
-- JOBì´ MANAGER, SALESMAN, CLERK ì‚¬ì› ì¡°íšŒ ==> IN ì—°ì‚°ìž
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    job IN ( 'MANAGER', 'SALESMAN', 'CLERK' );    
    
    
<<<<<<< HEAD
-- JOBÀÌ MANAGER, SALESMAN, CLERK ¾Æ´Ñ »ç¿ø Á¶È¸  
=======
-- JOBì´ MANAGER, SALESMAN, CLERK ì•„ë‹Œ ì‚¬ì› ì¡°íšŒ  
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
        job != 'MANAGER'
    AND job <> 'SALESMAN'
    AND job^= 'CLERK';

SELECT
    *
FROM
    emp
WHERE
    NOT sal = 3000;

SELECT
    *
FROM
    emp
WHERE
    job NOT IN ( 'MANAGER', 'SALESMAN', 'CLERK' );


<<<<<<< HEAD
-- ºÎ¼­¹øÈ£°¡ 10, 20 »ç¿øÁ¶È¸(in »ç¿ë)
=======
-- ë¶€ì„œë²ˆí˜¸ê°€ 10, 20 ì‚¬ì›ì¡°íšŒ(in ì‚¬ìš©)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b


SELECT
    *
FROM
    emp
WHERE
    deptno IN ( 10, 20 );

<<<<<<< HEAD
-- ±Þ¿©°¡ 2000 ÀÌ»ó 3000 ÀÌÇÏÀÎ »ç¿ø Á¶È¸
=======
-- ê¸‰ì—¬ê°€ 2000 ì´ìƒ 3000 ì´í•˜ì¸ ì‚¬ì› ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
        sal >= 2000
    AND sal <= 3000;


<<<<<<< HEAD
-- BETWEEN ÃÖ¼Ò°ª AND ÃÖ´ë°ª;
=======
-- BETWEEN ìµœì†Œê°’ AND ìµœëŒ€ê°’;
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    sal BETWEEN 2000 AND 3000;

<<<<<<< HEAD
-- ±Þ¿©°¡ 2000 ÀÌ»ó 3000 ÀÌÇÏ°¡ ¾Æ´Ñ »ç¿ø Á¶È¸
=======
-- ê¸‰ì—¬ê°€ 2000 ì´ìƒ 3000 ì´í•˜ê°€ ì•„ë‹Œ ì‚¬ì› ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal NOT BETWEEN 2000 AND 3000;

<<<<<<< HEAD
-- LIKE¿¬»êÀÚ¿Í ¿ÍÀÏµå Ä«µå(_, %)
-- _ : ¾î¶² °ªÀÌµç »ó°ü¾øÀÌ ÇÑ °³ÀÇ ¹®ÀÚ µ¥ÀÌÅÍ¸¦ ÀÇ¹Ì
-- % : ±æÀÌ¿Í »ó°ü¾øÀÌ(¹®ÀÚ ¾ø´Â °æ¿ìµµ Æ÷ÇÔ) ¸ðµç ¹®ÀÚ µ¥ÀÌÅÍ¸¦ ÀÇ¹Ì


-- »ç¿ø ÀÌ¸§ÀÌ S·Î ½ÃÀÛÇÏ´Â »ç¿ø Á¤º¸ Á¶È¸
=======
-- LIKEì—°ì‚°ìžì™€ ì™€ì¼ë“œ ì¹´ë“œ(_, %)
-- _ : ì–´ë–¤ ê°’ì´ë“  ìƒê´€ì—†ì´ í•œ ê°œì˜ ë¬¸ìž ë°ì´í„°ë¥¼ ì˜ë¯¸
-- % : ê¸¸ì´ì™€ ìƒê´€ì—†ì´(ë¬¸ìž ì—†ëŠ” ê²½ìš°ë„ í¬í•¨) ëª¨ë“  ë¬¸ìž ë°ì´í„°ë¥¼ ì˜ë¯¸


-- ì‚¬ì› ì´ë¦„ì´ Së¡œ ì‹œìž‘í•˜ëŠ” ì‚¬ì› ì •ë³´ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE 'S%';

<<<<<<< HEAD
-- »ç¿ø ÀÌ¸§ÀÇ µÎ¹øÂ° ±ÛÀÚ°¡ L ÀÎ »ç¿ø¸¸ Á¶È¸
=======
-- ì‚¬ì› ì´ë¦„ì˜ ë‘ë²ˆì§¸ ê¸€ìžê°€ L ì¸ ì‚¬ì›ë§Œ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '_L%';

<<<<<<< HEAD
-- »ç¿ø ÀÌ¸§¿¡ AM ÀÌ Æ÷ÇÔµÈ »ç¿ø¸¸ Á¶È¸
=======
-- ì‚¬ì› ì´ë¦„ì— AM ì´ í¬í•¨ëœ ì‚¬ì›ë§Œ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%AM%';

<<<<<<< HEAD
-- »ç¿ø ÀÌ¸§¿¡ AM ÀÌ Æ÷ÇÔµÇÁö ¾ÊÀº »ç¿ø¸¸ Á¶È¸
=======
-- ì‚¬ì› ì´ë¦„ì— AM ì´ í¬í•¨ë˜ì§€ ì•Šì€ ì‚¬ì›ë§Œ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    ename NOT LIKE '%AM%';

<<<<<<< HEAD
-- NULL : µ¥ÀÌÅÍ °ªÀÌ ¿ÏÀüÈ÷ ºñ¾î ÀÖ´Â »óÅÂ
-- = À» »ç¿ëÇÒ ¼ö ¾øÀ½

-- COMM ÀÌ NULLÀÎ »ç¿ø Á¶È¸
=======
-- NULL : ë°ì´í„° ê°’ì´ ì™„ì „ížˆ ë¹„ì–´ ìžˆëŠ” ìƒíƒœ
-- = ì„ ì‚¬ìš©í•  ìˆ˜ ì—†ìŒ

-- COMM ì´ NULLì¸ ì‚¬ì› ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    comm IS NULL;

<<<<<<< HEAD
-- MGR ÀÌ NULLÀÎ »ç¿ø Á¶È¸
=======
-- MGR ì´ NULLì¸ ì‚¬ì› ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    mgr IS NULL;
    
<<<<<<< HEAD
-- MGR ÀÌ NULLÀÌ ¾Æ´Ñ »ç¿ø Á¶È¸    
=======
-- MGR ì´ NULLì´ ì•„ë‹Œ ì‚¬ì› ì¡°íšŒ    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    mgr IS NOT NULL;

<<<<<<< HEAD
-- ÁýÇÕ¿¬»êÀÚ

-- union(µ¿ÀÏÇÑ °á°ú°ªÀÎ °æ¿ì Áßº¹ Á¦°Å), union all(Áßº¹ Á¦°Å ¾ÈÇÔ) : ÇÕÁýÇÕ
=======
-- ì§‘í•©ì—°ì‚°ìž

-- union(ë™ì¼í•œ ê²°ê³¼ê°’ì¸ ê²½ìš° ì¤‘ë³µ ì œê±°), union all(ì¤‘ë³µ ì œê±° ì•ˆí•¨) : í•©ì§‘í•©
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10
UNION
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10;

SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10
UNION ALL
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10;


<<<<<<< HEAD
-- MINUS(Â÷ÁýÇÕ)
=======
-- MINUS(ì°¨ì§‘í•©)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
MINUS
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10;


<<<<<<< HEAD
-- INTERSECT(±³ÁýÇÕ)
=======
-- INTERSECT(êµì§‘í•©)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
INTERSECT
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10;

<<<<<<< HEAD
-- EMP Å×ÀÌºí¿¡¼­ »ç¿øÀÌ¸§ÀÌ S·Î ³¡³ª´Â »ç¿ø µ¥ÀÌÅÍ Á¶È¸
=======
-- EMP í…Œì´ë¸”ì—ì„œ ì‚¬ì›ì´ë¦„ì´ Së¡œ ëë‚˜ëŠ” ì‚¬ì› ë°ì´í„° ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%S';

<<<<<<< HEAD
-- EMP Å×ÀÌºí¿¡¼­ 30¹ø ºÎ¼­¿¡ ±Ù¹«ÇÏ´Â »ç¿ø Áß¿¡¼­ Á÷Ã¥ÀÌ SALESMANÀÎ »ç¿øÀÇ 
-- »ç¿ø¹øÈ£, ÀÌ¸§, ±Þ¿© Á¶È¸(SAL ³»¸²Â÷¼ø)
=======
-- EMP í…Œì´ë¸”ì—ì„œ 30ë²ˆ ë¶€ì„œì— ê·¼ë¬´í•˜ëŠ” ì‚¬ì› ì¤‘ì—ì„œ ì§ì±…ì´ SALESMANì¸ ì‚¬ì›ì˜ 
-- ì‚¬ì›ë²ˆí˜¸, ì´ë¦„, ê¸‰ì—¬ ì¡°íšŒ(SAL ë‚´ë¦¼ì°¨ìˆœ)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    sal
FROM
    emp
WHERE
        deptno = 30
    AND job = 'SALESMAN'
ORDER BY
    sal DESC;

<<<<<<< HEAD
-- EMP Å×ÀÌºíÀ» »ç¿ëÇÏ¿© 20,30¹ø ºÎ¼­¿¡ ±Ù¹«ÇÏ°í ÀÖ´Â »ç¿ø Áß ±Þ¿©°¡ 2000 ÃÊ°úÀÎ »ç¿ø Á¶È¸
-- »ç¿ø¹øÈ£, ÀÌ¸§, ±Þ¿©, ºÎ¼­¹øÈ£ Á¶È¸
-- ÁýÇÕ ¿¬»êÀÚ¸¦ »ç¿ëÇÏ´Â ¹æ½Ä°ú »ç¿ëÇÏÁö ¾Ê´Â ¹æ½Ä µÎ °¡Áö¸¦ »ç¿ëÇÑ´Ù

-- ÁýÇÕ¿¬»êÀÚ »ç¿ëÇÏÁö ¾Ê´Â °æ¿ì
=======
-- EMP í…Œì´ë¸”ì„ ì‚¬ìš©í•˜ì—¬ 20,30ë²ˆ ë¶€ì„œì— ê·¼ë¬´í•˜ê³  ìžˆëŠ” ì‚¬ì› ì¤‘ ê¸‰ì—¬ê°€ 2000 ì´ˆê³¼ì¸ ì‚¬ì› ì¡°íšŒ
-- ì‚¬ì›ë²ˆí˜¸, ì´ë¦„, ê¸‰ì—¬, ë¶€ì„œë²ˆí˜¸ ì¡°íšŒ
-- ì§‘í•© ì—°ì‚°ìžë¥¼ ì‚¬ìš©í•˜ëŠ” ë°©ì‹ê³¼ ì‚¬ìš©í•˜ì§€ ì•ŠëŠ” ë°©ì‹ ë‘ ê°€ì§€ë¥¼ ì‚¬ìš©í•œë‹¤

-- ì§‘í•©ì—°ì‚°ìž ì‚¬ìš©í•˜ì§€ ì•ŠëŠ” ê²½ìš°
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno IN ( 20, 30 )
    AND sal > 2000;

<<<<<<< HEAD
-- ÁýÇÕ¿¬»êÀÚ »ç¿ëÇÏ´Â °æ¿ì
=======
-- ì§‘í•©ì—°ì‚°ìž ì‚¬ìš©í•˜ëŠ” ê²½ìš°
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    sal > 2000
MINUS
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10;

SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
        deptno = 20
    AND sal > 2000
UNION
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
        deptno = 30
    AND sal > 2000;



<<<<<<< HEAD
-- »ç¿ø ÀÌ¸§¿¡ E°¡ Æ÷ÇÔµÇ¾î ÀÖ´Â 30¹ø ºÎ¼­ »ç¿ø Áß ±Þ¿©°¡ 1000~2000 »çÀÌ°¡ ¾Æ´Ñ »ç¿øÀÇ ÀÌ¸§
-- »ç¿ø¹øÈ£, ±Þ¿©, ºÎ¼­¹øÈ£¸¦ Á¶È¸ÇÏ±â
=======
-- ì‚¬ì› ì´ë¦„ì— Eê°€ í¬í•¨ë˜ì–´ ìžˆëŠ” 30ë²ˆ ë¶€ì„œ ì‚¬ì› ì¤‘ ê¸‰ì—¬ê°€ 1000~2000 ì‚¬ì´ê°€ ì•„ë‹Œ ì‚¬ì›ì˜ ì´ë¦„
-- ì‚¬ì›ë²ˆí˜¸, ê¸‰ì—¬, ë¶€ì„œë²ˆí˜¸ë¥¼ ì¡°íšŒí•˜ê¸°
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b


SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    ename LIKE '%E%'
    AND deptno = 30
    AND sal NOT BETWEEN 1000 AND 2000;


<<<<<<< HEAD
-- Ãß°¡ ¼ö´çÀÌ Á¸ÀçÇÏÁö ¾ÊÀ¸¸ç, »ó±ÞÀÚ°¡ ÀÖ°í Á÷Ã¥ÀÌ MANAGER, CLERK ÀÎ »ç¿ø Áß¿¡¼­ »ç¿ø ÀÌ¸§ÀÇ
-- µÎ¹øÂ° ±ÛÀÚ°¡ L ÀÌ ¾Æ´Ñ »ç¿øÀÇ Á¤º¸ Á¶È¸
=======
-- ì¶”ê°€ ìˆ˜ë‹¹ì´ ì¡´ìž¬í•˜ì§€ ì•Šìœ¼ë©°, ìƒê¸‰ìžê°€ ìžˆê³  ì§ì±…ì´ MANAGER, CLERK ì¸ ì‚¬ì› ì¤‘ì—ì„œ ì‚¬ì› ì´ë¦„ì˜
-- ë‘ë²ˆì§¸ ê¸€ìžê°€ L ì´ ì•„ë‹Œ ì‚¬ì›ì˜ ì •ë³´ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    comm IS NULL
    AND mgr IS NOT NULL
    AND job IN ( 'MANAGER', 'CLERK' )
    AND ename NOT LIKE '_L%';


<<<<<<< HEAD
-- ¿À¶óÅ¬ ÇÔ¼ö
-- ¿À¶óÅ¬¿¡¼­ ±âº»À¸·Î Á¦°øÇÏ´Â ³»Àå ÇÔ¼ö¿Í »ç¿ëÀÚ°¡ ÇÊ¿ä¿¡ ÀÇÇØ Á÷Á¢ Á¤ÀÇÇÑ »ç¿ëÀÚ Á¤ÀÇ ÇÔ¼ö


-- 1. ¹®ÀÚ¿­ ÇÔ¼ö
-- 1) UPPER, LOWER, INITCAP
-- UPPER : ¸ðµÎ ´ë¹®ÀÚ, LOWER : ¸ðµÎ ¼Ò¹®ÀÚ, INITCAP : Ã¹ ±ÛÀÚ¸¸ ´ë¹®ÀÚ
-- LIKE '%ORACLE%' OR LIKE '%oracle%' OR LIKE '%Oracle%' ==> °Ë»ö ½Ã »ç¿ë
=======
-- ì˜¤ë¼í´ í•¨ìˆ˜
-- ì˜¤ë¼í´ì—ì„œ ê¸°ë³¸ìœ¼ë¡œ ì œê³µí•˜ëŠ” ë‚´ìž¥ í•¨ìˆ˜ì™€ ì‚¬ìš©ìžê°€ í•„ìš”ì— ì˜í•´ ì§ì ‘ ì •ì˜í•œ ì‚¬ìš©ìž ì •ì˜ í•¨ìˆ˜


-- 1. ë¬¸ìžì—´ í•¨ìˆ˜
-- 1) UPPER, LOWER, INITCAP
-- UPPER : ëª¨ë‘ ëŒ€ë¬¸ìž, LOWER : ëª¨ë‘ ì†Œë¬¸ìž, INITCAP : ì²« ê¸€ìžë§Œ ëŒ€ë¬¸ìž
-- LIKE '%ORACLE%' OR LIKE '%oracle%' OR LIKE '%Oracle%' ==> ê²€ìƒ‰ ì‹œ ì‚¬ìš©
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    upper(ename),
    lower(ename),
    initcap(ename)
FROM
    emp;

SELECT
    *
FROM
    emp
WHERE
    upper(ename) = 'FORD';

SELECT
    *
FROM
    emp
WHERE
    upper(ename) LIKE upper('%ford%');    

<<<<<<< HEAD
-- 2) LENGTH : ¹®ÀÚ¿­ ±æÀÌ
=======
-- 2) LENGTH : ë¬¸ìžì—´ ê¸¸ì´
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    length(ename)
FROM
    emp;

<<<<<<< HEAD
-- »ç¿ø ÀÌ¸§ÀÇ ±æÀÌ°¡ 5 ÀÌ»óÀÎ »ç¿ø Á¶È¸
=======
-- ì‚¬ì› ì´ë¦„ì˜ ê¸¸ì´ê°€ 5 ì´ìƒì¸ ì‚¬ì› ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    ename,
    length(ename)
FROM
    emp
WHERE
    length(ename) >= 5;
    
<<<<<<< HEAD
-- ÇÑ±ÛÀÏ ¶§
-- dual : sys°¡ ¼ÒÀ¯ÇÏ´Â Å×ÀÌºí(ÀÓ½Ã ¿¬»êÀÌ³ª ÇÔ¼öÀÇ °á°ú °ª È®ÀÎÇÏ´Â ¿ëµµ)
-- length, lengthb(¹®ÀÚ°¡ »ç¿ëÇÏ´Â ¹ÙÀÌÆ® ¼ö)
-- ¿µ¾î : ¹®ÀÚ1 => 1byte, ÇÑ±Û : ¹®ÀÚ 1 => 3 byte
SELECT
    length('ÇÑ±Û'),
    lengthb('ÇÑ±Û'),
=======
-- í•œê¸€ì¼ ë•Œ
-- dual : sysê°€ ì†Œìœ í•˜ëŠ” í…Œì´ë¸”(ìž„ì‹œ ì—°ì‚°ì´ë‚˜ í•¨ìˆ˜ì˜ ê²°ê³¼ ê°’ í™•ì¸í•˜ëŠ” ìš©ë„)
-- length, lengthb(ë¬¸ìžê°€ ì‚¬ìš©í•˜ëŠ” ë°”ì´íŠ¸ ìˆ˜)
-- ì˜ì–´ : ë¬¸ìž1 => 1byte, í•œê¸€ : ë¬¸ìž 1 => 3 byte
SELECT
    length('í•œê¸€'),
    lengthb('í•œê¸€'),
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    lengthb('ab')
FROM
    dual;
    
<<<<<<< HEAD
-- 3) SUBSTR(¹®ÀÚ¿­µ¥ÀÌÅÍ, ½ÃÀÛÀ§Ä¡, ÃßÃâ±æÀÌ) : ÃßÃâ±æÀÌ »ý·« °¡´É
--    ¹®ÀÚ¿­ ÀÏºÎ ÃßÃâ
=======
-- 3) SUBSTR(ë¬¸ìžì—´ë°ì´í„°, ì‹œìž‘ìœ„ì¹˜, ì¶”ì¶œê¸¸ì´) : ì¶”ì¶œê¸¸ì´ ìƒëžµ ê°€ëŠ¥
--    ë¬¸ìžì—´ ì¼ë¶€ ì¶”ì¶œ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    job,
    substr(job, 1, 2),
    substr(job, 3, 2),
    substr(job, 5),
    substr(job, - 3)
FROM
    emp;
    
<<<<<<< HEAD
-- ENAME, ¼¼¹øÂ° ±ÛÀÚºÎÅÍ Ãâ·Â
=======
-- ENAME, ì„¸ë²ˆì§¸ ê¸€ìžë¶€í„° ì¶œë ¥
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    substr(ename, 3)
FROM
    emp;
    
<<<<<<< HEAD
-- 3) INSTR : ¹®ÀÚ¿­ µ¥ÀÌÅÍ ¾È¿¡¼­ Æ¯Á¤ ¹®ÀÚ À§Ä¡ Ã£±â
-- INSTR(´ë»ó¹®ÀÚ¿­, À§Ä¡¸¦ Ã£À¸·Á´Â ¹®ÀÚ¿­, ´ë»ó¹®ÀÚ¿­¿¡¼­ Ã£±â¸¦ ½ÃÀÛÇÒ À§Ä¡(¼±ÅÃ), ½ÃÀÛÀ§Ä¡¿¡¼­ Ã£À¸·Á´Â ¹®ÀÚ°¡ ¸î¹øÂ°ÀÎÁö ÁöÁ¤(¼±ÅÃ))

-- HELLO, ORACLE! ¹®ÀÚ¿­¿¡¼­ L ¹®ÀÚ¿­ Ã£±â
=======
-- 3) INSTR : ë¬¸ìžì—´ ë°ì´í„° ì•ˆì—ì„œ íŠ¹ì • ë¬¸ìž ìœ„ì¹˜ ì°¾ê¸°
-- INSTR(ëŒ€ìƒë¬¸ìžì—´, ìœ„ì¹˜ë¥¼ ì°¾ìœ¼ë ¤ëŠ” ë¬¸ìžì—´, ëŒ€ìƒë¬¸ìžì—´ì—ì„œ ì°¾ê¸°ë¥¼ ì‹œìž‘í•  ìœ„ì¹˜(ì„ íƒ), ì‹œìž‘ìœ„ì¹˜ì—ì„œ ì°¾ìœ¼ë ¤ëŠ” ë¬¸ìžê°€ ëª‡ë²ˆì§¸ì¸ì§€ ì§€ì •(ì„ íƒ))

-- HELLO, ORACLE! ë¬¸ìžì—´ì—ì„œ L ë¬¸ìžì—´ ì°¾ê¸°
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    instr('HELLO, ORACLE!', 'L')       AS instr_1,
    instr('HELLO, ORACLE!', 'L', 5)    AS instr_2,
    instr('HELLO, ORACLE!', 'L', 2, 2) AS instr_3
FROM
    dual;
    
<<<<<<< HEAD
-- 4) replace : Æ¯Á¤ ¹®ÀÚ¸¦ ´Ù¸¥ ¹®ÀÚ·Î º¯°æ
-- replace(¹®ÀÚ¿­µ¥ÀÌÅÍ, Ã£´Â¹®ÀÚ, º¯°æ¹®ÀÚ)

-- 010-1234-5678   - ¸¦ ºó ¹®ÀÚ¿­·Î º¯°æ / -¸¦ ¾ø¾Ö±â
SELECT
    '010-1234-5678'                    AS º¯°æÀü,
=======
-- 4) replace : íŠ¹ì • ë¬¸ìžë¥¼ ë‹¤ë¥¸ ë¬¸ìžë¡œ ë³€ê²½
-- replace(ë¬¸ìžì—´ë°ì´í„°, ì°¾ëŠ”ë¬¸ìž, ë³€ê²½ë¬¸ìž)

-- 010-1234-5678   - ë¥¼ ë¹ˆ ë¬¸ìžì—´ë¡œ ë³€ê²½ / -ë¥¼ ì—†ì• ê¸°
SELECT
    '010-1234-5678'                    AS ë³€ê²½ì „,
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    replace('010-1234-5678', '-', ' ') AS replace_1,
    replace('010-1234-5678', '-')      AS replace_2
FROM
    dual;

<<<<<<< HEAD
-- 'ÀÌ°ÍÀÌ Oracle ÀÌ´Ù', 'ÀÌ°ÍÀÌ' => This is º¯°æ
SELECT
    'ÀÌ°ÍÀÌ Oracle ÀÌ´Ù'                            AS º¯°æÀü,
    replace('ÀÌ°ÍÀÌ Oracle ÀÌ´Ù', 'ÀÌ°ÍÀÌ', 'This is') AS replace_1
FROM
    dual;

-- 5) concat : µÎ ¹®ÀÚ¿­ µ¥ÀÌÅÍ ÇÕÄ¡±â
=======
-- 'ì´ê²ƒì´ Oracle ì´ë‹¤', 'ì´ê²ƒì´' => This is ë³€ê²½
SELECT
    'ì´ê²ƒì´ Oracle ì´ë‹¤'                            AS ë³€ê²½ì „,
    replace('ì´ê²ƒì´ Oracle ì´ë‹¤', 'ì´ê²ƒì´', 'This is') AS replace_1
FROM
    dual;

-- 5) concat : ë‘ ë¬¸ìžì—´ ë°ì´í„° í•©ì¹˜ê¸°
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    concat(empno, ename)
FROM
    emp;

SELECT
    concat(empno,
           concat(':', ename))
FROM
    emp;
    
<<<<<<< HEAD
-- || : ¹®ÀÚ¿­ ¿¬°á ¿¬»êÀÚ
=======
-- || : ë¬¸ìžì—´ ì—°ê²° ì—°ì‚°ìž
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    empno || ename,
    empno
    || ':'
    || ename
FROM
    emp;

<<<<<<< HEAD
-- 6) TRIM, LTRIM, RTRIM : °ø¹é Æ÷ÇÔ Æ¯Á¤ ¹®ÀÚ Á¦°Å
-- ' ORACLE' = 'ORACLE' ==> FALSE

SELECT
    '     ÀÌ°ÍÀÌ     ',
    TRIM('     ÀÌ°ÍÀÌ     ')
=======
-- 6) TRIM, LTRIM, RTRIM : ê³µë°± í¬í•¨ íŠ¹ì • ë¬¸ìž ì œê±°
-- ' ORACLE' = 'ORACLE' ==> FALSE

SELECT
    '     ì´ê²ƒì´     ',
    TRIM('     ì´ê²ƒì´     ')
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
FROM
    dual;



<<<<<<< HEAD
-- 2. ¼ýÀÚÇÔ¼ö
-- 1) ROUND, TRUNC, CEIL, FLOOR, MOD

-- round : ¹Ý¿Ã¸²
-- round(¼ýÀÚ, ¹Ý¿Ã¸² À§Ä¡(¼±ÅÃ))
SELECT
    round(1234.5678)      AS round,           -- ¼Ò¼öÁ¡ Ã¹Â° ÀÚ¸®¿¡¼­ ¹Ý¿Ã¸²
    round(1234.5678, 0)   AS round0,          -- ¼Ò¼öÁ¡ Ã¹Â° ÀÚ¸®¿¡¼­ ¹Ý¿Ã¸²
    round(1234.5678, 1)   AS round1,          -- ¼Ò¼öÁ¡ µÑÂ° ÀÚ¸®¿¡¼­ ¹Ý¿Ã¸² 
    round(1234.5678, 2)   AS round2,          -- ¼Ò¼öÁ¡ ¼¼¹øÂ° ÀÚ¸®¿¡¼­ ¹Ý¿Ã¸²
    round(1234.5678, - 1) AS round_minus1,    -- ÀÚ¿¬¼ö Ã¹Â° ÀÚ¸®¿¡¼­ ¹Ý¿Ã¸²
    round(1234.5678, - 2) AS round_minus2     -- ÀÚ¿¬¼ö µÑÂ° ÀÚ¸®¿¡¼­ ¹Ý¿Ã¸²
=======
-- 2. ìˆ«ìží•¨ìˆ˜
-- 1) ROUND, TRUNC, CEIL, FLOOR, MOD

-- round : ë°˜ì˜¬ë¦¼
-- round(ìˆ«ìž, ë°˜ì˜¬ë¦¼ ìœ„ì¹˜(ì„ íƒ))
SELECT
    round(1234.5678)      AS round,           -- ì†Œìˆ˜ì  ì²«ì§¸ ìžë¦¬ì—ì„œ ë°˜ì˜¬ë¦¼
    round(1234.5678, 0)   AS round0,          -- ì†Œìˆ˜ì  ì²«ì§¸ ìžë¦¬ì—ì„œ ë°˜ì˜¬ë¦¼
    round(1234.5678, 1)   AS round1,          -- ì†Œìˆ˜ì  ë‘˜ì§¸ ìžë¦¬ì—ì„œ ë°˜ì˜¬ë¦¼ 
    round(1234.5678, 2)   AS round2,          -- ì†Œìˆ˜ì  ì„¸ë²ˆì§¸ ìžë¦¬ì—ì„œ ë°˜ì˜¬ë¦¼
    round(1234.5678, - 1) AS round_minus1,    -- ìžì—°ìˆ˜ ì²«ì§¸ ìžë¦¬ì—ì„œ ë°˜ì˜¬ë¦¼
    round(1234.5678, - 2) AS round_minus2     -- ìžì—°ìˆ˜ ë‘˜ì§¸ ìžë¦¬ì—ì„œ ë°˜ì˜¬ë¦¼
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
FROM
    dual;
    
    
<<<<<<< HEAD
-- trunc : Æ¯Á¤ À§Ä¡¿¡¼­ ¹ö¸®´Â ÇÔ¼ö
-- trunc(¼ýÀÚ, ¹ö¸² À§Ä¡(¼±ÅÃ))
SELECT
    trunc(1234.5678)      AS trunc,           -- ¼Ò¼öÁ¡ Ã¹Â° ÀÚ¸®¿¡¼­ ¹ö¸²
    trunc(1234.5678, 0)   AS trunc0,          -- ¼Ò¼öÁ¡ Ã¹Â° ÀÚ¸®¿¡¼­ ¹ö¸²
    trunc(1234.5678, 1)   AS trunc1,          -- ¼Ò¼öÁ¡ µÑÂ° ÀÚ¸®¿¡¼­ ¹ö¸² 
    trunc(1234.5678, 2)   AS trunc2,          -- ¼Ò¼öÁ¡ ¼¼¹øÂ° ÀÚ¸®¿¡¼­ ¹ö¸²
    trunc(1234.5678, - 1) AS trunc_minus1,    -- ÀÚ¿¬¼ö Ã¹Â° ÀÚ¸®¿¡¼­ ¹ö¸²
    trunc(1234.5678, - 2) AS trunc_minus2     -- ÀÚ¿¬¼ö µÑÂ° ÀÚ¸®¿¡¼­ ¹ö¸²
FROM
    dual;    
    
-- ceil(¼ýÀÚ), floor(¼ýÀÚ) : ÀÔ·ÂµÈ ¼ýÀÚ¿Í °¡±î¿î Å« Á¤¼ö, ÀÛÀº Á¤¼ö   
=======
-- trunc : íŠ¹ì • ìœ„ì¹˜ì—ì„œ ë²„ë¦¬ëŠ” í•¨ìˆ˜
-- trunc(ìˆ«ìž, ë²„ë¦¼ ìœ„ì¹˜(ì„ íƒ))
SELECT
    trunc(1234.5678)      AS trunc,           -- ì†Œìˆ˜ì  ì²«ì§¸ ìžë¦¬ì—ì„œ ë²„ë¦¼
    trunc(1234.5678, 0)   AS trunc0,          -- ì†Œìˆ˜ì  ì²«ì§¸ ìžë¦¬ì—ì„œ ë²„ë¦¼
    trunc(1234.5678, 1)   AS trunc1,          -- ì†Œìˆ˜ì  ë‘˜ì§¸ ìžë¦¬ì—ì„œ ë²„ë¦¼ 
    trunc(1234.5678, 2)   AS trunc2,          -- ì†Œìˆ˜ì  ì„¸ë²ˆì§¸ ìžë¦¬ì—ì„œ ë²„ë¦¼
    trunc(1234.5678, - 1) AS trunc_minus1,    -- ìžì—°ìˆ˜ ì²«ì§¸ ìžë¦¬ì—ì„œ ë²„ë¦¼
    trunc(1234.5678, - 2) AS trunc_minus2     -- ìžì—°ìˆ˜ ë‘˜ì§¸ ìžë¦¬ì—ì„œ ë²„ë¦¼
FROM
    dual;    
    
-- ceil(ìˆ«ìž), floor(ìˆ«ìž) : ìž…ë ¥ëœ ìˆ«ìžì™€ ê°€ê¹Œìš´ í° ì •ìˆ˜, ìž‘ì€ ì •ìˆ˜   
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    ceil(3.14),
    floor(3.14),
    ceil(- 3.14),
    floor(- 3.14)
FROM
    dual;


<<<<<<< HEAD
-- mod(¼ýÀÚ, ³ª´­¼ö) : ³ª¸ÓÁö°ª
=======
-- mod(ìˆ«ìž, ë‚˜ëˆŒìˆ˜) : ë‚˜ë¨¸ì§€ê°’
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    mod(15, 6),
    mod(10, 2),
    mod(11, 2)
FROM
    dual;    
    
    
    
<<<<<<< HEAD
-- ³¯Â¥ ÇÔ¼ö
-- ³¯Â¥ µ¥ÀÌÅÍ + ¼ýÀÚ : ³¯Â¥ µ¥ÀÌÅÍº¸´Ù ¼ýÀÚ¸¸Å­ ÀÏ¼ö ÀÌÈÄÀÇ ³¯Â¥
-- ³¯Â¥ µ¥ÀÌÅÍ - ³¯Â¥ µ¥ÀÌÅÍ : µÎ ³¯Â¥ µ¥ÀÌÅÍ °£ÀÇ ÀÏ¼ö Â÷ÀÌ

-- ³¯Â¥ µ¥ÀÌÅÍ + ³¯Â¥ µ¥ÀÌÅÍ : ¿¬»êºÒ°¡

-- 1) sysdate ÇÔ¼ö : ¿À¶óÅ¬ µ¥ÀÌÅÍº£ÀÌ½º ¼­¹ö°¡ ¼³Ä¡µÈ OSÀÇ ÇöÀç³¯Â¥¿Í ½Ã°£À» °¡Á®¿È
=======
-- ë‚ ì§œ í•¨ìˆ˜
-- ë‚ ì§œ ë°ì´í„° + ìˆ«ìž : ë‚ ì§œ ë°ì´í„°ë³´ë‹¤ ìˆ«ìžë§Œí¼ ì¼ìˆ˜ ì´í›„ì˜ ë‚ ì§œ
-- ë‚ ì§œ ë°ì´í„° - ë‚ ì§œ ë°ì´í„° : ë‘ ë‚ ì§œ ë°ì´í„° ê°„ì˜ ì¼ìˆ˜ ì°¨ì´

-- ë‚ ì§œ ë°ì´í„° + ë‚ ì§œ ë°ì´í„° : ì—°ì‚°ë¶ˆê°€

-- 1) sysdate í•¨ìˆ˜ : ì˜¤ë¼í´ ë°ì´í„°ë² ì´ìŠ¤ ì„œë²„ê°€ ì„¤ì¹˜ëœ OSì˜ í˜„ìž¬ë‚ ì§œì™€ ì‹œê°„ì„ ê°€ì ¸ì˜´
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    sysdate,
    sysdate - 1 AS yesterday,
    sysdate + 1 AS tomorrow
FROM
    dual;
    
<<<<<<< HEAD
-- 2) add_months(³¯Â¥, ´õÇÒ °³¿ù¼ö) : ¸î °³¿ù ÀÌÈÄ ³¯Â¥ ±¸ÇÏ±â
=======
-- 2) add_months(ë‚ ì§œ, ë”í•  ê°œì›”ìˆ˜) : ëª‡ ê°œì›” ì´í›„ ë‚ ì§œ êµ¬í•˜ê¸°
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    sysdate,
    add_months(sysdate, 3)
FROM
    dual;
    
<<<<<<< HEAD
-- ÀÔ»ç 50ÁÖ³âÀÌ µÇ´Â ³¯Â¥ ±¸ÇÏ±â
-- empno, ename, hiredate, ÀÔ»ç50ÁÖ³â³¯Â¥ Á¶È¸
=======
-- ìž…ì‚¬ 50ì£¼ë…„ì´ ë˜ëŠ” ë‚ ì§œ êµ¬í•˜ê¸°
-- empno, ename, hiredate, ìž…ì‚¬50ì£¼ë…„ë‚ ì§œ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    hiredate,
    add_months(hiredate, 600)
FROM
    emp;

<<<<<<< HEAD
-- 3) MONTHS_BETWEEN(Ã¹¹øÂ°³¯Â¥, µÎ¹øÂ° ³¯Â¥) : µÎ ³¯Â¥ µ¥ÀÌÅÍ °£ÀÇ ³¯Â¥ Â÷ÀÌ¸¦ °³¿ù¼ö·Î °è»êÇÏ¿© Ãâ·Â

-- ÀÔ»ç 45³â ¹Ì¸¸ÀÎ »ç¿ø µ¥ÀÌÅÍ Á¶È¸
=======
-- 3) MONTHS_BETWEEN(ì²«ë²ˆì§¸ë‚ ì§œ, ë‘ë²ˆì§¸ ë‚ ì§œ) : ë‘ ë‚ ì§œ ë°ì´í„° ê°„ì˜ ë‚ ì§œ ì°¨ì´ë¥¼ ê°œì›”ìˆ˜ë¡œ ê³„ì‚°í•˜ì—¬ ì¶œë ¥

-- ìž…ì‚¬ 45ë…„ ë¯¸ë§Œì¸ ì‚¬ì› ë°ì´í„° ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- empno, ename, hiredate

SELECT
    empno,
    ename,
    hiredate
FROM
    emp
WHERE
    months_between(sysdate, hiredate) < 540;
 
    
<<<<<<< HEAD
-- ÇöÀç ³¯Â¥¿Í 6°³¿ù ÈÄ ³¯Â¥°¡ Ãâ·Â
=======
-- í˜„ìž¬ ë‚ ì§œì™€ 6ê°œì›” í›„ ë‚ ì§œê°€ ì¶œë ¥
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    sysdate,
    add_months(sysdate, 6)
FROM
    dual;

SELECT
    empno,
    ename,
    hiredate,
    sysdate,
    months_between(hiredate, sysdate)        AS months1,
    months_between(sysdate, hiredate)        AS months2,
    trunc(months_between(sysdate, hiredate)) AS months3
FROM
    emp;
    
<<<<<<< HEAD
-- 4) next_day(³¯Â¥, ¿äÀÏ) : Æ¯Á¤ ³¯Â¥¸¦ ±âÁØÀ¸·Î µ¹¾Æ¿À´Â ¿äÀÏÀÇ ³¯Â¥ Ãâ·Â
--    last_day(³¯Â¥) : Æ¯Á¤ ³¯Â¥°¡ ¼ÓÇÑ ´ÞÀÇ ¸¶Áö¸· ³¯Â¥¸¦ Ãâ·Â
SELECT
    sysdate,
    next_day(sysdate, '±Ý¿äÀÏ'),
=======
-- 4) next_day(ë‚ ì§œ, ìš”ì¼) : íŠ¹ì • ë‚ ì§œë¥¼ ê¸°ì¤€ìœ¼ë¡œ ëŒì•„ì˜¤ëŠ” ìš”ì¼ì˜ ë‚ ì§œ ì¶œë ¥
--    last_day(ë‚ ì§œ) : íŠ¹ì • ë‚ ì§œê°€ ì†í•œ ë‹¬ì˜ ë§ˆì§€ë§‰ ë‚ ì§œë¥¼ ì¶œë ¥
SELECT
    sysdate,
    next_day(sysdate, 'ê¸ˆìš”ì¼'),
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    last_day(sysdate)
FROM
    dual;

<<<<<<< HEAD
-- ³¯Â¥ÀÇ ¹Ý¿Ã¸², ¹ö¸² : ROUND, TRUNC
-- CC : ³× ÀÚ¸® ¿¬µµÀÇ ³¡ µÎÀÚ¸®¸¦ ±âÁØÀ¸·Î »ç¿ë
--      2023 ³âÀÎ °æ¿ì 2050 ÀÌÇÏÀÌ¹Ç·Î 2001³âÀ¸·Î Ã³¸®
=======
-- ë‚ ì§œì˜ ë°˜ì˜¬ë¦¼, ë²„ë¦¼ : ROUND, TRUNC
-- CC : ë„¤ ìžë¦¬ ì—°ë„ì˜ ë ë‘ìžë¦¬ë¥¼ ê¸°ì¤€ìœ¼ë¡œ ì‚¬ìš©
--      2023 ë…„ì¸ ê²½ìš° 2050 ì´í•˜ì´ë¯€ë¡œ 2001ë…„ìœ¼ë¡œ ì²˜ë¦¬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    sysdate,
    round(sysdate, 'CC')   AS format_cc,
    round(sysdate, 'YYYY') AS format_yyyy,
    round(sysdate, 'DDD')  AS format_ddd,
    round(sysdate, 'HH')   AS format_hh
FROM
    dual;
    
<<<<<<< HEAD
-- Çüº¯È¯ ÇÔ¼ö : ÀÚ·áÇüÀ» Çü º¯È¯
=======
-- í˜•ë³€í™˜ í•¨ìˆ˜ : ìžë£Œí˜•ì„ í˜• ë³€í™˜
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- NUMBER, VARCHAR2, DATE

SELECT
    empno,
    ename,
    empno + '500'
FROM
    emp
WHERE
    ename = 'FORD';

<<<<<<< HEAD
--ORA-01722: ¼öÄ¡°¡ ºÎÀûÇÕÇÕ´Ï´Ù
=======
--ORA-01722: ìˆ˜ì¹˜ê°€ ë¶€ì í•©í•©ë‹ˆë‹¤
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
--01722. 00000 -  "invalid number"
--SELECT empno, ename, 'abcd'+empno
--FROM emp
--WHERE ename = 'FORD';

<<<<<<< HEAD
-- TO_CHAR() : ¼ýÀÚ ¶Ç´Â ³¯Â¥ µ¥ÀÌÅÍ¸¦ ¹®ÀÚ µ¥ÀÌÅÍ·Î º¯È¯
-- TO_NUMBER() : ¹®ÀÚ µ¥ÀÌÅÍ¸¦ ¼ýÀÚ µ¥ÀÌÅÍ·Î º¯È¯
-- TO_DATE() : ¹®ÀÚ µ¥ÀÌÅÍ¸¦ ³¯Â¥ µ¥ÀÌÅÍ·Î º¯È¯

-- ¿øÇÏ´Â Ãâ·Â ÇüÅÂ·Î ³¯Â¥ Ãâ·ÂÇÏ±â to_char ÁÖ·Î »ç¿ëµÊ
SELECT
    sysdate,
    to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') AS ÇöÀç³¯Â¥½Ã°£
FROM
    dual;
    
-- MON, MONTH : ¿ù ÀÌ¸§
-- DDD : 365ÀÏ Áß¿¡¼­ ¸çÄ¥ 
SELECT
    sysdate,
    to_char(sysdate, 'YYYY/MM/DD')    AS ÇöÀç³¯Â¥,
    to_char(sysdate, 'YYYY')          AS ÇöÀç¿¬µµ,
    to_char(sysdate, 'MM')            AS ÇöÀç¿ù,
    to_char(sysdate, 'MON')           AS ÇöÀç¿ù1,
    to_char(sysdate, 'DD')            AS ÇöÀçÀÏÀÚ,
    to_char(sysdate, 'DDD')           AS ÇöÀçÀÏÀÚ2,
    to_char(sysdate, 'HH12:MI:SS AM') AS ÇöÀç³¯Â¥½Ã°£
FROM
    dual;    
    
-- sal ÇÊµå¿¡ , ³ª ÅëÈ­Ç¥½Ã¸¦ ÇÏ°í ½Í´Ù¸é?
-- L (Locale) Áö¿ª È­Æó ´ÜÀ§ ±âÈ£ ºÙ¿©ÁÜ
=======
-- TO_CHAR() : ìˆ«ìž ë˜ëŠ” ë‚ ì§œ ë°ì´í„°ë¥¼ ë¬¸ìž ë°ì´í„°ë¡œ ë³€í™˜
-- TO_NUMBER() : ë¬¸ìž ë°ì´í„°ë¥¼ ìˆ«ìž ë°ì´í„°ë¡œ ë³€í™˜
-- TO_DATE() : ë¬¸ìž ë°ì´í„°ë¥¼ ë‚ ì§œ ë°ì´í„°ë¡œ ë³€í™˜

-- ì›í•˜ëŠ” ì¶œë ¥ í˜•íƒœë¡œ ë‚ ì§œ ì¶œë ¥í•˜ê¸° to_char ì£¼ë¡œ ì‚¬ìš©ë¨
SELECT
    sysdate,
    to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') AS í˜„ìž¬ë‚ ì§œì‹œê°„
FROM
    dual;
    
-- MON, MONTH : ì›” ì´ë¦„
-- DDD : 365ì¼ ì¤‘ì—ì„œ ë©°ì¹  
SELECT
    sysdate,
    to_char(sysdate, 'YYYY/MM/DD')    AS í˜„ìž¬ë‚ ì§œ,
    to_char(sysdate, 'YYYY')          AS í˜„ìž¬ì—°ë„,
    to_char(sysdate, 'MM')            AS í˜„ìž¬ì›”,
    to_char(sysdate, 'MON')           AS í˜„ìž¬ì›”1,
    to_char(sysdate, 'DD')            AS í˜„ìž¬ì¼ìž,
    to_char(sysdate, 'DDD')           AS í˜„ìž¬ì¼ìž2,
    to_char(sysdate, 'HH12:MI:SS AM') AS í˜„ìž¬ë‚ ì§œì‹œê°„
FROM
    dual;    
    
-- sal í•„ë“œì— , ë‚˜ í†µí™”í‘œì‹œë¥¼ í•˜ê³  ì‹¶ë‹¤ë©´?
-- L (Locale) ì§€ì—­ í™”í ë‹¨ìœ„ ê¸°í˜¸ ë¶™ì—¬ì¤Œ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    sal,
    to_char(sal, '$999,999') AS sal_$,
    to_char(sal, 'L999,999') AS sal_l
FROM
    emp;
    


<<<<<<< HEAD
-- to_number(¹®ÀÚ¿­µ¥ÀÌÅÍ, ÀÎ½ÄµÉ ¼ýÀÚÇüÅÂ)

-- ÀÚµ¿Çüº¯È¯
=======
-- to_number(ë¬¸ìžì—´ë°ì´í„°, ì¸ì‹ë  ìˆ«ìží˜•íƒœ)

-- ìžë™í˜•ë³€í™˜
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    1300 - '1500',
    '1300' + 1500
FROM
    dual;

<<<<<<< HEAD
-- ÀÚµ¿Çüº¯È¯¾ÈµÇ´Â »óÈ²    
=======
-- ìžë™í˜•ë³€í™˜ì•ˆë˜ëŠ” ìƒí™©    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    TO_NUMBER('1,300', '999,999') - TO_NUMBER('1,500', '999,999')
FROM
    dual;
    
    
<<<<<<< HEAD
-- to_date(¹®ÀÚ¿­µ¥ÀÌÅÍ, 'ÀÎ½ÄµÉ ³¯Â¥ ÇüÅÂ')
=======
-- to_date(ë¬¸ìžì—´ë°ì´í„°, 'ì¸ì‹ë  ë‚ ì§œ í˜•íƒœ')
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    TO_DATE('2018-07-14', 'YYYY-MM-DD') AS todate1,
    TO_DATE('20230320', 'YYYY-MM-DD')   AS todate2
FROM
    dual;
    
<<<<<<< HEAD
-- ORA-01722: ¼öÄ¡°¡ ºÎÀûÇÕÇÕ´Ï´Ù    
=======
-- ORA-01722: ìˆ˜ì¹˜ê°€ ë¶€ì í•©í•©ë‹ˆë‹¤    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
--SELECT '2023-03-21' - '2023-02-01'
--FROM dual;

SELECT
    TO_DATE('2023-03-21') - TO_DATE('2023-02-01')
FROM
    dual;    
    

<<<<<<< HEAD
-- ³ÎÃ³¸® ÇÔ¼ö
-- NULL + 300 => NULL

-- NVL(µ¥ÀÌÅÍ, ³ÎÀÏ °æ¿ì ¹ÝÈ¯ÇÒ µ¥ÀÌÅÍ) 
=======
-- ë„ì²˜ë¦¬ í•¨ìˆ˜
-- NULL + 300 => NULL

-- NVL(ë°ì´í„°, ë„ì¼ ê²½ìš° ë°˜í™˜í•  ë°ì´í„°) 
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    sal,
    comm,
    sal + comm,
    nvl(comm, 0),
    sal + nvl(comm, 0)
FROM
    emp;

<<<<<<< HEAD
-- NVL2(µ¥ÀÌÅÍ,³ÎÀÌ ¾Æ´Ò°æ¿ì ¹ÝÈ¯ÇÒ µ¥ÀÌÅÍ,³ÎÀÏ °æ¿ì ¹ÝÈ¯ÇÒ µ¥ÀÌÅÍ)
=======
-- NVL2(ë°ì´í„°,ë„ì´ ì•„ë‹ê²½ìš° ë°˜í™˜í•  ë°ì´í„°,ë„ì¼ ê²½ìš° ë°˜í™˜í•  ë°ì´í„°)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    comm,
    nvl2(comm, 'O', 'X'),
    nvl2(comm, sal * 12 + comm, sal * 12) AS annsal
FROM
    emp;
    
<<<<<<< HEAD
-- DECODEÇÔ¼ö / CASE ¹®

-- DECODE(°Ë»ç ´ë»óÀÌ µÉ µ¥ÀÌÅÍ, 
--        Á¶°Ç1, Á¶°Ç1ÀÌ ÀÏÄ¡ÇÒ¶§ ½ÇÇàÇÒ ±¸¹®
--        Á¶°Ç2, Á¶°Ç2ÀÌ ÀÏÄ¡ÇÒ¶§ ½ÇÇàÇÒ ±¸¹®)
    
-- emp Å×ÀÌºí¿¡ Á÷Ã¥ÀÌ MANAGER ÀÎ »ç¶÷Àº ±Þ¿©ÀÇ 10% ÀÎ»ó, 
-- SALESMAN ÀÎ »ç¶÷Àº 5%, ANALYST ÀÎ »ç¶÷Àº ±×´ë·Î, ³ª¸ÓÁö´Â 3% ÀÎ»óµÈ ±Þ¿© Ãâ·Â
=======
-- DECODEí•¨ìˆ˜ / CASE ë¬¸

-- DECODE(ê²€ì‚¬ ëŒ€ìƒì´ ë  ë°ì´í„°, 
--        ì¡°ê±´1, ì¡°ê±´1ì´ ì¼ì¹˜í• ë•Œ ì‹¤í–‰í•  êµ¬ë¬¸
--        ì¡°ê±´2, ì¡°ê±´2ì´ ì¼ì¹˜í• ë•Œ ì‹¤í–‰í•  êµ¬ë¬¸)
    
-- emp í…Œì´ë¸”ì— ì§ì±…ì´ MANAGER ì¸ ì‚¬ëžŒì€ ê¸‰ì—¬ì˜ 10% ì¸ìƒ, 
-- SALESMAN ì¸ ì‚¬ëžŒì€ 5%, ANALYST ì¸ ì‚¬ëžŒì€ ê·¸ëŒ€ë¡œ, ë‚˜ë¨¸ì§€ëŠ” 3% ì¸ìƒëœ ê¸‰ì—¬ ì¶œë ¥
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    empno,
    ename,
    job,
    sal,
    decode(job, 'MANAGER', sal * 1.1, 'SALESMAN', sal * 1.05,
           'ANALYST', sal, sal * 1.03) AS upsal
FROM
    emp;

SELECT
    empno,
    ename,
    job,
    sal,
    CASE job
        WHEN 'MANAGER'  THEN
            sal * 1.1
        WHEN 'SALESMAN' THEN
            sal * 1.05
        WHEN 'ANALYST'  THEN
            sal
        ELSE
            sal * 1.03
    END AS upsal
FROM
    emp;

SELECT
    empno,
    ename,
    job,
    sal,
    CASE
        WHEN comm IS NULL THEN
<<<<<<< HEAD
            'ÇØ´ç»çÇ× ¾øÀ½'
        WHEN comm = 0 THEN
            '¼ö´ç¾øÀ½'
        WHEN comm > 0 THEN
            '¼ö´ç : ' || comm
=======
            'í•´ë‹¹ì‚¬í•­ ì—†ìŒ'
        WHEN comm = 0 THEN
            'ìˆ˜ë‹¹ì—†ìŒ'
        WHEN comm > 0 THEN
            'ìˆ˜ë‹¹ : ' || comm
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    END AS comm_text
FROM
    emp;
    
<<<<<<< HEAD
-- EMP Å×ÀÌºí¿¡¼­ »ç¿øµéÀÇ ¿ù Æò±Õ ±Ù¹«ÀÏ¼ö´Â 21.5ÀÏÀÌ´Ù. 
-- ÇÏ·ç ±Ù¹« ½Ã°£À» 8½Ã°£À¸·Î º¸¾ÒÀ» ¶§ »ç¿øµéÀÇ 
-- ÇÏ·ç ±Þ¿©(DAY_PAY)¿Í ½Ã±Þ(TIME_PAY)¸¦ °è»êÇÏ¿© 
-- °á°ú¸¦ Ãâ·ÂÇÑ´Ù. ´Ü, ÇÏ·ç ±Þ¿©´Â ¼Ò¼öÁ¡ ¼ÂÂ° ÀÚ¸®¿¡¼­
-- ¹ö¸®°í, ½Ã±ÞÀº µÎ ¹øÂ° ¼Ò¼öÁ¡¿¡¼­ ¹Ý¿Ã¸²ÇÏ½Ã¿À.
=======
-- EMP í…Œì´ë¸”ì—ì„œ ì‚¬ì›ë“¤ì˜ ì›” í‰ê·  ê·¼ë¬´ì¼ìˆ˜ëŠ” 21.5ì¼ì´ë‹¤. 
-- í•˜ë£¨ ê·¼ë¬´ ì‹œê°„ì„ 8ì‹œê°„ìœ¼ë¡œ ë³´ì•˜ì„ ë•Œ ì‚¬ì›ë“¤ì˜ 
-- í•˜ë£¨ ê¸‰ì—¬(DAY_PAY)ì™€ ì‹œê¸‰(TIME_PAY)ë¥¼ ê³„ì‚°í•˜ì—¬ 
-- ê²°ê³¼ë¥¼ ì¶œë ¥í•œë‹¤. ë‹¨, í•˜ë£¨ ê¸‰ì—¬ëŠ” ì†Œìˆ˜ì  ì…‹ì§¸ ìžë¦¬ì—ì„œ
-- ë²„ë¦¬ê³ , ì‹œê¸‰ì€ ë‘ ë²ˆì§¸ ì†Œìˆ˜ì ì—ì„œ ë°˜ì˜¬ë¦¼í•˜ì‹œì˜¤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename                    sal,
    trunc(sal / 21.5, 2)     AS day_pay,
    round(sal / 21.5 / 8, 1) AS time_pay
FROM
    emp;
    
<<<<<<< HEAD
-- EMP Å×ÀÌºí¿¡¼­ »ç¿øµéÀº ÀÔ»çÀÏ(HIREDATE)À» ±âÁØÀ¸·Î 
-- 3°³¿ùÀÌ Áö³­ ÈÄ Ã¹ ¿ù¿äÀÏ¿¡ Á¤Á÷¿øÀÌ µÈ´Ù. »ç¿øµéÀÌ 
-- Á¤Á÷¿øÀÌ µÇ´Â ³¯Â¥(R_JOB)¸¦ YYYY-MM-DD Çü½ÄÀ¸·Î ¾Æ·¡¿Í 
-- °°ÀÌ Ãâ·ÂÇÏ½Ã¿À. ´Ü, Ãß°¡¼ö´ç(COMM)ÀÌ ¾ø´Â »ç¿øÀÇ Ãß°¡ ¼ö´çÀº N/A·Î Ãâ·ÂÇÏ½Ã¿À.
=======
-- EMP í…Œì´ë¸”ì—ì„œ ì‚¬ì›ë“¤ì€ ìž…ì‚¬ì¼(HIREDATE)ì„ ê¸°ì¤€ìœ¼ë¡œ 
-- 3ê°œì›”ì´ ì§€ë‚œ í›„ ì²« ì›”ìš”ì¼ì— ì •ì§ì›ì´ ëœë‹¤. ì‚¬ì›ë“¤ì´ 
-- ì •ì§ì›ì´ ë˜ëŠ” ë‚ ì§œ(R_JOB)ë¥¼ YYYY-MM-DD í˜•ì‹ìœ¼ë¡œ ì•„ëž˜ì™€ 
-- ê°™ì´ ì¶œë ¥í•˜ì‹œì˜¤. ë‹¨, ì¶”ê°€ìˆ˜ë‹¹(COMM)ì´ ì—†ëŠ” ì‚¬ì›ì˜ ì¶”ê°€ ìˆ˜ë‹¹ì€ N/Aë¡œ ì¶œë ¥í•˜ì‹œì˜¤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    comm,
    nvl(to_char(comm),
<<<<<<< HEAD
        'N/A')  -- ORA-01722: ¼öÄ¡°¡ ºÎÀûÇÕÇÕ´Ï´Ù
=======
        'N/A')  -- ORA-01722: ìˆ˜ì¹˜ê°€ ë¶€ì í•©í•©ë‹ˆë‹¤
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
FROM
    emp;

SELECT
    empno,
    ename,
    hiredate,
    next_day(add_months(hiredate, 3),
<<<<<<< HEAD
             '¿ù¿äÀÏ') AS r_job,
=======
             'ì›”ìš”ì¼') AS r_job,
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    nvl(to_char(comm),
        'N/A')      AS comm
FROM
    emp;

SELECT
    empno,
    ename,
    hiredate,
    next_day(add_months(hiredate, 3),
<<<<<<< HEAD
             '¿ù¿äÀÏ') AS r_job,
=======
             'ì›”ìš”ì¼') AS r_job,
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    nvl2(comm,
         to_char(comm),
         'N/A')     AS comm
FROM
    emp;
    
<<<<<<< HEAD
--EMP Å×ÀÌºíÀÇ ¸ðµç »ç¿øÀ» ´ë»óÀ¸·Î Á÷¼Ó »ó°üÀÇ »ç¿ø ¹øÈ£(MGR)¸¦ 
--´ÙÀ½°ú °°Àº Á¶°ÇÀ» ±âÁØÀ¸·Î º¯È¯ÇØ¼­ CHG_MGR ¿­¿¡ Ãâ·ÂÇÏ½Ã¿À.
--
--Á÷¼Ó»ó°üÀÇ »ç¿ø ¹øÈ£°¡ Á¸ÀçÇÏÁö ¾ÊÀ» °æ¿ì : 0000
--Á÷¼Ó»ó°üÀÇ »ç¿ø ¹øÈ£ ¾Õ µÎÀÚ¸®°¡ 75ÀÏ °æ¿ì : 5555
--Á÷¼Ó»ó°üÀÇ »ç¿ø ¹øÈ£ ¾Õ µÎÀÚ¸®°¡ 76ÀÏ °æ¿ì : 6666
--Á÷¼Ó»ó°üÀÇ »ç¿ø ¹øÈ£ ¾Õ µÎÀÚ¸®°¡ 77ÀÏ °æ¿ì : 7777
--Á÷¼Ó»ó°üÀÇ »ç¿ø ¹øÈ£ ¾Õ µÎÀÚ¸®°¡ 78ÀÏ °æ¿ì : 8888
--±× ¿Ü Á÷¼Ó »ó°ü »ç¿ø ¹øÈ£ÀÇ °æ¿ì : º»·¡ Á÷¼Ó »ó°üÀÇ »ç¿ø¹øÈ£ ±×´ë·Î Ãâ·Â
=======
--EMP í…Œì´ë¸”ì˜ ëª¨ë“  ì‚¬ì›ì„ ëŒ€ìƒìœ¼ë¡œ ì§ì† ìƒê´€ì˜ ì‚¬ì› ë²ˆí˜¸(MGR)ë¥¼ 
--ë‹¤ìŒê³¼ ê°™ì€ ì¡°ê±´ì„ ê¸°ì¤€ìœ¼ë¡œ ë³€í™˜í•´ì„œ CHG_MGR ì—´ì— ì¶œë ¥í•˜ì‹œì˜¤.
--
--ì§ì†ìƒê´€ì˜ ì‚¬ì› ë²ˆí˜¸ê°€ ì¡´ìž¬í•˜ì§€ ì•Šì„ ê²½ìš° : 0000
--ì§ì†ìƒê´€ì˜ ì‚¬ì› ë²ˆí˜¸ ì•ž ë‘ìžë¦¬ê°€ 75ì¼ ê²½ìš° : 5555
--ì§ì†ìƒê´€ì˜ ì‚¬ì› ë²ˆí˜¸ ì•ž ë‘ìžë¦¬ê°€ 76ì¼ ê²½ìš° : 6666
--ì§ì†ìƒê´€ì˜ ì‚¬ì› ë²ˆí˜¸ ì•ž ë‘ìžë¦¬ê°€ 77ì¼ ê²½ìš° : 7777
--ì§ì†ìƒê´€ì˜ ì‚¬ì› ë²ˆí˜¸ ì•ž ë‘ìžë¦¬ê°€ 78ì¼ ê²½ìš° : 8888
--ê·¸ ì™¸ ì§ì† ìƒê´€ ì‚¬ì› ë²ˆí˜¸ì˜ ê²½ìš° : ë³¸ëž˜ ì§ì† ìƒê´€ì˜ ì‚¬ì›ë²ˆí˜¸ ê·¸ëŒ€ë¡œ ì¶œë ¥
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b


SELECT
    empno,
    ename,
    mgr,
    decode(substr(to_char(mgr),
                  1,
                  2),
           NULL,
           '0000',
           '75',
           '5555',
           '76',
           '6666',
           '77',
           '7777',
           '78',
           '8888',
           substr(to_char(mgr),
                  1)) AS chg_mgr
FROM
    emp;

SELECT
    empno,
    ename,
    mgr,
    CASE
        WHEN mgr IS NULL THEN
            '0000'
        WHEN substr(to_char(mgr),
                    1,
                    2) = '75' THEN
            '5555'
        WHEN substr(to_char(mgr),
                    1,
                    2) = '76' THEN
            '6666'
        WHEN substr(to_char(mgr),
                    1,
                    2) = '77' THEN
            '7777'
        WHEN substr(to_char(mgr),
                    1,
                    2) = '78' THEN
            '8888'
        ELSE
            to_char(mgr)
    END AS chg_mgr
FROM
    emp;
    
<<<<<<< HEAD
-- ´ÙÁßÇà(Áý°è) ÇÔ¼ö : sum, count, max, min, avg

-- ORA-00937: ´ÜÀÏ ±×·ìÀÇ ±×·ì ÇÔ¼ö°¡ ¾Æ´Õ´Ï´Ù
=======
-- ë‹¤ì¤‘í–‰(ì§‘ê³„) í•¨ìˆ˜ : sum, count, max, min, avg

-- ORA-00937: ë‹¨ì¼ ê·¸ë£¹ì˜ ê·¸ë£¹ í•¨ìˆ˜ê°€ ì•„ë‹™ë‹ˆë‹¤
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
--SELECT
--    ename,
--    SUM(sal)
--FROM
--    emp;

SELECT
    SUM(sal)
FROM
    emp;

SELECT
    SUM(DISTINCT sal),
    SUM(ALL sal),
    SUM(sal)
FROM
    emp;

<<<<<<< HEAD
-- sum() : NULL Àº Á¦¿ÜÇÏ°í ÇÕ°è ±¸ÇØÁÜ     
=======
-- sum() : NULL ì€ ì œì™¸í•˜ê³  í•©ê³„ êµ¬í•´ì¤Œ     
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    SUM(comm)
FROM
    emp;

SELECT
    COUNT(sal)
FROM
    emp;

SELECT
    COUNT(comm)
FROM
    emp;

SELECT
    COUNT(*)
FROM
    emp;

SELECT
    COUNT(*)
FROM
    emp
WHERE
    deptno = 30;

SELECT
    MAX(sal)
FROM
    emp;

<<<<<<< HEAD
-- ºÎ¼­¹øÈ£°¡ 20ÀÎ »ç¿øÀÇ ÀÔ»çÀÏ Áß Á¦ÀÏ ÃÖ±Ù ÀÔ»çÀÏ
=======
-- ë¶€ì„œë²ˆí˜¸ê°€ 20ì¸ ì‚¬ì›ì˜ ìž…ì‚¬ì¼ ì¤‘ ì œì¼ ìµœê·¼ ìž…ì‚¬ì¼
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    MAX(hiredate)
FROM
    emp
WHERE
    deptno = 20;

<<<<<<< HEAD
-- ºÎ¼­¹øÈ£°¡ 20ÀÎ »ç¿øÀÇ ÀÔ»çÀÏ Áß Á¦ÀÏ ¿À·¡µÈ ÀÔ»çÀÏ
=======
-- ë¶€ì„œë²ˆí˜¸ê°€ 20ì¸ ì‚¬ì›ì˜ ìž…ì‚¬ì¼ ì¤‘ ì œì¼ ì˜¤ëž˜ëœ ìž…ì‚¬ì¼
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    MIN(hiredate)
FROM
    emp
WHERE
    deptno = 20;

SELECT
    AVG(sal)
FROM
    emp;

SELECT
    AVG(sal)
FROM
    emp
WHERE
    deptno = 30;

<<<<<<< HEAD
-- group by : °á°ú °ªÀ» ¿øÇÏ´Â ¿­·Î ¹­¾î Ãâ·Â

-- ºÎ¼­º° sal Æò±Õ ±¸ÇÏ±â
=======
-- group by : ê²°ê³¼ ê°’ì„ ì›í•˜ëŠ” ì—´ë¡œ ë¬¶ì–´ ì¶œë ¥

-- ë¶€ì„œë³„ sal í‰ê·  êµ¬í•˜ê¸°
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    AVG(sal)
FROM
    emp
WHERE
    deptno = 10;

SELECT
    AVG(sal)
FROM
    emp
WHERE
    deptno = 20;

SELECT
    AVG(sal)
FROM
    emp
WHERE
    deptno = 30;

SELECT
    AVG(sal),
    deptno
FROM
    emp
GROUP BY
    deptno;
    
<<<<<<< HEAD
-- ºÎ¼­º° Ãß°¡¼ö´ç Æò±Õ ±¸ÇÏ±â
=======
-- ë¶€ì„œë³„ ì¶”ê°€ìˆ˜ë‹¹ í‰ê·  êµ¬í•˜ê¸°
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    deptno,
    AVG(comm)
FROM
    emp
GROUP BY
    deptno;
    
    
<<<<<<< HEAD
-- GROUP BY Ç¥Çö½ÄÀÌ ¾Æ´Õ´Ï´Ù.
=======
-- GROUP BY í‘œí˜„ì‹ì´ ì•„ë‹™ë‹ˆë‹¤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
--SELECT
--    AVG(sal),
--    deptno,
--    ename
--FROM
--    emp
--GROUP BY
--    deptno;
    
<<<<<<< HEAD
-- GROUP BY + HAVING : group by Àý¿¡ Á¶°ÇÀ» ÁÙ ¶§
-- HAVING : ±×·ìÈ­µÈ ´ë»óÀ» Ãâ·Â Á¦ÇÑ °É¶§

-- °¢ ºÎ¼­ÀÇ Á÷Ã¥º° Æò±Õ ±Þ¿© ±¸ÇÏ±â(´Ü, Æò±Õ ±Þ¿©°¡ 2000 ÀÌ»óÀÎ ±×·ì¸¸ Ãâ·Â)
-- deptno, job, Æò±Õ
=======
-- GROUP BY + HAVING : group by ì ˆì— ì¡°ê±´ì„ ì¤„ ë•Œ
-- HAVING : ê·¸ë£¹í™”ëœ ëŒ€ìƒì„ ì¶œë ¥ ì œí•œ ê±¸ë•Œ

-- ê° ë¶€ì„œì˜ ì§ì±…ë³„ í‰ê·  ê¸‰ì—¬ êµ¬í•˜ê¸°(ë‹¨, í‰ê·  ê¸‰ì—¬ê°€ 2000 ì´ìƒì¸ ê·¸ë£¹ë§Œ ì¶œë ¥)
-- deptno, job, í‰ê· 
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    deptno,
    job,
    AVG(sal)
FROM
    emp
GROUP BY
    deptno,
    job
HAVING
    AVG(sal) >= 2000
ORDER BY
    deptno,
    job;
    
<<<<<<< HEAD
-- ±×·ì ÇÔ¼ö´Â Çã°¡µÇÁö ¾Ê½À´Ï´Ù    
=======
-- ê·¸ë£¹ í•¨ìˆ˜ëŠ” í—ˆê°€ë˜ì§€ ì•ŠìŠµë‹ˆë‹¤    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
--SELECT
--    deptno,
--    job,
--    AVG(sal)
--FROM
--    emp  
--WHERE
--    AVG(sal) >= 2000
--GROUP BY
--    deptno,
--    job   
--ORDER BY
--    deptno,
--    job;    

<<<<<<< HEAD
-- select ½ÇÇà ¼ø¼­    
-- 1) from ±¸¹® ½ÇÇà  2) where ½ÇÇà  3) group by 4) having 5) select 6) order by
=======
-- select ì‹¤í–‰ ìˆœì„œ    
-- 1) from êµ¬ë¬¸ ì‹¤í–‰  2) where ì‹¤í–‰  3) group by 4) having 5) select 6) order by
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    deptno,
    job,
    AVG(sal)
FROM
    emp
WHERE
    sal <= 3000
GROUP BY
    deptno,
    job
HAVING
    AVG(sal) >= 2000
ORDER BY
    deptno,
    job;




<<<<<<< HEAD
-- EMP Å×ÀÌºíÀ» ÀÌ¿ëÇÏ¿© ºÎ¼­¹øÈ£(DEPTNO), Æò±Õ±Þ¿©(AVG_SAL), 
-- ÃÖ°í±Þ¿©(MAX_SAL), ÃÖÀú±Þ¿©(MIN_SAL), »ç¿ø¼ö(CNT)¸¦ Ãâ·ÂÇÑ´Ù. 
-- ´Ü, Æò±Õ ±Þ¿©¸¦ Ãâ·ÂÇÒ ¶§ ¼Ò¼öÁ¡À» Á¦¿ÜÇÏ°í °¢ ºÎ¼­¹øÈ£º°·Î Ãâ·ÂÇÏ´Â SQL ¹®À» ÀÛ¼ºÇÏ½Ã¿À.
=======
-- EMP í…Œì´ë¸”ì„ ì´ìš©í•˜ì—¬ ë¶€ì„œë²ˆí˜¸(DEPTNO), í‰ê· ê¸‰ì—¬(AVG_SAL), 
-- ìµœê³ ê¸‰ì—¬(MAX_SAL), ìµœì €ê¸‰ì—¬(MIN_SAL), ì‚¬ì›ìˆ˜(CNT)ë¥¼ ì¶œë ¥í•œë‹¤. 
-- ë‹¨, í‰ê·  ê¸‰ì—¬ë¥¼ ì¶œë ¥í•  ë•Œ ì†Œìˆ˜ì ì„ ì œì™¸í•˜ê³  ê° ë¶€ì„œë²ˆí˜¸ë³„ë¡œ ì¶œë ¥í•˜ëŠ” SQL ë¬¸ì„ ìž‘ì„±í•˜ì‹œì˜¤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    deptno,
    floor(AVG(sal)) AS avg_sal,
    MAX(sal)        AS max_sal,
    MIN(sal)        AS min_sal,
    COUNT(*)        AS cnt
FROM
    emp
GROUP BY
    deptno;


<<<<<<< HEAD
-- °°Àº Á÷Ã¥¿¡ Á¾»çÇÏ´Â »ç¿øÀÌ 3¸í ÀÌ»óÀÎ Á÷Ã¥°ú ÀÎ¿ø¼ö¸¦ Ãâ·Â
=======
-- ê°™ì€ ì§ì±…ì— ì¢…ì‚¬í•˜ëŠ” ì‚¬ì›ì´ 3ëª… ì´ìƒì¸ ì§ì±…ê³¼ ì¸ì›ìˆ˜ë¥¼ ì¶œë ¥
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    job,
    COUNT(*)
FROM
    emp
GROUP BY
    job
HAVING
    COUNT(job) >= 3;

<<<<<<< HEAD
-- »ç¿øµéÀÇ ÀÔ»ç¿¬µµ(HIRE_YEAR)¸¦ ±âÁØÀ¸·Î ºÎ¼­º°·Î ¸î ¸íÀÌ ÀÔ»çÇß´ÂÁö Ãâ·Â
=======
-- ì‚¬ì›ë“¤ì˜ ìž…ì‚¬ì—°ë„(HIRE_YEAR)ë¥¼ ê¸°ì¤€ìœ¼ë¡œ ë¶€ì„œë³„ë¡œ ëª‡ ëª…ì´ ìž…ì‚¬í–ˆëŠ”ì§€ ì¶œë ¥
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    to_char(hiredate, 'YYYY') AS hire_year,
    deptno,
    COUNT(*)                  AS cnt
FROM
    emp
GROUP BY
    to_char(hiredate, 'YYYY'),
    deptno;

<<<<<<< HEAD
-- Á¶ÀÎ : ¿©·¯ Å×ÀÌºíÀ» ÇÏ³ªÀÇ Å×ÀÌºíÃ³·³ »ç¿ë
-- 1) ³»ºÎÁ¶ÀÎ(inner join) : ¿©·¯ °³ÀÇ Å×ÀÌºí¿¡¼­ °øÅëµÈ ºÎºÐ¸¸ ÃßÃâ
--    ¨ç µî°¡Á¶ÀÎ : µÎ °³ÀÇ ¿­ÀÌ ÀÏÄ¡ÇÒ ¶§ °ª ÃßÃâ
--    ¨è ºñµî°¡Á¶ÀÎ : ¹üÀ§¿¡ ÇØ´çÇÒ ¶§ °ª ÃßÃâ

-- 2) ¿ÜºÎÁ¶ÀÎ(outer join)
--    ¨ç left outer join
--    ¨è right outer join
--    ¨é full outer join

-- dept : 4 Çà, emp : 12 Çà ==> 4*12 = 48Çà
-- Å©·Î½º Á¶ÀÎ(³ª¿Ã ¼ö ÀÖ´Â ¸ðµç Á¶ÇÕ ÃßÃâ)
=======
-- ì¡°ì¸ : ì—¬ëŸ¬ í…Œì´ë¸”ì„ í•˜ë‚˜ì˜ í…Œì´ë¸”ì²˜ëŸ¼ ì‚¬ìš©
-- 1) ë‚´ë¶€ì¡°ì¸(inner join) : ì—¬ëŸ¬ ê°œì˜ í…Œì´ë¸”ì—ì„œ ê³µí†µëœ ë¶€ë¶„ë§Œ ì¶”ì¶œ
--    â‘  ë“±ê°€ì¡°ì¸ : ë‘ ê°œì˜ ì—´ì´ ì¼ì¹˜í•  ë•Œ ê°’ ì¶”ì¶œ
--    â‘¡ ë¹„ë“±ê°€ì¡°ì¸ : ë²”ìœ„ì— í•´ë‹¹í•  ë•Œ ê°’ ì¶”ì¶œ

-- 2) ì™¸ë¶€ì¡°ì¸(outer join)
--    â‘  left outer join
--    â‘¡ right outer join
--    â‘¢ full outer join

-- dept : 4 í–‰, emp : 12 í–‰ ==> 4*12 = 48í–‰
-- í¬ë¡œìŠ¤ ì¡°ì¸(ë‚˜ì˜¬ ìˆ˜ ìžˆëŠ” ëª¨ë“  ì¡°í•© ì¶”ì¶œ)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp,
    dept
ORDER BY
    empno;


<<<<<<< HEAD
-- ORA-00918: ¿­ÀÇ Á¤ÀÇ°¡ ¾Ö¸ÅÇÕ´Ï´Ù( column ambiguously defined )
=======
-- ORA-00918: ì—´ì˜ ì •ì˜ê°€ ì• ë§¤í•©ë‹ˆë‹¤( column ambiguously defined )
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

-- inner join
SELECT
    e.empno,
    e.ename,
    d.deptno,
    d.dname,
    d.loc
FROM
    emp  e,
    dept d
WHERE
    e.deptno = d.deptno;

<<<<<<< HEAD
-- SQL-99 Ç¥ÁØ
=======
-- SQL-99 í‘œì¤€
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- join ~ on

SELECT
    e.empno,
    e.ename,
    d.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno;

SELECT
    e.empno,
    e.ename,
    d.deptno,
    d.dname,
    d.loc
FROM
    emp  e,
    dept d
WHERE
        e.deptno = d.deptno
    AND sal >= 3000;

<<<<<<< HEAD
-- SQL-99 Ç¥ÁØ
=======
-- SQL-99 í‘œì¤€
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- join ~ on

SELECT
    e.empno,
    e.ename,
    d.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
WHERE
    sal >= 3000;


<<<<<<< HEAD
-- emp, dept inner join, ±Þ¿©°¡ 2500 ÀÌÇÏÀÌ°í, »ç¿ø¹øÈ£°¡ 9999 ÀÌÇÏÀÎ »ç¿ø Á¤º¸ Á¶È¸
=======
-- emp, dept inner join, ê¸‰ì—¬ê°€ 2500 ì´í•˜ì´ê³ , ì‚¬ì›ë²ˆí˜¸ê°€ 9999 ì´í•˜ì¸ ì‚¬ì› ì •ë³´ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    e.empno,
    e.ename,
    e.sal,
    d.deptno,
    d.dname,
    d.loc
FROM
    emp  e,
    dept d
WHERE
        e.deptno = d.deptno
    AND e.sal <= 2500
    AND e.empno <= 9999;


<<<<<<< HEAD
-- SQL-99 Ç¥ÁØ
=======
-- SQL-99 í‘œì¤€
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- join ~ on
SELECT
    e.empno,
    e.ename,
    e.sal,
    d.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
WHERE
        e.sal <= 2500
    AND e.empno <= 9999;



<<<<<<< HEAD
-- emp¿Í salgrade Á¶ÀÎ
-- emp Å×ÀÌºíÀÇ sal ÀÌ salgrade Å×ÀÌºíÀÇ losal °ú hisal ¹üÀ§¿¡ µé¾î°¡´Â ÇüÅÂ·Î Á¶ÀÎ
=======
-- empì™€ salgrade ì¡°ì¸
-- emp í…Œì´ë¸”ì˜ sal ì´ salgrade í…Œì´ë¸”ì˜ losal ê³¼ hisal ë²”ìœ„ì— ë“¤ì–´ê°€ëŠ” í˜•íƒœë¡œ ì¡°ì¸
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp      e,
    salgrade s
WHERE
    e.sal BETWEEN s.losal AND s.hisal;


<<<<<<< HEAD
-- SQL-99 Ç¥ÁØ
=======
-- SQL-99 í‘œì¤€
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- join ~ on

SELECT
    *
FROM
         emp e
    JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal;



<<<<<<< HEAD
-- self join : ÀÚ±â ÀÚ½Å Å×ÀÌºí°ú Á¶ÀÎ
=======
-- self join : ìžê¸° ìžì‹  í…Œì´ë¸”ê³¼ ì¡°ì¸
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    e1.empno,
    e1.ename,
    e1.mgr,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    emp e1,
    emp e2
WHERE
    e1.mgr = e2.empno;


-- outer join

-- 1) left outer join
SELECT
    e1.empno,
    e1.ename,
    e1.mgr,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    emp e1,
    emp e2
WHERE
    e1.mgr = e2.empno (+);
    

<<<<<<< HEAD
-- SQL-99 Ç¥ÁØ
=======
-- SQL-99 í‘œì¤€
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- join ~ on    

SELECT
    e1.empno,
    e1.ename,
    e1.mgr,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    emp e1
    LEFT OUTER JOIN emp e2 ON e1.mgr = e2.empno;    
    

-- 2) right outer join
SELECT
    e1.empno,
    e1.ename,
    e1.mgr,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    emp e1,
    emp e2
WHERE
    e1.mgr (+) = e2.empno;
    
    
<<<<<<< HEAD
-- SQL-99 Ç¥ÁØ
=======
-- SQL-99 í‘œì¤€
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- join ~ on    

SELECT
    e1.empno,
    e1.ename,
    e1.mgr,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    emp e1
    RIGHT OUTER JOIN emp e2 ON e1.mgr = e2.empno; 

<<<<<<< HEAD
-- outer-joinµÈ Å×ÀÌºíÀº 1°³¸¸ ÁöÁ¤ÇÒ ¼ö ÀÖ½À´Ï´Ù
=======
-- outer-joinëœ í…Œì´ë¸”ì€ 1ê°œë§Œ ì§€ì •í•  ìˆ˜ ìžˆìŠµë‹ˆë‹¤
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- 01468. 00000 -  "a predicate may reference only one outer-joi
--SELECT e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename
--FROM emp e1, emp e2
--WHERE e1.mgr(+) = e2.empno(+);

<<<<<<< HEAD
-- SQL-99 Ç¥ÁØ
=======
-- SQL-99 í‘œì¤€
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- join ~ on    

SELECT
    e1.empno,
    e1.ename,
    e1.mgr,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    emp e1
    FULL OUTER JOIN emp e2 ON e1.mgr = e2.empno; 


<<<<<<< HEAD
-- ¿¬°áÇØ¾ß ÇÒ Å×ÀÌºíÀÌ ¼¼°³ÀÏ¶§
=======
-- ì—°ê²°í•´ì•¼ í•  í…Œì´ë¸”ì´ ì„¸ê°œì¼ë•Œ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

--SELECT *
--FROM table1 t1, table2 t2, table3 t3
--WHERE t1.empno = t2.empno AND t2.deptno = t3.deptno;
--
--
--SELECT *
--FROM table1 t1 join table2 t2 on t1.empno = t2.empno join table3 t3 on t2.deptno = t3.deptno;


<<<<<<< HEAD
-- ±Þ¿©°¡ 2000ÃÊ°úÀÎ »ç¿øµéÀÇ ºÎ¼­ Á¤º¸, »ç¿ø Á¤º¸¸¦ ¾Æ·¡¿Í °°ÀÌ Ãâ·ÂÇÏ´Â SQL ¹®À» ÀÛ¼ºÇÏ½Ã¿À.
=======
-- ê¸‰ì—¬ê°€ 2000ì´ˆê³¼ì¸ ì‚¬ì›ë“¤ì˜ ë¶€ì„œ ì •ë³´, ì‚¬ì› ì •ë³´ë¥¼ ì•„ëž˜ì™€ ê°™ì´ ì¶œë ¥í•˜ëŠ” SQL ë¬¸ì„ ìž‘ì„±í•˜ì‹œì˜¤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    d.deptno,
    d.dname,
    e.empno,
    e.ename,
    e.sal
FROM
    emp  e,
    dept d
WHERE
        e.deptno = d.deptno
    AND e.sal > 2000;

SELECT
    d.deptno,
    d.dname,
    e.empno,
    e.ename,
    e.sal
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
WHERE
    e.sal > 2000;
    
<<<<<<< HEAD
-- °¢ ºÎ¼­º° Æò±Õ ±Þ¿©, ÃÖ´ë ±Þ¿©, ÃÖ¼Ò ±Þ¿©, »ç¿ø¼ö¸¦ Ãâ·ÂÇÏ´Â SQL¹®À» ÀÛ¼ºÇÏ½Ã¿À.
=======
-- ê° ë¶€ì„œë³„ í‰ê·  ê¸‰ì—¬, ìµœëŒ€ ê¸‰ì—¬, ìµœì†Œ ê¸‰ì—¬, ì‚¬ì›ìˆ˜ë¥¼ ì¶œë ¥í•˜ëŠ” SQLë¬¸ì„ ìž‘ì„±í•˜ì‹œì˜¤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    d.deptno,
    d.dname,
    floor(AVG(sal)) AS avg_sal,
    MAX(sal)        AS max_sal,
    MIN(sal)        AS min_sal,
    COUNT(*)        AS cnt
FROM
    emp  e,
    dept d
WHERE
    e.deptno = d.deptno
GROUP BY
    d.deptno,
    d.dname;

SELECT
    d.deptno,
    d.dname,
    floor(AVG(sal)) AS avg_sal,
    MAX(sal)        AS max_sal,
    MIN(sal)        AS min_sal,
    COUNT(*)        AS cnt
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
GROUP BY
    d.deptno,
    d.dname;

<<<<<<< HEAD
-- ¸ðµç ºÎ¼­Á¤º¸¿Í »ç¿ø Á¤º¸¸¦ ¾Æ·¡¿Í °°ÀÌ ºÎ¼­¹øÈ£, »ç¿øÀÌ¸§ ¼øÀ¸·Î Á¤·ÄÇÏ¿© Ãâ·ÂÇÏ´Â SQL¹®À» ÀÛ¼ºÇÏ½Ã¿À.
=======
-- ëª¨ë“  ë¶€ì„œì •ë³´ì™€ ì‚¬ì› ì •ë³´ë¥¼ ì•„ëž˜ì™€ ê°™ì´ ë¶€ì„œë²ˆí˜¸, ì‚¬ì›ì´ë¦„ ìˆœìœ¼ë¡œ ì •ë ¬í•˜ì—¬ ì¶œë ¥í•˜ëŠ” SQLë¬¸ì„ ìž‘ì„±í•˜ì‹œì˜¤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    d.deptno,
    d.dname,
    e.empno,
    e.ename,
    e.job,
    e.sal
FROM
    dept d,
    emp  e
WHERE
    d.deptno = e.deptno (+);

SELECT
    d.deptno,
    d.dname,
    e.empno,
    e.ename,
    e.job,
    e.sal
FROM
    dept d
    LEFT OUTER JOIN emp  e ON d.deptno = e.deptno;
    
<<<<<<< HEAD
-- ¼­ºêÄõ¸®
-- sql ¹®À» ½ÇÇàÇÏ´Â µ¥ ÇÊ¿äÇÑ µ¥ÀÌÅÍ¸¦ Ãß°¡·Î Á¶È¸ÇÏ±â À§ÇØ sql ¹® ³»ºÎ¿¡¼­ »ç¿ëÇÏ´Â select ¹®
-- 1) ´ÜÀÏÇà ¼­ºêÄõ¸® 2) ´ÙÁßÇà ¼­ºêÄõ¸® 3) ´ÙÁß¿­ ¼­ºêÄõ¸® 

--SELECT Á¶È¸ÇÒ ¿­
--FROM Å×ÀÌºí¸í
--WHERE Á¶°Ç½Ä(SELECT Á¶È¸ÇÒ ¿­ FROM Å×ÀÌºí WHERE Á¶°Ç½Ä)


-- Á¸½ºÀÇ ±Þ¿©º¸´Ù ³ôÀº ±Þ¿©¸¦ ¹Þ´Â »ç¿ø Á¶È¸
-- JONES ±Þ¿© ¾Ë¾Æ³»±â / ¾Ë¾Æ³½ JONES ±Þ¿©¸¦ °¡Áö°í Á¶°Ç½Ä
=======
-- ì„œë¸Œì¿¼ë¦¬
-- sql ë¬¸ì„ ì‹¤í–‰í•˜ëŠ” ë° í•„ìš”í•œ ë°ì´í„°ë¥¼ ì¶”ê°€ë¡œ ì¡°íšŒí•˜ê¸° ìœ„í•´ sql ë¬¸ ë‚´ë¶€ì—ì„œ ì‚¬ìš©í•˜ëŠ” select ë¬¸
-- 1) ë‹¨ì¼í–‰ ì„œë¸Œì¿¼ë¦¬ 2) ë‹¤ì¤‘í–‰ ì„œë¸Œì¿¼ë¦¬ 3) ë‹¤ì¤‘ì—´ ì„œë¸Œì¿¼ë¦¬ 

--SELECT ì¡°íšŒí•  ì—´
--FROM í…Œì´ë¸”ëª…
--WHERE ì¡°ê±´ì‹(SELECT ì¡°íšŒí•  ì—´ FROM í…Œì´ë¸” WHERE ì¡°ê±´ì‹)


-- ì¡´ìŠ¤ì˜ ê¸‰ì—¬ë³´ë‹¤ ë†’ì€ ê¸‰ì—¬ë¥¼ ë°›ëŠ” ì‚¬ì› ì¡°íšŒ
-- JONES ê¸‰ì—¬ ì•Œì•„ë‚´ê¸° / ì•Œì•„ë‚¸ JONES ê¸‰ì—¬ë¥¼ ê°€ì§€ê³  ì¡°ê±´ì‹
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    sal
FROM
    emp
WHERE
    ename = 'JONES';  -- 2975

SELECT
    *
FROM
    emp
WHERE
    sal > 2975;


<<<<<<< HEAD
-- ´ÜÀÏÇà ¼­ºêÄõ¸® : ¼­ºêÄõ¸® °á°ú·Î ÇÏ³ªÀÇ Çà ¹ÝÈ¯
-- =, >, <, >=, <=, <>, ^=, != ¿¬»êÀÚ Çã¿ë


-- Á¸½ºÀÇ ±Þ¿©º¸´Ù ³ôÀº ±Þ¿©¸¦ ¹Þ´Â »ç¿ø Á¶È¸(¼­ºêÄõ¸®)
=======
-- ë‹¨ì¼í–‰ ì„œë¸Œì¿¼ë¦¬ : ì„œë¸Œì¿¼ë¦¬ ê²°ê³¼ë¡œ í•˜ë‚˜ì˜ í–‰ ë°˜í™˜
-- =, >, <, >=, <=, <>, ^=, != ì—°ì‚°ìž í—ˆìš©


-- ì¡´ìŠ¤ì˜ ê¸‰ì—¬ë³´ë‹¤ ë†’ì€ ê¸‰ì—¬ë¥¼ ë°›ëŠ” ì‚¬ì› ì¡°íšŒ(ì„œë¸Œì¿¼ë¦¬)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal > (
        SELECT
            sal
        FROM
            emp
        WHERE
            ename = 'JONES'
    );
    
<<<<<<< HEAD
-- »ç¿øÀÌ¸§ÀÌ ALLEN ÀÎ »ç¿øÀÇ Ãß°¡¼ö´ç º¸´Ù ¸¹Àº Ãß°¡¼ö´çÀ» ¹Þ´Â »ç¿ø Á¶È¸
=======
-- ì‚¬ì›ì´ë¦„ì´ ALLEN ì¸ ì‚¬ì›ì˜ ì¶”ê°€ìˆ˜ë‹¹ ë³´ë‹¤ ë§Žì€ ì¶”ê°€ìˆ˜ë‹¹ì„ ë°›ëŠ” ì‚¬ì› ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    comm > (
        SELECT
            comm
        FROM
            emp
        WHERE
            ename = 'ALLEN'
    );
    
<<<<<<< HEAD
-- »ç¿øÀÌ¸§ÀÌ WARD ÀÎ »ç¿øÀÇ ÀÔ»çÀÏº¸´Ù »¡¸® ÀÔ»çÇÑ »ç¿ø Á¶È¸     
=======
-- ì‚¬ì›ì´ë¦„ì´ WARD ì¸ ì‚¬ì›ì˜ ìž…ì‚¬ì¼ë³´ë‹¤ ë¹¨ë¦¬ ìž…ì‚¬í•œ ì‚¬ì› ì¡°íšŒ     
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    hiredate < (
        SELECT
            hiredate
        FROM
            emp
        WHERE
            ename = 'WARD'
    );    
 
<<<<<<< HEAD
-- 20¹ø ºÎ¼­¿¡ ¼ÓÇÑ »ç¿ø Áß ÀüÃ¼ »ç¿øÀÇ Æò±Õ ±Þ¿©º¸´Ù ³ôÀº ±Þ¿©¸¦ ¹Þ´Â »ç¿øÁ¤º¸ ¹×
-- ºÎ¼­Á¤º¸ Á¶È¸
-- »ç¿ø¹øÈ£, »ç¿ø¸í, Á÷¹«, ±Þ¿©, ºÎ¼­¹øÈ£, ºÎ¼­¸í, Áö¿ª
=======
-- 20ë²ˆ ë¶€ì„œì— ì†í•œ ì‚¬ì› ì¤‘ ì „ì²´ ì‚¬ì›ì˜ í‰ê·  ê¸‰ì—¬ë³´ë‹¤ ë†’ì€ ê¸‰ì—¬ë¥¼ ë°›ëŠ” ì‚¬ì›ì •ë³´ ë°
-- ë¶€ì„œì •ë³´ ì¡°íšŒ
-- ì‚¬ì›ë²ˆí˜¸, ì‚¬ì›ëª…, ì§ë¬´, ê¸‰ì—¬, ë¶€ì„œë²ˆí˜¸, ë¶€ì„œëª…, ì§€ì—­
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    e.empno,
    e.ename,
    e.job,
    e.sal,
    d.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
WHERE
        e.deptno = 20
    AND e.sal > (
        SELECT
            AVG(sal)
        FROM
            emp
    );
 
<<<<<<< HEAD
-- 20¹ø ºÎ¼­¿¡ ¼ÓÇÑ »ç¿ø Áß ÀüÃ¼ »ç¿øÀÇ Æò±Õ ±Þ¿©º¸´Ù ÀÛ°Å³ª °°Àº ±Þ¿©¸¦ ¹Þ´Â »ç¿øÁ¤º¸ ¹×
-- ºÎ¼­Á¤º¸ Á¶È¸ 
=======
-- 20ë²ˆ ë¶€ì„œì— ì†í•œ ì‚¬ì› ì¤‘ ì „ì²´ ì‚¬ì›ì˜ í‰ê·  ê¸‰ì—¬ë³´ë‹¤ ìž‘ê±°ë‚˜ ê°™ì€ ê¸‰ì—¬ë¥¼ ë°›ëŠ” ì‚¬ì›ì •ë³´ ë°
-- ë¶€ì„œì •ë³´ ì¡°íšŒ 
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    e.empno,
    e.ename,
    e.job,
    e.sal,
    d.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
WHERE
        e.deptno = 20
    AND e.sal <= (
        SELECT
            AVG(sal)
        FROM
            emp
    ); 
 
    
<<<<<<< HEAD
-- ´ÙÁßÇà ¼­ºêÄõ¸® : ¼­ºêÄõ¸® °á°ú·Î ¿©·¯°³ÀÇ Çà ¹ÝÈ¯ 
-- IN, ANY(SOME), ALL, EXISTS ¿¬»êÀÚ Çã¿ë(´ÜÀÏÇà ¼­ºêÄõ¸®¿¡ ¾²´Â ¿¬»êÀÚ »ç¿ë ºÒ°¡)

-- °¢ ºÎ¼­º° ÃÖ°í ±Þ¿©¿Í µ¿ÀÏÇÑ ±Þ¿©¸¦ ¹Þ´Â »ç¿øÁ¤º¸ Á¶È¸

-- °¢ ºÎ¼­º° ÃÖ°í ±Þ¿©
=======
-- ë‹¤ì¤‘í–‰ ì„œë¸Œì¿¼ë¦¬ : ì„œë¸Œì¿¼ë¦¬ ê²°ê³¼ë¡œ ì—¬ëŸ¬ê°œì˜ í–‰ ë°˜í™˜ 
-- IN, ANY(SOME), ALL, EXISTS ì—°ì‚°ìž í—ˆìš©(ë‹¨ì¼í–‰ ì„œë¸Œì¿¼ë¦¬ì— ì“°ëŠ” ì—°ì‚°ìž ì‚¬ìš© ë¶ˆê°€)

-- ê° ë¶€ì„œë³„ ìµœê³  ê¸‰ì—¬ì™€ ë™ì¼í•œ ê¸‰ì—¬ë¥¼ ë°›ëŠ” ì‚¬ì›ì •ë³´ ì¡°íšŒ

-- ê° ë¶€ì„œë³„ ìµœê³  ê¸‰ì—¬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    MAX(sal)
FROM
    emp
GROUP BY
    deptno;

<<<<<<< HEAD
-- ´ÜÀÏ Çà ÇÏÀ§ ÁúÀÇ¿¡ 2°³ ÀÌ»óÀÇ ÇàÀÌ ¸®ÅÏµÇ¾ú½À´Ï´Ù.    
-- SELECT * FROM emp WHERE sal = (SELECT MAX(sal) FROM emp GROUP BY deptno);    

-- IN : ¸ÞÀÎÄõ¸® °á°ú°¡ ¼­ºêÄõ¸® °á°ú Áß ÇÏ³ª¶óµµ ÀÏÄ¡ÇÏ¸é TRUE    
=======
-- ë‹¨ì¼ í–‰ í•˜ìœ„ ì§ˆì˜ì— 2ê°œ ì´ìƒì˜ í–‰ì´ ë¦¬í„´ë˜ì—ˆìŠµë‹ˆë‹¤.    
-- SELECT * FROM emp WHERE sal = (SELECT MAX(sal) FROM emp GROUP BY deptno);    

-- IN : ë©”ì¸ì¿¼ë¦¬ ê²°ê³¼ê°€ ì„œë¸Œì¿¼ë¦¬ ê²°ê³¼ ì¤‘ í•˜ë‚˜ë¼ë„ ì¼ì¹˜í•˜ë©´ TRUE    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal IN (
        SELECT
            MAX(sal)
        FROM
            emp
        GROUP BY
            deptno
    );    
    
<<<<<<< HEAD
-- 30¹ø ºÎ¼­ »ç¿øµéÀÇ ±Þ¿©º¸´Ù ÀûÀº ±Þ¿©¸¦ ¹Þ´Â »ç¿ø Á¤º¸ Á¶È¸

-- ANY(SOME) : ¸ÞÀÎÄõ¸® °á°ú°¡ ¼­ºêÄõ¸® °á°ú°¡ ÇÏ³ªÀÌ»óÀÌ¸é TRUE    
=======
-- 30ë²ˆ ë¶€ì„œ ì‚¬ì›ë“¤ì˜ ê¸‰ì—¬ë³´ë‹¤ ì ì€ ê¸‰ì—¬ë¥¼ ë°›ëŠ” ì‚¬ì› ì •ë³´ ì¡°íšŒ

-- ANY(SOME) : ë©”ì¸ì¿¼ë¦¬ ê²°ê³¼ê°€ ì„œë¸Œì¿¼ë¦¬ ê²°ê³¼ê°€ í•˜ë‚˜ì´ìƒì´ë©´ TRUE    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal < ANY (
        SELECT
            sal
        FROM
            emp
        WHERE
            deptno = 30
    );

SELECT
    *
FROM
    emp
WHERE
    sal < SOME (
        SELECT
            sal
        FROM
            emp
        WHERE
            deptno = 30
    );

<<<<<<< HEAD
-- À§ °á°ú´Â ´ÜÀÏÇà Äõ¸®·Î ÀÛ¼ºÀÌ °¡´ÉÇÑ »óÈ²ÀÓ
=======
-- ìœ„ ê²°ê³¼ëŠ” ë‹¨ì¼í–‰ ì¿¼ë¦¬ë¡œ ìž‘ì„±ì´ ê°€ëŠ¥í•œ ìƒí™©ìž„
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal < (
        SELECT
            MAX(sal)
        FROM
            emp
        WHERE
            deptno = 30
    );


<<<<<<< HEAD
-- 30¹ø ºÎ¼­ »ç¿øµéÀÇ ÃÖ¼Ò ±Þ¿©º¸´Ù ¸¹Àº ±Þ¿©¸¦ ¹Þ´Â »ç¿ø Á¤º¸ Á¶È¸

-- ¨ç ´ÜÀÏÇà ¼­ºêÄõ¸®
=======
-- 30ë²ˆ ë¶€ì„œ ì‚¬ì›ë“¤ì˜ ìµœì†Œ ê¸‰ì—¬ë³´ë‹¤ ë§Žì€ ê¸‰ì—¬ë¥¼ ë°›ëŠ” ì‚¬ì› ì •ë³´ ì¡°íšŒ

-- â‘  ë‹¨ì¼í–‰ ì„œë¸Œì¿¼ë¦¬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal > (
        SELECT
            MIN(sal)
        FROM
            emp
        WHERE
            deptno = 30
    );
<<<<<<< HEAD
-- ¨è ´ÙÁßÇà ¼­ºêÄõ¸®
=======
-- â‘¡ ë‹¤ì¤‘í–‰ ì„œë¸Œì¿¼ë¦¬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal > ANY (
        SELECT
            sal
        FROM
            emp
        WHERE
            deptno = 30
    );


<<<<<<< HEAD
-- ALL : ¼­ºêÄõ¸® ¸ðµç °á°ú°¡ Á¶°Ç½Ä¿¡ ¸Â¾Æ ¶³¾îÁ®¾ß¸¸ ¸ÞÀÎÄõ¸® Á¶°Ç½ÄÀÌ TRUE
=======
-- ALL : ì„œë¸Œì¿¼ë¦¬ ëª¨ë“  ê²°ê³¼ê°€ ì¡°ê±´ì‹ì— ë§žì•„ ë–¨ì–´ì ¸ì•¼ë§Œ ë©”ì¸ì¿¼ë¦¬ ì¡°ê±´ì‹ì´ TRUE
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal < ALL (
        SELECT
            sal
        FROM
            emp
        WHERE
            deptno = 30
    );
    
<<<<<<< HEAD
-- EXISTS : ¼­ºê Äõ¸®¿¡ °á°ú °ªÀÌ ÇÏ³ª ÀÌ»ó Á¸ÀçÇÏ¸é Á¶°Ç½ÄÀÌ ¸ðµÎ TRUE, Á¸ÀçÇÏÁö ¾ÊÀ¸¸é FALSE
=======
-- EXISTS : ì„œë¸Œ ì¿¼ë¦¬ì— ê²°ê³¼ ê°’ì´ í•˜ë‚˜ ì´ìƒ ì¡´ìž¬í•˜ë©´ ì¡°ê±´ì‹ì´ ëª¨ë‘ TRUE, ì¡´ìž¬í•˜ì§€ ì•Šìœ¼ë©´ FALSE
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    EXISTS (
        SELECT
            dname
        FROM
            dept
        WHERE
            deptno = 10
    );

SELECT
    *
FROM
    emp
WHERE
    EXISTS (
        SELECT
            dname
        FROM
            dept
        WHERE
            deptno = 50
    );

<<<<<<< HEAD
-- ÀüÃ¼ »ç¿ø Áß ALLEN°ú °°Àº Á÷Ã¥ÀÎ »ç¿øµéÀÇ »ç¿øÁ¤º¸, ºÎ¼­ Á¤º¸¸¦ ´ÙÀ½°ú °°ÀÌ Ãâ·ÂÇÏ´Â SQL¹®À» ÀÛ¼ºÇÏ½Ã¿À.
=======
-- ì „ì²´ ì‚¬ì› ì¤‘ ALLENê³¼ ê°™ì€ ì§ì±…ì¸ ì‚¬ì›ë“¤ì˜ ì‚¬ì›ì •ë³´, ë¶€ì„œ ì •ë³´ë¥¼ ë‹¤ìŒê³¼ ê°™ì´ ì¶œë ¥í•˜ëŠ” SQLë¬¸ì„ ìž‘ì„±í•˜ì‹œì˜¤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    e.job,
    e.empno,
    e.ename,
    e.sal,
    d.deptno,
    d.dname
FROM
    emp  e,
    dept d
WHERE
        e.deptno = d.deptno
    AND e.job = (
        SELECT
            job
        FROM
            emp
        WHERE
            ename = 'ALLEN'
    );
    
    
<<<<<<< HEAD
-- ÀüÃ¼ »ç¿øÀÇ Æò±Õ ±Þ¿©º¸´Ù ³ôÀº ±Þ¿©¸¦ ¹Þ´Â »ç¿øµéÀÇ »ç¿øÁ¤º¸, ºÎ¼­Á¤º¸, 
-- ±Þ¿© µî±Þ Á¤º¸¸¦ Ãâ·ÂÇÏ´Â SQL¹®À» ÀÛ¼ºÇÏ½Ã¿À(´Ü, Ãâ·ÂÇÒ ¶§ ±Þ¿©°¡ 
-- ¸¹Àº ¼øÀ¸·Î Á¤·ÄÇÏµÇ ±Þ¿©°¡ °°À» °æ¿ì¿¡´Â »ç¿ø ¹øÈ£¸¦ ±âÁØÀ¸·Î ¿À¸§Â÷¼øÀ¸·Î Á¤·ÄÇÏ±â)
=======
-- ì „ì²´ ì‚¬ì›ì˜ í‰ê·  ê¸‰ì—¬ë³´ë‹¤ ë†’ì€ ê¸‰ì—¬ë¥¼ ë°›ëŠ” ì‚¬ì›ë“¤ì˜ ì‚¬ì›ì •ë³´, ë¶€ì„œì •ë³´, 
-- ê¸‰ì—¬ ë“±ê¸‰ ì •ë³´ë¥¼ ì¶œë ¥í•˜ëŠ” SQLë¬¸ì„ ìž‘ì„±í•˜ì‹œì˜¤(ë‹¨, ì¶œë ¥í•  ë•Œ ê¸‰ì—¬ê°€ 
-- ë§Žì€ ìˆœìœ¼ë¡œ ì •ë ¬í•˜ë˜ ê¸‰ì—¬ê°€ ê°™ì„ ê²½ìš°ì—ëŠ” ì‚¬ì› ë²ˆí˜¸ë¥¼ ê¸°ì¤€ìœ¼ë¡œ ì˜¤ë¦„ì°¨ìˆœìœ¼ë¡œ ì •ë ¬í•˜ê¸°)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    e.empno,
    e.ename,
    d.dname,
    e.hiredate,
    d.loc,
    e.sal,
    s.grade
FROM
    emp      e,
    dept     d,
    salgrade s
WHERE
        e.deptno = d.deptno
    AND e.sal BETWEEN s.losal AND s.hisal
    AND e.sal > (
        SELECT
            AVG(sal)
        FROM
            emp
    )
ORDER BY
    e.sal DESC,
    e.empno ASC;
    
<<<<<<< HEAD
-- ´ÙÁß¿­ ¼­ºêÄõ¸® : ¼­ºêÄõ¸®ÀÇ select Àý¿¡ ºñ±³ÇÒ µ¥ÀÌÅÍ¸¦ ¿©·¯ °³ ÁöÁ¤
=======
-- ë‹¤ì¤‘ì—´ ì„œë¸Œì¿¼ë¦¬ : ì„œë¸Œì¿¼ë¦¬ì˜ select ì ˆì— ë¹„êµí•  ë°ì´í„°ë¥¼ ì—¬ëŸ¬ ê°œ ì§€ì •
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    ( deptno, sal ) IN (
        SELECT
            deptno, MAX(sal)
        FROM
            emp
        GROUP BY
            deptno
    );    
    
<<<<<<< HEAD
-- FROM Àý¿¡ »ç¿ëÇÏ´Â ¼­ºêÄõ¸®(ÀÎ¶óÀÎ ºä)
-- FROM Àý¿¡ Á÷Á¢ Å×ÀÌºíÀ» ¸í½ÃÇØ¼­ »ç¿ëÇÏ±â¿¡´Â Å×ÀÌºí ³» µ¥ÀÌÅÍ ±Ô¸ð°¡ Å¬ ¶§, ºÒÇÊ¿äÇÑ ¿­ÀÌ ¸¹À» ¶§
=======
-- FROM ì ˆì— ì‚¬ìš©í•˜ëŠ” ì„œë¸Œì¿¼ë¦¬(ì¸ë¼ì¸ ë·°)
-- FROM ì ˆì— ì§ì ‘ í…Œì´ë¸”ì„ ëª…ì‹œí•´ì„œ ì‚¬ìš©í•˜ê¸°ì—ëŠ” í…Œì´ë¸” ë‚´ ë°ì´í„° ê·œëª¨ê°€ í´ ë•Œ, ë¶ˆí•„ìš”í•œ ì—´ì´ ë§Žì„ ë•Œ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    e10.empno,
    e10.ename,
    e10.deptno,
    d.dname,
    d.loc
FROM
    (
        SELECT
            *
        FROM
            emp
        WHERE
            deptno = 10
    ) e10,
    (
        SELECT
            *
        FROM
            dept
    ) d
WHERE
    e10.deptno = d.deptno;
    
    
<<<<<<< HEAD
-- SELECT Àý¿¡ »ç¿ëÇÏ´Â ¼­ºêÄõ¸®(½ºÄ®¶ó ¼­ºêÄõ¸®)
-- SELECT Àý¿¡ »ç¿ëÇÏ´Â ¼­ºêÄõ¸®´Â ¹Ýµå½Ã ÇÏ³ªÀÇ °á°ú¸¸ ¹ÝÈ¯ÇØ¾ß ÇÔ
=======
-- SELECT ì ˆì— ì‚¬ìš©í•˜ëŠ” ì„œë¸Œì¿¼ë¦¬(ìŠ¤ì¹¼ë¼ ì„œë¸Œì¿¼ë¦¬)
-- SELECT ì ˆì— ì‚¬ìš©í•˜ëŠ” ì„œë¸Œì¿¼ë¦¬ëŠ” ë°˜ë“œì‹œ í•˜ë‚˜ì˜ ê²°ê³¼ë§Œ ë°˜í™˜í•´ì•¼ í•¨
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    job,
    sal,
    (
        SELECT
            grade
        FROM
            salgrade
        WHERE
            e.sal BETWEEN losal AND hisal
    ) AS salgrade,
    deptno,
    (
        SELECT
            dname
        FROM
            dept
        WHERE
            e.deptno = dept.deptno
    ) AS dname
FROM
    emp e;
    
<<<<<<< HEAD
-- 10¹ø ºÎ¼­¿¡ ±Ù¹«ÇÏ´Â »ç¿ø Áß 30¹ø ºÎ¼­¿¡´Â Á¸ÀçÇÏÁö ¾Ê´Â Á÷Ã¥À» °¡Áø
-- »ç¿øµéÀÇ »ç¿øÁ¤º¸, ºÎ¼­ Á¤º¸¸¦ ´ÙÀ½°ú °°ÀÌ Ãâ·ÂÇÏ´Â SQL¹®À» ÀÛ¼ºÇÏ½Ã¿À.
=======
-- 10ë²ˆ ë¶€ì„œì— ê·¼ë¬´í•˜ëŠ” ì‚¬ì› ì¤‘ 30ë²ˆ ë¶€ì„œì—ëŠ” ì¡´ìž¬í•˜ì§€ ì•ŠëŠ” ì§ì±…ì„ ê°€ì§„
-- ì‚¬ì›ë“¤ì˜ ì‚¬ì›ì •ë³´, ë¶€ì„œ ì •ë³´ë¥¼ ë‹¤ìŒê³¼ ê°™ì´ ì¶œë ¥í•˜ëŠ” SQLë¬¸ì„ ìž‘ì„±í•˜ì‹œì˜¤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    e.empno,
    e.ename,
    e.job,
    d.deptno,
    d.dname,
    d.loc
FROM
    emp  e,
    dept d
WHERE
        e.deptno = d.deptno
    AND e.job NOT IN (
        SELECT
            job
        FROM
            emp
        WHERE
            deptno = 30
    )
    AND e.deptno = 10;
    
    
<<<<<<< HEAD
-- Á÷Ã¥ÀÌ SALESMANÀÎ »ç¶÷µéÀÇ ÃÖ°í ±Þ¿©º¸´Ù ³ôÀº ±Þ¿©¸¦ ¹Þ´Â »ç¿øµéÀÇ »ç¿øÁ¤º¸, ±Þ¿©µî±Þ Á¤º¸¸¦ Ãâ·ÂÇÏ´Â SQL¹®À» ÀÛ¼ºÇÏ½Ã¿À
-- (´Ü, ¼­ºêÄõ¸®¸¦ È°¿ëÇÒ ¶§ ´ÙÁßÇà ÇÔ¼ö¸¦ »ç¿ëÇÏ´Â ¹æ¹ý°ú »ç¿ëÇÏÁö ¾Ê´Â ¹æ¹ýÀ» ÅëÇØ »ç¿ø¹øÈ£¸¦ ±âÁØÀ¸·Î ¿À¸§Â÷¼ø Á¤·ÄÇÏ¿© Ãâ·Â    

-- ´ÜÀÏÇà ¼­ºêÄõ¸®    
=======
-- ì§ì±…ì´ SALESMANì¸ ì‚¬ëžŒë“¤ì˜ ìµœê³  ê¸‰ì—¬ë³´ë‹¤ ë†’ì€ ê¸‰ì—¬ë¥¼ ë°›ëŠ” ì‚¬ì›ë“¤ì˜ ì‚¬ì›ì •ë³´, ê¸‰ì—¬ë“±ê¸‰ ì •ë³´ë¥¼ ì¶œë ¥í•˜ëŠ” SQLë¬¸ì„ ìž‘ì„±í•˜ì‹œì˜¤
-- (ë‹¨, ì„œë¸Œì¿¼ë¦¬ë¥¼ í™œìš©í•  ë•Œ ë‹¤ì¤‘í–‰ í•¨ìˆ˜ë¥¼ ì‚¬ìš©í•˜ëŠ” ë°©ë²•ê³¼ ì‚¬ìš©í•˜ì§€ ì•ŠëŠ” ë°©ë²•ì„ í†µí•´ ì‚¬ì›ë²ˆí˜¸ë¥¼ ê¸°ì¤€ìœ¼ë¡œ ì˜¤ë¦„ì°¨ìˆœ ì •ë ¬í•˜ì—¬ ì¶œë ¥    

-- ë‹¨ì¼í–‰ ì„œë¸Œì¿¼ë¦¬    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    e.empno,
    e.ename,
    e.sal,
    s.grade
FROM
    emp      e,
    salgrade s
WHERE
    e.sal BETWEEN s.losal AND s.hisal
    AND e.sal > (
        SELECT
            MAX(sal)
        FROM
            emp
        WHERE
            job = 'SALESMAN'
    )
ORDER BY
    e.empno;

SELECT
    e.empno,
    e.ename,
    e.sal,
    (
        SELECT
            grade
        FROM
            salgrade
        WHERE
            e.sal BETWEEN losal AND hisal
    ) AS grade
FROM
    emp e
WHERE
    e.sal > (
        SELECT
            MAX(sal)
        FROM
            emp
        WHERE
            job = 'SALESMAN'
    )
ORDER BY
    e.empno;    
    
    
    
<<<<<<< HEAD
-- ´ÙÁßÇà ÇÔ¼ö »ç¿ë½Ã(IN, any, some, all, exists)    
=======
-- ë‹¤ì¤‘í–‰ í•¨ìˆ˜ ì‚¬ìš©ì‹œ(IN, any, some, all, exists)    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    e.empno,
    e.ename,
    e.sal,
    (
        SELECT
            grade
        FROM
            salgrade
        WHERE
            e.sal BETWEEN losal AND hisal
    ) AS grade
FROM
    emp e
WHERE
    e.sal > ALL (
        SELECT
            sal
        FROM
            emp
        WHERE
            job = 'SALESMAN'
    )
ORDER BY
    e.empno;     
    
<<<<<<< HEAD
-- DML(Data Manipulation Language) : µ¥ÀÌÅÍ Ãß°¡(INSERT), ¼öÁ¤(UPDATE), »èÁ¦(DELETE)ÇÏ´Â µ¥ÀÌÅÍ Á¶ÀÛ¾î
-- COMMIT : DML ÀÛ¾÷À» µ¥ÀÌÅÍº£ÀÌ½º¿¡ ÃÖÁ¾ ¹Ý¿µ
-- ROLLBACK : DML ÀÛ¾÷À» Ãë¼Ò
-- select + DML ==> ÀÚÁÖ »ç¿ëÇÏ´Â sql ÀÓ


-- ¿¬½À¿ë Å×ÀÌºí »ý¼º
-- ±âÁ¸ Å×ÀÌºí º¹»ç
=======
-- DML(Data Manipulation Language) : ë°ì´í„° ì¶”ê°€(INSERT), ìˆ˜ì •(UPDATE), ì‚­ì œ(DELETE)í•˜ëŠ” ë°ì´í„° ì¡°ìž‘ì–´
-- COMMIT : DML ìž‘ì—…ì„ ë°ì´í„°ë² ì´ìŠ¤ì— ìµœì¢… ë°˜ì˜
-- ROLLBACK : DML ìž‘ì—…ì„ ì·¨ì†Œ
-- select + DML ==> ìžì£¼ ì‚¬ìš©í•˜ëŠ” sql ìž„


-- ì—°ìŠµìš© í…Œì´ë¸” ìƒì„±
-- ê¸°ì¡´ í…Œì´ë¸” ë³µì‚¬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
CREATE TABLE dept_temp
    AS
        SELECT
            *
        FROM
            dept;

DROP TABLE dept_temp;  

<<<<<<< HEAD
-- ¿­ÀÌ¸§Àº ¼±ÅÃ»çÇ×ÀÓ
-- insert into Å×ÀÌºíÀÌ¸§(¿­ÀÌ¸§1, ¿­ÀÌ¸§2.....)
-- values(µ¥ÀÌÅÍ1, µ¥ÀÌÅÍ2......);


-- dept_temp »õ·Î¿î ºÎ¼­ Ãß°¡ÇÏ±â
=======
-- ì—´ì´ë¦„ì€ ì„ íƒì‚¬í•­ìž„
-- insert into í…Œì´ë¸”ì´ë¦„(ì—´ì´ë¦„1, ì—´ì´ë¦„2.....)
-- values(ë°ì´í„°1, ë°ì´í„°2......);


-- dept_temp ìƒˆë¡œìš´ ë¶€ì„œ ì¶”ê°€í•˜ê¸°
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
INSERT INTO dept_temp (
    deptno,
    dname,
    loc
) VALUES (
    50,
    'DATABASE',
    'SEOUL'
);

<<<<<<< HEAD
-- ¿­ ÀÌ¸§ Á¦°ÅÇÒ ¶§
=======
-- ì—´ ì´ë¦„ ì œê±°í•  ë•Œ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
INSERT INTO dept_temp VALUES (
    60,
    'NETWORK',
    'BUSAN'
);

<<<<<<< HEAD
-- INSERT ½Ã ¿À·ù

-- ÀÌ ¿­¿¡ ´ëÇØ ÁöÁ¤µÈ ÀüÃ¼ ÀÚ¸´¼öº¸´Ù Å« °ªÀÌ Çã¿ëµË´Ï´Ù.
--INSERT INTO dept_temp
--VALUES(600,'NETWORK','BUSAN');

-- ¼öÄ¡°¡ ºÎÀûÇÕÇÕ´Ï´Ù
--INSERT INTO dept_temp
--VALUES('NO','NETWORK','BUSAN');

-- °ªÀÇ ¼ö°¡ ÃæºÐÇÏÁö ¾Ê½À´Ï´Ù
--INSERT INTO dept_temp(deptno, dname, loc)
--VALUES(70,'DATABASE');

-- NULL»ðÀÔ
=======
-- INSERT ì‹œ ì˜¤ë¥˜

-- ì´ ì—´ì— ëŒ€í•´ ì§€ì •ëœ ì „ì²´ ìžë¦¿ìˆ˜ë³´ë‹¤ í° ê°’ì´ í—ˆìš©ë©ë‹ˆë‹¤.
--INSERT INTO dept_temp
--VALUES(600,'NETWORK','BUSAN');

-- ìˆ˜ì¹˜ê°€ ë¶€ì í•©í•©ë‹ˆë‹¤
--INSERT INTO dept_temp
--VALUES('NO','NETWORK','BUSAN');

-- ê°’ì˜ ìˆ˜ê°€ ì¶©ë¶„í•˜ì§€ ì•ŠìŠµë‹ˆë‹¤
--INSERT INTO dept_temp(deptno, dname, loc)
--VALUES(70,'DATABASE');

-- NULLì‚½ìž…
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
INSERT INTO dept_temp (
    deptno,
    dname,
    loc
) VALUES (
    80,
    'WEB',
    NULL
);

INSERT INTO dept_temp (
    deptno,
    dname,
    loc
) VALUES (
    90,
    'MOBILE',
    ''
);

<<<<<<< HEAD
-- NULL »ðÀÔÇÒ ÄÃ·³¸í ÁöÁ¤ÇÏÁö ¾Ê¾ÒÀ½
-- »ðÀÔ½Ã ÀüÃ¼ ÄÃ·³À» »ðÀÔÇÏÁö ¾Ê´Â´Ù¸é ÇÊµå¸í ÇÊ¼ö
=======
-- NULL ì‚½ìž…í•  ì»¬ëŸ¼ëª… ì§€ì •í•˜ì§€ ì•Šì•˜ìŒ
-- ì‚½ìž…ì‹œ ì „ì²´ ì»¬ëŸ¼ì„ ì‚½ìž…í•˜ì§€ ì•ŠëŠ”ë‹¤ë©´ í•„ë“œëª… í•„ìˆ˜
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
INSERT INTO dept_temp (
    deptno,
    loc
) VALUES (
    91,
    'INCHEON'
);

SELECT
    *
FROM
    dept_temp;

<<<<<<< HEAD
-- emp_temp »ý¼º(emp Å×ÀÌºí º¹»ç - µ¥ÀÌÅÍ´Â º¹»ç¸¦ ÇÏÁö ¾ÊÀ» ¶§)
-- ±¸Á¶¸¸ º¹»ç
=======
-- emp_temp ìƒì„±(emp í…Œì´ë¸” ë³µì‚¬ - ë°ì´í„°ëŠ” ë³µì‚¬ë¥¼ í•˜ì§€ ì•Šì„ ë•Œ)
-- êµ¬ì¡°ë§Œ ë³µì‚¬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
CREATE TABLE emp_temp
    AS
        SELECT
            *
        FROM
            emp
        WHERE
            1 <> 1;

INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
<<<<<<< HEAD
    'È«±æµ¿',
=======
    'í™ê¸¸ë™',
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    'PRESIDENT',
    NULL,
    '2001/01/01',
    5000,
    1000,
    10
);

INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    1111,
<<<<<<< HEAD
    '¼ºÃáÇâ',
=======
    'ì„±ì¶˜í–¥',
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    'MANAGER',
    9999,
    '2002-01-05',
    4000,
    NULL,
    20
);
  
<<<<<<< HEAD
-- ³¯Â¥ ÀÔ·Â ½Ã ³â/¿ù/ÀÏ ¼ø¼­ => ÀÏ/¿ù/³â »ðÀÔ
-- ³¯Â¥ Çü½ÄÀÇ ÁöÁ¤¿¡ ºÒÇÊ¿äÇÑ µ¥ÀÌÅÍ°¡ Æ÷ÇÔ
--INSERT INTO emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
--VALUES(2222,'ÀÌ¼ø½Å','MANAGER',9999,'07/01/2001',4000,NULL,20);
=======
-- ë‚ ì§œ ìž…ë ¥ ì‹œ ë…„/ì›”/ì¼ ìˆœì„œ => ì¼/ì›”/ë…„ ì‚½ìž…
-- ë‚ ì§œ í˜•ì‹ì˜ ì§€ì •ì— ë¶ˆí•„ìš”í•œ ë°ì´í„°ê°€ í¬í•¨
--INSERT INTO emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
--VALUES(2222,'ì´ìˆœì‹ ','MANAGER',9999,'07/01/2001',4000,NULL,20);
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    2222,
<<<<<<< HEAD
    'ÀÌ¼ø½Å',
=======
    'ì´ìˆœì‹ ',
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    'MANAGER',
    9999,
    TO_DATE('07/01/2001', 'DD/MM/YYYY'),
    4000,
    NULL,
    20
);

INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    3333,
<<<<<<< HEAD
    '½ÉºÀ»ç',
=======
    'ì‹¬ë´‰ì‚¬',
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    'MANAGER',
    9999,
    sysdate,
    4000,
    NULL,
    30
);

<<<<<<< HEAD
-- ¼­ºêÄõ¸®·Î INSERT ±¸Çö
-- emp, salgrade Å×ÀÌºíÀ» Á¶ÀÎ ÈÄ ±Þ¿© µî±ÞÀÌ 1ÀÎ »ç¿ø¸¸ emp_temp ¿¡ Ãß°¡
=======
-- ì„œë¸Œì¿¼ë¦¬ë¡œ INSERT êµ¬í˜„
-- emp, salgrade í…Œì´ë¸”ì„ ì¡°ì¸ í›„ ê¸‰ì—¬ ë“±ê¸‰ì´ 1ì¸ ì‚¬ì›ë§Œ emp_temp ì— ì¶”ê°€
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
)
    SELECT
        e.empno,
        e.ename,
        e.job,
        e.mgr,
        e.hiredate,
        e.sal,
        e.comm,
        e.deptno
    FROM
        emp      e,
        salgrade s
    WHERE
        e.sal BETWEEN s.losal AND s.hisal
        AND s.grade = 1;

SELECT
    *
FROM
    emp_temp;

COMMIT; 

    
<<<<<<< HEAD
-- UPDATE : Å×ÀÌºí¿¡ ÀÖ´Â µ¥ÀÌÅÍ ¼öÁ¤

--UPDATE Å×ÀÌºí¸í
--SET  º¯°æÇÒ¿­ÀÌ¸§ = µ¥ÀÌÅÍ, º¯°æÇÒ¿­ÀÌ¸§ = µ¥ÀÌÅÍ.....
--WHERE º¯°æÀ» À§ÇÑ ´ë»ó ÇàÀ» ¼±º°ÇÏ±â À§ÇÑ Á¶°Ç
    


-- dept_temp loc ¿­ÀÇ ¸ðµç °ªÀ» seoul ·Î º¯°æ
=======
-- UPDATE : í…Œì´ë¸”ì— ìžˆëŠ” ë°ì´í„° ìˆ˜ì •

--UPDATE í…Œì´ë¸”ëª…
--SET  ë³€ê²½í• ì—´ì´ë¦„ = ë°ì´í„°, ë³€ê²½í• ì—´ì´ë¦„ = ë°ì´í„°.....
--WHERE ë³€ê²½ì„ ìœ„í•œ ëŒ€ìƒ í–‰ì„ ì„ ë³„í•˜ê¸° ìœ„í•œ ì¡°ê±´
    


-- dept_temp loc ì—´ì˜ ëª¨ë“  ê°’ì„ seoul ë¡œ ë³€ê²½
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
UPDATE dept_temp
SET
    loc = 'SEOUL';

ROLLBACK;

<<<<<<< HEAD
-- µ¥ÀÌÅÍ ÀÏºÎºÐ ¼öÁ¤ : where »ç¿ë
-- dept_temp ºÎ¼­¹øÈ£°¡ 40¹øÀÎ loc ¿­ÀÇ °ªÀ» seoul ·Î º¯°æ
=======
-- ë°ì´í„° ì¼ë¶€ë¶„ ìˆ˜ì • : where ì‚¬ìš©
-- dept_temp ë¶€ì„œë²ˆí˜¸ê°€ 40ë²ˆì¸ loc ì—´ì˜ ê°’ì„ seoul ë¡œ ë³€ê²½
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
UPDATE dept_temp
SET
    loc = 'SEOUL'
WHERE
    deptno = 40;


<<<<<<< HEAD
-- dept_temp ºÎ¼­¹øÈ£°¡ 80¹øÀÎ dname Àº SALES, LOC ´Â  CHICAGO
=======
-- dept_temp ë¶€ì„œë²ˆí˜¸ê°€ 80ë²ˆì¸ dname ì€ SALES, LOC ëŠ”  CHICAGO
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
UPDATE dept_temp
SET
    dname = 'SALES',
    loc = 'CHICAGO'
WHERE
    deptno = 80;

SELECT
    *
FROM
    dept_temp;
    
<<<<<<< HEAD
-- emp_temp »ç¿øµé Áß¿¡¼­ ±Þ¿©°¡ 2500ÀÌÇÏÀÎ »ç¿ø¸¸ Ãß°¡¼ö´çÀ» 50À¸·Î ¼öÁ¤

UPDATE emp_temp
SET
    comm = 50
WHERE
    sal <= 2500;

-- ¼­ºêÄõ¸®¸¦ »ç¿ëÇÏ¿© µ¥ÀÌÅÍ ¼öÁ¤
-- dept Å×ÀÌºíÀÇ 40¹ø ºÎ¼­ÀÇ dname, loc¸¦ dept_temp 40¹ø ºÎ¼­ÀÇ dname,loc·Î ¾÷µ¥ÀÌÆ®

UPDATE dept_temp
SET
    ( dname,
      loc ) = (
        SELECT
            dname,
            loc
        FROM
            dept
        WHERE
            deptno = 40
    )
WHERE
    deptno = 40;

COMMIT;

-- DELETE : Å×ÀÌºí¿¡ ÀÖ´Â µ¥ÀÌÅÍ »èÁ¦
--DELETE Å×ÀÌºí¸í
--FROM (¼±ÅÃ)
--WHERE »èÁ¦ µ¥ÀÌÅÍ¸¦ ¼±º°ÇÏ±â À§ÇÑ Á¶°Ç½Ä


CREATE TABLE emp_temp2
    AS
        SELECT
            *
        FROM
            emp;

-- jobÀÌ MANAGER ÀÎ »ç¿ø »èÁ¦

DELETE FROM emp_temp2
WHERE
    job = 'MANAGER';

-- jobÀÌ SALESMAN ÀÎ »ç¿ø »èÁ¦
DELETE emp_temp2
WHERE
    job = 'SALESMAN';

-- ÀüÃ¼ µ¥ÀÌÅÍ »èÁ¦
=======
-- emp_temp ì‚¬ì›ë“¤ ì¤‘ì—ì„œ ê¸‰ì—¬ê°€ 2500ì´í•˜ì¸ ì‚¬ì›ë§Œ ì¶”ê°€ìˆ˜ë‹¹ì„ 50ìœ¼ë¡œ ìˆ˜ì •

UPDATE emp_temp
SET comm = 50
WHERE sal <= 2500;

-- ì„œë¸Œì¿¼ë¦¬ë¥¼ ì‚¬ìš©í•˜ì—¬ ë°ì´í„° ìˆ˜ì •
-- dept í…Œì´ë¸”ì˜ 40ë²ˆ ë¶€ì„œì˜ dname, locë¥¼ dept_temp 40ë²ˆ ë¶€ì„œì˜ dname,locë¡œ ì—…ë°ì´íŠ¸

UPDATE dept_temp
SET (dname,loc) = (SELECT dname, loc
                   FROM dept
                   WHERE deptno = 40)
WHERE deptno = 40;


COMMIT;

-- DELETE : í…Œì´ë¸”ì— ìžˆëŠ” ë°ì´í„° ì‚­ì œ
--DELETE í…Œì´ë¸”ëª…
--FROM (ì„ íƒ)
--WHERE ì‚­ì œ ë°ì´í„°ë¥¼ ì„ ë³„í•˜ê¸° ìœ„í•œ ì¡°ê±´ì‹


CREATE TABLE emp_temp2 AS SELECT * FROM emp;

-- jobì´ MANAGER ì¸ ì‚¬ì› ì‚­ì œ

DELETE FROM emp_temp2
WHERE job='MANAGER';

-- jobì´ SALESMAN ì¸ ì‚¬ì› ì‚­ì œ
DELETE emp_temp2
WHERE job='SALESMAN';

-- ì „ì²´ ë°ì´í„° ì‚­ì œ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
DELETE emp_temp2;

ROLLBACK;

<<<<<<< HEAD
-- ¼­ºêÄõ¸®¸¦ »ç¿ëÇÏ¿© »èÁ¦
-- ±Þ¿© µî±ÞÀÌ 3µî±ÞÀÌ°í, 30¹øºÎ¼­ÀÇ »ç¿ø »èÁ¦

DELETE FROM emp_temp2
WHERE
    empno IN (
        SELECT
            e.empno
        FROM
            emp_temp2 e, salgrade  s
        WHERE
            e.sal BETWEEN s.losal AND s.hisal
            AND s.grade = 3
            AND e.deptno = 30
    );

SELECT
    *
FROM
    emp_temp2;
=======
-- ì„œë¸Œì¿¼ë¦¬ë¥¼ ì‚¬ìš©í•˜ì—¬ ì‚­ì œ
-- ê¸‰ì—¬ ë“±ê¸‰ì´ 3ë“±ê¸‰ì´ê³ , 30ë²ˆë¶€ì„œì˜ ì‚¬ì› ì‚­ì œ

DELETE FROM emp_temp2
WHERE empno IN (SELECT e.empno
                FROM emp_temp2 e, salgrade s
                WHERE e.sal BETWEEN s.losal AND s.hisal AND s.grade=3 AND e.deptno = 30);

SELECT * FROM emp_temp2;

>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

COMMIT;


/*
<<<<<<< HEAD
    ¨ç EMP Å×ÀÌºíÀÇ ³»¿ëÀ» ÀÌ¿ëÇÏ¿© EXAM_EMP »ý¼º
    ¨è DEPT Å×ÀÌºíÀÇ ³»¿ëÀ» ÀÌ¿ëÇÏ¿© EXAM_DEPT »ý¼º
    ¨é SALGRADE Å×ÀÌºíÀÇ ³»¿ëÀ» ÀÌ¿ëÇÏ¿© EXAM_SALGRADE »ý¼º
*/
CREATE TABLE exam_emp
    AS
        SELECT
            *
        FROM
            emp;

CREATE TABLE exam_dept
    AS
        SELECT
            *
        FROM
            dept;

CREATE TABLE exam_salgrade
    AS
        SELECT
            *
        FROM
            salgrade;

SELECT
    *
FROM
    exam_emp;

SELECT
    *
FROM
    exam_dept;

SELECT
    *
FROM
    exam_salgrade;

-- Á¤º¸ ÀÔ·Â
INSERT INTO exam_emp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    7201,
    'TEST_USER1',
    'MANAGER',
    7788,
    '2016-01-02',
    4500,
    NULL,
    50
);

INSERT INTO exam_emp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    7202,
    'TEST_USER2',
    'CLERK',
    7201,
    '2016-02-21',
    1800,
    NULL,
    50
);

INSERT INTO exam_emp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    7203,
    'TEST_USER3',
    'ANALYST',
    7201,
    '2016-04-11',
    3400,
    NULL,
    60
);

INSERT INTO exam_emp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    7204,
    'TEST_USER4',
    'SALESMAN',
    7201,
    '2016-05-31',
    2700,
    300,
    60
);

INSERT INTO exam_emp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    7205,
    'TEST_USER5',
    'CLERK',
    7201,
    '2016-07-20',
    2600,
    NULL,
    70
);

INSERT INTO exam_emp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    7206,
    'TEST_USER6',
    'CLERK',
    7201,
    '2016-09-08',
    2600,
    NULL,
    70
);

INSERT INTO exam_emp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    7207,
    'TEST_USER7',
    'LECTURER',
    7201,
    '2016-10-28',
    2300,
    NULL,
    80
);

INSERT INTO exam_emp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    7208,
    'TEST_USER8',
    'STUDENT',
    7201,
    '2018-03-09',
    1200,
    NULL,
    80
);

COMMIT;

/* ¼­ºêÄõ¸®
[½Ç½À3] EXAM_EMP¿¡ ¼ÓÇÑ »ç¿ø Áß 50¹ø ºÎ¼­¿¡¼­ ±Ù¹«ÇÏ´Â »ç¿øµéÀÇ Æò±Õ ±Þ¿©º¸´Ù
¸¹Àº ±Þ¿©¸¦ ¹Þ°í ÀÖ´Â »ç¿øµéÀ» 70¹ø ºÎ¼­·Î ¿Å±â´Â SQL ¹® ÀÛ¼ºÇÏ±â
*/

UPDATE exam_emp
SET
    deptno = 70
WHERE
    sal > (
        SELECT
            AVG(sal)
        FROM
            exam_emp
        WHERE
            deptno = 50
    );

/* ¼­ºêÄõ¸®
[½Ç½À4] EXAM_EMP¿¡ ¼ÓÇÑ »ç¿ø Áß 60¹ø ºÎ¼­ÀÇ »ç¿ø Áß¿¡¼­ ÀÔ»çÀÏÀÌ °¡Àå ºü¸¥ »ç¿øº¸´Ù
´Ê°Ô ÀÔ»çÇÑ »ç¿øÀÇ ±Þ¿©¸¦ 10% ÀÎ»óÇÏ°í 80¹ø ºÎ¼­·Î ¿Å±â´Â SQL ¹® ÀÛ¼ºÇÏ±â
*/
UPDATE exam_emp
SET
    sal = sal * 1.1,
    deptno = 80
WHERE
    hiredate > (
        SELECT
            MIN(hiredate)
        FROM
            exam_emp
        WHERE
            deptno = 60
    );


--[½Ç½À5] EXAM_EMP¿¡ ¼ÓÇÑ »ç¿ø Áß, ±Þ¿© µî±ÞÀÌ 5ÀÎ »ç¿øÀ» »èÁ¦ÇÏ´Â SQL¹®À» ÀÛ¼ºÇÏ±â
DELETE FROM exam_emp
WHERE
    empno IN (
        SELECT
            empno
        FROM
            exam_emp, salgrade
        WHERE
            sal BETWEEN losal AND hisal
            AND grade = 5
    );


-- Æ®·£Àè¼Ç(transaction) : ÃÖ¼Ò ¼öÇà ´ÜÀ§ 
-- Æ®·£Àè¼Ç Á¦¾îÇÏ´Â ±¸¹® TCL(Transaction Control Language) : commit, rollback

CREATE TABLE dept_tcl
    AS
        SELECT
            *
        FROM
            dept;

INSERT INTO dept_tcl VALUES (
    50,
    'DATABASE',
    'SEOUL'
);

UPDATE dept_tcl
SET
    loc = 'BUSAN'
WHERE
    deptno = 40;

DELETE FROM dept_tcl
WHERE
    dname = 'RESEARCH';

SELECT
    *
FROM
    dept_tcl;

-- Æ®·£Àè¼Ç Ãë¼Ò 
ROLLBACK;

-- Æ®·£Àè¼Ç ÃÖÁ¾ ¹Ý¿µ
COMMIT;


-- ¼¼¼Ç : ¾î¶² È°µ¿À» À§ÇÑ ½Ã°£ÀÌ³ª ±â°£
-- µ¥ÀÌÅÍº£ÀÌ½º ¼¼¼Ç : µ¥ÀÌÅÍº£ÀÌ½º Á¢¼ÓÀ» ½ÃÀÛÀ¸·Î °ü·ÃÀÛ¾÷ ¼öÇàÇÑ ÈÄ Á¢¼Ó Á¾·á
-- LOCK : Àá±Ý(¼öÁ¤ ÁßÀÎ µ¥ÀÌÅÍ Á¢±Ù ¸·±â)
DELETE FROM dept_tcl
WHERE
    deptno = 50;

UPDATE dept_tcl
SET
    loc = 'SEOUL'
WHERE
    deptno = 30;

SELECT
    *
FROM
    dept_temp;
    
    
-- DDL : µ¥ÀÌÅÍ Á¤ÀÇ¾î(µ¥ÀÌÅÍ º£ÀÌ½º °´Ã¼ »ý¼º, ¼öÁ¤, »èÁ¦)   
-- 1. Å×ÀÌºí »ý¼º 
-- CREATE TABLE Å×ÀÌºí¸í(
--    ¿­ÀÌ¸§1 ÀÚ·áÇü,
--    ¿­ÀÌ¸§2 ÀÚ·áÇü,
--    ¿­ÀÌ¸§3 ÀÚ·áÇü,
--    ¿­ÀÌ¸§4 ÀÚ·áÇü
-- );

-- Å×ÀÌºí »ý¼º / ¿­ÀÌ¸§ ÁöÁ¤ ±ÔÄ¢
-- 1) Å×ÀÌºí ÀÌ¸§Àº ¹®ÀÚ·Î ½ÃÀÛ
-- 2) Å×ÀÌºí ÀÌ¸§Àº 30BYTE ÀÌÇÏ
-- 3) °°Àº »ç¿ëÀÚ ¼ÒÀ¯ÀÇ Å×ÀÌºí ÀÌ¸§Àº Áßº¹µÉ ¼ö ¾øÀ½
-- 4) Å×ÀÌºí ¸í¿¡ »ç¿ëÇÒ ¼ö ÀÖ´Â Æ¯¼ö¹®ÀÚ´Â $, #, _ °¡´É
-- 5) SQL Å°¿öµå(ex SELECT, FROM, WHERE...)´Â Å×ÀÌºí¸í¿¡ »ç¿ëÇÒ ¼ö ¾øÀ½

-- ÀÚ·áÇü

-- 1. ¹®ÀÚ
-- VARCHAR2(±æÀÌ) : °¡º¯ ±æÀÌ ¹®ÀÚ¿­ µ¥ÀÌÅÍ ÀúÀå(ÃÖ´ë 4000BYTE)
-- CHAR(±æÀÌ) : °íÁ¤ ±æÀÌ ¹®ÀÚ¿­ µ¥ÀÌÅÍ ÀúÀå
-- NVARCHAR2(±æÀÌ) : °¡º¯ ±æÀÌ(unicode) µ¥ÀÌÅÍ ÀúÀå
--    name varchar2(10) : ¿µ¾î´Â 10ÀÚ, ÇÑ±ÛÀº 3ÀÚ ±îÁö ÀÔ·Â
--    name nvarchar2(10) : ¿µ¾î 10ÀÚ, ÇÑ±Û 10ÀÚ ±îÁö ÀÔ·Â
-- NCHAR(±æÀÌ) : °íÁ¤ ±æÀÌ(unicode)
--    name char(10) : ¿µ¾î´Â 10ÀÚ, ÇÑ±ÛÀº 3ÀÚ, + ¸Þ¸ð¸® 10byte °íÁ¤
--    name nchar(10) : ¿µ¾î´Â 10ÀÚ, ÇÑ±ÛÀº 10ÀÚ, + ¸Þ¸ð¸® 10byte °íÁ¤

-- 2. ¼ýÀÚ
-- NUMBER(ÀüÃ¼ÀÚ¸´¼ö,¼Ò¼öÁ¡ÀÌÇÏÀÚ¸´¼ö)

-- 3. ³¯Â¥
-- DATE : ³¯Â¥,½Ã°£ ÀúÀå
-- TIMESTAMP

-- 4. ±âÅ¸
-- BLOB : ´ë¿ë·® ÀÌÁø µ¥ÀÌÅÍ ÀúÀå
-- CLOB : ´ë¿ë·® ÅØ½ºÆ® µ¥ÀÌÅÍ ÀúÀå
-- JSON : JSON µ¥ÀÌÅÍ ÀúÀå

CREATE TABLE emp_ddl (
    empno    NUMBER(4),     -- »ç¹øÀ» ÃÑ 4ÀÚ¸® ÁöÁ¤
    ename    VARCHAR2(10),  -- »ç¿ø¸íÀ» ÃÑ 10byte ·Î ÁöÁ¤
    job      VARCHAR2(9),     -- Á÷¹« ÃÑ 9byte ÁöÁ¤
    mgr      NUMBER(4),       -- ¸Å´ÏÀú ¹øÈ£
    hiredate DATE,       -- ³¯Â¥/½Ã°£ ÀúÀå
    sal      NUMBER(7, 2),     -- ±Þ¿©¸¦ ÀüÃ¼ ÀÚ¸´¼ö 7ÀÚ¸® ÁöÁ¤(¼Ò¼öÁ¡ 2ÀÚ¸®±îÁö Çã¿ë)
    comm     NUMBER(7, 2),    -- Ãß°¡¼ö´ç
    deptno   NUMBER(2)     -- ºÎ¼­¹øÈ£
);

desc emp_ddl;


-- 2. Å×ÀÌºí ¼öÁ¤ : ALTER
-- 1) ¿­ Ãß°¡ : ADD
ALTER TABLE emp_temp2 ADD hp VARCHAR2(20);

-- 2) ¿­ ÀÌ¸§ º¯°æ : RENAME
ALTER TABLE emp_temp2 RENAME COLUMN hp TO tel;

-- 3) ¿­ ÀÚ·áÇü(±æÀÌ) º¯°æ : MODIFY
ALTER TABLE emp_temp2 MODIFY
    empno NUMBER(5);

-- 4) Æ¯Á¤ ¿­À» »èÁ¦ : DROP
ALTER TABLE emp_temp2 DROP COLUMN tel;



-- 3. Å×ÀÌºí »èÁ¦ : DROP
DROP TABLE emp_rename;



-- Å×ÀÌºí ¸í º¯°æ
RENAME emp_temp2 TO emp_rename;

-- Å×ÀÌºí µ¥ÀÌÅÍ ÀüÃ¼ »èÁ¦
DELETE FROM emp_rename;

SELECT
    *
FROM
    emp_rename;

ROLLBACK;

--  rollback ¾ÈµÊ : DDL ±¸¹®ÀÌ±â ¶§¹®
TRUNCATE TABLE emp_rename;

-- 
CREATE TABLE member (
    id     CHAR(8),
    name   VARCHAR2(10),
    addr   VARCHAR2(50),
    nation NCHAR(4),
    email  VARCHAR2(50),
    age    NUMBER(7, 2)
);

ALTER TABLE member ADD bigo VARCHAR2(20);

ALTER TABLE member MODIFY
    bigo VARCHAR2(30);

ALTER TABLE member RENAME COLUMN bigo TO remark;

DROP TABLE member;


-- "SCOTT"."MEMBER"."NATION" ¿­¿¡ ´ëÇÑ °ªÀÌ ³Ê¹« Å­(½ÇÁ¦: 12, ÃÖ´ë°ª: 4)
INSERT INTO member VALUES (
    'hong1234',
    'È«±æµ¿',
    '¼­¿ï½Ã ±¸·Î±¸ °³ºÀµ¿',
    '´ëÇÑ¹Î±¹',
    'hong123@naver.com',
    25,
    NULL
);


-- µ¥ÀÌÅÍ º£ÀÌ½º °´Ã¼
-- Å×ÀÌºí, ÀÎµ¦½º, ºä, µ¥ÀÌÅÍ »çÀü, ½ÃÄö½º, ½Ã³ë´Ô, ÇÁ·Î½ÃÀú, ÇÔ¼ö, ÆÐÅ°Áö, Æ®¸®°Å
-- »ý¼º : create, ¼öÁ¤ : alter, »èÁ¦ : drop

-- ÀÎµ¦½º : ´õ ºü¸¥ °Ë»öÀ» µµ¿ÍÁÜ
-- ÀÎµ¦½º : »ç¿ëÀÚ°¡ Á÷Á¢ Æ¯Á¤ Å×ÀÌºí ¿­¿¡ ÁöÁ¤ °¡´É
--          ±âº»Å°(È¤Àº unique key) ¸¦ »ý¼ºÇÏ¸é ÀÎµ¦½º·Î ÁöÁ¤

-- CREATE INDEX ÀÎµ¦½ºÀÌ¸§ ON Å×ÀÌºí¸í(ÀÎµ¦½º·Î »ç¿ëÇÒ ¿­ÀÌ¸§)

-- emp Å×ÀÌºíÀÇ sal ¿­À» ÀÎµ¦½º·Î ÁöÁ¤
CREATE INDEX idx_emp_sal ON
    emp (
        sal
    );

-- select : °Ë»ö¹æ½Ä
-- FULL Scan
-- Index Scan

SELECT
    *
FROM
    emp
WHERE
    empno = 7900;


-- ÀÎµ¦½º »èÁ¦
DROP INDEX idx_emp_sal;

-- View : °¡»ó Å×ÀÌºí
-- Æí¸®¼º : SELECT ¹®ÀÇ º¹Àâµµ¸¦ ¿ÏÈ­ÇÏ±â À§ÇØ
-- º¸¾È¼º : Å×ÀÌºíÀÇ Æ¯Á¤ ¿­À» ³ëÃâÇÏ°í ½ÍÁö ¾ÊÀ» ¶§

-- CREATE[OR REPLACE]  [FORCE | NOFORCE] VIEW ºäÀÌ¸§(¿­ÀÌ¸§1,¿­ÀÌ¸§2...)
-- AS (ÀúÀåÇÒ SELECT ±¸¹®) 
-- [WITH CHECK OPTION]
-- [WITH READ ONLY]

-- SELECT EMPNO, ENAME, JOB, DEPTNO FROM EMP WHERE DEPTNO=20 ºä·Î »ý¼º
CREATE VIEW vm_emp20 AS
    (
        SELECT
            empno,
            ename,
            job,
            deptno
        FROM
            emp
        WHERE
            deptno = 20
    );


-- ¼­ºêÄõ¸®¸¦ »ç¿ë
SELECT
    *
FROM
    (
        SELECT
            empno,
            ename,
            job,
            deptno
        FROM
            emp
        WHERE
            deptno = 20
    );

-- ºä »ç¿ë
SELECT
    *
FROM
    vm_emp20;


-- ºä »èÁ¦ 
DROP VIEW vm_emp20;

-- ºä »ý¼º ½Ã ÀÐ±â¸¸ °¡´É
CREATE VIEW vm_emp_read AS
    SELECT
        empno,
        ename,
        job
    FROM
        emp
WITH READ ONLY;

-- VIEW ¿¡ INSERT ÀÛ¾÷?
INSERT INTO vm_emp20 VALUES (
    8888,
    'KIM',
    'SALES',
    20
);
-- ¿øº» º¯°æÀÌ ÀÏ¾î³²
SELECT
    *
FROM
    emp;

-- ÀÐ±â Àü¿ë ºä¿¡¼­´Â DML ÀÛ¾÷À» ¼öÇàÇÒ ¼ö ¾ø½À´Ï´Ù.
INSERT INTO vm_emp_read VALUES (
    9999,
    'KIM',
    'SALES'
);

-- ÀÎ¶óÀÎ ºä : ÀÏÈ¸¼ºÀ¸·Î ¸¸µé¾î¼­ »ç¿ëÇÏ´Â ºä
-- rownum : Á¶È¸µÈ ¼ø¼­´ë·Î ÀÏ·Ã¹øÈ£ ¸Å±è

SELECT
    ROWNUM,
    e.*
FROM
    emp e;

SELECT
    ROWNUM,
    e.*
FROM
    (
        SELECT
            *
        FROM
            emp e
        ORDER BY
            sal DESC
    ) e;

-- ±Þ¿© ³ôÀº »óÀ§ ¼¼ »ç¶÷ Á¶È¸
SELECT
    ROWNUM,
    e.*
FROM
    (
        SELECT
            *
        FROM
            emp e
        ORDER BY
            sal DESC
    ) e
WHERE
    ROWNUM <= 3;


-- ½ÃÄö½º : ±ÔÄ¢¿¡ µû¶ó ¼ø¹ø »ý¼º
-- CREATE SEQUENCE ½ÃÄö½ºÀÌ¸§; (¼³Á¤¾ÈÇÏ´Â °ÍµéÀº ´Ù ±âº»°ªÀ¸·Î ¼¼ÆÃ)

--CREATE SEQUENCE ½ÃÄö½º¸í
--[INCREMENT BY ¼ýÀÚ]  ±âº»°ª 1
--[START WITH ¼ýÀÚ]    ±âº»°ª 1
--[MAXVALUE ¼ýÀÚ | NOMAXVALUE ]
--[MINVALUE ¼ýÀÚ | NOMINVALUE]
--[CYCLE | NOCYCLE ]   CYCLE ÀÎ °æ¿ì MAXVALUE¿¡ °ªÀÌ ´Ù´Ù¸£¸é ½ÃÀÛ°ªºÎÅÍ ´Ù½Ã ½ÃÀÛ
--[CACHE ¼ýÀÚ | NOCACHE ]  ½ÃÄö½º°¡ »ý¼ºÇÒ ¹øÈ£¸¦ ¹Ì¸® ¸Þ¸ð¸®¿¡ ÇÒ´çÇØ ³õÀ½(±âº» CACHE 20)

CREATE TABLE dept_sequence
    AS
        SELECT
            *
        FROM
            dept
        WHERE
            1 <> 1;

CREATE SEQUENCE seq_dept_sequence INCREMENT BY 10 START WITH 10 MAXVALUE 90 MINVALUE 0 NOCYCLE CACHE 2;

-- ½ÃÄö½º »ç¿ë : ½ÃÄö½ºÀÌ¸§.CURRVAL(¸¶Áö¸·À¸·Î »ý¼ºµÈ ½ÃÄö½º Á¶È¸), ½ÃÄö½ºÀÌ¸§.NEXTVAL(½ÃÄö½º »ý¼º)

-- ºÎ¼­¹øÈ£ ÀÔ·Â½Ã ½ÃÄö½º »ç¿ë
INSERT INTO dept_sequence (
    deptno,
    dname,
    loc
) VALUES (
    seq_dept_sequence.NEXTVAL,
    'DATABASE',
    'SEOUL'
);

SELECT
    *
FROM
    dept_sequence;

-- ÃÖ´ë°ª 90 ±îÁö °¡´É
-- ½ÃÄö½º SEQ_DEPT_SEQUENCE.NEXTVAL exceeds MAXVALUE : NOCYCLE ¿É¼ÇÀ¸·Î »ý¼ºÇß±â ¶§¹®¿¡ ¹øÈ£°¡ ¼øÈ¯µÇÁö ¾ÊÀ½

-- ½ÃÄö½º »èÁ¦
DROP SEQUENCE seq_dept_sequence;

CREATE SEQUENCE seq_dept_sequence INCREMENT BY 3 START WITH 10 MAXVALUE 99 MINVALUE 0 CYCLE CACHE 2;

SELECT
    seq_dept_sequence.CURRVAL
FROM
    dual;
    
-- synonym(µ¿ÀÇ¾î) : Å×ÀÌºí, ºä, ½ÃÄö½º µî °´Ã¼ ÀÌ¸§ ´ë½Å »ç¿ëÇÒ ¼ö ÀÖ´Â ´Ù¸¥ ÀÌ¸§À» ºÎ¿©ÇÏ´Â °´Ã¼  

-- EMP Å×ÀÌºíÀÇ º°ÄªÀ» E ·Î ÁöÁ¤    
CREATE SYNONYM e FOR emp; 

-- PUBLIC : µ¿ÀÇ¾î¸¦ µ¥ÀÌÅÍº£ÀÌ½º ³» ¸ðµç »ç¿ëÀÚ°¡ »ç¿ëÇÒ ¼ö ÀÖµµ·Ï ¼³Á¤ 
-- CREATE [PUBLIC] SYNONYM E FOR EMP;  

SELECT
    *
FROM
    emp;

SELECT
    *
FROM
    e;

DROP SYNONYM e;
 
 
--[½Ç½À1] ´ÙÀ½ SQL¹®À» ÀÛ¼ºÇØ º¸¼¼¿ä
--¨ç EMPÅ×ÀÌºí°ú °°Àº ±¸Á¶ÀÇ µ¥ÀÌÅÍ¸¦ ÀúÀåÇÏ´Â EMPIDX Å×ÀÌºíÀ» »ý¼ºÇÏ½Ã¿À.

CREATE TABLE empidx
    AS
        SELECT
            *
        FROM
            emp;

--¨è »ý¼ºÇÑ EMPIDX Å×ÀÌºíÀÇ EMPNO ¿­¿¡ IDX_EMPIDX_EMPNO ÀÎµ¦½º¸¦ »ý¼ºÇÏ½Ã¿À.
CREATE INDEX idx_empidx_empno ON
    empidx (
        empno
    );

--µ¥ÀÌÅÍ »çÀü ºä¸¦ ÅëÇØ ÀÎµ¦½º È®ÀÎ
SELECT
    *
FROM
    user_indexes;


--[½Ç½À2] ½Ç½À1¿¡¼­ »ý¼ºÇÑ EMPIDX Å×ÀÌºíÀÇ µ¥ÀÌÅÍ Áß ±Þ¿©°¡ 1500 ÃÊ°úÀÎ 
--»ç¿øµé¸¸ Ãâ·ÂÇÏ´Â EMPIDX_OVER15K ºä¸¦ »ý¼ºÇÏ½Ã¿À. 
--(»ç¿ø¹øÈ£, »ç¿øÀÌ¸§, Á÷Ã¥,ºÎ¼­¹øÈ£,±Þ¿©,Ãß°¡¼ö´ç ¿­À» °¡Áö°í ÀÖ´Ù)
CREATE VIEW empidx_over15k AS
    (
        SELECT
            empno,
            ename,
            job,
            deptno,
            sal,
            comm
        FROM
            empidx
        WHERE
            sal > 1500
    );



--[½Ç½À3] ´ÙÀ½ SQL¹®À» ÀÛ¼ºÇØ º¸¼¼¿ä
--¨ç DEPT Å×ÀÌºí°ú °°Àº ¿­°ú Çà ±¸¼ºÀ» °¡Áö´Â DEPTSEQ Å×ÀÌºíÀ» ÀÛ¼ºÇÏ½Ã¿À.


CREATE TABLE deptseq
    AS
        SELECT
            *
        FROM
            dept;

--¨è »ý¼ºÇÑ DEPTSEQ Å×ÀÌºíÀÇ DEPTNO ¿­¿¡ »ç¿ëÇÒ ½ÃÄö½º¸¦ ¾Æ·¡¿¡ Á¦½ÃµÈ Æ¯¼º¿¡ ¸ÂÃç »ý¼ºÇØ º¸½Ã¿À.
--ºÎ¼­ ¹øÈ£ÀÇ ½ÃÀÛ°ª : 1
--ºÎ¼­ ¹øÈ£ÀÇ Áõ°¡ : 1
--ºÎ¼­ ¹øÈ£ÀÇ ÃÖ´ñ°ª : 99
--ºÎ¼­ ¹øÈ£ÀÇ ÃÖ¼Ò°ª : 1
--ºÎ¼­ ¹øÈ£ ÃÖ´ñ°ª¿¡¼­ »ý¼º Áß´Ü
--Ä³½Ã ¾øÀ½

CREATE SEQUENCE seq_dept START WITH 1 INCREMENT BY 1 MAXVALUE 99 MINVALUE 1 NOCYCLE NOCACHE;


--µ¥ÀÌÅÍ »çÀü ºä¸¦ ÅëÇØ ½ÃÄö½º È®ÀÎ
SELECT
    *
FROM
    user_sequences;


-- Á¦¾àÁ¶°Ç : Å×ÀÌºíÀÇ Æ¯Á¤ ¿­¿¡ ÁöÁ¤
--            NULL Çã¿ë / ºÒÇã¿ë, À¯ÀÏÇÑ °ª, Á¶°Ç½ÄÀ» ¸¸Á·ÇÏ´Â µ¥ÀÌÅÍ¸¸ ÀÔ·Â °¡´É...
--            µ¥ÀÌÅÍ ¹«°á¼º(µ¥ÀÌÅÍ Á¤È®¼º, ÀÏ°ü¼º º¸Àå) À¯Áö ==> DML ÀÛ¾÷ ½Ã ÁöÄÑ¾ß ÇÔ
--            ¿µ¿ª ¹«°á¼º, °³Ã¼ ¹«°á¼º, ÂüÁ¶ ¹«°á¼º
--            Å×ÀÌºí »ý¼º ½Ã Á¦¾àÁ¶°Ç ÁöÁ¤, OR »ý¼º ÈÄ¿¡ ALTER ¸¦ ÅëÇØ Ãß°¡, º¯°æ °¡´É

-- 1) NOT NULL : ºó°ª Çã¿ë ºÒ°¡
-- »ç¿ëÀÚ·ÎºÎÅÍ ÀÔ·Â°ªÀÌ ÇÊ¼ö·Î ÀÔ·ÂµÇ¾î¾ß ÇÒ ¶§
CREATE TABLE table_notnull (
    login_id  VARCHAR2(20) NOT NULL,
    login_pwd VARCHAR2(20) NOT NULL,
    tel       VARCHAR2(20)
);

INSERT INTO table_notnull (
    login_id,
    login_pwd
) VALUES (
    'hong123',
    'hong123'
);

-- ORA-01400: NULLÀ» ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD") ¾È¿¡ »ðÀÔÇÒ ¼ö ¾ø½À´Ï´Ù
INSERT INTO table_notnull (
    login_id,
    login_pwd,
    tel
) VALUES (
    'hong123',
    NULL,
    '010-1234-1234'
);

SELECT
    *
FROM
    table_notnull;
    
-- ÀüÃ¼ Á¦¾àÁ¶°Ç Á¶È¸  
SELECT
    *
FROM
    user_constraints;
    
    
-- Á¦¾àÁ¶°Ç + Á¦¾àÁ¶°Ç ¸í ÁöÁ¤    
CREATE TABLE table_notnull2 (
    login_id  VARCHAR2(20)
        CONSTRAINT tblnn2_login_nn NOT NULL,
    login_pwd VARCHAR2(20)
        CONSTRAINT tblnn2_lgpwd_nn NOT NULL,
    tel       VARCHAR2(20)
);    
 
-- »ý¼ºÇÑ Å×ÀÌºí¿¡ Á¦¾àÁ¶°Ç Ãß°¡
-- (SCOTT.) »ç¿ëÀ¸·Î ¼³Á¤ ºÒ°¡ - ³Î °ªÀÌ ¹ß°ßµÇ¾ú½À´Ï´Ù.
-- ÀÌ¹Ì »ðÀÔµÈ µ¥ÀÌÅÍµµ Ã¼Å© ´ë»óÀÌ µÇ±â µÊ
ALTER TABLE table_notnull MODIFY (
    tel NOT NULL
);

ALTER TABLE table_notnull2 MODIFY (
    tel
        CONSTRAINT tblnn2_tel_nn NOT NULL
);

UPDATE table_notnull
SET
    tel = '010-1234-5678'
WHERE
    login_id = 'hong123';
    
-- Á¦¾àÁ¶°Ç ¸í º¯°æ
ALTER TABLE table_notnull2 RENAME CONSTRAINT tblnn2_tel_nn TO tblnn3_tel_nn;
    
-- Á¦¾àÁ¶°Ç ¸í »èÁ¦    
ALTER TABLE table_notnull2 DROP CONSTRAINT tblnn3_tel_nn;
 
 
-- 2) UNIQUE : Áßº¹µÇÁö ¾Ê´Â °ª(null »ðÀÔ °¡´É)
--             ¾ÆÀÌµð, ÀüÈ­¹øÈ£

CREATE TABLE table_unique (
    login_id  VARCHAR2(20) UNIQUE,
    login_pwd VARCHAR2(20) NOT NULL,
    tel       VARCHAR2(20)
);

INSERT INTO table_unique (
    login_id,
    login_pwd,
    tel
) VALUES (
    'hong123',
    'hong123',
    '010-1234-1234'
);

-- login_id °¡ Áßº¹µÈ »óÈ²ÀÏ ¶§ : unique À§¹è
-- ¹«°á¼º Á¦¾à Á¶°Ç(SCOTT.SYS_C008364)¿¡ À§¹èµË´Ï´Ù
INSERT INTO table_unique (
    login_id,
    login_pwd,
    tel
) VALUES (
    NULL,
    'hong123',
    '010-1234-1234'
);

SELECT
    *
FROM
    table_unique;

-- Å×ÀÌºí »ý¼º Á¦¾àÁ¶°Ç ÁöÁ¤, º¯°æ, »èÁ¦ not null ÇüÅÂ¿Í µ¿ÀÏÇÔ


--3) PRIMARY KEY(PK) : UNIQUE + NOT NULL
CREATE TABLE table_primary (
    login_id  VARCHAR2(20) PRIMARY KEY,
    login_pwd VARCHAR2(20) NOT NULL,
    tel       VARCHAR2(20)
);

-- PRIMARY KEY ==> INDEX ÀÚµ¿ »ý¼º µÊ

-- NULLÀ» ("SCOTT"."TABLE_PRIMARY"."LOGIN_ID") ¾È¿¡ »ðÀÔÇÒ ¼ö ¾ø½À´Ï´Ù
INSERT INTO table_primary (
    login_id,
    login_pwd,
    tel
) VALUES (
    NULL,
    'hong123',
    '010-1234-1234'
);

INSERT INTO table_primary (
    login_id,
    login_pwd,
    tel
) VALUES (
    'hong123',
    'hong123',
    '010-1234-1234'
);

-- 4) ¿Ü·¡Å° : Foreign key(FK) : ´Ù¸¥ Å×ÀÌºí °£ °ü°è¸¦ Á¤ÀÇÇÏ´Âµ¥ »ç¿ë
--             Æ¯Á¤ Å×ÀÌºí¿¡¼­ primary key Á¦¾àÁ¶°ÇÀ» ÁöÁ¤ÇÑ ¿­À» ´Ù¸¥ Å×ÀÌºíÀÇ Æ¯Á¤ ¿­¿¡¼­ ÂüÁ¶

-- »ç¿ø Ãß°¡ ½Ã ºÎ¼­ ¹øÈ£ ÀÔ·ÂÀ» ÇØ¾ß ÇÔ => dept Å×ÀÌºíÀÇ deptno ¸¸ »ðÀÔ

-- ºÎ¸ð Å×ÀÌºí
CREATE TABLE DEPT_FK(
    DEPTNO NUMBER(2) CONSTRAINT DEPTFK_DEPTNO_PK PRIMARY KEY,
    DNAME VARCHAR2(14),
    LOC VARCHAR2(13)
);

-- ÀÚ½Ä Å×ÀÌºí
-- REFERENCES ÂüÁ¶ÇÒÅ×ÀÌºí¸í(ÂüÁ¶ÇÒ ¿­) : ¿Ü·¡Å° ÁöÁ¤
CREATE TABLE EMP_FK(
    EMPNO NUMBER(4) CONSTRAINT EMPFK_EMPNO_PK PRIMARY KEY,
    ENAME VARCHAR2(10),
    JOB VARCHAR2(9),
    DEPTNO NUMBER(2) CONSTRAINT EMPFK_DEPTNO_FK REFERENCES DEPT_FK(DEPTNO));
    
-- ¹«°á¼º Á¦¾àÁ¶°Ç(SCOTT.EMPFK_DEPTNO_FK)ÀÌ À§¹èµÇ¾ú½À´Ï´Ù- ºÎ¸ð Å°°¡ ¾ø½À´Ï´Ù
INSERT INTO EMP_FK VALUES(1000, 'TEST', 'SALES', 10);

-- ¿Ü·¡Å° Á¦¾à Á¶°Ç
-- ºÎ¸ð Å×ÀÌºí µ¥ÀÌÅÍ°¡ µ¥ÀÌÅÍ ¸ÕÀú ÀÔ·Â

INSERT INTO DEPT_FK VALUES(10, 'DATABASE', 'SEOUL');

-- »èÁ¦ ½Ã 
-- ÀÚ½Ä Å×ÀÌºí µ¥ÀÌÅÍ ¸ÕÀú »èÁ¦
-- ºÎ¸ð Å×ÀÌºí µ¥ÀÌÅÍ »èÁ¦

-- ¹«°á¼º Á¦¾àÁ¶°Ç(SCOTT.EMPFK_DEPTNO_FK)ÀÌ À§¹èµÇ¾ú½À´Ï´Ù- ÀÚ½Ä ·¹ÄÚµå°¡ ¹ß°ßµÇ¾ú½À´Ï´Ù
-- DELETE FROM DEPT_FK WHERE DEPTNO=10;


-- ¿Ü·¡ Å° Á¦¾àÁ¶°Ç ¿É¼Ç
-- ON DELETE CASCADE : ºÎ¸ð°¡ »èÁ¦µÇ¸é ºÎ¸ð¸¦ ÂüÁ¶ÇÏ´Â ÀÚ½Ä ·¹ÄÚµåµµ °°ÀÌ »èÁ¦
-- ON DELETE SET NULL : ºÎ¸ð°¡ »èÁ¦µÇ¸é ºÎ¸ð¸¦ ÂüÁ¶ÇÏ´Â ÀÚ½Ä ·¹ÄÚµåÀÇ °ªÀ» NULL º¯°æ

CREATE TABLE DEPT_FK2(
    DEPTNO NUMBER(2) CONSTRAINT DEPTFK_DEPTNO_PK2 PRIMARY KEY,
    DNAME VARCHAR2(14),
    LOC VARCHAR2(13)
);

CREATE TABLE EMP_FK2(
    EMPNO NUMBER(4) CONSTRAINT EMPFK_EMPNO_PK2 PRIMARY KEY,
    ENAME VARCHAR2(10),
    JOB VARCHAR2(9),
    DEPTNO NUMBER(2) CONSTRAINT EMPFK_DEPTNO_FK2 REFERENCES DEPT_FK2(DEPTNO) ON DELETE CASCADE);
    
INSERT INTO DEPT_FK2 VALUES(10, 'DATABASE', 'SEOUL');
INSERT INTO EMP_FK2 VALUES(1000, 'TEST', 'SALES', 10);

DELETE FROM DEPT_FK2 WHERE DEPTNO=10;

-- 5) CHECK : ¿­¿¡ ÁöÁ¤ÇÒ ¼ö ÀÖ´Â °ªÀÇ ¹üÀ§ ¶Ç´Â ÆÐÅÏ ÁöÁ¤
-- ºñ¹Ð¹øÈ£´Â 3 ÀÚ¸®º¸´Ù Ä¿¾ß ÇÑ´Ù

CREATE TABLE table_CHECK (
    login_id  VARCHAR2(20) PRIMARY KEY,
    login_pwd VARCHAR2(20) CHECK (LENGTH(LOGIN_PWD) > 3),
    tel       VARCHAR2(20)
);
-- Ã¼Å© Á¦¾àÁ¶°Ç(SCOTT.SYS_C008373)ÀÌ À§¹è
INSERT INTO TABLE_CHECK VALUES('TEST','123','010-1234-5678');

INSERT INTO TABLE_CHECK VALUES('TEST','1234','010-1234-5678');


-- 6) DEFAULT : ±âº»°ª ÁöÁ¤
CREATE TABLE table_default (
    login_id  VARCHAR2(20) PRIMARY KEY,
    login_pwd VARCHAR2(20) DEFAULT '1234',
    tel       VARCHAR2(20)
);

INSERT INTO TABLE_DEFAULT VALUES('TEST',NULL,'010-1234-5678');
INSERT INTO TABLE_DEFAULT(login_id, tel) VALUES('TEST1','010-1234-5678');

SELECT * FROM TABLE_DEFAULT;






=======
    â‘  EMP í…Œì´ë¸”ì˜ ë‚´ìš©ì„ ì´ìš©í•˜ì—¬ EXAM_EMP ìƒì„±
    â‘¡ DEPT í…Œì´ë¸”ì˜ ë‚´ìš©ì„ ì´ìš©í•˜ì—¬ EXAM_DEPT ìƒì„±
    â‘¢ SALGRADE í…Œì´ë¸”ì˜ ë‚´ìš©ì„ ì´ìš©í•˜ì—¬ EXAM_SALGRADE ìƒì„±
*/
CREATE TABLE EXAM_EMP AS SELECT * FROM EMP;
CREATE TABLE EXAM_DEPT AS SELECT * FROM DEPT;
CREATE TABLE EXAM_SALGRADE AS SELECT * FROM SALGRADE;

SELECT * FROM EXAM_EMP;
SELECT * FROM EXAM_DEPT;
SELECT * FROM EXAM_SALGRADE;

-- ì •ë³´ ìž…ë ¥
INSERT INTO EXAM_EMP(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
VALUES(7201,'TEST_USER1','MANAGER',7788,'2016-01-02',4500,NULL,50);
INSERT INTO EXAM_EMP(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
VALUES(7202,'TEST_USER2','CLERK',7201,'2016-02-21',1800,NULL,50);
INSERT INTO EXAM_EMP(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
VALUES(7203,'TEST_USER3','ANALYST',7201,'2016-04-11',3400,NULL,60);
INSERT INTO EXAM_EMP(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
VALUES(7204,'TEST_USER4','SALESMAN',7201,'2016-05-31',2700,300,60);
INSERT INTO EXAM_EMP(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
VALUES(7205,'TEST_USER5','CLERK',7201,'2016-07-20',2600,NULL,70);
INSERT INTO EXAM_EMP(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
VALUES(7206,'TEST_USER6','CLERK',7201,'2016-09-08',2600,NULL,70);
INSERT INTO EXAM_EMP(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
VALUES(7207,'TEST_USER7','LECTURER',7201,'2016-10-28',2300,NULL,80);
INSERT INTO EXAM_EMP(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
VALUES(7208,'TEST_USER8','STUDENT',7201,'2018-03-09',1200,NULL,80);

COMMIT;

/* ì„œë¸Œì¿¼ë¦¬
[ì‹¤ìŠµ3] EXAM_EMPì— ì†í•œ ì‚¬ì› ì¤‘ 50ë²ˆ ë¶€ì„œì—ì„œ ê·¼ë¬´í•˜ëŠ” ì‚¬ì›ë“¤ì˜ í‰ê·  ê¸‰ì—¬ë³´ë‹¤
ë§Žì€ ê¸‰ì—¬ë¥¼ ë°›ê³  ìžˆëŠ” ì‚¬ì›ë“¤ì„ 70ë²ˆ ë¶€ì„œë¡œ ì˜®ê¸°ëŠ” SQL ë¬¸ ìž‘ì„±í•˜ê¸°-ì„œë¸Œì¿¼ë¦¬ í•œ í›„
*/

UPDATE EXAM_EMP
SET DEPTNO=70
WHERE SAL > (SELECT AVG(SAL) FROM EXAM_EMP WHERE DEPTNO=50);

/* ì„œë¸Œì¿¼ë¦¬
[ì‹¤ìŠµ4] EXAM_EMPì— ì†í•œ ì‚¬ì› ì¤‘ 60ë²ˆ ë¶€ì„œì˜ ì‚¬ì› ì¤‘ì—ì„œ ìž…ì‚¬ì¼ì´ ê°€ìž¥ ë¹ ë¥¸ ì‚¬ì›ë³´ë‹¤
ëŠ¦ê²Œ ìž…ì‚¬í•œ ì‚¬ì›ì˜ ê¸‰ì—¬ë¥¼ 10% ì¸ìƒí•˜ê³  80ë²ˆ ë¶€ì„œë¡œ ì˜®ê¸°ëŠ” SQL ë¬¸ ìž‘ì„±í•˜ê¸°
*/
UPDATE EXAM_EMP SET SAL=SAL*1.1, DEPTNO=80 WHERE
HIREDATE>(SELECT MIN(HIREDATE) FROM EXAM_EMP WHERE DEPTNO=60);


--[ì‹¤ìŠµ5] EXAM_EMPì— ì†í•œ ì‚¬ì› ì¤‘, ê¸‰ì—¬ ë“±ê¸‰ì´ 5ì¸ ì‚¬ì›ì„ ì‚­ì œí•˜ëŠ” SQLë¬¸ì„ ìž‘ì„±í•˜ê¸°
DELETE FROM EXAM_EMP WHERE EMPNO IN (SELECT EMPNO FROM EXAM_EMP,SALGRADE
WHERE SAL BETWEEN LOSAL AND HISAL AND GRADE=5);
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b




