<<<<<<< HEAD
-- employees Å×ÀÌºí ÀüÃ¼ ³»¿ë Á¶È¸
=======
-- employees í…Œì´ë¸” ì „ì²´ ë‚´ìš© ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    employees;

<<<<<<< HEAD
-- employee Å×ÀÌºí first_name, last_name, job_id ¸¸ Á¶È¸
=======
-- employee í…Œì´ë¸” first_name, last_name, job_id ë§Œ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    first_name,
    last_name,
    job_id
FROM
    employees;
    
<<<<<<< HEAD
-- »ç¿ø¹øÈ£°¡ 176ÀÎ »ç¶÷ÀÇ LAST_NAME Á¶È¸
=======
-- ì‚¬ì›ë²ˆí˜¸ê°€ 176ì¸ ì‚¬ëžŒì˜ LAST_NAME ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    last_name
FROM
    employees
WHERE
    employee_id = 176;

<<<<<<< HEAD
-- ¿¬ºÀÀÌ 12000 ÀÌ»ó µÇ´Â Á÷¿øµéÀÇ LAST_NAME, SALARY Á¶È¸
=======
-- ì—°ë´‰ì´ 12000 ì´ìƒ ë˜ëŠ” ì§ì›ë“¤ì˜ LAST_NAME, SALARY ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary >= 12000;
    
    
<<<<<<< HEAD
-- ¿¬ºÀÀÌ 5000 ¿¡¼­ 12000 ¹üÀ§°¡ ¾Æ´Ñ »ç¶÷µéÀÇ LAST_NAME, SALARY Á¶È¸
=======
-- ì—°ë´‰ì´ 5000 ì—ì„œ 12000 ë²”ìœ„ê°€ ì•„ë‹Œ ì‚¬ëžŒë“¤ì˜ LAST_NAME, SALARY ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary < 5000
    OR salary > 12000
ORDER BY
    last_name DESC;
    
    
<<<<<<< HEAD
-- 20, 50 ¹ø ºÎ¼­¿¡¼­ ±Ù¹«ÇÏ´Â ¸ðµç »ç¿øµéÀÇ LAST_NAME, ºÎ¼­¹øÈ£¸¦ ¿À¸§Â÷¼øÀ¸·Î Á¶È¸
=======
-- 20, 50 ë²ˆ ë¶€ì„œì—ì„œ ê·¼ë¬´í•˜ëŠ” ëª¨ë“  ì‚¬ì›ë“¤ì˜ LAST_NAME, ë¶€ì„œë²ˆí˜¸ë¥¼ ì˜¤ë¦„ì°¨ìˆœìœ¼ë¡œ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    last_name,
    department_id
FROM
    employees
WHERE
    department_id IN ( 20, 50 )
ORDER BY
    last_name,
    department_id;

<<<<<<< HEAD
-- Ä¿¹Ì¼ÇÀ» ¹Þ´Â ¸ðµç »ç¿øµéÀÇ LAST_NAME, ¿¬ºÀ, Ä¿¹Ì¼Ç Á¶È¸(¿¬ºÀÀÇ ³»¸²Â÷¼ø, Ä¿¹Ì¼Ç ³»¸²Â÷¼ø)
=======
-- ì»¤ë¯¸ì…˜ì„ ë°›ëŠ” ëª¨ë“  ì‚¬ì›ë“¤ì˜ LAST_NAME, ì—°ë´‰, ì»¤ë¯¸ì…˜ ì¡°íšŒ(ì—°ë´‰ì˜ ë‚´ë¦¼ì°¨ìˆœ, ì»¤ë¯¸ì…˜ ë‚´ë¦¼ì°¨ìˆœ)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    salary,
    commission_pct
FROM
    employees
WHERE
    commission_pct > 0
ORDER BY
    salary DESC,
    commission_pct DESC;


<<<<<<< HEAD
-- ¿¬ºÀÀÌ 2500,3500,7000ÀÌ ¾Æ´Ï¸ç Á÷¾÷ÀÌ SA_REP ³ª ST_CLERK ÀÎ »ç¿ø Á¶È¸
=======
-- ì—°ë´‰ì´ 2500,3500,7000ì´ ì•„ë‹ˆë©° ì§ì—…ì´ SA_REP ë‚˜ ST_CLERK ì¸ ì‚¬ì› ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    employees
WHERE
    salary NOT IN ( 2500, 3500, 7000 )
    AND job_id IN ( 'SA_REP', 'ST_CLERK' );


<<<<<<< HEAD
-- 2008/02/20 ~ 2008/05/01 »çÀÌ¿¡ °í¿ëµÈ »ç¿øµéÀÇ last_name,»ç¹ø,°í¿ëÀÏÀÚ Á¶È¸
-- °í¿ëÀÏÀÚ ³»¸²Â÷¼ø Á¤·Ä
-- ³¯Â¥ Ç¥Çö½Ã È¬µû¿ÈÇ¥ ¾È¿¡ Ç¥Çö - OR / »ç¿ë °¡´É
=======
-- 2008/02/20 ~ 2008/05/01 ì‚¬ì´ì— ê³ ìš©ëœ ì‚¬ì›ë“¤ì˜ last_name,ì‚¬ë²ˆ,ê³ ìš©ì¼ìž ì¡°íšŒ
-- ê³ ìš©ì¼ìž ë‚´ë¦¼ì°¨ìˆœ ì •ë ¬
-- ë‚ ì§œ í‘œí˜„ì‹œ í™‘ë”°ì˜´í‘œ ì•ˆì— í‘œí˜„ - OR / ì‚¬ìš© ê°€ëŠ¥
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    employee_id,
    hire_date
FROM
    employees
WHERE
        hire_date >= '2008-02-20'
    AND hire_date <= '2008-05-01'
ORDER BY
    hire_date DESC;

SELECT
    last_name,
    employee_id,
    hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '2008-02-20' AND '2008-05-01'
ORDER BY
    hire_date DESC;


<<<<<<< HEAD
-- 2004³âµµ¿¡ °í¿ëµÈ »ç¿øµéÀÇ last_name, hire_date Á¶È¸
-- °í¿ëÀÏÀÚ ¿À¸§Â÷¼ø Á¤·Ä
=======
-- 2004ë…„ë„ì— ê³ ìš©ëœ ì‚¬ì›ë“¤ì˜ last_name, hire_date ì¡°íšŒ
-- ê³ ìš©ì¼ìž ì˜¤ë¦„ì°¨ìˆœ ì •ë ¬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
        hire_date >= '2004-01-01'
    AND hire_date <= '2004-12-31'
ORDER BY
    hire_date;

<<<<<<< HEAD
-- ºÎ¼­°¡ 20,50ÀÌ°í ¿¬ºÀÀÌ 5000 ¿¡¼­ 12000 ¹üÀ§ÀÎ »ç¶÷µéÀÇ LAST_NAME, SALARY Á¶È¸
-- ¿¬ºÀ ¿À¸§Â÷¼ø Á¤·Ä
=======
-- ë¶€ì„œê°€ 20,50ì´ê³  ì—°ë´‰ì´ 5000 ì—ì„œ 12000 ë²”ìœ„ì¸ ì‚¬ëžŒë“¤ì˜ LAST_NAME, SALARY ì¡°íšŒ
-- ì—°ë´‰ ì˜¤ë¦„ì°¨ìˆœ ì •ë ¬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    department_id IN ( 20, 50 )
    AND salary BETWEEN 5000 AND 12000
ORDER BY
    salary;
    

-- LIKE    
<<<<<<< HEAD
-- 2004³âµµ¿¡ °í¿ëµÈ »ç¿øµéÀÇ last_name, hire_date Á¶È¸
-- °í¿ëÀÏÀÚ ¿À¸§Â÷¼ø Á¤·Ä    
=======
-- 2004ë…„ë„ì— ê³ ìš©ëœ ì‚¬ì›ë“¤ì˜ last_name, hire_date ì¡°íšŒ
-- ê³ ìš©ì¼ìž ì˜¤ë¦„ì°¨ìˆœ ì •ë ¬    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date LIKE '04%'
ORDER BY
    hire_date;    
    
<<<<<<< HEAD
-- LAST_NAME ¿¡ u°¡ Æ÷ÇÔµÈ »ç¿øµéÀÇ »ç¹ø, last_name Á¶È¸
=======
-- LAST_NAME ì— uê°€ í¬í•¨ëœ ì‚¬ì›ë“¤ì˜ ì‚¬ë²ˆ, last_name ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    employee_id,
    last_name
FROM
    employees
WHERE
    last_name LIKE '%u%';
    
<<<<<<< HEAD
-- LAST_NAME ¿¡ ³×¹øÂ° ±ÛÀÚ°¡ aÀÎ »ç¿øµéÀÇ last_name Á¶È¸    
=======
-- LAST_NAME ì— ë„¤ë²ˆì§¸ ê¸€ìžê°€ aì¸ ì‚¬ì›ë“¤ì˜ last_name ì¡°íšŒ    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    employee_id,
    last_name
FROM
    employees
WHERE
    last_name LIKE '___a%';    
    
<<<<<<< HEAD
-- LAST_NAME ¿¡ a È¤Àº e ±ÛÀÚ°¡ Æ÷ÇÔµÈ »ç¿øµéÀÇ last_name Á¶È¸  
-- last_name ¿À¸§Â÷¼ø Á¤·Ä
=======
-- LAST_NAME ì— a í˜¹ì€ e ê¸€ìžê°€ í¬í•¨ëœ ì‚¬ì›ë“¤ì˜ last_name ì¡°íšŒ  
-- last_name ì˜¤ë¦„ì°¨ìˆœ ì •ë ¬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    employee_id,
    last_name
FROM
    employees
WHERE
    last_name LIKE '%a%'
    OR last_name LIKE '%e%'
ORDER BY
    last_name; 

<<<<<<< HEAD
-- LAST_NAME ¿¡ a ¿Í e ±ÛÀÚ°¡ Æ÷ÇÔµÈ »ç¿øµéÀÇ last_name Á¶È¸  
-- last_name ¿À¸§Â÷¼ø Á¤·Ä    
=======
-- LAST_NAME ì— a ì™€ e ê¸€ìžê°€ í¬í•¨ëœ ì‚¬ì›ë“¤ì˜ last_name ì¡°íšŒ  
-- last_name ì˜¤ë¦„ì°¨ìˆœ ì •ë ¬    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    employee_id,
    last_name
FROM
    employees
WHERE
    last_name LIKE '%a%e%'
    OR last_name LIKE '%e%a%'
ORDER BY
    last_name;    
    
<<<<<<< HEAD
-- ¸Å´ÏÀú(manager_id)°¡ ¾ø´Â »ç¶÷µéÀÇ last_name, job_id Á¶È¸
=======
-- ë§¤ë‹ˆì €(manager_id)ê°€ ì—†ëŠ” ì‚¬ëžŒë“¤ì˜ last_name, job_id ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    job_id
FROM
    employees
WHERE
    manager_id IS NULL
    OR manager_id = '';

<<<<<<< HEAD
-- job_id°¡ ST_CLERK °¡ »ç¿øÀÇ ºÎ¼­¹øÈ£ Á¶È¸(´Ü ºÎ¼­¹øÈ£°¡ NULL ÀÎ »ç¿øÀº Á¦¿ÜÇÑ´Ù.)
-- Áßº¹À» Á¦°ÅÇÑ ÈÄ ºÎ¼­¹øÈ£¸¸ Á¶È¸
=======
-- job_idê°€ ST_CLERK ê°€ ì‚¬ì›ì˜ ë¶€ì„œë²ˆí˜¸ ì¡°íšŒ(ë‹¨ ë¶€ì„œë²ˆí˜¸ê°€ NULL ì¸ ì‚¬ì›ì€ ì œì™¸í•œë‹¤.)
-- ì¤‘ë³µì„ ì œê±°í•œ í›„ ë¶€ì„œë²ˆí˜¸ë§Œ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT DISTINCT
    department_id
FROM
    employees
WHERE
        job_id = 'ST_CLERK'
    AND department_id IS NOT NULL;

<<<<<<< HEAD
-- commission_pct °¡ nullÀÌ ¾Æ´Ñ »ç¿øµé Áß¿¡¼­ commission = salary * commission_pct ¸¦ ±¸ÇÏ¿©
-- employee_id, first_name, job_id Ãâ·Â
=======
-- commission_pct ê°€ nullì´ ì•„ë‹Œ ì‚¬ì›ë“¤ ì¤‘ì—ì„œ commission = salary * commission_pct ë¥¼ êµ¬í•˜ì—¬
-- employee_id, first_name, job_id ì¶œë ¥
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    employee_id,
    first_name,
    job_id,
    salary * commission_pct AS commission
FROM
    employees
WHERE
    commission_pct IS NOT NULL;
    
<<<<<<< HEAD
-- first_name ÀÌ Curtis ÀÎ »ç¶÷ÀÇ first_name, last_name, email, phone_number, job_id¸¦ Á¶È¸ÇÑ´Ù.
-- ´Ü, job_id ÀÇ °á°ú´Â ¼Ò¹®ÀÚ·Î Ãâ·ÂµÇµµ·Ï ÇÑ´Ù.
=======
-- first_name ì´ Curtis ì¸ ì‚¬ëžŒì˜ first_name, last_name, email, phone_number, job_idë¥¼ ì¡°íšŒí•œë‹¤.
-- ë‹¨, job_id ì˜ ê²°ê³¼ëŠ” ì†Œë¬¸ìžë¡œ ì¶œë ¥ë˜ë„ë¡ í•œë‹¤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    first_name,
    last_name,
    email,
    phone_number,
    lower(job_id)
FROM
    employees
WHERE
    first_name = 'Curtis';


<<<<<<< HEAD
-- ºÎ¼­¹øÈ£°¡ 60,70,80,90ÀÎ »ç¿øµéÀÇ employee_id, first_name, hire_date, job_id Á¶È¸
-- ´Ü, job_id°¡ IT_PROG ÀÎ »ç¿øÀÇ °æ¿ì ÇÁ·Î±×·¡¸Ó·Î º¯°æÇÑ ÈÄ Ãâ·Â
=======
-- ë¶€ì„œë²ˆí˜¸ê°€ 60,70,80,90ì¸ ì‚¬ì›ë“¤ì˜ employee_id, first_name, hire_date, job_id ì¡°íšŒ
-- ë‹¨, job_idê°€ IT_PROG ì¸ ì‚¬ì›ì˜ ê²½ìš° í”„ë¡œê·¸ëž˜ë¨¸ë¡œ ë³€ê²½í•œ í›„ ì¶œë ¥
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b


SELECT
    employee_id,
    first_name,
    hire_date,
<<<<<<< HEAD
    replace(job_id, 'IT_PROG', 'ÇÁ·Î±×·¡¸Ó')
=======
    replace(job_id, 'IT_PROG', 'í”„ë¡œê·¸ëž˜ë¨¸')
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
FROM
    employees
WHERE
    department_id IN ( 60, 70, 80, 90 );


<<<<<<< HEAD
-- JOB_ID°¡ AD_PRES, PU_CLERK ÀÎ »ç¿øµéÀÇ employee_id, first_name,last_name,department_id,job_id¸¦ Á¶È¸ÇÑ´Ù.
-- ´Ü »ç¿ø¸íÀº first_name°ú last_nameÀ» ¿¬°áÇÏ¿© Ãâ·ÂÇÏ½Ã¿À
=======
-- JOB_IDê°€ AD_PRES, PU_CLERK ì¸ ì‚¬ì›ë“¤ì˜ employee_id, first_name,last_name,department_id,job_idë¥¼ ì¡°íšŒí•œë‹¤.
-- ë‹¨ ì‚¬ì›ëª…ì€ first_nameê³¼ last_nameì„ ì—°ê²°í•˜ì—¬ ì¶œë ¥í•˜ì‹œì˜¤
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    employee_id,
    concat(first_name,
           concat(' ', last_name)),
    department_id,
    job_id
FROM
    employees
WHERE
    job_id IN ( 'AD_PRES', 'PU_CLERK' );

SELECT
    employee_id,
    first_name
    || ' '
    || last_name,
    department_id,
    job_id
FROM
    employees
WHERE
    job_id IN ( 'AD_PRES', 'PU_CLERK' );


<<<<<<< HEAD
-- ºÎ¼­ 80ÀÇ °¢ »ç¿ø¿¡ ´ëÇØ Àû¿ë °¡´ÉÇÑ ¼¼À²À» Ç¥½ÃÇÏ½Ã¿À.
=======
-- ë¶€ì„œ 80ì˜ ê° ì‚¬ì›ì— ëŒ€í•´ ì ìš© ê°€ëŠ¥í•œ ì„¸ìœ¨ì„ í‘œì‹œí•˜ì‹œì˜¤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    salary,
    decode(trunc(salary / 2000, 0),
           0,
           0.00,
           1,
           0.09,
           2,
           0.20,
           3,
           0.30,
           4,
           0.40,
           5,
           0.42,
           6,
           0.44,
           0.45) AS tax_rate
FROM
    employees
WHERE
    department_id = 80;
    
<<<<<<< HEAD
-- È¸»ç ³»ÀÇ ÃÖ´ë ¿¬ºÀ ¹× ÃÖ¼Ò ¿¬ºÀÀÇ Â÷ÀÌ¸¦ Ãâ·Â
=======
-- íšŒì‚¬ ë‚´ì˜ ìµœëŒ€ ì—°ë´‰ ë° ìµœì†Œ ì—°ë´‰ì˜ ì°¨ì´ë¥¼ ì¶œë ¥
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    MAX(salary) - MIN(salary) AS sal_gap
FROM
    employees;

<<<<<<< HEAD
-- ¸Å´ÏÀú·Î ±Ù¹«ÇÏ´Â »ç¿øµéÀÇ ÃÑ ¼ýÀÚ Ãâ·Â(¸Å´ÏÀú Áßº¹ Á¦°Å)
=======
-- ë§¤ë‹ˆì €ë¡œ ê·¼ë¬´í•˜ëŠ” ì‚¬ì›ë“¤ì˜ ì´ ìˆ«ìž ì¶œë ¥(ë§¤ë‹ˆì € ì¤‘ë³µ ì œê±°)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    COUNT(DISTINCT manager_id)
FROM
    employees;


-- join
<<<<<<< HEAD
-- ÀÚ½ÅÀÇ ´ã´ç ¸Å´ÏÀúÀÇ °í¿ëÀÏº¸´Ù ºü¸¥ ÀÔ»çÀÚ Ã£±â(self join - employees)
-- hire_date, last_name, manager_id Á¶È¸
=======
-- ìžì‹ ì˜ ë‹´ë‹¹ ë§¤ë‹ˆì €ì˜ ê³ ìš©ì¼ë³´ë‹¤ ë¹ ë¥¸ ìž…ì‚¬ìž ì°¾ê¸°(self join - employees)
-- hire_date, last_name, manager_id ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    e1.hire_date,
    e1.last_name,
    e1.manager_id
FROM
    employees e1,
    employees e2
WHERE
        e1.manager_id = e2.employee_id
    AND e1.hire_date < e2.hire_date;

<<<<<<< HEAD
-- µµ½Ã ÀÌ¸§ÀÌ T·Î ½ÃÀÛÇÏ´Â Áö¿ª¿¡ »ç´Â »ç¿øµéÀÇ »ç¹ø, last_name, ºÎ¼­¹øÈ£, µµ½Ã Á¶È¸
=======
-- ë„ì‹œ ì´ë¦„ì´ Të¡œ ì‹œìž‘í•˜ëŠ” ì§€ì—­ì— ì‚¬ëŠ” ì‚¬ì›ë“¤ì˜ ì‚¬ë²ˆ, last_name, ë¶€ì„œë²ˆí˜¸, ë„ì‹œ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- employees, departments, locations inner join


SELECT
    e.employee_id,
    e.last_name,
    d.department_id,
    l.city
FROM
    employees   e,
    departments d,
    locations   l
WHERE
        e.department_id = d.department_id
    AND d.location_id = l.location_id
    AND l.city LIKE 'T%';



<<<<<<< HEAD
-- À§Ä¡ id°¡ 1700ÀÎ »ç¿øµéÀÇ »ç¹ø, last_name, ºÎ¼­¹øÈ£, ±Þ¿© Á¶È¸
=======
-- ìœ„ì¹˜ idê°€ 1700ì¸ ì‚¬ì›ë“¤ì˜ ì‚¬ë²ˆ, last_name, ë¶€ì„œë²ˆí˜¸, ê¸‰ì—¬ ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- employees, departments inner join


SELECT
    e.employee_id,
    e.last_name,
    d.department_id,
    e.salary
FROM
    employees   e,
    departments d
WHERE
        e.department_id = d.department_id
    AND d.location_id = 1700;

<<<<<<< HEAD
-- ºÎ¼­¸í, À§Ä¡id, °¢ ºÎ¼­º° »ç¿ø ÃÑ ¼ö, °¢ ºÎ¼­º° Æò±Õ ¿¬ºÀ Á¶È¸
-- Æò±Õ ¿¬ºÀÀº ¼Ò¼öÁ¡ 2ÀÚ¸®±îÁö¸¸
=======
-- ë¶€ì„œëª…, ìœ„ì¹˜id, ê° ë¶€ì„œë³„ ì‚¬ì› ì´ ìˆ˜, ê° ë¶€ì„œë³„ í‰ê·  ì—°ë´‰ ì¡°íšŒ
-- í‰ê·  ì—°ë´‰ì€ ì†Œìˆ˜ì  2ìžë¦¬ê¹Œì§€ë§Œ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- employees, departments inner join

SELECT
    d.department_name,
    d.location_id,
    COUNT(e.employee_id),
    round(AVG(e.salary),
          2)
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id
GROUP BY
    d.department_name,
    d.location_id;


<<<<<<< HEAD
-- Executive ºÎ¼­¿¡ ±Ù¹«ÇÏ´Â »ç¿øµéÀÇ ºÎ¼­¹øÈ£,last_name,job_id Á¶È¸
=======
-- Executive ë¶€ì„œì— ê·¼ë¬´í•˜ëŠ” ì‚¬ì›ë“¤ì˜ ë¶€ì„œë²ˆí˜¸,last_name,job_id ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- employees, departments inner join

SELECT
    d.department_id,
    e.last_name,
    e.job_id
FROM
    employees   e,
    departments d
WHERE
        e.department_id = d.department_id
    AND d.department_name = 'Executive';

<<<<<<< HEAD
-- °¢ »ç¿øº° ¼Ò¼ÓºÎ¼­¿¡¼­ ÀÚ½Åº¸´Ù ´Ê°Ô °í¿ëµÇ¾úÀ¸³ª º¸´Ù ¸¹Àº ¿¬ºÀÀ» ¹Þ´Â »ç¿øÀÌ Á¸ÀçÇÏ´Â ¸ðµç »ç¿øµéÀÇ
-- ºÎ¼­¹øÈ£, ÀÌ¸§(first_name°ú last_name ¿¬°áÇÏ±â), salary, hire_date Á¶È¸
=======
-- ê° ì‚¬ì›ë³„ ì†Œì†ë¶€ì„œì—ì„œ ìžì‹ ë³´ë‹¤ ëŠ¦ê²Œ ê³ ìš©ë˜ì—ˆìœ¼ë‚˜ ë³´ë‹¤ ë§Žì€ ì—°ë´‰ì„ ë°›ëŠ” ì‚¬ì›ì´ ì¡´ìž¬í•˜ëŠ” ëª¨ë“  ì‚¬ì›ë“¤ì˜
-- ë¶€ì„œë²ˆí˜¸, ì´ë¦„(first_nameê³¼ last_name ì—°ê²°í•˜ê¸°), salary, hire_date ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- employees self join

SELECT DISTINCT
    e1.department_id,
    e1.first_name
    || ' '
    || e1.last_name AS name,
    e1.salary,
    e1.hire_date
FROM
    employees e1,
    employees e2
WHERE
        e1.department_id = e2.department_id
    AND e1.hire_date < e2.hire_date
    AND e1.salary < e2.salary;

<<<<<<< HEAD
-- ¼­ºêÄõ¸®
-- LAST_NAME ¿¡ u°¡ Æ÷ÇÔµÈ »ç¿øµé°ú µ¿ÀÏ ºÎ¼­¿¡ ±Ù¹«ÇÏ´Â »ç¿øµéÀÇ »ç¹ø, last_name Á¶È¸
=======
-- ì„œë¸Œì¿¼ë¦¬
-- LAST_NAME ì— uê°€ í¬í•¨ëœ ì‚¬ì›ë“¤ê³¼ ë™ì¼ ë¶€ì„œì— ê·¼ë¬´í•˜ëŠ” ì‚¬ì›ë“¤ì˜ ì‚¬ë²ˆ, last_name ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    employee_id,
    last_name
FROM
    employees e1
WHERE
    e1.department_id IN (
        SELECT DISTINCT
            department_id
        FROM
            employees
        WHERE
            last_name LIKE '%u%'
    )
ORDER BY
    e1.employee_id;

<<<<<<< HEAD
-- job_id °¡ SA_MAN ÀÎ »ç¿øµéÀÇ ÃÖ´ë ¿¬ºÀº¸´Ù ³ô°Ô ¹Þ´Â »ç¿øµéÀÇ last_name, job_id, salary Á¶È¸
=======
-- job_id ê°€ SA_MAN ì¸ ì‚¬ì›ë“¤ì˜ ìµœëŒ€ ì—°ë´‰ë³´ë‹¤ ë†’ê²Œ ë°›ëŠ” ì‚¬ì›ë“¤ì˜ last_name, job_id, salary ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    job_id,
    salary
FROM
    employees
WHERE
    salary > (
        SELECT
            MAX(salary)
        FROM
            employees
        WHERE
            job_id = 'SA_MAN'
    );

<<<<<<< HEAD
-- Ä¿¹Ì¼ÇÀ» ¹ö´Â »ç¿øµéÀÇ ºÎ¼­¿Í ¿¬ºÀÀÌ µ¿ÀÏÇÑ »ç¿øµéÀÇ last_name, department_id, salary Á¶È¸
=======
-- ì»¤ë¯¸ì…˜ì„ ë²„ëŠ” ì‚¬ì›ë“¤ì˜ ë¶€ì„œì™€ ì—°ë´‰ì´ ë™ì¼í•œ ì‚¬ì›ë“¤ì˜ last_name, department_id, salary ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    department_id,
    salary
FROM
    employees
WHERE
    ( department_id, salary ) IN (
        SELECT
            department_id, salary
        FROM
            employees
        WHERE
            commission_pct > 0
    );

<<<<<<< HEAD
-- È¸»ç ÀüÃ¼ Æò±Õ ¿¬ºÀº¸´Ù ´õ ¹Þ´Â »ç¿øµé Áß last_name¿¡ u°¡ ÀÖ´Â »ç¿øµéÀÌ ±Ù¹«ÇÏ´Â ºÎ¼­¿¡¼­
-- ±Ù¹«ÇÏ´Â »ç¿øµéÀÇ employee_id, last_name, salary Á¶È¸
=======
-- íšŒì‚¬ ì „ì²´ í‰ê·  ì—°ë´‰ë³´ë‹¤ ë” ë°›ëŠ” ì‚¬ì›ë“¤ ì¤‘ last_nameì— uê°€ ìžˆëŠ” ì‚¬ì›ë“¤ì´ ê·¼ë¬´í•˜ëŠ” ë¶€ì„œì—ì„œ
-- ê·¼ë¬´í•˜ëŠ” ì‚¬ì›ë“¤ì˜ employee_id, last_name, salary ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    employee_id,
    last_name,
    salary
FROM
    (
        SELECT DISTINCT
            department_id
        FROM
            employees
        WHERE
                salary > (
                    SELECT
                        round(AVG(salary),
                              0)
                    FROM
                        employees
                )
            AND last_name LIKE '%u%'
    )         dept,
    employees e
WHERE
    e.department_id = dept.department_id
ORDER BY
    employee_id;

<<<<<<< HEAD
-- last_name ÀÌ Davies ÀÎ »ç¶÷º¸´Ù ³ªÁß¿¡ °í¿ëµÈ »ç¿øµéÀÇ last_name, hire_date Á¶È¸
=======
-- last_name ì´ Davies ì¸ ì‚¬ëžŒë³´ë‹¤ ë‚˜ì¤‘ì— ê³ ìš©ëœ ì‚¬ì›ë“¤ì˜ last_name, hire_date ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date > (
        SELECT
            hire_date
        FROM
            employees
        WHERE
            last_name = 'Davies'
    )
ORDER BY
    hire_date; 

<<<<<<< HEAD
-- last_nameÀÌ King ÀÎ »ç¿øÀ» ¸Å´ÏÀú·Î µÎ°í ÀÖ´Â ¸ðµç »ç¿øµéÀÇ last_name, salary Á¶È¸
=======
-- last_nameì´ King ì¸ ì‚¬ì›ì„ ë§¤ë‹ˆì €ë¡œ ë‘ê³  ìžˆëŠ” ëª¨ë“  ì‚¬ì›ë“¤ì˜ last_name, salary ì¡°íšŒ
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    manager_id IN (
        SELECT
            employee_id
        FROM
            employees
        WHERE
            last_name = 'King'
    );