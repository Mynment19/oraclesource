-- scott

<<<<<<< HEAD
-- emp(employee) 테이블 구성 보기
-- 필드명(열이름)   제약조건     데이터타입
--     EMPNO(사원번호)       NOT NULL     NUMBER(4)
--     ENAME(사원명), JOB(직책), MGR(직속상관 번호), HIREDATE(입사일), SAL(급여),COMM(수당), DEPTNO(부서번호)
--  NUMBER : 소수점 자릿수를 포함해서 지정 가능
--  NUMBER(4) : 4자리 숫자까지 허용,   NUMBER(8,2) : 전체 자릿수는 8 자리이고 소수점 2자리를 포함한다
--  VARCHAR2 : 가변형 문자열 저장
--  VARCHAR2(10) : 10byte 문자까지 저장 가능
--  DATE : 날짜 데이터

DESC emp; 

-- DEPTNO(부서번호), DNAME(부서명), LOC(부서위치)
DESC dept; 

-- GRADE(급여등급), LOSAL(최소 급여액), HISAL(최대 급여액)
DESC salgrade; 

-- select : 데이터 조회
-- 조회 방식 : 셀렉션(행 단위로 조회), 프로젝션(열 단위로 조회), 조인(두 개 이상의 테이블을 사용하여 조회)
-- SELECT 열이름1, 열이름2..... (조회할 열이 전체라면 * 로 처리)
-- FROM 테이블명;

-- 1. EMP 테이블의 전체 열을 조회
=======
-- emp(employee) �뀒�씠釉� 援ъ꽦 蹂닿린
-- �븘�뱶紐�(�뿴�씠由�)   �젣�빟議곌굔     �뜲�씠�꽣����엯
--     EMPNO(�궗�썝踰덊샇)       NOT NULL     NUMBER(4)
--     ENAME(�궗�썝紐�), JOB(吏곸콉), MGR(吏곸냽�긽愿� 踰덊샇), HIREDATE(�엯�궗�씪), SAL(湲됱뿬),COMM(�닔�떦), DEPTNO(遺��꽌踰덊샇)
--  NUMBER : �냼�닔�젏 �옄由우닔瑜� �룷�븿�빐�꽌 吏��젙 媛��뒫
--  NUMBER(4) : 4�옄由� �닽�옄源뚯�� �뿀�슜,   NUMBER(8,2) : �쟾泥� �옄由우닔�뒗 8 �옄由ъ씠怨� �냼�닔�젏 2�옄由щ�� �룷�븿�븳�떎
--  VARCHAR2 : 媛�蹂��삎 臾몄옄�뿴 ����옣
--  VARCHAR2(10) : 10byte 臾몄옄源뚯�� ����옣 媛��뒫
--  DATE : �궇吏� �뜲�씠�꽣

DESC emp; 

-- DEPTNO(遺��꽌踰덊샇), DNAME(遺��꽌紐�), LOC(遺��꽌�쐞移�)
DESC dept; 

-- GRADE(湲됱뿬�벑湲�), LOSAL(理쒖냼 湲됱뿬�븸), HISAL(理쒕�� 湲됱뿬�븸)
DESC salgrade; 

-- select : �뜲�씠�꽣 議고쉶
-- 議고쉶 諛⑹떇 : ����젆�뀡(�뻾 �떒�쐞濡� 議고쉶), �봽濡쒖젥�뀡(�뿴 �떒�쐞濡� 議고쉶), 議곗씤(�몢 媛� �씠�긽�쓽 �뀒�씠釉붿쓣 �궗�슜�븯�뿬 議고쉶)
-- SELECT �뿴�씠由�1, �뿴�씠由�2..... (議고쉶�븷 �뿴�씠 �쟾泥대씪硫� * 濡� 泥섎━)
-- FROM �뀒�씠釉붾챸;

-- 1. EMP �뀒�씠釉붿쓽 �쟾泥� �뿴�쓣 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp;

<<<<<<< HEAD
-- 2. EMP 테이블에서 사원번호,이름,급여 열을 조회
=======
-- 2. EMP �뀒�씠釉붿뿉�꽌 �궗�썝踰덊샇,�씠由�,湲됱뿬 �뿴�쓣 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    sal
FROM
    emp;


<<<<<<< HEAD
-- 3. DEPT 테이블 전체 조회
=======
-- 3. DEPT �뀒�씠釉� �쟾泥� 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    dept;
<<<<<<< HEAD
-- 4. DEPT 테이블안에 부서번호, 지역만 조회
=======
-- 4. DEPT �뀒�씠釉붿븞�뿉 遺��꽌踰덊샇, 吏��뿭留� 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    deptno,
    loc
FROM
    dept;
    
<<<<<<< HEAD
-- 5. EMP 테이블안에 부서번호 조회
=======
-- 5. EMP �뀒�씠釉붿븞�뿉 遺��꽌踰덊샇 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    deptno
FROM
    emp;

<<<<<<< HEAD
-- 6. EMP 테이블안에 부서번호 조회(단, 중복된 부서 번호는 제거) 
-- DISTINCT : 중복 제거
=======
-- 6. EMP �뀒�씠釉붿븞�뿉 遺��꽌踰덊샇 議고쉶(�떒, 以묐났�맂 遺��꽌 踰덊샇�뒗 �젣嫄�) 
-- DISTINCT : 以묐났 �젣嫄�
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT DISTINCT
    deptno
FROM
    emp;
    
<<<<<<< HEAD
-- 열이 여러 개인 경우(묶어서 중복이냐 아니냐를 판단)    
=======
-- �뿴�씠 �뿬�윭 媛쒖씤 寃쎌슦(臾띠뼱�꽌 以묐났�씠�깘 �븘�땲�깘瑜� �뙋�떒)    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT DISTINCT
    job,
    deptno
FROM
    emp;
    
<<<<<<< HEAD
-- 7. 연산
-- 별칭 : 필드에 별칭을 임의로 부여( as 별칭, 혹은 한칸 띄고 별칭, 별칭에 공백이 있다면 ""로 묶어주기)
-- 사원들의 1년 연봉 구하기 ( SAL * 12 + COMM )
=======
-- 7. �뿰�궛
-- 蹂꾩묶 : �븘�뱶�뿉 蹂꾩묶�쓣 �엫�쓽濡� 遺��뿬( as 蹂꾩묶, �샊��� �븳移� �쓣怨� 蹂꾩묶, 蹂꾩묶�뿉 怨듬갚�씠 �엳�떎硫� ""濡� 臾띠뼱二쇨린)
-- �궗�썝�뱾�쓽 1�뀈 �뿰遊� 援ы븯湲� ( SAL * 12 + COMM )
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
    ename           사원명,
    job             "직 책",
=======
    ename           �궗�썝紐�,
    job             "吏� 梨�",
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    sal * 12 + comm annsal
FROM
    emp;
    
<<<<<<< HEAD
-- 8. 정렬 : ORDER BY
--           내림차순 => DESC, 오름차순 => ASC

-- ENAME, SAL 열 추출하고, SAL 내림차순으로 정렬
=======
-- 8. �젙�젹 : ORDER BY
--           �궡由쇱감�닚 => DESC, �삤由꾩감�닚 => ASC

-- ENAME, SAL �뿴 異붿텧�븯怨�, SAL �궡由쇱감�닚�쑝濡� �젙�젹
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    sal
FROM
    emp
ORDER BY
    sal DESC;
    
<<<<<<< HEAD
-- ENAME, SAL 열 추출하고, SAL 오름차순으로 정렬    
=======
-- ENAME, SAL �뿴 異붿텧�븯怨�, SAL �삤由꾩감�닚�쑝濡� �젙�젹    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    sal
FROM
    emp
ORDER BY
<<<<<<< HEAD
    sal;    -- ASC 생략 가능
    
-- 전체 내용 출력하고, 결과가 사원번호의 오름차순으로 정렬    
=======
    sal;    -- ASC �깮�왂 媛��뒫
    
-- �쟾泥� �궡�슜 異쒕젰�븯怨�, 寃곌낵媛� �궗�썝踰덊샇�쓽 �삤由꾩감�닚�쑝濡� �젙�젹    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
ORDER BY
    empno;
    
    
<<<<<<< HEAD
-- 전체 내용 출력하고, 결과가 부서번호의 오름차순과 급여 내림차순으로 정렬     
=======
-- �쟾泥� �궡�슜 異쒕젰�븯怨�, 寃곌낵媛� 遺��꽌踰덊샇�쓽 �삤由꾩감�닚怨� 湲됱뿬 �궡由쇱감�닚�쑝濡� �젙�젹     
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
ORDER BY
    deptno,
    sal DESC;
    

<<<<<<< HEAD
-- [실습] emp 테이블의 모든 열 출력
=======
-- [�떎�뒿] emp �뀒�씠釉붿쓽 紐⑤뱺 �뿴 異쒕젰
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- empno => employee_no
-- ename => employee_name
-- mgr => manager
-- sal => salary
-- comm => commission
-- deptno => department_no
<<<<<<< HEAD
-- 부서 번호를 기준으로 내림차순으로 정렬하되 부서번호가 같다면 
-- 사원 이름을 기준으로 오름차순 정렬
=======
-- 遺��꽌 踰덊샇瑜� 湲곗���쑝濡� �궡由쇱감�닚�쑝濡� �젙�젹�븯�릺 遺��꽌踰덊샇媛� 媛숇떎硫� 
-- �궗�썝 �씠由꾩쓣 湲곗���쑝濡� �삤由꾩감�닚 �젙�젹
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
-- WHERE : 특정 조건을 기준으로 원하는 행을 조회

-- 부서번호가 30인 데이터만 조회
=======
-- WHERE : �듅�젙 議곌굔�쓣 湲곗���쑝濡� �썝�븯�뒗 �뻾�쓣 議고쉶

-- 遺��꽌踰덊샇媛� 30�씤 �뜲�씠�꽣留� 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
<<<<<<< HEAD
    deptno = 30;  --  = : 같다
    
-- 사원번호가 7782인 사원 조회    
=======
    deptno = 30;  --  = : 媛숇떎
    
-- �궗�썝踰덊샇媛� 7782�씤 �궗�썝 議고쉶    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    empno = 7782;   

<<<<<<< HEAD
-- 부서번호가 30이고, 사원직책이 SALESMAN인 행 조회
=======
-- 遺��꽌踰덊샇媛� 30�씠怨�, �궗�썝吏곸콉�씠 SALESMAN�씤 �뻾 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
        deptno = 30
    AND job = 'SALESMAN';   

<<<<<<< HEAD
-- 사원번호가 7499이고, 부서번호가 30인 행 조회
=======
-- �궗�썝踰덊샇媛� 7499�씠怨�, 遺��꽌踰덊샇媛� 30�씤 �뻾 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
        empno = 7499
    AND deptno = 30;  

<<<<<<< HEAD
-- 부서번호가 30이거나, 사원직책이 CLERK 인 행 조회
=======
-- 遺��꽌踰덊샇媛� 30�씠嫄곕굹, �궗�썝吏곸콉�씠 CLERK �씤 �뻾 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    deptno = 30
    OR job = 'CLERK';     


<<<<<<< HEAD
-- 산술연산자 : +, -, *, /, mod(나머지- 표준은 아님(오라클에서만 제공))
-- 비교연산자 : >, >=, <, <=
-- 등가비교연산자 : =,  !=, <>, ^= (!=, <>, ^= : A값과 B값이 다를 경우 true, 같은 경우 false)
-- 논리부정연산자 : NOT
-- IN 연산자
-- BETWEEN A AND B 연산자
-- LIKE연산자와 와일드 카드(_, %)
-- IS NULL 연산자
-- 집합연산자 : UNION(합집합-중복제거), UNION ALL(합집합-중복포함), MINUS(차집합), INTERSECT(교집합)

-- 연산자 우선순위
-- 1) 산술연산자 *, /
-- 2) 산술연산자 +, -
-- 3) 비교연산자
=======
-- �궛�닠�뿰�궛�옄 : +, -, *, /, mod(�굹癒몄��- �몴以���� �븘�떂(�삤�씪�겢�뿉�꽌留� �젣怨�))
-- 鍮꾧탳�뿰�궛�옄 : >, >=, <, <=
-- �벑媛�鍮꾧탳�뿰�궛�옄 : =,  !=, <>, ^= (!=, <>, ^= : A媛믨낵 B媛믪씠 �떎瑜� 寃쎌슦 true, 媛숈�� 寃쎌슦 false)
-- �끉由щ���젙�뿰�궛�옄 : NOT
-- IN �뿰�궛�옄
-- BETWEEN A AND B �뿰�궛�옄
-- LIKE�뿰�궛�옄��� ����씪�뱶 移대뱶(_, %)
-- IS NULL �뿰�궛�옄
-- 吏묓빀�뿰�궛�옄 : UNION(�빀吏묓빀-以묐났�젣嫄�), UNION ALL(�빀吏묓빀-以묐났�룷�븿), MINUS(李⑥쭛�빀), INTERSECT(援먯쭛�빀)

-- �뿰�궛�옄 �슦�꽑�닚�쐞
-- 1) �궛�닠�뿰�궛�옄 *, /
-- 2) �궛�닠�뿰�궛�옄 +, -
-- 3) 鍮꾧탳�뿰�궛�옄
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- 4) IS NULL, IS NOT NULL, LIKE, IN
-- 5) BETWEEN A AND B
-- 6) NOT
-- 7) AND
-- 8) OR
<<<<<<< HEAD
-- 우선순위를 줘야 한다면 소괄호 사용 추천



-- EMP 테이블에서 급여 열에 12를 곱한 값이 36000 인 행 조회
=======
-- �슦�꽑�닚�쐞瑜� 以섏빞 �븳�떎硫� �냼愿꾪샇 �궗�슜 異붿쿇



-- EMP �뀒�씠釉붿뿉�꽌 湲됱뿬 �뿴�뿉 12瑜� 怨깊븳 媛믪씠 36000 �씤 �뻾 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal * 12 = 36000;

<<<<<<< HEAD
-- ename 이 F 이후의 문자로 시작하는 사원 조회
-- 문자 표현시 '' 만 사용
=======
-- ename �씠 F �씠�썑�쓽 臾몄옄濡� �떆�옉�븯�뒗 �궗�썝 議고쉶
-- 臾몄옄 �몴�쁽�떆 '' 留� �궗�슜
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
-- JOB이 MANAGER, SALESMAN, CLERK 사원 조회
=======
-- JOB�씠 MANAGER, SALESMAN, CLERK �궗�썝 議고쉶
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
-- sal 이 3000 이 아닌 사원 조회
=======
-- sal �씠 3000 �씠 �븘�땶 �궗�썝 議고쉶
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
-- JOB이 MANAGER, SALESMAN, CLERK 사원 조회 ==> IN 연산자
=======
-- JOB�씠 MANAGER, SALESMAN, CLERK �궗�썝 議고쉶 ==> IN �뿰�궛�옄
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    job IN ( 'MANAGER', 'SALESMAN', 'CLERK' );    
    
    
<<<<<<< HEAD
-- JOB이 MANAGER, SALESMAN, CLERK 아닌 사원 조회  
=======
-- JOB�씠 MANAGER, SALESMAN, CLERK �븘�땶 �궗�썝 議고쉶  
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
-- 부서번호가 10, 20 사원조회(in 사용)
=======
-- 遺��꽌踰덊샇媛� 10, 20 �궗�썝議고쉶(in �궗�슜)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b


SELECT
    *
FROM
    emp
WHERE
    deptno IN ( 10, 20 );

<<<<<<< HEAD
-- 급여가 2000 이상 3000 이하인 사원 조회
=======
-- 湲됱뿬媛� 2000 �씠�긽 3000 �씠�븯�씤 �궗�썝 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
        sal >= 2000
    AND sal <= 3000;


<<<<<<< HEAD
-- BETWEEN 최소값 AND 최대값;
=======
-- BETWEEN 理쒖냼媛� AND 理쒕��媛�;
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    sal BETWEEN 2000 AND 3000;

<<<<<<< HEAD
-- 급여가 2000 이상 3000 이하가 아닌 사원 조회
=======
-- 湲됱뿬媛� 2000 �씠�긽 3000 �씠�븯媛� �븘�땶 �궗�썝 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal NOT BETWEEN 2000 AND 3000;

<<<<<<< HEAD
-- LIKE연산자와 와일드 카드(_, %)
-- _ : 어떤 값이든 상관없이 한 개의 문자 데이터를 의미
-- % : 길이와 상관없이(문자 없는 경우도 포함) 모든 문자 데이터를 의미


-- 사원 이름이 S로 시작하는 사원 정보 조회
=======
-- LIKE�뿰�궛�옄��� ����씪�뱶 移대뱶(_, %)
-- _ : �뼱�뼡 媛믪씠�뱺 �긽愿��뾾�씠 �븳 媛쒖쓽 臾몄옄 �뜲�씠�꽣瑜� �쓽誘�
-- % : 湲몄씠��� �긽愿��뾾�씠(臾몄옄 �뾾�뒗 寃쎌슦�룄 �룷�븿) 紐⑤뱺 臾몄옄 �뜲�씠�꽣瑜� �쓽誘�


-- �궗�썝 �씠由꾩씠 S濡� �떆�옉�븯�뒗 �궗�썝 �젙蹂� 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE 'S%';

<<<<<<< HEAD
-- 사원 이름의 두번째 글자가 L 인 사원만 조회
=======
-- �궗�썝 �씠由꾩쓽 �몢踰덉㎏ 湲��옄媛� L �씤 �궗�썝留� 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '_L%';

<<<<<<< HEAD
-- 사원 이름에 AM 이 포함된 사원만 조회
=======
-- �궗�썝 �씠由꾩뿉 AM �씠 �룷�븿�맂 �궗�썝留� 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%AM%';

<<<<<<< HEAD
-- 사원 이름에 AM 이 포함되지 않은 사원만 조회
=======
-- �궗�썝 �씠由꾩뿉 AM �씠 �룷�븿�릺吏� �븡��� �궗�썝留� 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    ename NOT LIKE '%AM%';

<<<<<<< HEAD
-- NULL : 데이터 값이 완전히 비어 있는 상태
-- = 을 사용할 수 없음

-- COMM 이 NULL인 사원 조회
=======
-- NULL : �뜲�씠�꽣 媛믪씠 �셿�쟾�엳 鍮꾩뼱 �엳�뒗 �긽�깭
-- = �쓣 �궗�슜�븷 �닔 �뾾�쓬

-- COMM �씠 NULL�씤 �궗�썝 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    comm IS NULL;

<<<<<<< HEAD
-- MGR 이 NULL인 사원 조회
=======
-- MGR �씠 NULL�씤 �궗�썝 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    mgr IS NULL;
    
<<<<<<< HEAD
-- MGR 이 NULL이 아닌 사원 조회    
=======
-- MGR �씠 NULL�씠 �븘�땶 �궗�썝 議고쉶    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    mgr IS NOT NULL;

<<<<<<< HEAD
-- 집합연산자

-- union(동일한 결과값인 경우 중복 제거), union all(중복 제거 안함) : 합집합
=======
-- 吏묓빀�뿰�궛�옄

-- union(�룞�씪�븳 寃곌낵媛믪씤 寃쎌슦 以묐났 �젣嫄�), union all(以묐났 �젣嫄� �븞�븿) : �빀吏묓빀
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
-- MINUS(차집합)
=======
-- MINUS(李⑥쭛�빀)
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
-- INTERSECT(교집합)
=======
-- INTERSECT(援먯쭛�빀)
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
-- EMP 테이블에서 사원이름이 S로 끝나는 사원 데이터 조회
=======
-- EMP �뀒�씠釉붿뿉�꽌 �궗�썝�씠由꾩씠 S濡� �걹�굹�뒗 �궗�썝 �뜲�씠�꽣 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%S';

<<<<<<< HEAD
-- EMP 테이블에서 30번 부서에 근무하는 사원 중에서 직책이 SALESMAN인 사원의 
-- 사원번호, 이름, 급여 조회(SAL 내림차순)
=======
-- EMP �뀒�씠釉붿뿉�꽌 30踰� 遺��꽌�뿉 洹쇰Т�븯�뒗 �궗�썝 以묒뿉�꽌 吏곸콉�씠 SALESMAN�씤 �궗�썝�쓽 
-- �궗�썝踰덊샇, �씠由�, 湲됱뿬 議고쉶(SAL �궡由쇱감�닚)
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
-- EMP 테이블을 사용하여 20,30번 부서에 근무하고 있는 사원 중 급여가 2000 초과인 사원 조회
-- 사원번호, 이름, 급여, 부서번호 조회
-- 집합 연산자를 사용하는 방식과 사용하지 않는 방식 두 가지를 사용한다

-- 집합연산자 사용하지 않는 경우
=======
-- EMP �뀒�씠釉붿쓣 �궗�슜�븯�뿬 20,30踰� 遺��꽌�뿉 洹쇰Т�븯怨� �엳�뒗 �궗�썝 以� 湲됱뿬媛� 2000 珥덇낵�씤 �궗�썝 議고쉶
-- �궗�썝踰덊샇, �씠由�, 湲됱뿬, 遺��꽌踰덊샇 議고쉶
-- 吏묓빀 �뿰�궛�옄瑜� �궗�슜�븯�뒗 諛⑹떇怨� �궗�슜�븯吏� �븡�뒗 諛⑹떇 �몢 媛�吏�瑜� �궗�슜�븳�떎

-- 吏묓빀�뿰�궛�옄 �궗�슜�븯吏� �븡�뒗 寃쎌슦
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
-- 집합연산자 사용하는 경우
=======
-- 吏묓빀�뿰�궛�옄 �궗�슜�븯�뒗 寃쎌슦
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
-- 사원 이름에 E가 포함되어 있는 30번 부서 사원 중 급여가 1000~2000 사이가 아닌 사원의 이름
-- 사원번호, 급여, 부서번호를 조회하기
=======
-- �궗�썝 �씠由꾩뿉 E媛� �룷�븿�릺�뼱 �엳�뒗 30踰� 遺��꽌 �궗�썝 以� 湲됱뿬媛� 1000~2000 �궗�씠媛� �븘�땶 �궗�썝�쓽 �씠由�
-- �궗�썝踰덊샇, 湲됱뿬, 遺��꽌踰덊샇瑜� 議고쉶�븯湲�
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
-- 추가 수당이 존재하지 않으며, 상급자가 있고 직책이 MANAGER, CLERK 인 사원 중에서 사원 이름의
-- 두번째 글자가 L 이 아닌 사원의 정보 조회
=======
-- 異붽�� �닔�떦�씠 議댁옱�븯吏� �븡�쑝硫�, �긽湲됱옄媛� �엳怨� 吏곸콉�씠 MANAGER, CLERK �씤 �궗�썝 以묒뿉�꽌 �궗�썝 �씠由꾩쓽
-- �몢踰덉㎏ 湲��옄媛� L �씠 �븘�땶 �궗�썝�쓽 �젙蹂� 議고쉶
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
-- 오라클 함수
-- 오라클에서 기본으로 제공하는 내장 함수와 사용자가 필요에 의해 직접 정의한 사용자 정의 함수


-- 1. 문자열 함수
-- 1) UPPER, LOWER, INITCAP
-- UPPER : 모두 대문자, LOWER : 모두 소문자, INITCAP : 첫 글자만 대문자
-- LIKE '%ORACLE%' OR LIKE '%oracle%' OR LIKE '%Oracle%' ==> 검색 시 사용
=======
-- �삤�씪�겢 �븿�닔
-- �삤�씪�겢�뿉�꽌 湲곕낯�쑝濡� �젣怨듯븯�뒗 �궡�옣 �븿�닔��� �궗�슜�옄媛� �븘�슂�뿉 �쓽�빐 吏곸젒 �젙�쓽�븳 �궗�슜�옄 �젙�쓽 �븿�닔


-- 1. 臾몄옄�뿴 �븿�닔
-- 1) UPPER, LOWER, INITCAP
-- UPPER : 紐⑤몢 ���臾몄옄, LOWER : 紐⑤몢 �냼臾몄옄, INITCAP : 泥� 湲��옄留� ���臾몄옄
-- LIKE '%ORACLE%' OR LIKE '%oracle%' OR LIKE '%Oracle%' ==> 寃��깋 �떆 �궗�슜
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
-- 2) LENGTH : 문자열 길이
=======
-- 2) LENGTH : 臾몄옄�뿴 湲몄씠
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    length(ename)
FROM
    emp;

<<<<<<< HEAD
-- 사원 이름의 길이가 5 이상인 사원 조회
=======
-- �궗�썝 �씠由꾩쓽 湲몄씠媛� 5 �씠�긽�씤 �궗�썝 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    ename,
    length(ename)
FROM
    emp
WHERE
    length(ename) >= 5;
    
<<<<<<< HEAD
-- 한글일 때
-- dual : sys가 소유하는 테이블(임시 연산이나 함수의 결과 값 확인하는 용도)
-- length, lengthb(문자가 사용하는 바이트 수)
-- 영어 : 문자1 => 1byte, 한글 : 문자 1 => 3 byte
SELECT
    length('한글'),
    lengthb('한글'),
=======
-- �븳湲��씪 �븣
-- dual : sys媛� �냼�쑀�븯�뒗 �뀒�씠釉�(�엫�떆 �뿰�궛�씠�굹 �븿�닔�쓽 寃곌낵 媛� �솗�씤�븯�뒗 �슜�룄)
-- length, lengthb(臾몄옄媛� �궗�슜�븯�뒗 諛붿씠�듃 �닔)
-- �쁺�뼱 : 臾몄옄1 => 1byte, �븳湲� : 臾몄옄 1 => 3 byte
SELECT
    length('�븳湲�'),
    lengthb('�븳湲�'),
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    lengthb('ab')
FROM
    dual;
    
<<<<<<< HEAD
-- 3) SUBSTR(문자열데이터, 시작위치, 추출길이) : 추출길이 생략 가능
--    문자열 일부 추출
=======
-- 3) SUBSTR(臾몄옄�뿴�뜲�씠�꽣, �떆�옉�쐞移�, 異붿텧湲몄씠) : 異붿텧湲몄씠 �깮�왂 媛��뒫
--    臾몄옄�뿴 �씪遺� 異붿텧
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
-- ENAME, 세번째 글자부터 출력
=======
-- ENAME, �꽭踰덉㎏ 湲��옄遺��꽣 異쒕젰
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    substr(ename, 3)
FROM
    emp;
    
<<<<<<< HEAD
-- 3) INSTR : 문자열 데이터 안에서 특정 문자 위치 찾기
-- INSTR(대상문자열, 위치를 찾으려는 문자열, 대상문자열에서 찾기를 시작할 위치(선택), 시작위치에서 찾으려는 문자가 몇번째인지 지정(선택))

-- HELLO, ORACLE! 문자열에서 L 문자열 찾기
=======
-- 3) INSTR : 臾몄옄�뿴 �뜲�씠�꽣 �븞�뿉�꽌 �듅�젙 臾몄옄 �쐞移� 李얘린
-- INSTR(����긽臾몄옄�뿴, �쐞移섎�� 李얠쑝�젮�뒗 臾몄옄�뿴, ����긽臾몄옄�뿴�뿉�꽌 李얘린瑜� �떆�옉�븷 �쐞移�(�꽑�깮), �떆�옉�쐞移섏뿉�꽌 李얠쑝�젮�뒗 臾몄옄媛� 紐뉖쾲吏몄씤吏� 吏��젙(�꽑�깮))

-- HELLO, ORACLE! 臾몄옄�뿴�뿉�꽌 L 臾몄옄�뿴 李얘린
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    instr('HELLO, ORACLE!', 'L')       AS instr_1,
    instr('HELLO, ORACLE!', 'L', 5)    AS instr_2,
    instr('HELLO, ORACLE!', 'L', 2, 2) AS instr_3
FROM
    dual;
    
<<<<<<< HEAD
-- 4) replace : 특정 문자를 다른 문자로 변경
-- replace(문자열데이터, 찾는문자, 변경문자)

-- 010-1234-5678   - 를 빈 문자열로 변경 / -를 없애기
SELECT
    '010-1234-5678'                    AS 변경전,
=======
-- 4) replace : �듅�젙 臾몄옄瑜� �떎瑜� 臾몄옄濡� 蹂�寃�
-- replace(臾몄옄�뿴�뜲�씠�꽣, 李얜뒗臾몄옄, 蹂�寃쎈Ц�옄)

-- 010-1234-5678   - 瑜� 鍮� 臾몄옄�뿴濡� 蹂�寃� / -瑜� �뾾�븷湲�
SELECT
    '010-1234-5678'                    AS 蹂�寃쎌쟾,
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    replace('010-1234-5678', '-', ' ') AS replace_1,
    replace('010-1234-5678', '-')      AS replace_2
FROM
    dual;

<<<<<<< HEAD
-- '이것이 Oracle 이다', '이것이' => This is 변경
SELECT
    '이것이 Oracle 이다'                            AS 변경전,
    replace('이것이 Oracle 이다', '이것이', 'This is') AS replace_1
FROM
    dual;

-- 5) concat : 두 문자열 데이터 합치기
=======
-- '�씠寃껋씠 Oracle �씠�떎', '�씠寃껋씠' => This is 蹂�寃�
SELECT
    '�씠寃껋씠 Oracle �씠�떎'                            AS 蹂�寃쎌쟾,
    replace('�씠寃껋씠 Oracle �씠�떎', '�씠寃껋씠', 'This is') AS replace_1
FROM
    dual;

-- 5) concat : �몢 臾몄옄�뿴 �뜲�씠�꽣 �빀移섍린
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
-- || : 문자열 연결 연산자
=======
-- || : 臾몄옄�뿴 �뿰寃� �뿰�궛�옄
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    empno || ename,
    empno
    || ':'
    || ename
FROM
    emp;

<<<<<<< HEAD
-- 6) TRIM, LTRIM, RTRIM : 공백 포함 특정 문자 제거
-- ' ORACLE' = 'ORACLE' ==> FALSE

SELECT
    '     이것이     ',
    TRIM('     이것이     ')
=======
-- 6) TRIM, LTRIM, RTRIM : 怨듬갚 �룷�븿 �듅�젙 臾몄옄 �젣嫄�
-- ' ORACLE' = 'ORACLE' ==> FALSE

SELECT
    '     �씠寃껋씠     ',
    TRIM('     �씠寃껋씠     ')
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
FROM
    dual;



<<<<<<< HEAD
-- 2. 숫자함수
-- 1) ROUND, TRUNC, CEIL, FLOOR, MOD

-- round : 반올림
-- round(숫자, 반올림 위치(선택))
SELECT
    round(1234.5678)      AS round,           -- 소수점 첫째 자리에서 반올림
    round(1234.5678, 0)   AS round0,          -- 소수점 첫째 자리에서 반올림
    round(1234.5678, 1)   AS round1,          -- 소수점 둘째 자리에서 반올림 
    round(1234.5678, 2)   AS round2,          -- 소수점 세번째 자리에서 반올림
    round(1234.5678, - 1) AS round_minus1,    -- 자연수 첫째 자리에서 반올림
    round(1234.5678, - 2) AS round_minus2     -- 자연수 둘째 자리에서 반올림
=======
-- 2. �닽�옄�븿�닔
-- 1) ROUND, TRUNC, CEIL, FLOOR, MOD

-- round : 諛섏삱由�
-- round(�닽�옄, 諛섏삱由� �쐞移�(�꽑�깮))
SELECT
    round(1234.5678)      AS round,           -- �냼�닔�젏 泥レ㎏ �옄由ъ뿉�꽌 諛섏삱由�
    round(1234.5678, 0)   AS round0,          -- �냼�닔�젏 泥レ㎏ �옄由ъ뿉�꽌 諛섏삱由�
    round(1234.5678, 1)   AS round1,          -- �냼�닔�젏 �몮吏� �옄由ъ뿉�꽌 諛섏삱由� 
    round(1234.5678, 2)   AS round2,          -- �냼�닔�젏 �꽭踰덉㎏ �옄由ъ뿉�꽌 諛섏삱由�
    round(1234.5678, - 1) AS round_minus1,    -- �옄�뿰�닔 泥レ㎏ �옄由ъ뿉�꽌 諛섏삱由�
    round(1234.5678, - 2) AS round_minus2     -- �옄�뿰�닔 �몮吏� �옄由ъ뿉�꽌 諛섏삱由�
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
FROM
    dual;
    
    
<<<<<<< HEAD
-- trunc : 특정 위치에서 버리는 함수
-- trunc(숫자, 버림 위치(선택))
SELECT
    trunc(1234.5678)      AS trunc,           -- 소수점 첫째 자리에서 버림
    trunc(1234.5678, 0)   AS trunc0,          -- 소수점 첫째 자리에서 버림
    trunc(1234.5678, 1)   AS trunc1,          -- 소수점 둘째 자리에서 버림 
    trunc(1234.5678, 2)   AS trunc2,          -- 소수점 세번째 자리에서 버림
    trunc(1234.5678, - 1) AS trunc_minus1,    -- 자연수 첫째 자리에서 버림
    trunc(1234.5678, - 2) AS trunc_minus2     -- 자연수 둘째 자리에서 버림
FROM
    dual;    
    
-- ceil(숫자), floor(숫자) : 입력된 숫자와 가까운 큰 정수, 작은 정수   
=======
-- trunc : �듅�젙 �쐞移섏뿉�꽌 踰꾨━�뒗 �븿�닔
-- trunc(�닽�옄, 踰꾨┝ �쐞移�(�꽑�깮))
SELECT
    trunc(1234.5678)      AS trunc,           -- �냼�닔�젏 泥レ㎏ �옄由ъ뿉�꽌 踰꾨┝
    trunc(1234.5678, 0)   AS trunc0,          -- �냼�닔�젏 泥レ㎏ �옄由ъ뿉�꽌 踰꾨┝
    trunc(1234.5678, 1)   AS trunc1,          -- �냼�닔�젏 �몮吏� �옄由ъ뿉�꽌 踰꾨┝ 
    trunc(1234.5678, 2)   AS trunc2,          -- �냼�닔�젏 �꽭踰덉㎏ �옄由ъ뿉�꽌 踰꾨┝
    trunc(1234.5678, - 1) AS trunc_minus1,    -- �옄�뿰�닔 泥レ㎏ �옄由ъ뿉�꽌 踰꾨┝
    trunc(1234.5678, - 2) AS trunc_minus2     -- �옄�뿰�닔 �몮吏� �옄由ъ뿉�꽌 踰꾨┝
FROM
    dual;    
    
-- ceil(�닽�옄), floor(�닽�옄) : �엯�젰�맂 �닽�옄��� 媛�源뚯슫 �겙 �젙�닔, �옉��� �젙�닔   
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    ceil(3.14),
    floor(3.14),
    ceil(- 3.14),
    floor(- 3.14)
FROM
    dual;


<<<<<<< HEAD
-- mod(숫자, 나눌수) : 나머지값
=======
-- mod(�닽�옄, �굹�닃�닔) : �굹癒몄��媛�
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    mod(15, 6),
    mod(10, 2),
    mod(11, 2)
FROM
    dual;    
    
    
    
<<<<<<< HEAD
-- 날짜 함수
-- 날짜 데이터 + 숫자 : 날짜 데이터보다 숫자만큼 일수 이후의 날짜
-- 날짜 데이터 - 날짜 데이터 : 두 날짜 데이터 간의 일수 차이

-- 날짜 데이터 + 날짜 데이터 : 연산불가

-- 1) sysdate 함수 : 오라클 데이터베이스 서버가 설치된 OS의 현재날짜와 시간을 가져옴
=======
-- �궇吏� �븿�닔
-- �궇吏� �뜲�씠�꽣 + �닽�옄 : �궇吏� �뜲�씠�꽣蹂대떎 �닽�옄留뚰겮 �씪�닔 �씠�썑�쓽 �궇吏�
-- �궇吏� �뜲�씠�꽣 - �궇吏� �뜲�씠�꽣 : �몢 �궇吏� �뜲�씠�꽣 媛꾩쓽 �씪�닔 李⑥씠

-- �궇吏� �뜲�씠�꽣 + �궇吏� �뜲�씠�꽣 : �뿰�궛遺덇��

-- 1) sysdate �븿�닔 : �삤�씪�겢 �뜲�씠�꽣踰좎씠�뒪 �꽌踰꾧�� �꽕移섎맂 OS�쓽 �쁽�옱�궇吏쒖�� �떆媛꾩쓣 媛��졇�샂
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    sysdate,
    sysdate - 1 AS yesterday,
    sysdate + 1 AS tomorrow
FROM
    dual;
    
<<<<<<< HEAD
-- 2) add_months(날짜, 더할 개월수) : 몇 개월 이후 날짜 구하기
=======
-- 2) add_months(�궇吏�, �뜑�븷 媛쒖썡�닔) : 紐� 媛쒖썡 �씠�썑 �궇吏� 援ы븯湲�
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    sysdate,
    add_months(sysdate, 3)
FROM
    dual;
    
<<<<<<< HEAD
-- 입사 50주년이 되는 날짜 구하기
-- empno, ename, hiredate, 입사50주년날짜 조회
=======
-- �엯�궗 50二쇰뀈�씠 �릺�뒗 �궇吏� 援ы븯湲�
-- empno, ename, hiredate, �엯�궗50二쇰뀈�궇吏� 議고쉶
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    hiredate,
    add_months(hiredate, 600)
FROM
    emp;

<<<<<<< HEAD
-- 3) MONTHS_BETWEEN(첫번째날짜, 두번째 날짜) : 두 날짜 데이터 간의 날짜 차이를 개월수로 계산하여 출력

-- 입사 45년 미만인 사원 데이터 조회
=======
-- 3) MONTHS_BETWEEN(泥ル쾲吏몃궇吏�, �몢踰덉㎏ �궇吏�) : �몢 �궇吏� �뜲�씠�꽣 媛꾩쓽 �궇吏� 李⑥씠瑜� 媛쒖썡�닔濡� 怨꾩궛�븯�뿬 異쒕젰

-- �엯�궗 45�뀈 誘몃쭔�씤 �궗�썝 �뜲�씠�꽣 議고쉶
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
-- 현재 날짜와 6개월 후 날짜가 출력
=======
-- �쁽�옱 �궇吏쒖�� 6媛쒖썡 �썑 �궇吏쒓�� 異쒕젰
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
-- 4) next_day(날짜, 요일) : 특정 날짜를 기준으로 돌아오는 요일의 날짜 출력
--    last_day(날짜) : 특정 날짜가 속한 달의 마지막 날짜를 출력
SELECT
    sysdate,
    next_day(sysdate, '금요일'),
=======
-- 4) next_day(�궇吏�, �슂�씪) : �듅�젙 �궇吏쒕�� 湲곗���쑝濡� �룎�븘�삤�뒗 �슂�씪�쓽 �궇吏� 異쒕젰
--    last_day(�궇吏�) : �듅�젙 �궇吏쒓�� �냽�븳 �떖�쓽 留덉��留� �궇吏쒕�� 異쒕젰
SELECT
    sysdate,
    next_day(sysdate, '湲덉슂�씪'),
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    last_day(sysdate)
FROM
    dual;

<<<<<<< HEAD
-- 날짜의 반올림, 버림 : ROUND, TRUNC
-- CC : 네 자리 연도의 끝 두자리를 기준으로 사용
--      2023 년인 경우 2050 이하이므로 2001년으로 처리
=======
-- �궇吏쒖쓽 諛섏삱由�, 踰꾨┝ : ROUND, TRUNC
-- CC : �꽕 �옄由� �뿰�룄�쓽 �걹 �몢�옄由щ�� 湲곗���쑝濡� �궗�슜
--      2023 �뀈�씤 寃쎌슦 2050 �씠�븯�씠誘�濡� 2001�뀈�쑝濡� 泥섎━
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
-- 형변환 함수 : 자료형을 형 변환
=======
-- �삎蹂��솚 �븿�닔 : �옄猷뚰삎�쓣 �삎 蹂��솚
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
--ORA-01722: 수치가 부적합합니다
=======
--ORA-01722: �닔移섍�� 遺��쟻�빀�빀�땲�떎
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
--01722. 00000 -  "invalid number"
--SELECT empno, ename, 'abcd'+empno
--FROM emp
--WHERE ename = 'FORD';

<<<<<<< HEAD
-- TO_CHAR() : 숫자 또는 날짜 데이터를 문자 데이터로 변환
-- TO_NUMBER() : 문자 데이터를 숫자 데이터로 변환
-- TO_DATE() : 문자 데이터를 날짜 데이터로 변환

-- 원하는 출력 형태로 날짜 출력하기 to_char 주로 사용됨
SELECT
    sysdate,
    to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') AS 현재날짜시간
FROM
    dual;
    
-- MON, MONTH : 월 이름
-- DDD : 365일 중에서 며칠 
SELECT
    sysdate,
    to_char(sysdate, 'YYYY/MM/DD')    AS 현재날짜,
    to_char(sysdate, 'YYYY')          AS 현재연도,
    to_char(sysdate, 'MM')            AS 현재월,
    to_char(sysdate, 'MON')           AS 현재월1,
    to_char(sysdate, 'DD')            AS 현재일자,
    to_char(sysdate, 'DDD')           AS 현재일자2,
    to_char(sysdate, 'HH12:MI:SS AM') AS 현재날짜시간
FROM
    dual;    
    
-- sal 필드에 , 나 통화표시를 하고 싶다면?
-- L (Locale) 지역 화폐 단위 기호 붙여줌
=======
-- TO_CHAR() : �닽�옄 �삉�뒗 �궇吏� �뜲�씠�꽣瑜� 臾몄옄 �뜲�씠�꽣濡� 蹂��솚
-- TO_NUMBER() : 臾몄옄 �뜲�씠�꽣瑜� �닽�옄 �뜲�씠�꽣濡� 蹂��솚
-- TO_DATE() : 臾몄옄 �뜲�씠�꽣瑜� �궇吏� �뜲�씠�꽣濡� 蹂��솚

-- �썝�븯�뒗 異쒕젰 �삎�깭濡� �궇吏� 異쒕젰�븯湲� to_char 二쇰줈 �궗�슜�맖
SELECT
    sysdate,
    to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') AS �쁽�옱�궇吏쒖떆媛�
FROM
    dual;
    
-- MON, MONTH : �썡 �씠由�
-- DDD : 365�씪 以묒뿉�꽌 硫곗튌 
SELECT
    sysdate,
    to_char(sysdate, 'YYYY/MM/DD')    AS �쁽�옱�궇吏�,
    to_char(sysdate, 'YYYY')          AS �쁽�옱�뿰�룄,
    to_char(sysdate, 'MM')            AS �쁽�옱�썡,
    to_char(sysdate, 'MON')           AS �쁽�옱�썡1,
    to_char(sysdate, 'DD')            AS �쁽�옱�씪�옄,
    to_char(sysdate, 'DDD')           AS �쁽�옱�씪�옄2,
    to_char(sysdate, 'HH12:MI:SS AM') AS �쁽�옱�궇吏쒖떆媛�
FROM
    dual;    
    
-- sal �븘�뱶�뿉 , �굹 �넻�솕�몴�떆瑜� �븯怨� �떢�떎硫�?
-- L (Locale) 吏��뿭 �솕�룓 �떒�쐞 湲고샇 遺숈뿬以�
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    sal,
    to_char(sal, '$999,999') AS sal_$,
    to_char(sal, 'L999,999') AS sal_l
FROM
    emp;
    


<<<<<<< HEAD
-- to_number(문자열데이터, 인식될 숫자형태)

-- 자동형변환
=======
-- to_number(臾몄옄�뿴�뜲�씠�꽣, �씤�떇�맆 �닽�옄�삎�깭)

-- �옄�룞�삎蹂��솚
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    1300 - '1500',
    '1300' + 1500
FROM
    dual;

<<<<<<< HEAD
-- 자동형변환안되는 상황    
=======
-- �옄�룞�삎蹂��솚�븞�릺�뒗 �긽�솴    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    TO_NUMBER('1,300', '999,999') - TO_NUMBER('1,500', '999,999')
FROM
    dual;
    
    
<<<<<<< HEAD
-- to_date(문자열데이터, '인식될 날짜 형태')
=======
-- to_date(臾몄옄�뿴�뜲�씠�꽣, '�씤�떇�맆 �궇吏� �삎�깭')
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    TO_DATE('2018-07-14', 'YYYY-MM-DD') AS todate1,
    TO_DATE('20230320', 'YYYY-MM-DD')   AS todate2
FROM
    dual;
    
<<<<<<< HEAD
-- ORA-01722: 수치가 부적합합니다    
=======
-- ORA-01722: �닔移섍�� 遺��쟻�빀�빀�땲�떎    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
--SELECT '2023-03-21' - '2023-02-01'
--FROM dual;

SELECT
    TO_DATE('2023-03-21') - TO_DATE('2023-02-01')
FROM
    dual;    
    

<<<<<<< HEAD
-- 널처리 함수
-- NULL + 300 => NULL

-- NVL(데이터, 널일 경우 반환할 데이터) 
=======
-- �꼸泥섎━ �븿�닔
-- NULL + 300 => NULL

-- NVL(�뜲�씠�꽣, �꼸�씪 寃쎌슦 諛섑솚�븷 �뜲�씠�꽣) 
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
-- NVL2(데이터,널이 아닐경우 반환할 데이터,널일 경우 반환할 데이터)
=======
-- NVL2(�뜲�씠�꽣,�꼸�씠 �븘�땺寃쎌슦 諛섑솚�븷 �뜲�씠�꽣,�꼸�씪 寃쎌슦 諛섑솚�븷 �뜲�씠�꽣)
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
-- DECODE함수 / CASE 문

-- DECODE(검사 대상이 될 데이터, 
--        조건1, 조건1이 일치할때 실행할 구문
--        조건2, 조건2이 일치할때 실행할 구문)
    
-- emp 테이블에 직책이 MANAGER 인 사람은 급여의 10% 인상, 
-- SALESMAN 인 사람은 5%, ANALYST 인 사람은 그대로, 나머지는 3% 인상된 급여 출력
=======
-- DECODE�븿�닔 / CASE 臾�

-- DECODE(寃��궗 ����긽�씠 �맆 �뜲�씠�꽣, 
--        議곌굔1, 議곌굔1�씠 �씪移섑븷�븣 �떎�뻾�븷 援щЦ
--        議곌굔2, 議곌굔2�씠 �씪移섑븷�븣 �떎�뻾�븷 援щЦ)
    
-- emp �뀒�씠釉붿뿉 吏곸콉�씠 MANAGER �씤 �궗�엺��� 湲됱뿬�쓽 10% �씤�긽, 
-- SALESMAN �씤 �궗�엺��� 5%, ANALYST �씤 �궗�엺��� 洹몃��濡�, �굹癒몄���뒗 3% �씤�긽�맂 湲됱뿬 異쒕젰
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
            '해당사항 없음'
        WHEN comm = 0 THEN
            '수당없음'
        WHEN comm > 0 THEN
            '수당 : ' || comm
=======
            '�빐�떦�궗�빆 �뾾�쓬'
        WHEN comm = 0 THEN
            '�닔�떦�뾾�쓬'
        WHEN comm > 0 THEN
            '�닔�떦 : ' || comm
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    END AS comm_text
FROM
    emp;
    
<<<<<<< HEAD
-- EMP 테이블에서 사원들의 월 평균 근무일수는 21.5일이다. 
-- 하루 근무 시간을 8시간으로 보았을 때 사원들의 
-- 하루 급여(DAY_PAY)와 시급(TIME_PAY)를 계산하여 
-- 결과를 출력한다. 단, 하루 급여는 소수점 셋째 자리에서
-- 버리고, 시급은 두 번째 소수점에서 반올림하시오.
=======
-- EMP �뀒�씠釉붿뿉�꽌 �궗�썝�뱾�쓽 �썡 �룊洹� 洹쇰Т�씪�닔�뒗 21.5�씪�씠�떎. 
-- �븯猷� 洹쇰Т �떆媛꾩쓣 8�떆媛꾩쑝濡� 蹂댁븯�쓣 �븣 �궗�썝�뱾�쓽 
-- �븯猷� 湲됱뿬(DAY_PAY)��� �떆湲�(TIME_PAY)瑜� 怨꾩궛�븯�뿬 
-- 寃곌낵瑜� 異쒕젰�븳�떎. �떒, �븯猷� 湲됱뿬�뒗 �냼�닔�젏 �뀑吏� �옄由ъ뿉�꽌
-- 踰꾨━怨�, �떆湲됱�� �몢 踰덉㎏ �냼�닔�젏�뿉�꽌 諛섏삱由쇳븯�떆�삤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename                    sal,
    trunc(sal / 21.5, 2)     AS day_pay,
    round(sal / 21.5 / 8, 1) AS time_pay
FROM
    emp;
    
<<<<<<< HEAD
-- EMP 테이블에서 사원들은 입사일(HIREDATE)을 기준으로 
-- 3개월이 지난 후 첫 월요일에 정직원이 된다. 사원들이 
-- 정직원이 되는 날짜(R_JOB)를 YYYY-MM-DD 형식으로 아래와 
-- 같이 출력하시오. 단, 추가수당(COMM)이 없는 사원의 추가 수당은 N/A로 출력하시오.
=======
-- EMP �뀒�씠釉붿뿉�꽌 �궗�썝�뱾��� �엯�궗�씪(HIREDATE)�쓣 湲곗���쑝濡� 
-- 3媛쒖썡�씠 吏��궃 �썑 泥� �썡�슂�씪�뿉 �젙吏곸썝�씠 �맂�떎. �궗�썝�뱾�씠 
-- �젙吏곸썝�씠 �릺�뒗 �궇吏�(R_JOB)瑜� YYYY-MM-DD �삎�떇�쑝濡� �븘�옒��� 
-- 媛숈씠 異쒕젰�븯�떆�삤. �떒, 異붽���닔�떦(COMM)�씠 �뾾�뒗 �궗�썝�쓽 異붽�� �닔�떦��� N/A濡� 異쒕젰�븯�떆�삤.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    comm,
    nvl(to_char(comm),
<<<<<<< HEAD
        'N/A')  -- ORA-01722: 수치가 부적합합니다
=======
        'N/A')  -- ORA-01722: �닔移섍�� 遺��쟻�빀�빀�땲�떎
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
FROM
    emp;

SELECT
    empno,
    ename,
    hiredate,
    next_day(add_months(hiredate, 3),
<<<<<<< HEAD
             '월요일') AS r_job,
=======
             '�썡�슂�씪') AS r_job,
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
             '월요일') AS r_job,
=======
             '�썡�슂�씪') AS r_job,
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    nvl2(comm,
         to_char(comm),
         'N/A')     AS comm
FROM
    emp;
    
<<<<<<< HEAD
--EMP 테이블의 모든 사원을 대상으로 직속 상관의 사원 번호(MGR)를 
--다음과 같은 조건을 기준으로 변환해서 CHG_MGR 열에 출력하시오.
--
--직속상관의 사원 번호가 존재하지 않을 경우 : 0000
--직속상관의 사원 번호 앞 두자리가 75일 경우 : 5555
--직속상관의 사원 번호 앞 두자리가 76일 경우 : 6666
--직속상관의 사원 번호 앞 두자리가 77일 경우 : 7777
--직속상관의 사원 번호 앞 두자리가 78일 경우 : 8888
--그 외 직속 상관 사원 번호의 경우 : 본래 직속 상관의 사원번호 그대로 출력
=======
--EMP �뀒�씠釉붿쓽 紐⑤뱺 �궗�썝�쓣 ����긽�쑝濡� 吏곸냽 �긽愿��쓽 �궗�썝 踰덊샇(MGR)瑜� 
--�떎�쓬怨� 媛숈�� 議곌굔�쓣 湲곗���쑝濡� 蹂��솚�빐�꽌 CHG_MGR �뿴�뿉 異쒕젰�븯�떆�삤.
--
--吏곸냽�긽愿��쓽 �궗�썝 踰덊샇媛� 議댁옱�븯吏� �븡�쓣 寃쎌슦 : 0000
--吏곸냽�긽愿��쓽 �궗�썝 踰덊샇 �븵 �몢�옄由ш�� 75�씪 寃쎌슦 : 5555
--吏곸냽�긽愿��쓽 �궗�썝 踰덊샇 �븵 �몢�옄由ш�� 76�씪 寃쎌슦 : 6666
--吏곸냽�긽愿��쓽 �궗�썝 踰덊샇 �븵 �몢�옄由ш�� 77�씪 寃쎌슦 : 7777
--吏곸냽�긽愿��쓽 �궗�썝 踰덊샇 �븵 �몢�옄由ш�� 78�씪 寃쎌슦 : 8888
--洹� �쇅 吏곸냽 �긽愿� �궗�썝 踰덊샇�쓽 寃쎌슦 : 蹂몃옒 吏곸냽 �긽愿��쓽 �궗�썝踰덊샇 洹몃��濡� 異쒕젰
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
-- 다중행(집계) 함수 : sum, count, max, min, avg

-- ORA-00937: 단일 그룹의 그룹 함수가 아닙니다
=======
-- �떎以묓뻾(吏묎퀎) �븿�닔 : sum, count, max, min, avg

-- ORA-00937: �떒�씪 洹몃９�쓽 洹몃９ �븿�닔媛� �븘�떃�땲�떎
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
-- sum() : NULL 은 제외하고 합계 구해줌     
=======
-- sum() : NULL ��� �젣�쇅�븯怨� �빀怨� 援ы빐以�     
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
-- 부서번호가 20인 사원의 입사일 중 제일 최근 입사일
=======
-- 遺��꽌踰덊샇媛� 20�씤 �궗�썝�쓽 �엯�궗�씪 以� �젣�씪 理쒓렐 �엯�궗�씪
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    MAX(hiredate)
FROM
    emp
WHERE
    deptno = 20;

<<<<<<< HEAD
-- 부서번호가 20인 사원의 입사일 중 제일 오래된 입사일
=======
-- 遺��꽌踰덊샇媛� 20�씤 �궗�썝�쓽 �엯�궗�씪 以� �젣�씪 �삤�옒�맂 �엯�궗�씪
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
-- group by : 결과 값을 원하는 열로 묶어 출력

-- 부서별 sal 평균 구하기
=======
-- group by : 寃곌낵 媛믪쓣 �썝�븯�뒗 �뿴濡� 臾띠뼱 異쒕젰

-- 遺��꽌蹂� sal �룊洹� 援ы븯湲�
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
-- 부서별 추가수당 평균 구하기
=======
-- 遺��꽌蹂� 異붽���닔�떦 �룊洹� 援ы븯湲�
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    deptno,
    AVG(comm)
FROM
    emp
GROUP BY
    deptno;
    
    
<<<<<<< HEAD
-- GROUP BY 표현식이 아닙니다.
=======
-- GROUP BY �몴�쁽�떇�씠 �븘�떃�땲�떎.
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
-- GROUP BY + HAVING : group by 절에 조건을 줄 때
-- HAVING : 그룹화된 대상을 출력 제한 걸때

-- 각 부서의 직책별 평균 급여 구하기(단, 평균 급여가 2000 이상인 그룹만 출력)
-- deptno, job, 평균
=======
-- GROUP BY + HAVING : group by �젅�뿉 議곌굔�쓣 以� �븣
-- HAVING : 洹몃９�솕�맂 ����긽�쓣 異쒕젰 �젣�븳 嫄몃븣

-- 媛� 遺��꽌�쓽 吏곸콉蹂� �룊洹� 湲됱뿬 援ы븯湲�(�떒, �룊洹� 湲됱뿬媛� 2000 �씠�긽�씤 洹몃９留� 異쒕젰)
-- deptno, job, �룊洹�
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
-- 그룹 함수는 허가되지 않습니다    
=======
-- 洹몃９ �븿�닔�뒗 �뿀媛��릺吏� �븡�뒿�땲�떎    
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
-- select 실행 순서    
-- 1) from 구문 실행  2) where 실행  3) group by 4) having 5) select 6) order by
=======
-- select �떎�뻾 �닚�꽌    
-- 1) from 援щЦ �떎�뻾  2) where �떎�뻾  3) group by 4) having 5) select 6) order by
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
-- EMP 테이블을 이용하여 부서번호(DEPTNO), 평균급여(AVG_SAL), 
-- 최고급여(MAX_SAL), 최저급여(MIN_SAL), 사원수(CNT)를 출력한다. 
-- 단, 평균 급여를 출력할 때 소수점을 제외하고 각 부서번호별로 출력하는 SQL 문을 작성하시오.
=======
-- EMP �뀒�씠釉붿쓣 �씠�슜�븯�뿬 遺��꽌踰덊샇(DEPTNO), �룊洹좉툒�뿬(AVG_SAL), 
-- 理쒓퀬湲됱뿬(MAX_SAL), 理쒖��湲됱뿬(MIN_SAL), �궗�썝�닔(CNT)瑜� 異쒕젰�븳�떎. 
-- �떒, �룊洹� 湲됱뿬瑜� 異쒕젰�븷 �븣 �냼�닔�젏�쓣 �젣�쇅�븯怨� 媛� 遺��꽌踰덊샇蹂꾨줈 異쒕젰�븯�뒗 SQL 臾몄쓣 �옉�꽦�븯�떆�삤.
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
-- 같은 직책에 종사하는 사원이 3명 이상인 직책과 인원수를 출력
=======
-- 媛숈�� 吏곸콉�뿉 醫낆궗�븯�뒗 �궗�썝�씠 3紐� �씠�긽�씤 吏곸콉怨� �씤�썝�닔瑜� 異쒕젰
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
-- 사원들의 입사연도(HIRE_YEAR)를 기준으로 부서별로 몇 명이 입사했는지 출력
=======
-- �궗�썝�뱾�쓽 �엯�궗�뿰�룄(HIRE_YEAR)瑜� 湲곗���쑝濡� 遺��꽌蹂꾨줈 紐� 紐낆씠 �엯�궗�뻽�뒗吏� 異쒕젰
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
-- 조인 : 여러 테이블을 하나의 테이블처럼 사용
-- 1) 내부조인(inner join) : 여러 개의 테이블에서 공통된 부분만 추출
--    ① 등가조인 : 두 개의 열이 일치할 때 값 추출
--    ② 비등가조인 : 범위에 해당할 때 값 추출

-- 2) 외부조인(outer join)
--    ① left outer join
--    ② right outer join
--    ③ full outer join

-- dept : 4 행, emp : 12 행 ==> 4*12 = 48행
-- 크로스 조인(나올 수 있는 모든 조합 추출)
=======
-- 議곗씤 : �뿬�윭 �뀒�씠釉붿쓣 �븯�굹�쓽 �뀒�씠釉붿쿂�읆 �궗�슜
-- 1) �궡遺�議곗씤(inner join) : �뿬�윭 媛쒖쓽 �뀒�씠釉붿뿉�꽌 怨듯넻�맂 遺�遺꾨쭔 異붿텧
--    �몺 �벑媛�議곗씤 : �몢 媛쒖쓽 �뿴�씠 �씪移섑븷 �븣 媛� 異붿텧
--    �몼 鍮꾨벑媛�議곗씤 : 踰붿쐞�뿉 �빐�떦�븷 �븣 媛� 異붿텧

-- 2) �쇅遺�議곗씤(outer join)
--    �몺 left outer join
--    �몼 right outer join
--    �몾 full outer join

-- dept : 4 �뻾, emp : 12 �뻾 ==> 4*12 = 48�뻾
-- �겕濡쒖뒪 議곗씤(�굹�삱 �닔 �엳�뒗 紐⑤뱺 議고빀 異붿텧)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp,
    dept
ORDER BY
    empno;


<<<<<<< HEAD
-- ORA-00918: 열의 정의가 애매합니다( column ambiguously defined )
=======
-- ORA-00918: �뿴�쓽 �젙�쓽媛� �븷留ㅽ빀�땲�떎( column ambiguously defined )
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
-- SQL-99 표준
=======
-- SQL-99 �몴以�
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
-- SQL-99 표준
=======
-- SQL-99 �몴以�
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
-- emp, dept inner join, 급여가 2500 이하이고, 사원번호가 9999 이하인 사원 정보 조회
=======
-- emp, dept inner join, 湲됱뿬媛� 2500 �씠�븯�씠怨�, �궗�썝踰덊샇媛� 9999 �씠�븯�씤 �궗�썝 �젙蹂� 議고쉶
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
-- SQL-99 표준
=======
-- SQL-99 �몴以�
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
-- emp와 salgrade 조인
-- emp 테이블의 sal 이 salgrade 테이블의 losal 과 hisal 범위에 들어가는 형태로 조인
=======
-- emp��� salgrade 議곗씤
-- emp �뀒�씠釉붿쓽 sal �씠 salgrade �뀒�씠釉붿쓽 losal 怨� hisal 踰붿쐞�뿉 �뱾�뼱媛��뒗 �삎�깭濡� 議곗씤
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp      e,
    salgrade s
WHERE
    e.sal BETWEEN s.losal AND s.hisal;


<<<<<<< HEAD
-- SQL-99 표준
=======
-- SQL-99 �몴以�
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- join ~ on

SELECT
    *
FROM
         emp e
    JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal;



<<<<<<< HEAD
-- self join : 자기 자신 테이블과 조인
=======
-- self join : �옄湲� �옄�떊 �뀒�씠釉붽낵 議곗씤
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
-- SQL-99 표준
=======
-- SQL-99 �몴以�
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
-- SQL-99 표준
=======
-- SQL-99 �몴以�
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
-- outer-join된 테이블은 1개만 지정할 수 있습니다
=======
-- outer-join�맂 �뀒�씠釉붿�� 1媛쒕쭔 吏��젙�븷 �닔 �엳�뒿�땲�떎
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- 01468. 00000 -  "a predicate may reference only one outer-joi
--SELECT e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename
--FROM emp e1, emp e2
--WHERE e1.mgr(+) = e2.empno(+);

<<<<<<< HEAD
-- SQL-99 표준
=======
-- SQL-99 �몴以�
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
-- 연결해야 할 테이블이 세개일때
=======
-- �뿰寃고빐�빞 �븷 �뀒�씠釉붿씠 �꽭媛쒖씪�븣
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

--SELECT *
--FROM table1 t1, table2 t2, table3 t3
--WHERE t1.empno = t2.empno AND t2.deptno = t3.deptno;
--
--
--SELECT *
--FROM table1 t1 join table2 t2 on t1.empno = t2.empno join table3 t3 on t2.deptno = t3.deptno;


<<<<<<< HEAD
-- 급여가 2000초과인 사원들의 부서 정보, 사원 정보를 아래와 같이 출력하는 SQL 문을 작성하시오.
=======
-- 湲됱뿬媛� 2000珥덇낵�씤 �궗�썝�뱾�쓽 遺��꽌 �젙蹂�, �궗�썝 �젙蹂대�� �븘�옒��� 媛숈씠 異쒕젰�븯�뒗 SQL 臾몄쓣 �옉�꽦�븯�떆�삤.
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
-- 각 부서별 평균 급여, 최대 급여, 최소 급여, 사원수를 출력하는 SQL문을 작성하시오.
=======
-- 媛� 遺��꽌蹂� �룊洹� 湲됱뿬, 理쒕�� 湲됱뿬, 理쒖냼 湲됱뿬, �궗�썝�닔瑜� 異쒕젰�븯�뒗 SQL臾몄쓣 �옉�꽦�븯�떆�삤.
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
-- 모든 부서정보와 사원 정보를 아래와 같이 부서번호, 사원이름 순으로 정렬하여 출력하는 SQL문을 작성하시오.
=======
-- 紐⑤뱺 遺��꽌�젙蹂댁�� �궗�썝 �젙蹂대�� �븘�옒��� 媛숈씠 遺��꽌踰덊샇, �궗�썝�씠由� �닚�쑝濡� �젙�젹�븯�뿬 異쒕젰�븯�뒗 SQL臾몄쓣 �옉�꽦�븯�떆�삤.
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
-- 서브쿼리
-- sql 문을 실행하는 데 필요한 데이터를 추가로 조회하기 위해 sql 문 내부에서 사용하는 select 문
-- 1) 단일행 서브쿼리 2) 다중행 서브쿼리 3) 다중열 서브쿼리 

--SELECT 조회할 열
--FROM 테이블명
--WHERE 조건식(SELECT 조회할 열 FROM 테이블 WHERE 조건식)


-- 존스의 급여보다 높은 급여를 받는 사원 조회
-- JONES 급여 알아내기 / 알아낸 JONES 급여를 가지고 조건식
=======
-- �꽌釉뚯옘由�
-- sql 臾몄쓣 �떎�뻾�븯�뒗 �뜲 �븘�슂�븳 �뜲�씠�꽣瑜� 異붽��濡� 議고쉶�븯湲� �쐞�빐 sql 臾� �궡遺��뿉�꽌 �궗�슜�븯�뒗 select 臾�
-- 1) �떒�씪�뻾 �꽌釉뚯옘由� 2) �떎以묓뻾 �꽌釉뚯옘由� 3) �떎以묒뿴 �꽌釉뚯옘由� 

--SELECT 議고쉶�븷 �뿴
--FROM �뀒�씠釉붾챸
--WHERE 議곌굔�떇(SELECT 議고쉶�븷 �뿴 FROM �뀒�씠釉� WHERE 議곌굔�떇)


-- 議댁뒪�쓽 湲됱뿬蹂대떎 �넂��� 湲됱뿬瑜� 諛쏅뒗 �궗�썝 議고쉶
-- JONES 湲됱뿬 �븣�븘�궡湲� / �븣�븘�궦 JONES 湲됱뿬瑜� 媛�吏�怨� 議곌굔�떇
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
-- 단일행 서브쿼리 : 서브쿼리 결과로 하나의 행 반환
-- =, >, <, >=, <=, <>, ^=, != 연산자 허용


-- 존스의 급여보다 높은 급여를 받는 사원 조회(서브쿼리)
=======
-- �떒�씪�뻾 �꽌釉뚯옘由� : �꽌釉뚯옘由� 寃곌낵濡� �븯�굹�쓽 �뻾 諛섑솚
-- =, >, <, >=, <=, <>, ^=, != �뿰�궛�옄 �뿀�슜


-- 議댁뒪�쓽 湲됱뿬蹂대떎 �넂��� 湲됱뿬瑜� 諛쏅뒗 �궗�썝 議고쉶(�꽌釉뚯옘由�)
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
-- 사원이름이 ALLEN 인 사원의 추가수당 보다 많은 추가수당을 받는 사원 조회
=======
-- �궗�썝�씠由꾩씠 ALLEN �씤 �궗�썝�쓽 異붽���닔�떦 蹂대떎 留롮�� 異붽���닔�떦�쓣 諛쏅뒗 �궗�썝 議고쉶
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
-- 사원이름이 WARD 인 사원의 입사일보다 빨리 입사한 사원 조회     
=======
-- �궗�썝�씠由꾩씠 WARD �씤 �궗�썝�쓽 �엯�궗�씪蹂대떎 鍮⑤━ �엯�궗�븳 �궗�썝 議고쉶     
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
-- 20번 부서에 속한 사원 중 전체 사원의 평균 급여보다 높은 급여를 받는 사원정보 및
-- 부서정보 조회
-- 사원번호, 사원명, 직무, 급여, 부서번호, 부서명, 지역
=======
-- 20踰� 遺��꽌�뿉 �냽�븳 �궗�썝 以� �쟾泥� �궗�썝�쓽 �룊洹� 湲됱뿬蹂대떎 �넂��� 湲됱뿬瑜� 諛쏅뒗 �궗�썝�젙蹂� 諛�
-- 遺��꽌�젙蹂� 議고쉶
-- �궗�썝踰덊샇, �궗�썝紐�, 吏곷Т, 湲됱뿬, 遺��꽌踰덊샇, 遺��꽌紐�, 吏��뿭
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
-- 20번 부서에 속한 사원 중 전체 사원의 평균 급여보다 작거나 같은 급여를 받는 사원정보 및
-- 부서정보 조회 
=======
-- 20踰� 遺��꽌�뿉 �냽�븳 �궗�썝 以� �쟾泥� �궗�썝�쓽 �룊洹� 湲됱뿬蹂대떎 �옉嫄곕굹 媛숈�� 湲됱뿬瑜� 諛쏅뒗 �궗�썝�젙蹂� 諛�
-- 遺��꽌�젙蹂� 議고쉶 
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
-- 다중행 서브쿼리 : 서브쿼리 결과로 여러개의 행 반환 
-- IN, ANY(SOME), ALL, EXISTS 연산자 허용(단일행 서브쿼리에 쓰는 연산자 사용 불가)

-- 각 부서별 최고 급여와 동일한 급여를 받는 사원정보 조회

-- 각 부서별 최고 급여
=======
-- �떎以묓뻾 �꽌釉뚯옘由� : �꽌釉뚯옘由� 寃곌낵濡� �뿬�윭媛쒖쓽 �뻾 諛섑솚 
-- IN, ANY(SOME), ALL, EXISTS �뿰�궛�옄 �뿀�슜(�떒�씪�뻾 �꽌釉뚯옘由ъ뿉 �벐�뒗 �뿰�궛�옄 �궗�슜 遺덇��)

-- 媛� 遺��꽌蹂� 理쒓퀬 湲됱뿬��� �룞�씪�븳 湲됱뿬瑜� 諛쏅뒗 �궗�썝�젙蹂� 議고쉶

-- 媛� 遺��꽌蹂� 理쒓퀬 湲됱뿬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    MAX(sal)
FROM
    emp
GROUP BY
    deptno;

<<<<<<< HEAD
-- 단일 행 하위 질의에 2개 이상의 행이 리턴되었습니다.    
-- SELECT * FROM emp WHERE sal = (SELECT MAX(sal) FROM emp GROUP BY deptno);    

-- IN : 메인쿼리 결과가 서브쿼리 결과 중 하나라도 일치하면 TRUE    
=======
-- �떒�씪 �뻾 �븯�쐞 吏덉쓽�뿉 2媛� �씠�긽�쓽 �뻾�씠 由ы꽩�릺�뿀�뒿�땲�떎.    
-- SELECT * FROM emp WHERE sal = (SELECT MAX(sal) FROM emp GROUP BY deptno);    

-- IN : 硫붿씤荑쇰━ 寃곌낵媛� �꽌釉뚯옘由� 寃곌낵 以� �븯�굹�씪�룄 �씪移섑븯硫� TRUE    
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
-- 30번 부서 사원들의 급여보다 적은 급여를 받는 사원 정보 조회

-- ANY(SOME) : 메인쿼리 결과가 서브쿼리 결과가 하나이상이면 TRUE    
=======
-- 30踰� 遺��꽌 �궗�썝�뱾�쓽 湲됱뿬蹂대떎 �쟻��� 湲됱뿬瑜� 諛쏅뒗 �궗�썝 �젙蹂� 議고쉶

-- ANY(SOME) : 硫붿씤荑쇰━ 寃곌낵媛� �꽌釉뚯옘由� 寃곌낵媛� �븯�굹�씠�긽�씠硫� TRUE    
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
-- 위 결과는 단일행 쿼리로 작성이 가능한 상황임
=======
-- �쐞 寃곌낵�뒗 �떒�씪�뻾 荑쇰━濡� �옉�꽦�씠 媛��뒫�븳 �긽�솴�엫
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
-- 30번 부서 사원들의 최소 급여보다 많은 급여를 받는 사원 정보 조회

-- ① 단일행 서브쿼리
=======
-- 30踰� 遺��꽌 �궗�썝�뱾�쓽 理쒖냼 湲됱뿬蹂대떎 留롮�� 湲됱뿬瑜� 諛쏅뒗 �궗�썝 �젙蹂� 議고쉶

-- �몺 �떒�씪�뻾 �꽌釉뚯옘由�
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
-- ② 다중행 서브쿼리
=======
-- �몼 �떎以묓뻾 �꽌釉뚯옘由�
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
-- ALL : 서브쿼리 모든 결과가 조건식에 맞아 떨어져야만 메인쿼리 조건식이 TRUE
=======
-- ALL : �꽌釉뚯옘由� 紐⑤뱺 寃곌낵媛� 議곌굔�떇�뿉 留욎븘 �뼥�뼱�졇�빞留� 硫붿씤荑쇰━ 議곌굔�떇�씠 TRUE
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
-- EXISTS : 서브 쿼리에 결과 값이 하나 이상 존재하면 조건식이 모두 TRUE, 존재하지 않으면 FALSE
=======
-- EXISTS : �꽌釉� 荑쇰━�뿉 寃곌낵 媛믪씠 �븯�굹 �씠�긽 議댁옱�븯硫� 議곌굔�떇�씠 紐⑤몢 TRUE, 議댁옱�븯吏� �븡�쑝硫� FALSE
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
-- 전체 사원 중 ALLEN과 같은 직책인 사원들의 사원정보, 부서 정보를 다음과 같이 출력하는 SQL문을 작성하시오.
=======
-- �쟾泥� �궗�썝 以� ALLEN怨� 媛숈�� 吏곸콉�씤 �궗�썝�뱾�쓽 �궗�썝�젙蹂�, 遺��꽌 �젙蹂대�� �떎�쓬怨� 媛숈씠 異쒕젰�븯�뒗 SQL臾몄쓣 �옉�꽦�븯�떆�삤.
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
-- 전체 사원의 평균 급여보다 높은 급여를 받는 사원들의 사원정보, 부서정보, 
-- 급여 등급 정보를 출력하는 SQL문을 작성하시오(단, 출력할 때 급여가 
-- 많은 순으로 정렬하되 급여가 같을 경우에는 사원 번호를 기준으로 오름차순으로 정렬하기)
=======
-- �쟾泥� �궗�썝�쓽 �룊洹� 湲됱뿬蹂대떎 �넂��� 湲됱뿬瑜� 諛쏅뒗 �궗�썝�뱾�쓽 �궗�썝�젙蹂�, 遺��꽌�젙蹂�, 
-- 湲됱뿬 �벑湲� �젙蹂대�� 異쒕젰�븯�뒗 SQL臾몄쓣 �옉�꽦�븯�떆�삤(�떒, 異쒕젰�븷 �븣 湲됱뿬媛� 
-- 留롮�� �닚�쑝濡� �젙�젹�븯�릺 湲됱뿬媛� 媛숈쓣 寃쎌슦�뿉�뒗 �궗�썝 踰덊샇瑜� 湲곗���쑝濡� �삤由꾩감�닚�쑝濡� �젙�젹�븯湲�)
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
-- 다중열 서브쿼리 : 서브쿼리의 select 절에 비교할 데이터를 여러 개 지정
=======
-- �떎以묒뿴 �꽌釉뚯옘由� : �꽌釉뚯옘由ъ쓽 select �젅�뿉 鍮꾧탳�븷 �뜲�씠�꽣瑜� �뿬�윭 媛� 吏��젙
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
-- FROM 절에 사용하는 서브쿼리(인라인 뷰)
-- FROM 절에 직접 테이블을 명시해서 사용하기에는 테이블 내 데이터 규모가 클 때, 불필요한 열이 많을 때
=======
-- FROM �젅�뿉 �궗�슜�븯�뒗 �꽌釉뚯옘由�(�씤�씪�씤 酉�)
-- FROM �젅�뿉 吏곸젒 �뀒�씠釉붿쓣 紐낆떆�빐�꽌 �궗�슜�븯湲곗뿉�뒗 �뀒�씠釉� �궡 �뜲�씠�꽣 洹쒕え媛� �겢 �븣, 遺덊븘�슂�븳 �뿴�씠 留롮쓣 �븣
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
-- SELECT 절에 사용하는 서브쿼리(스칼라 서브쿼리)
-- SELECT 절에 사용하는 서브쿼리는 반드시 하나의 결과만 반환해야 함
=======
-- SELECT �젅�뿉 �궗�슜�븯�뒗 �꽌釉뚯옘由�(�뒪移쇰씪 �꽌釉뚯옘由�)
-- SELECT �젅�뿉 �궗�슜�븯�뒗 �꽌釉뚯옘由щ뒗 諛섎뱶�떆 �븯�굹�쓽 寃곌낵留� 諛섑솚�빐�빞 �븿
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
-- 10번 부서에 근무하는 사원 중 30번 부서에는 존재하지 않는 직책을 가진
-- 사원들의 사원정보, 부서 정보를 다음과 같이 출력하는 SQL문을 작성하시오.
=======
-- 10踰� 遺��꽌�뿉 洹쇰Т�븯�뒗 �궗�썝 以� 30踰� 遺��꽌�뿉�뒗 議댁옱�븯吏� �븡�뒗 吏곸콉�쓣 媛�吏�
-- �궗�썝�뱾�쓽 �궗�썝�젙蹂�, 遺��꽌 �젙蹂대�� �떎�쓬怨� 媛숈씠 異쒕젰�븯�뒗 SQL臾몄쓣 �옉�꽦�븯�떆�삤.
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
-- 직책이 SALESMAN인 사람들의 최고 급여보다 높은 급여를 받는 사원들의 사원정보, 급여등급 정보를 출력하는 SQL문을 작성하시오
-- (단, 서브쿼리를 활용할 때 다중행 함수를 사용하는 방법과 사용하지 않는 방법을 통해 사원번호를 기준으로 오름차순 정렬하여 출력    

-- 단일행 서브쿼리    
=======
-- 吏곸콉�씠 SALESMAN�씤 �궗�엺�뱾�쓽 理쒓퀬 湲됱뿬蹂대떎 �넂��� 湲됱뿬瑜� 諛쏅뒗 �궗�썝�뱾�쓽 �궗�썝�젙蹂�, 湲됱뿬�벑湲� �젙蹂대�� 異쒕젰�븯�뒗 SQL臾몄쓣 �옉�꽦�븯�떆�삤
-- (�떒, �꽌釉뚯옘由щ�� �솢�슜�븷 �븣 �떎以묓뻾 �븿�닔瑜� �궗�슜�븯�뒗 諛⑸쾿怨� �궗�슜�븯吏� �븡�뒗 諛⑸쾿�쓣 �넻�빐 �궗�썝踰덊샇瑜� 湲곗���쑝濡� �삤由꾩감�닚 �젙�젹�븯�뿬 異쒕젰    

-- �떒�씪�뻾 �꽌釉뚯옘由�    
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
-- 다중행 함수 사용시(IN, any, some, all, exists)    
=======
-- �떎以묓뻾 �븿�닔 �궗�슜�떆(IN, any, some, all, exists)    
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
-- DML(Data Manipulation Language) : 데이터 추가(INSERT), 수정(UPDATE), 삭제(DELETE)하는 데이터 조작어
-- COMMIT : DML 작업을 데이터베이스에 최종 반영
-- ROLLBACK : DML 작업을 취소
-- select + DML ==> 자주 사용하는 sql 임


-- 연습용 테이블 생성
-- 기존 테이블 복사
=======
-- DML(Data Manipulation Language) : �뜲�씠�꽣 異붽��(INSERT), �닔�젙(UPDATE), �궘�젣(DELETE)�븯�뒗 �뜲�씠�꽣 議곗옉�뼱
-- COMMIT : DML �옉�뾽�쓣 �뜲�씠�꽣踰좎씠�뒪�뿉 理쒖쥌 諛섏쁺
-- ROLLBACK : DML �옉�뾽�쓣 痍⑥냼
-- select + DML ==> �옄二� �궗�슜�븯�뒗 sql �엫


-- �뿰�뒿�슜 �뀒�씠釉� �깮�꽦
-- 湲곗〈 �뀒�씠釉� 蹂듭궗
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
CREATE TABLE dept_temp
    AS
        SELECT
            *
        FROM
            dept;

DROP TABLE dept_temp;  

<<<<<<< HEAD
-- 열이름은 선택사항임
-- insert into 테이블이름(열이름1, 열이름2.....)
-- values(데이터1, 데이터2......);


-- dept_temp 새로운 부서 추가하기
=======
-- �뿴�씠由꾩�� �꽑�깮�궗�빆�엫
-- insert into �뀒�씠釉붿씠由�(�뿴�씠由�1, �뿴�씠由�2.....)
-- values(�뜲�씠�꽣1, �뜲�씠�꽣2......);


-- dept_temp �깉濡쒖슫 遺��꽌 異붽���븯湲�
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
-- 열 이름 제거할 때
=======
-- �뿴 �씠由� �젣嫄고븷 �븣
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
INSERT INTO dept_temp VALUES (
    60,
    'NETWORK',
    'BUSAN'
);

<<<<<<< HEAD
-- INSERT 시 오류

-- 이 열에 대해 지정된 전체 자릿수보다 큰 값이 허용됩니다.
--INSERT INTO dept_temp
--VALUES(600,'NETWORK','BUSAN');

-- 수치가 부적합합니다
--INSERT INTO dept_temp
--VALUES('NO','NETWORK','BUSAN');

-- 값의 수가 충분하지 않습니다
--INSERT INTO dept_temp(deptno, dname, loc)
--VALUES(70,'DATABASE');

-- NULL삽입
=======
-- INSERT �떆 �삤瑜�

-- �씠 �뿴�뿉 ����빐 吏��젙�맂 �쟾泥� �옄由우닔蹂대떎 �겙 媛믪씠 �뿀�슜�맗�땲�떎.
--INSERT INTO dept_temp
--VALUES(600,'NETWORK','BUSAN');

-- �닔移섍�� 遺��쟻�빀�빀�땲�떎
--INSERT INTO dept_temp
--VALUES('NO','NETWORK','BUSAN');

-- 媛믪쓽 �닔媛� 異⑸텇�븯吏� �븡�뒿�땲�떎
--INSERT INTO dept_temp(deptno, dname, loc)
--VALUES(70,'DATABASE');

-- NULL�궫�엯
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
-- NULL 삽입할 컬럼명 지정하지 않았음
-- 삽입시 전체 컬럼을 삽입하지 않는다면 필드명 필수
=======
-- NULL �궫�엯�븷 而щ읆紐� 吏��젙�븯吏� �븡�븯�쓬
-- �궫�엯�떆 �쟾泥� 而щ읆�쓣 �궫�엯�븯吏� �븡�뒗�떎硫� �븘�뱶紐� �븘�닔
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
-- emp_temp 생성(emp 테이블 복사 - 데이터는 복사를 하지 않을 때)
-- 구조만 복사
=======
-- emp_temp �깮�꽦(emp �뀒�씠釉� 蹂듭궗 - �뜲�씠�꽣�뒗 蹂듭궗瑜� �븯吏� �븡�쓣 �븣)
-- 援ъ“留� 蹂듭궗
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
    '홍길동',
=======
    '�솉湲몃룞',
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
    '성춘향',
=======
    '�꽦異섑뼢',
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    'MANAGER',
    9999,
    '2002-01-05',
    4000,
    NULL,
    20
);
  
<<<<<<< HEAD
-- 날짜 입력 시 년/월/일 순서 => 일/월/년 삽입
-- 날짜 형식의 지정에 불필요한 데이터가 포함
--INSERT INTO emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
--VALUES(2222,'이순신','MANAGER',9999,'07/01/2001',4000,NULL,20);
=======
-- �궇吏� �엯�젰 �떆 �뀈/�썡/�씪 �닚�꽌 => �씪/�썡/�뀈 �궫�엯
-- �궇吏� �삎�떇�쓽 吏��젙�뿉 遺덊븘�슂�븳 �뜲�씠�꽣媛� �룷�븿
--INSERT INTO emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
--VALUES(2222,'�씠�닚�떊','MANAGER',9999,'07/01/2001',4000,NULL,20);
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
    '이순신',
=======
    '�씠�닚�떊',
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
    '심봉사',
=======
    '�떖遊됱궗',
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    'MANAGER',
    9999,
    sysdate,
    4000,
    NULL,
    30
);

<<<<<<< HEAD
-- 서브쿼리로 INSERT 구현
-- emp, salgrade 테이블을 조인 후 급여 등급이 1인 사원만 emp_temp 에 추가
=======
-- �꽌釉뚯옘由щ줈 INSERT 援ы쁽
-- emp, salgrade �뀒�씠釉붿쓣 議곗씤 �썑 湲됱뿬 �벑湲됱씠 1�씤 �궗�썝留� emp_temp �뿉 異붽��
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
-- UPDATE : 테이블에 있는 데이터 수정

--UPDATE 테이블명
--SET  변경할열이름 = 데이터, 변경할열이름 = 데이터.....
--WHERE 변경을 위한 대상 행을 선별하기 위한 조건
    


-- dept_temp loc 열의 모든 값을 seoul 로 변경
=======
-- UPDATE : �뀒�씠釉붿뿉 �엳�뒗 �뜲�씠�꽣 �닔�젙

--UPDATE �뀒�씠釉붾챸
--SET  蹂�寃쏀븷�뿴�씠由� = �뜲�씠�꽣, 蹂�寃쏀븷�뿴�씠由� = �뜲�씠�꽣.....
--WHERE 蹂�寃쎌쓣 �쐞�븳 ����긽 �뻾�쓣 �꽑蹂꾪븯湲� �쐞�븳 議곌굔
    


-- dept_temp loc �뿴�쓽 紐⑤뱺 媛믪쓣 seoul 濡� 蹂�寃�
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
UPDATE dept_temp
SET
    loc = 'SEOUL';

ROLLBACK;

<<<<<<< HEAD
-- 데이터 일부분 수정 : where 사용
-- dept_temp 부서번호가 40번인 loc 열의 값을 seoul 로 변경
=======
-- �뜲�씠�꽣 �씪遺�遺� �닔�젙 : where �궗�슜
-- dept_temp 遺��꽌踰덊샇媛� 40踰덉씤 loc �뿴�쓽 媛믪쓣 seoul 濡� 蹂�寃�
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
UPDATE dept_temp
SET
    loc = 'SEOUL'
WHERE
    deptno = 40;


<<<<<<< HEAD
-- dept_temp 부서번호가 80번인 dname 은 SALES, LOC 는  CHICAGO
=======
-- dept_temp 遺��꽌踰덊샇媛� 80踰덉씤 dname ��� SALES, LOC �뒗  CHICAGO
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
-- emp_temp 사원들 중에서 급여가 2500이하인 사원만 추가수당을 50으로 수정

UPDATE emp_temp
SET
    comm = 50
WHERE
    sal <= 2500;

-- 서브쿼리를 사용하여 데이터 수정
-- dept 테이블의 40번 부서의 dname, loc를 dept_temp 40번 부서의 dname,loc로 업데이트

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

-- DELETE : 테이블에 있는 데이터 삭제
--DELETE 테이블명
--FROM (선택)
--WHERE 삭제 데이터를 선별하기 위한 조건식


CREATE TABLE emp_temp2
    AS
        SELECT
            *
        FROM
            emp;

-- job이 MANAGER 인 사원 삭제

DELETE FROM emp_temp2
WHERE
    job = 'MANAGER';

-- job이 SALESMAN 인 사원 삭제
DELETE emp_temp2
WHERE
    job = 'SALESMAN';

-- 전체 데이터 삭제
=======
-- emp_temp �궗�썝�뱾 以묒뿉�꽌 湲됱뿬媛� 2500�씠�븯�씤 �궗�썝留� 異붽���닔�떦�쓣 50�쑝濡� �닔�젙

UPDATE emp_temp
SET comm = 50
WHERE sal <= 2500;

-- �꽌釉뚯옘由щ�� �궗�슜�븯�뿬 �뜲�씠�꽣 �닔�젙
-- dept �뀒�씠釉붿쓽 40踰� 遺��꽌�쓽 dname, loc瑜� dept_temp 40踰� 遺��꽌�쓽 dname,loc濡� �뾽�뜲�씠�듃

UPDATE dept_temp
SET (dname,loc) = (SELECT dname, loc
                   FROM dept
                   WHERE deptno = 40)
WHERE deptno = 40;


COMMIT;

-- DELETE : �뀒�씠釉붿뿉 �엳�뒗 �뜲�씠�꽣 �궘�젣
--DELETE �뀒�씠釉붾챸
--FROM (�꽑�깮)
--WHERE �궘�젣 �뜲�씠�꽣瑜� �꽑蹂꾪븯湲� �쐞�븳 議곌굔�떇


CREATE TABLE emp_temp2 AS SELECT * FROM emp;

-- job�씠 MANAGER �씤 �궗�썝 �궘�젣

DELETE FROM emp_temp2
WHERE job='MANAGER';

-- job�씠 SALESMAN �씤 �궗�썝 �궘�젣
DELETE emp_temp2
WHERE job='SALESMAN';

-- �쟾泥� �뜲�씠�꽣 �궘�젣
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
DELETE emp_temp2;

ROLLBACK;

<<<<<<< HEAD
-- 서브쿼리를 사용하여 삭제
-- 급여 등급이 3등급이고, 30번부서의 사원 삭제

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
-- �꽌釉뚯옘由щ�� �궗�슜�븯�뿬 �궘�젣
-- 湲됱뿬 �벑湲됱씠 3�벑湲됱씠怨�, 30踰덈���꽌�쓽 �궗�썝 �궘�젣

DELETE FROM emp_temp2
WHERE empno IN (SELECT e.empno
                FROM emp_temp2 e, salgrade s
                WHERE e.sal BETWEEN s.losal AND s.hisal AND s.grade=3 AND e.deptno = 30);

SELECT * FROM emp_temp2;

>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

COMMIT;


/*
<<<<<<< HEAD
    ① EMP 테이블의 내용을 이용하여 EXAM_EMP 생성
    ② DEPT 테이블의 내용을 이용하여 EXAM_DEPT 생성
    ③ SALGRADE 테이블의 내용을 이용하여 EXAM_SALGRADE 생성
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

-- 정보 입력
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

/* 서브쿼리
[실습3] EXAM_EMP에 속한 사원 중 50번 부서에서 근무하는 사원들의 평균 급여보다
많은 급여를 받고 있는 사원들을 70번 부서로 옮기는 SQL 문 작성하기
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

/* 서브쿼리
[실습4] EXAM_EMP에 속한 사원 중 60번 부서의 사원 중에서 입사일이 가장 빠른 사원보다
늦게 입사한 사원의 급여를 10% 인상하고 80번 부서로 옮기는 SQL 문 작성하기
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


--[실습5] EXAM_EMP에 속한 사원 중, 급여 등급이 5인 사원을 삭제하는 SQL문을 작성하기
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


-- 트랜잭션(transaction) : 최소 수행 단위 
-- 트랜잭션 제어하는 구문 TCL(Transaction Control Language) : commit, rollback

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

-- 트랜잭션 취소 
ROLLBACK;

-- 트랜잭션 최종 반영
COMMIT;


-- 세션 : 어떤 활동을 위한 시간이나 기간
-- 데이터베이스 세션 : 데이터베이스 접속을 시작으로 관련작업 수행한 후 접속 종료
-- LOCK : 잠금(수정 중인 데이터 접근 막기)
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
    
    
-- DDL : 데이터 정의어(데이터 베이스 객체 생성, 수정, 삭제)   
-- 1. 테이블 생성 
-- CREATE TABLE 테이블명(
--    열이름1 자료형,
--    열이름2 자료형,
--    열이름3 자료형,
--    열이름4 자료형
-- );

-- 테이블 생성 / 열이름 지정 규칙
-- 1) 테이블 이름은 문자로 시작
-- 2) 테이블 이름은 30BYTE 이하
-- 3) 같은 사용자 소유의 테이블 이름은 중복될 수 없음
-- 4) 테이블 명에 사용할 수 있는 특수문자는 $, #, _ 가능
-- 5) SQL 키워드(ex SELECT, FROM, WHERE...)는 테이블명에 사용할 수 없음

-- 자료형

-- 1. 문자
-- VARCHAR2(길이) : 가변 길이 문자열 데이터 저장(최대 4000BYTE)
-- CHAR(길이) : 고정 길이 문자열 데이터 저장
-- NVARCHAR2(길이) : 가변 길이(unicode) 데이터 저장
--    name varchar2(10) : 영어는 10자, 한글은 3자 까지 입력
--    name nvarchar2(10) : 영어 10자, 한글 10자 까지 입력
-- NCHAR(길이) : 고정 길이(unicode)
--    name char(10) : 영어는 10자, 한글은 3자, + 메모리 10byte 고정
--    name nchar(10) : 영어는 10자, 한글은 10자, + 메모리 10byte 고정

-- 2. 숫자
-- NUMBER(전체자릿수,소수점이하자릿수)

-- 3. 날짜
-- DATE : 날짜,시간 저장
-- TIMESTAMP

-- 4. 기타
-- BLOB : 대용량 이진 데이터 저장
-- CLOB : 대용량 텍스트 데이터 저장
-- JSON : JSON 데이터 저장

CREATE TABLE emp_ddl (
    empno    NUMBER(4),     -- 사번을 총 4자리 지정
    ename    VARCHAR2(10),  -- 사원명을 총 10byte 로 지정
    job      VARCHAR2(9),     -- 직무 총 9byte 지정
    mgr      NUMBER(4),       -- 매니저 번호
    hiredate DATE,       -- 날짜/시간 저장
    sal      NUMBER(7, 2),     -- 급여를 전체 자릿수 7자리 지정(소수점 2자리까지 허용)
    comm     NUMBER(7, 2),    -- 추가수당
    deptno   NUMBER(2)     -- 부서번호
);

desc emp_ddl;


-- 2. 테이블 수정 : ALTER
-- 1) 열 추가 : ADD
ALTER TABLE emp_temp2 ADD hp VARCHAR2(20);

-- 2) 열 이름 변경 : RENAME
ALTER TABLE emp_temp2 RENAME COLUMN hp TO tel;

-- 3) 열 자료형(길이) 변경 : MODIFY
ALTER TABLE emp_temp2 MODIFY
    empno NUMBER(5);

-- 4) 특정 열을 삭제 : DROP
ALTER TABLE emp_temp2 DROP COLUMN tel;



-- 3. 테이블 삭제 : DROP
DROP TABLE emp_rename;



-- 테이블 명 변경
RENAME emp_temp2 TO emp_rename;

-- 테이블 데이터 전체 삭제
DELETE FROM emp_rename;

SELECT
    *
FROM
    emp_rename;

ROLLBACK;

--  rollback 안됨 : DDL 구문이기 때문
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


-- "SCOTT"."MEMBER"."NATION" 열에 대한 값이 너무 큼(실제: 12, 최대값: 4)
INSERT INTO member VALUES (
    'hong1234',
    '홍길동',
    '서울시 구로구 개봉동',
    '대한민국',
    'hong123@naver.com',
    25,
    NULL
);


-- 데이터 베이스 객체
-- 테이블, 인덱스, 뷰, 데이터 사전, 시퀀스, 시노님, 프로시저, 함수, 패키지, 트리거
-- 생성 : create, 수정 : alter, 삭제 : drop

-- 인덱스 : 더 빠른 검색을 도와줌
-- 인덱스 : 사용자가 직접 특정 테이블 열에 지정 가능
--          기본키(혹은 unique key) 를 생성하면 인덱스로 지정

-- CREATE INDEX 인덱스이름 ON 테이블명(인덱스로 사용할 열이름)

-- emp 테이블의 sal 열을 인덱스로 지정
CREATE INDEX idx_emp_sal ON
    emp (
        sal
    );

-- select : 검색방식
-- FULL Scan
-- Index Scan

SELECT
    *
FROM
    emp
WHERE
    empno = 7900;


-- 인덱스 삭제
DROP INDEX idx_emp_sal;

-- View : 가상 테이블
-- 편리성 : SELECT 문의 복잡도를 완화하기 위해
-- 보안성 : 테이블의 특정 열을 노출하고 싶지 않을 때

-- CREATE[OR REPLACE]  [FORCE | NOFORCE] VIEW 뷰이름(열이름1,열이름2...)
-- AS (저장할 SELECT 구문) 
-- [WITH CHECK OPTION]
-- [WITH READ ONLY]

-- SELECT EMPNO, ENAME, JOB, DEPTNO FROM EMP WHERE DEPTNO=20 뷰로 생성
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


-- 서브쿼리를 사용
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

-- 뷰 사용
SELECT
    *
FROM
    vm_emp20;


-- 뷰 삭제 
DROP VIEW vm_emp20;

-- 뷰 생성 시 읽기만 가능
CREATE VIEW vm_emp_read AS
    SELECT
        empno,
        ename,
        job
    FROM
        emp
WITH READ ONLY;

-- VIEW 에 INSERT 작업?
INSERT INTO vm_emp20 VALUES (
    8888,
    'KIM',
    'SALES',
    20
);
-- 원본 변경이 일어남
SELECT
    *
FROM
    emp;

-- 읽기 전용 뷰에서는 DML 작업을 수행할 수 없습니다.
INSERT INTO vm_emp_read VALUES (
    9999,
    'KIM',
    'SALES'
);

-- 인라인 뷰 : 일회성으로 만들어서 사용하는 뷰
-- rownum : 조회된 순서대로 일련번호 매김

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

-- 급여 높은 상위 세 사람 조회
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


-- 시퀀스 : 규칙에 따라 순번 생성
-- CREATE SEQUENCE 시퀀스이름; (설정안하는 것들은 다 기본값으로 세팅)

--CREATE SEQUENCE 시퀀스명
--[INCREMENT BY 숫자]  기본값 1
--[START WITH 숫자]    기본값 1
--[MAXVALUE 숫자 | NOMAXVALUE ]
--[MINVALUE 숫자 | NOMINVALUE]
--[CYCLE | NOCYCLE ]   CYCLE 인 경우 MAXVALUE에 값이 다다르면 시작값부터 다시 시작
--[CACHE 숫자 | NOCACHE ]  시퀀스가 생성할 번호를 미리 메모리에 할당해 놓음(기본 CACHE 20)

CREATE TABLE dept_sequence
    AS
        SELECT
            *
        FROM
            dept
        WHERE
            1 <> 1;

CREATE SEQUENCE seq_dept_sequence INCREMENT BY 10 START WITH 10 MAXVALUE 90 MINVALUE 0 NOCYCLE CACHE 2;

-- 시퀀스 사용 : 시퀀스이름.CURRVAL(마지막으로 생성된 시퀀스 조회), 시퀀스이름.NEXTVAL(시퀀스 생성)

-- 부서번호 입력시 시퀀스 사용
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

-- 최대값 90 까지 가능
-- 시퀀스 SEQ_DEPT_SEQUENCE.NEXTVAL exceeds MAXVALUE : NOCYCLE 옵션으로 생성했기 때문에 번호가 순환되지 않음

-- 시퀀스 삭제
DROP SEQUENCE seq_dept_sequence;

CREATE SEQUENCE seq_dept_sequence INCREMENT BY 3 START WITH 10 MAXVALUE 99 MINVALUE 0 CYCLE CACHE 2;

SELECT
    seq_dept_sequence.CURRVAL
FROM
    dual;
    
-- synonym(동의어) : 테이블, 뷰, 시퀀스 등 객체 이름 대신 사용할 수 있는 다른 이름을 부여하는 객체  

-- EMP 테이블의 별칭을 E 로 지정    
CREATE SYNONYM e FOR emp; 

-- PUBLIC : 동의어를 데이터베이스 내 모든 사용자가 사용할 수 있도록 설정 
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
 
 
--[실습1] 다음 SQL문을 작성해 보세요
--① EMP테이블과 같은 구조의 데이터를 저장하는 EMPIDX 테이블을 생성하시오.

CREATE TABLE empidx
    AS
        SELECT
            *
        FROM
            emp;

--② 생성한 EMPIDX 테이블의 EMPNO 열에 IDX_EMPIDX_EMPNO 인덱스를 생성하시오.
CREATE INDEX idx_empidx_empno ON
    empidx (
        empno
    );

--데이터 사전 뷰를 통해 인덱스 확인
SELECT
    *
FROM
    user_indexes;


--[실습2] 실습1에서 생성한 EMPIDX 테이블의 데이터 중 급여가 1500 초과인 
--사원들만 출력하는 EMPIDX_OVER15K 뷰를 생성하시오. 
--(사원번호, 사원이름, 직책,부서번호,급여,추가수당 열을 가지고 있다)
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



--[실습3] 다음 SQL문을 작성해 보세요
--① DEPT 테이블과 같은 열과 행 구성을 가지는 DEPTSEQ 테이블을 작성하시오.


CREATE TABLE deptseq
    AS
        SELECT
            *
        FROM
            dept;

--② 생성한 DEPTSEQ 테이블의 DEPTNO 열에 사용할 시퀀스를 아래에 제시된 특성에 맞춰 생성해 보시오.
--부서 번호의 시작값 : 1
--부서 번호의 증가 : 1
--부서 번호의 최댓값 : 99
--부서 번호의 최소값 : 1
--부서 번호 최댓값에서 생성 중단
--캐시 없음

CREATE SEQUENCE seq_dept START WITH 1 INCREMENT BY 1 MAXVALUE 99 MINVALUE 1 NOCYCLE NOCACHE;


--데이터 사전 뷰를 통해 시퀀스 확인
SELECT
    *
FROM
    user_sequences;


-- 제약조건 : 테이블의 특정 열에 지정
--            NULL 허용 / 불허용, 유일한 값, 조건식을 만족하는 데이터만 입력 가능...
--            데이터 무결성(데이터 정확성, 일관성 보장) 유지 ==> DML 작업 시 지켜야 함
--            영역 무결성, 개체 무결성, 참조 무결성
--            테이블 생성 시 제약조건 지정, OR 생성 후에 ALTER 를 통해 추가, 변경 가능

-- 1) NOT NULL : 빈값 허용 불가
-- 사용자로부터 입력값이 필수로 입력되어야 할 때
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

-- ORA-01400: NULL을 ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD") 안에 삽입할 수 없습니다
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
    
-- 전체 제약조건 조회  
SELECT
    *
FROM
    user_constraints;
    
    
-- 제약조건 + 제약조건 명 지정    
CREATE TABLE table_notnull2 (
    login_id  VARCHAR2(20)
        CONSTRAINT tblnn2_login_nn NOT NULL,
    login_pwd VARCHAR2(20)
        CONSTRAINT tblnn2_lgpwd_nn NOT NULL,
    tel       VARCHAR2(20)
);    
 
-- 생성한 테이블에 제약조건 추가
-- (SCOTT.) 사용으로 설정 불가 - 널 값이 발견되었습니다.
-- 이미 삽입된 데이터도 체크 대상이 되기 됨
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
    
-- 제약조건 명 변경
ALTER TABLE table_notnull2 RENAME CONSTRAINT tblnn2_tel_nn TO tblnn3_tel_nn;
    
-- 제약조건 명 삭제    
ALTER TABLE table_notnull2 DROP CONSTRAINT tblnn3_tel_nn;
 
 
-- 2) UNIQUE : 중복되지 않는 값(null 삽입 가능)
--             아이디, 전화번호

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

-- login_id 가 중복된 상황일 때 : unique 위배
-- 무결성 제약 조건(SCOTT.SYS_C008364)에 위배됩니다
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

-- 테이블 생성 제약조건 지정, 변경, 삭제 not null 형태와 동일함


--3) PRIMARY KEY(PK) : UNIQUE + NOT NULL
CREATE TABLE table_primary (
    login_id  VARCHAR2(20) PRIMARY KEY,
    login_pwd VARCHAR2(20) NOT NULL,
    tel       VARCHAR2(20)
);

-- PRIMARY KEY ==> INDEX 자동 생성 됨

-- NULL을 ("SCOTT"."TABLE_PRIMARY"."LOGIN_ID") 안에 삽입할 수 없습니다
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

-- 4) 외래키 : Foreign key(FK) : 다른 테이블 간 관계를 정의하는데 사용
--             특정 테이블에서 primary key 제약조건을 지정한 열을 다른 테이블의 특정 열에서 참조

-- 사원 추가 시 부서 번호 입력을 해야 함 => dept 테이블의 deptno 만 삽입

-- 부모 테이블
CREATE TABLE DEPT_FK(
    DEPTNO NUMBER(2) CONSTRAINT DEPTFK_DEPTNO_PK PRIMARY KEY,
    DNAME VARCHAR2(14),
    LOC VARCHAR2(13)
);

-- 자식 테이블
-- REFERENCES 참조할테이블명(참조할 열) : 외래키 지정
CREATE TABLE EMP_FK(
    EMPNO NUMBER(4) CONSTRAINT EMPFK_EMPNO_PK PRIMARY KEY,
    ENAME VARCHAR2(10),
    JOB VARCHAR2(9),
    DEPTNO NUMBER(2) CONSTRAINT EMPFK_DEPTNO_FK REFERENCES DEPT_FK(DEPTNO));
    
-- 무결성 제약조건(SCOTT.EMPFK_DEPTNO_FK)이 위배되었습니다- 부모 키가 없습니다
INSERT INTO EMP_FK VALUES(1000, 'TEST', 'SALES', 10);

-- 외래키 제약 조건
-- 부모 테이블 데이터가 데이터 먼저 입력

INSERT INTO DEPT_FK VALUES(10, 'DATABASE', 'SEOUL');

-- 삭제 시 
-- 자식 테이블 데이터 먼저 삭제
-- 부모 테이블 데이터 삭제

-- 무결성 제약조건(SCOTT.EMPFK_DEPTNO_FK)이 위배되었습니다- 자식 레코드가 발견되었습니다
-- DELETE FROM DEPT_FK WHERE DEPTNO=10;


-- 외래 키 제약조건 옵션
-- ON DELETE CASCADE : 부모가 삭제되면 부모를 참조하는 자식 레코드도 같이 삭제
-- ON DELETE SET NULL : 부모가 삭제되면 부모를 참조하는 자식 레코드의 값을 NULL 변경

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

-- 5) CHECK : 열에 지정할 수 있는 값의 범위 또는 패턴 지정
-- 비밀번호는 3 자리보다 커야 한다

CREATE TABLE table_CHECK (
    login_id  VARCHAR2(20) PRIMARY KEY,
    login_pwd VARCHAR2(20) CHECK (LENGTH(LOGIN_PWD) > 3),
    tel       VARCHAR2(20)
);
-- 체크 제약조건(SCOTT.SYS_C008373)이 위배
INSERT INTO TABLE_CHECK VALUES('TEST','123','010-1234-5678');

INSERT INTO TABLE_CHECK VALUES('TEST','1234','010-1234-5678');


-- 6) DEFAULT : 기본값 지정
CREATE TABLE table_default (
    login_id  VARCHAR2(20) PRIMARY KEY,
    login_pwd VARCHAR2(20) DEFAULT '1234',
    tel       VARCHAR2(20)
);

INSERT INTO TABLE_DEFAULT VALUES('TEST',NULL,'010-1234-5678');
INSERT INTO TABLE_DEFAULT(login_id, tel) VALUES('TEST1','010-1234-5678');

SELECT * FROM TABLE_DEFAULT;






=======
    �몺 EMP �뀒�씠釉붿쓽 �궡�슜�쓣 �씠�슜�븯�뿬 EXAM_EMP �깮�꽦
    �몼 DEPT �뀒�씠釉붿쓽 �궡�슜�쓣 �씠�슜�븯�뿬 EXAM_DEPT �깮�꽦
    �몾 SALGRADE �뀒�씠釉붿쓽 �궡�슜�쓣 �씠�슜�븯�뿬 EXAM_SALGRADE �깮�꽦
*/
CREATE TABLE EXAM_EMP AS SELECT * FROM EMP;
CREATE TABLE EXAM_DEPT AS SELECT * FROM DEPT;
CREATE TABLE EXAM_SALGRADE AS SELECT * FROM SALGRADE;

SELECT * FROM EXAM_EMP;
SELECT * FROM EXAM_DEPT;
SELECT * FROM EXAM_SALGRADE;

-- �젙蹂� �엯�젰
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

/* �꽌釉뚯옘由�
[�떎�뒿3] EXAM_EMP�뿉 �냽�븳 �궗�썝 以� 50踰� 遺��꽌�뿉�꽌 洹쇰Т�븯�뒗 �궗�썝�뱾�쓽 �룊洹� 湲됱뿬蹂대떎
留롮�� 湲됱뿬瑜� 諛쏄퀬 �엳�뒗 �궗�썝�뱾�쓣 70踰� 遺��꽌濡� �삷湲곕뒗 SQL 臾� �옉�꽦�븯湲�-�꽌釉뚯옘由� �븳 �썑
*/

UPDATE EXAM_EMP
SET DEPTNO=70
WHERE SAL > (SELECT AVG(SAL) FROM EXAM_EMP WHERE DEPTNO=50);

/* �꽌釉뚯옘由�
[�떎�뒿4] EXAM_EMP�뿉 �냽�븳 �궗�썝 以� 60踰� 遺��꽌�쓽 �궗�썝 以묒뿉�꽌 �엯�궗�씪�씠 媛��옣 鍮좊Ⅸ �궗�썝蹂대떎
�뒭寃� �엯�궗�븳 �궗�썝�쓽 湲됱뿬瑜� 10% �씤�긽�븯怨� 80踰� 遺��꽌濡� �삷湲곕뒗 SQL 臾� �옉�꽦�븯湲�
*/
UPDATE EXAM_EMP SET SAL=SAL*1.1, DEPTNO=80 WHERE
HIREDATE>(SELECT MIN(HIREDATE) FROM EXAM_EMP WHERE DEPTNO=60);


--[�떎�뒿5] EXAM_EMP�뿉 �냽�븳 �궗�썝 以�, 湲됱뿬 �벑湲됱씠 5�씤 �궗�썝�쓣 �궘�젣�븯�뒗 SQL臾몄쓣 �옉�꽦�븯湲�
DELETE FROM EXAM_EMP WHERE EMPNO IN (SELECT EMPNO FROM EXAM_EMP,SALGRADE
WHERE SAL BETWEEN LOSAL AND HISAL AND GRADE=5);
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b




