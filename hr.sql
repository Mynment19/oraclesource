<<<<<<< HEAD
-- employees 테이블 전체 내용 조회
=======
-- employees �뀒�씠釉� �쟾泥� �궡�슜 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    employees;

<<<<<<< HEAD
-- employee 테이블 first_name, last_name, job_id 만 조회
=======
-- employee �뀒�씠釉� first_name, last_name, job_id 留� 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    first_name,
    last_name,
    job_id
FROM
    employees;
    
<<<<<<< HEAD
-- 사원번호가 176인 사람의 LAST_NAME 조회
=======
-- �궗�썝踰덊샇媛� 176�씤 �궗�엺�쓽 LAST_NAME 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    last_name
FROM
    employees
WHERE
    employee_id = 176;

<<<<<<< HEAD
-- 연봉이 12000 이상 되는 직원들의 LAST_NAME, SALARY 조회
=======
-- �뿰遊됱씠 12000 �씠�긽 �릺�뒗 吏곸썝�뱾�쓽 LAST_NAME, SALARY 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary >= 12000;
    
    
<<<<<<< HEAD
-- 연봉이 5000 에서 12000 범위가 아닌 사람들의 LAST_NAME, SALARY 조회
=======
-- �뿰遊됱씠 5000 �뿉�꽌 12000 踰붿쐞媛� �븘�땶 �궗�엺�뱾�쓽 LAST_NAME, SALARY 議고쉶
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
-- 20, 50 번 부서에서 근무하는 모든 사원들의 LAST_NAME, 부서번호를 오름차순으로 조회
=======
-- 20, 50 踰� 遺��꽌�뿉�꽌 洹쇰Т�븯�뒗 紐⑤뱺 �궗�썝�뱾�쓽 LAST_NAME, 遺��꽌踰덊샇瑜� �삤由꾩감�닚�쑝濡� 議고쉶
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
-- 커미션을 받는 모든 사원들의 LAST_NAME, 연봉, 커미션 조회(연봉의 내림차순, 커미션 내림차순)
=======
-- 而ㅻ�몄뀡�쓣 諛쏅뒗 紐⑤뱺 �궗�썝�뱾�쓽 LAST_NAME, �뿰遊�, 而ㅻ�몄뀡 議고쉶(�뿰遊됱쓽 �궡由쇱감�닚, 而ㅻ�몄뀡 �궡由쇱감�닚)
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
-- 연봉이 2500,3500,7000이 아니며 직업이 SA_REP 나 ST_CLERK 인 사원 조회
=======
-- �뿰遊됱씠 2500,3500,7000�씠 �븘�땲硫� 吏곸뾽�씠 SA_REP �굹 ST_CLERK �씤 �궗�썝 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    employees
WHERE
    salary NOT IN ( 2500, 3500, 7000 )
    AND job_id IN ( 'SA_REP', 'ST_CLERK' );


<<<<<<< HEAD
-- 2008/02/20 ~ 2008/05/01 사이에 고용된 사원들의 last_name,사번,고용일자 조회
-- 고용일자 내림차순 정렬
-- 날짜 표현시 홑따옴표 안에 표현 - OR / 사용 가능
=======
-- 2008/02/20 ~ 2008/05/01 �궗�씠�뿉 怨좎슜�맂 �궗�썝�뱾�쓽 last_name,�궗踰�,怨좎슜�씪�옄 議고쉶
-- 怨좎슜�씪�옄 �궡由쇱감�닚 �젙�젹
-- �궇吏� �몴�쁽�떆 �솑�뵲�샂�몴 �븞�뿉 �몴�쁽 - OR / �궗�슜 媛��뒫
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
-- 2004년도에 고용된 사원들의 last_name, hire_date 조회
-- 고용일자 오름차순 정렬
=======
-- 2004�뀈�룄�뿉 怨좎슜�맂 �궗�썝�뱾�쓽 last_name, hire_date 議고쉶
-- 怨좎슜�씪�옄 �삤由꾩감�닚 �젙�젹
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
-- 부서가 20,50이고 연봉이 5000 에서 12000 범위인 사람들의 LAST_NAME, SALARY 조회
-- 연봉 오름차순 정렬
=======
-- 遺��꽌媛� 20,50�씠怨� �뿰遊됱씠 5000 �뿉�꽌 12000 踰붿쐞�씤 �궗�엺�뱾�쓽 LAST_NAME, SALARY 議고쉶
-- �뿰遊� �삤由꾩감�닚 �젙�젹
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
-- 2004년도에 고용된 사원들의 last_name, hire_date 조회
-- 고용일자 오름차순 정렬    
=======
-- 2004�뀈�룄�뿉 怨좎슜�맂 �궗�썝�뱾�쓽 last_name, hire_date 議고쉶
-- 怨좎슜�씪�옄 �삤由꾩감�닚 �젙�젹    
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
-- LAST_NAME 에 u가 포함된 사원들의 사번, last_name 조회
=======
-- LAST_NAME �뿉 u媛� �룷�븿�맂 �궗�썝�뱾�쓽 �궗踰�, last_name 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    employee_id,
    last_name
FROM
    employees
WHERE
    last_name LIKE '%u%';
    
<<<<<<< HEAD
-- LAST_NAME 에 네번째 글자가 a인 사원들의 last_name 조회    
=======
-- LAST_NAME �뿉 �꽕踰덉㎏ 湲��옄媛� a�씤 �궗�썝�뱾�쓽 last_name 議고쉶    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    employee_id,
    last_name
FROM
    employees
WHERE
    last_name LIKE '___a%';    
    
<<<<<<< HEAD
-- LAST_NAME 에 a 혹은 e 글자가 포함된 사원들의 last_name 조회  
-- last_name 오름차순 정렬
=======
-- LAST_NAME �뿉 a �샊��� e 湲��옄媛� �룷�븿�맂 �궗�썝�뱾�쓽 last_name 議고쉶  
-- last_name �삤由꾩감�닚 �젙�젹
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
-- LAST_NAME 에 a 와 e 글자가 포함된 사원들의 last_name 조회  
-- last_name 오름차순 정렬    
=======
-- LAST_NAME �뿉 a ��� e 湲��옄媛� �룷�븿�맂 �궗�썝�뱾�쓽 last_name 議고쉶  
-- last_name �삤由꾩감�닚 �젙�젹    
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
-- 매니저(manager_id)가 없는 사람들의 last_name, job_id 조회
=======
-- 留ㅻ땲���(manager_id)媛� �뾾�뒗 �궗�엺�뱾�쓽 last_name, job_id 議고쉶
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
-- job_id가 ST_CLERK 가 사원의 부서번호 조회(단 부서번호가 NULL 인 사원은 제외한다.)
-- 중복을 제거한 후 부서번호만 조회
=======
-- job_id媛� ST_CLERK 媛� �궗�썝�쓽 遺��꽌踰덊샇 議고쉶(�떒 遺��꽌踰덊샇媛� NULL �씤 �궗�썝��� �젣�쇅�븳�떎.)
-- 以묐났�쓣 �젣嫄고븳 �썑 遺��꽌踰덊샇留� 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT DISTINCT
    department_id
FROM
    employees
WHERE
        job_id = 'ST_CLERK'
    AND department_id IS NOT NULL;

<<<<<<< HEAD
-- commission_pct 가 null이 아닌 사원들 중에서 commission = salary * commission_pct 를 구하여
-- employee_id, first_name, job_id 출력
=======
-- commission_pct 媛� null�씠 �븘�땶 �궗�썝�뱾 以묒뿉�꽌 commission = salary * commission_pct 瑜� 援ы븯�뿬
-- employee_id, first_name, job_id 異쒕젰
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
-- first_name 이 Curtis 인 사람의 first_name, last_name, email, phone_number, job_id를 조회한다.
-- 단, job_id 의 결과는 소문자로 출력되도록 한다.
=======
-- first_name �씠 Curtis �씤 �궗�엺�쓽 first_name, last_name, email, phone_number, job_id瑜� 議고쉶�븳�떎.
-- �떒, job_id �쓽 寃곌낵�뒗 �냼臾몄옄濡� 異쒕젰�릺�룄濡� �븳�떎.
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
-- 부서번호가 60,70,80,90인 사원들의 employee_id, first_name, hire_date, job_id 조회
-- 단, job_id가 IT_PROG 인 사원의 경우 프로그래머로 변경한 후 출력
=======
-- 遺��꽌踰덊샇媛� 60,70,80,90�씤 �궗�썝�뱾�쓽 employee_id, first_name, hire_date, job_id 議고쉶
-- �떒, job_id媛� IT_PROG �씤 �궗�썝�쓽 寃쎌슦 �봽濡쒓렇�옒癒몃줈 蹂�寃쏀븳 �썑 異쒕젰
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b


SELECT
    employee_id,
    first_name,
    hire_date,
<<<<<<< HEAD
    replace(job_id, 'IT_PROG', '프로그래머')
=======
    replace(job_id, 'IT_PROG', '�봽濡쒓렇�옒癒�')
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
FROM
    employees
WHERE
    department_id IN ( 60, 70, 80, 90 );


<<<<<<< HEAD
-- JOB_ID가 AD_PRES, PU_CLERK 인 사원들의 employee_id, first_name,last_name,department_id,job_id를 조회한다.
-- 단 사원명은 first_name과 last_name을 연결하여 출력하시오
=======
-- JOB_ID媛� AD_PRES, PU_CLERK �씤 �궗�썝�뱾�쓽 employee_id, first_name,last_name,department_id,job_id瑜� 議고쉶�븳�떎.
-- �떒 �궗�썝紐낆�� first_name怨� last_name�쓣 �뿰寃고븯�뿬 異쒕젰�븯�떆�삤
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
-- 부서 80의 각 사원에 대해 적용 가능한 세율을 표시하시오.
=======
-- 遺��꽌 80�쓽 媛� �궗�썝�뿉 ����빐 �쟻�슜 媛��뒫�븳 �꽭�쑉�쓣 �몴�떆�븯�떆�삤.
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
-- 회사 내의 최대 연봉 및 최소 연봉의 차이를 출력
=======
-- �쉶�궗 �궡�쓽 理쒕�� �뿰遊� 諛� 理쒖냼 �뿰遊됱쓽 李⑥씠瑜� 異쒕젰
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    MAX(salary) - MIN(salary) AS sal_gap
FROM
    employees;

<<<<<<< HEAD
-- 매니저로 근무하는 사원들의 총 숫자 출력(매니저 중복 제거)
=======
-- 留ㅻ땲���濡� 洹쇰Т�븯�뒗 �궗�썝�뱾�쓽 珥� �닽�옄 異쒕젰(留ㅻ땲��� 以묐났 �젣嫄�)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    COUNT(DISTINCT manager_id)
FROM
    employees;


-- join
<<<<<<< HEAD
-- 자신의 담당 매니저의 고용일보다 빠른 입사자 찾기(self join - employees)
-- hire_date, last_name, manager_id 조회
=======
-- �옄�떊�쓽 �떞�떦 留ㅻ땲����쓽 怨좎슜�씪蹂대떎 鍮좊Ⅸ �엯�궗�옄 李얘린(self join - employees)
-- hire_date, last_name, manager_id 議고쉶
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
-- 도시 이름이 T로 시작하는 지역에 사는 사원들의 사번, last_name, 부서번호, 도시 조회
=======
-- �룄�떆 �씠由꾩씠 T濡� �떆�옉�븯�뒗 吏��뿭�뿉 �궗�뒗 �궗�썝�뱾�쓽 �궗踰�, last_name, 遺��꽌踰덊샇, �룄�떆 議고쉶
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
-- 위치 id가 1700인 사원들의 사번, last_name, 부서번호, 급여 조회
=======
-- �쐞移� id媛� 1700�씤 �궗�썝�뱾�쓽 �궗踰�, last_name, 遺��꽌踰덊샇, 湲됱뿬 議고쉶
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
-- 부서명, 위치id, 각 부서별 사원 총 수, 각 부서별 평균 연봉 조회
-- 평균 연봉은 소수점 2자리까지만
=======
-- 遺��꽌紐�, �쐞移쁦d, 媛� 遺��꽌蹂� �궗�썝 珥� �닔, 媛� 遺��꽌蹂� �룊洹� �뿰遊� 議고쉶
-- �룊洹� �뿰遊됱�� �냼�닔�젏 2�옄由ш퉴吏�留�
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
-- Executive 부서에 근무하는 사원들의 부서번호,last_name,job_id 조회
=======
-- Executive 遺��꽌�뿉 洹쇰Т�븯�뒗 �궗�썝�뱾�쓽 遺��꽌踰덊샇,last_name,job_id 議고쉶
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
-- 각 사원별 소속부서에서 자신보다 늦게 고용되었으나 보다 많은 연봉을 받는 사원이 존재하는 모든 사원들의
-- 부서번호, 이름(first_name과 last_name 연결하기), salary, hire_date 조회
=======
-- 媛� �궗�썝蹂� �냼�냽遺��꽌�뿉�꽌 �옄�떊蹂대떎 �뒭寃� 怨좎슜�릺�뿀�쑝�굹 蹂대떎 留롮�� �뿰遊됱쓣 諛쏅뒗 �궗�썝�씠 議댁옱�븯�뒗 紐⑤뱺 �궗�썝�뱾�쓽
-- 遺��꽌踰덊샇, �씠由�(first_name怨� last_name �뿰寃고븯湲�), salary, hire_date 議고쉶
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
-- 서브쿼리
-- LAST_NAME 에 u가 포함된 사원들과 동일 부서에 근무하는 사원들의 사번, last_name 조회
=======
-- �꽌釉뚯옘由�
-- LAST_NAME �뿉 u媛� �룷�븿�맂 �궗�썝�뱾怨� �룞�씪 遺��꽌�뿉 洹쇰Т�븯�뒗 �궗�썝�뱾�쓽 �궗踰�, last_name 議고쉶
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
-- job_id 가 SA_MAN 인 사원들의 최대 연봉보다 높게 받는 사원들의 last_name, job_id, salary 조회
=======
-- job_id 媛� SA_MAN �씤 �궗�썝�뱾�쓽 理쒕�� �뿰遊됰낫�떎 �넂寃� 諛쏅뒗 �궗�썝�뱾�쓽 last_name, job_id, salary 議고쉶
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
-- 커미션을 버는 사원들의 부서와 연봉이 동일한 사원들의 last_name, department_id, salary 조회
=======
-- 而ㅻ�몄뀡�쓣 踰꾨뒗 �궗�썝�뱾�쓽 遺��꽌��� �뿰遊됱씠 �룞�씪�븳 �궗�썝�뱾�쓽 last_name, department_id, salary 議고쉶
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
-- 회사 전체 평균 연봉보다 더 받는 사원들 중 last_name에 u가 있는 사원들이 근무하는 부서에서
-- 근무하는 사원들의 employee_id, last_name, salary 조회
=======
-- �쉶�궗 �쟾泥� �룊洹� �뿰遊됰낫�떎 �뜑 諛쏅뒗 �궗�썝�뱾 以� last_name�뿉 u媛� �엳�뒗 �궗�썝�뱾�씠 洹쇰Т�븯�뒗 遺��꽌�뿉�꽌
-- 洹쇰Т�븯�뒗 �궗�썝�뱾�쓽 employee_id, last_name, salary 議고쉶
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
-- last_name 이 Davies 인 사람보다 나중에 고용된 사원들의 last_name, hire_date 조회
=======
-- last_name �씠 Davies �씤 �궗�엺蹂대떎 �굹以묒뿉 怨좎슜�맂 �궗�썝�뱾�쓽 last_name, hire_date 議고쉶
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
-- last_name이 King 인 사원을 매니저로 두고 있는 모든 사원들의 last_name, salary 조회
=======
-- last_name�씠 King �씤 �궗�썝�쓣 留ㅻ땲���濡� �몢怨� �엳�뒗 紐⑤뱺 �궗�썝�뱾�쓽 last_name, salary 議고쉶
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