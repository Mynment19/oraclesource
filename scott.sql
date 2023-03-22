-- scott

-- emp(employee) 테이블 구성 보기
-- 필드명(열이름) 제약조건     데이터타입
-- EMPNO(사원번호)        NOT NULL     NUMBER(4)
-- ename(사원명),job(직책),mgr(직속상관 번호),hiredate(입사일),sal(급여),comm(수당),deptno(부서번호)
-- number : 소수점 자릿수를 포함해서 지정 가능
-- number(4) : 4자리 숫자까지 허용, number(8,2) : 전체 자릿수는 8자리이고 소수점 2자리를 포함한다
-- varchar2 : 가변형 문자열 저장
-- varchar2(10) : 10byte 문자까지 저장 가능
-- date : 날짜 데이터

desc emp;

-- deptno(부서번호), dname(부서명), loc(부서위치)
desc dept;

-- grade(급여등급), losal(최소 급여액), hisal(최대 급여액)
desc salgrade;


-- select : 데이터 조회
-- 셀렉션(행 단위로 조회), 프로젝션(열 단위로 조회), 조인(두 개 이상의 테이블을 사용하여 조회)
-- select 열이름1, 열이름2, ...(조회할 열이 전체라면 *로 처리)
-- from 테이블명;

-- 1. emp 테이블의 전체 열을 조회
SELECT
    *
FROM
    emp;

-- 2.emp 테이블에서 사원번호, 이름, 급여 열을 조회
SELECT
    empno,
    ename,
    sal
FROM
    emp;
    
-- 3. dept 테이블 전체 조회
SELECT
    *
FROM
    dept;

-- 4. dept 테이블안에 부서번호, 지역만 조회
SELECT
    deptno,
    loc
FROM
    dept;

-- 5. emp 테이블 안에 부서번호 조회
SELECT
    deptno
FROM
    emp;
    
-- 6. emp 테이블 안에 부서번호 조회(단, 중복된 부서 번호는 제거)
-- 열이 여러 개인 경우(묶어서 중복이냐 아니냐를 판단)
SELECT DISTINCT
    job,
    deptno
FROM
    emp;
    
-- 연산
-- 별칭 : 필드에 별칭을 임의로 부여 (as 별칭, 혹은 한칸 띄고 별칭, 별칭에 공백이 있다면 ""로 묶어주기)
-- 사원들의 1년 연봉 구하기 (sal * 12 + comm)
SELECT
    empno,
    ename,
    sal,
    comm,
    sal * 12 + comm AS annsal
FROM
    emp;

SELECT
    empno           사원번호,
    ename           사원명,
    sal * 12 + comm annsal
FROM
    emp;
    

-- 정렬 : order by
--        내림차순 => DESC, 오름차순 => ASC

-- ENAME, SAL 열 추출하고, SAL 내림차순으로 정렬
SELECT
    ename,
    sal
FROM
    emp
ORDER BY
    sal;

SELECT
    *
FROM
    emp
ORDER BY
    empno;
    
-- 전체내용 출력, 결과는 부서번의 오름차순과 급여 내림차순으로 정렬
SELECT
    *
FROM
    emp
ORDER BY
    deptno,
    sal DESC;
    

-- [실습] emp 테이블 모든 열 출력
-- empno => employee_no
-- ename => employee_name
-- mgr => manager
-- sal => salary
-- comm => commision
-- deptno => department_no
-- 부서 번호를 기준으로 내림차순으로 정렬하되 부서번호가 같다면
-- 사원이름을 기준으로 오름차순 정렬
SELECT
    empno  employee_no,
    ename  employee_name,
    mgr    manager,
    sal    salary,
    comm   commision,
    deptno department_no
FROM
    emp
ORDER BY
    deptno DESC,
    ename;

-- where : 특정 조건을 기준으로 원하는 행을 조회
SELECT
    *
FROM
    emp
WHERE
    deptno = 30;

-- 사원번호가 7782인 사원 조회
SELECT
    *
FROM
    emp
WHERE
    empno = 7782;
    
-- 부서번호가 30이고, 사원직책이 salesman인 행 조회
SELECT
    *
FROM
    emp
WHERE
        deptno = 30
    AND job = 'SALESMAN';
    
-- 사원번호가 7499이고, 부서번호가 30인 행 조회
SELECT
    *
FROM
    emp
WHERE
        empno = 7499
    AND deptno = 30;
    
-- 부서번호가 30이거나, 사원직책이 CLECK 인 행 조회
SELECT
    *
FROM
    emp
WHERE
    deptno = 30
    OR job = 'CLECK';
    
-- 산술 연산자 : +, -, *, /, mod(나머지 - 표준은 아님. 오라클에서만 제공)
-- 비교 연산자 : >, >=, <, <=
-- 등가 비교 연산자 : =, !=, <>, ^= (!=, <>, ^= : a와 b의 값이 다를 경우 true, 같은 경우 false)
-- 논리 부정 연산자 : NOT
-- IN 연산자
-- BETWEEN A AND B 연산자
-- LIKE 연산자와 와일드 카드(_, %)
-- IS NULL 연산자
-- 집합 연산자 : UNION(합집합-중복제거), UNION ALL(합집합-중복포함), MINUS(차집합), INTERSECT(교집합)

-- 연산자 우선순위
-- 1) 산술 : * /
-- 2) 산술 : + -
-- 3) 비교
-- 4) null, like, in
-- 5) between a and b
-- 6) not
-- 7) and
-- 8) or
-- 우선순위를 줘야 한다면 소괄호 사용 추천



-- EMP 테이블에서 급여 열에 12를 곱한 값이 36000 인 행 조회
SELECT
    *
FROM
    emp
WHERE
    sal * 12 = 36000;
    
-- ename이 F 이후의 문자로 시작하는 사원 조회
-- 문자 표현 시 ''만 사용
SELECT
    *
FROM
    emp
WHERE
    ename >= 'F';
    
-- JOB이 manager, salesman, clerk 사원 조회
SELECT
    *
FROM
    emp
WHERE
    job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';
    
-- sal이 3000이 아닌 사원 조회
SELECT
    *
FROM
    emp
WHERE
    sal != 3000;

-- JOB이 manager, salesman, clerk 사원 조회 => IN 연산자
SELECT
    *
FROM
    emp
WHERE
    job IN ( 'MANAGER', 'SALESMAN', 'CLERK' );
    
-- JOB이 manager, salesman, clerk 이 아닌 사원 조회 => IN 연산자
SELECT
    *
FROM
    emp
WHERE
    job NOT IN ( 'MANAGER', 'SALESMAN', 'CLERK' );

SELECT
    *
FROM
    emp
WHERE
    NOT sal = 3000;
    
-- 부서번호가 10,20인 사원조회(IN 사용)
SELECT
    *
FROM
    emp
WHERE
    deptno IN ( 10, 20 );
    
-- 급여가 2000 이상 3000 이하인 사원 조회
SELECT
    *
FROM
    emp
WHERE
    sal BETWEEN 2000 AND 3000;
    
-- LIKE 연산자와 와일드 카드(_, %)
-- 사원 이름이 S로 시작하는 사원 정보 조회
SELECT
    *
FROM
    emp
WHERE
    ename LIKE ( 'S%' );
-- 사원 이름의 2번째 글짜가 L인 사원만 조회
SELECT
    *
FROM
    emp
WHERE
    ename LIKE ( '_L%' );
-- 사원 이름에 AM이 포함된 사원만 조회
SELECT
    *
FROM
    emp
WHERE
    ename LIKE ( '%AM%' );
-- 사원 이름에 AM이 포함되지 않은 사원만 조회
SELECT
    *
FROM
    emp
WHERE
    ename NOT LIKE ( '%AM%' );
    
-- NULL : 데이터 값이 완전히 비어 있는 상태
SELECT
    *
FROM
    emp
WHERE
    comm IS NULL;

SELECT
    *
FROM
    emp
WHERE
    mgr IS NOT NULL;
    
-- 집합 연산자
-- union(동일한 결과값인 경우 중복 제거), union all(중복 제거 안함) : 합집합

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

-- 
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

-- minus
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

-- INTERSECT
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
    
-- emp 테이블에서 사원 이름이 S로 끝나는 사원 데이터 조회
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%S';

-- emp 테이블에서 30번 부서에 근무하는 사원 중에서 직책이 SALESMAN인 사원의
-- 사원번호, 이름, 급여 조회(SAL 내림차순)
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

-- emp 테이블을 사용하여 20, 30번 부서에 근무하고 있는 사원 중 급여가
-- 2000 초과인 사원의 사원번호, 이름, 급여, 부서번호 조회
-- 집합 연산자를 사용하는 방식과 사용하지 않는 방식 두 가지를 사용
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno LIKE ( 20 )
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
    deptno LIKE ( 30 )
    AND sal > 2000;

SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    ( deptno LIKE ( 20 )
      OR deptno LIKE ( 30 ) )
    AND sal > 2000;

-- 사원 이름에 E가 포함되어 있는 30번 부서 사원 중 급여가 1000~2000 사이가 아닌
-- 사원의 이름, 사원번호, 급여, 부서번호를 조회하기
SELECT
    ename,
    empno,
    sal,
    deptno
FROM
    emp
WHERE
    ename LIKE '%E%'
    AND sal NOT BETWEEN 1000 AND 2000;

-- 추가 수당이 존재하지 않으며, 상급자가 있고 직책이 manager, clerk 인 사원
-- 중에서 사원 이름의 두번째 글자가 L이 아닌 사원의 정보 조회
SELECT
    *
FROM
    emp
WHERE
    comm IS NULL
    AND mgr IS NOT NULL
    AND job IN ( 'MANAGER', 'CLERK' )
    AND ename NOT LIKE '_L%';
    
    
-- 오라클 함수
-- 오라클에서 기본으로 제공하는 내장 함수와 사용자가 필요에 의해 직접 정의한 사용자 정의 함수

-- 1.문자열 함수
-- 1) UPPER : 모두 대문자, LOWER : 모두 소문자, INITCAP : 첫글자만 대문자
-- like '%ORACLE%' or like '%oracle%' or '%Oracle%' ==> 검색 시 사용

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

-- 2)length : 문자열 길이
SELECT
    ename,
    length(ename)
FROM
    emp;

-- 사원 이름의 길이가 5 이상인 사원 조회
SELECT
    *
FROM
    emp
WHERE
    length(ename) >= 5;

-- 한글일 때
-- dual : sys가 소유하는 테이블(임시 연산이나 함수의 결과 값 확인하는 용도)
-- lengthb : 문자가 사용하는 바이트 수
-- 영어 : 문자1 => 1byte, 한글 : 문자1 => 3byte
SELECT
    length('한글'),
    lengthb('한글')
FROM
    dual;
    
-- 3) substr(문자열 데이터, 시작위치, 추출길이) : 추출길이 생략 가능
--      문자열 일부 추출

SELECT
    job,
    substr(job, 3, 2),
    substr(job, 5),
    substr(job, - 3)
FROM
    emp;

-- ename, 세번째 글자부터 출력
SELECT
    ename,
    substr(ename, 3)
FROM
    emp;

-- 3) instr : 문자열 데이터 안에서 특정 문자 위치 찾기
-- instr(대상문자열, 위치를 찾으려는 문자열, 대상 문자열에서 찾기를 시작할 위치(선택)
--        시작위치에서 찾으려는 문자가 몇번째인지 지정(선택))
-- HELLO, ORACLE! 에서 L 찾기
SELECT
    instr('HELLO, ORACLE!', 'L')       AS instr1,
    instr('HELLO, ORACLE!', 'L', 5)    AS instr2,
    instr('HELLO, ORACLE!', 'L', 2, 2) AS instr3
FROM
    dual;
    
-- 4) replace : 특정 문자를 다른 문자로 변경
-- replace(문자열 데이터, 찾는 문자, 변경 문자)

-- 010-1234-5678 : - 를 빈 문자열로 변경 / -를 없애기
SELECT
    '010-1234-5678'                    AS 변경전,
    replace('010-1234-5678', '-', ' ') AS replace1,
    replace('010-1234-5678', '-')      AS replace2
FROM
    dual;
    
-- '이것이 Oracle이다', '이것이' => This is 변경
SELECT
    replace('이것이 Oracle이다', '이것이', 'This is') AS 변경후
FROM
    dual;

-- 5) concat : 두 문자열 데이터 합치기
SELECT
    concat(empno, ':', ename)
FROM
    emp;

-- || 문자열 연결 연산자
SELECT
    empno
    || ename
    || ':'
    || ename
FROM
    emp;
    
-- 6) trim, ltrim, rtrim : 공백 제거
SELECT
    '        이것이     ',
    TRIM('        이것이     ')
FROM
    dual;


-- inner join
SELECT
    e.empno,
    e.ename,
    e.deptno,
    d.dname,
    d.loc
FROM
    emp  e,
    dept d
WHERE
    e.deptno = d.deptno;
    
-- sql-99 표준
-- join ~ on
SELECT
    e.empno,
    e.ename,
    e.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno;

SELECT
    e.empno,
    e.ename,
    e.sal,
    e.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
                   AND e.sal <= 2500
                   AND e.deptno <= 9999;

SELECT
    *
FROM
         emp e
    JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal;

SELECT
    e1.empno,
    e1.ename,
    e1.mgr,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    emp e1
    LEFT OUTER JOIN emp e2 ON e1.mgr = e2.empno;

SELECT
    e1.empno,
    e1.ename,
    e1.mgr,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    emp e1
    RIGHT OUTER JOIN emp e2 ON e1.mgr = e2.empno;

SELECT
    e1.empno,
    e1.ename,
    e1.mgr,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    emp e1
    FULL OUTER JOIN emp e2 ON e1.mgr = e2.empno;

-- select 실행 순서
-- 1)from 2)where 3)group by 4)having 5)select 6)order by

SELECT
    e.empno,
    e.ename,
    e.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
                   AND sal > 3000;
    
-- emp, dept inner join, 급여가 2500 이하이고, 사원번호가 9999 이하인 사원 정보 조회
SELECT
    e.empno,
    e.ename,
    e.sal,
    e.deptno,
    d.dname,
    d.loc
FROM
    emp  e,
    dept d
WHERE
        e.deptno = d.deptno
    AND e.sal <= 2500
    AND e.deptno <= 9999;

-- emp와 salgrade 조인
-- emp 테이블의 sal이 salgrade 테이블의 losal과 hisal 범위에 들어가는 형태로 조인

SELECT
    *
FROM
    emp      e,
    salgrade s
WHERE
    e.sal BETWEEN s.losal AND s.hisal;

-- self join : 자기 자신 테이블과 조인
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
    emp e2
WHERE
    e1.mgr = e2.empno (+);

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
    
-- 연결해야 할 테이블이 세개일때
-- select *
-- from table1 t1, table2 t2, tabe3 t3
-- where t1.empno = t2.empno and t2.deptno = t3.deptno;

-- select *
-- from table1 t1 join table2 t2 on t1.empno = t2.empno join tabe3 t3 on t2.deptno = t3.deptno;

SELECT
    e.deptno,
    d.dname,
    e.empno,
    e.ename,
    e.sal
FROM
         emp e
    JOIN dept d ON sal > 2000
                   AND d.deptno = e.deptno
ORDER BY
    deptno;

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
    d.dname
ORDER BY
    deptno;

SELECT
    d.deptno,
    d.dname,
    e.empno,
    e.ename,
    e.job,
    e.sal
FROM
    emp  e
    RIGHT OUTER JOIN dept d ON e.deptno = d.deptno
ORDER BY
    deptno,
    e.ename;


-- 서브쿼리
-- sql문을 실행하는 데 필요한 데이터를 추가로 조회하기 위해 sql문 내부에서 사용하는 select문

-- select 조회할 열 from 테이블명 where 조건식 (select 조회할 열 from 테이블명 where 조건식)


-- 단일행 서브쿼리 : 서브쿼리 결과로 하나의 행 반환
-- 존스의 급여보다 높은 급여를 받는 사원 조회
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
    
-- 사원 이름이 ALLEN 인 사원의 추가 수당 보다 많은 추가수당을 받는 사원조회
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
    
-- 사원 이름이 WARD인 사원의 입사일보다 빨리 입사한 사원 조회
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
    
-- 20번 부서에 속한 사원 중 전체 사원의 평균 급여보다 높은 급여를 받는 사원정보 및 
-- 부서 정보 조회
-- 사원번호, 사원명, 직무, 급여, 부서번호, 부서명, 지역
SELECT
    e.empno,
    e.ename,
    e.job,
    e.sal,
    e.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
WHERE
        d.deptno = 20
    AND e.sal > (
        SELECT
            AVG(sal)
        FROM
            emp
    );

-- 20번 부서에 속한 사원 중 전체 사원의 평균 급여보다 작거나 같은 급여를 받는 사원정보 및 
-- 부서 정보 조회
SELECT
    e.empno,
    e.ename,
    e.job,
    e.sal,
    e.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
WHERE
        d.deptno = 20
    AND e.sal <= (
        SELECT
            AVG(sal)
        FROM
            emp
    );
    
-- 다중행 서브쿼리 : 서브쿼리 결과로 여러개의 행 반환

-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보 조회
SELECT
    MAX(sal)
FROM
    emp
GROUP BY
    deptno;

SELECT
    *
FROM
    emp
WHERE
    sal = (
        SELECT
            MAX(sal)
        FROM
            emp
        GROUP BY
            deptno
    );

-- from절에 사용하는 서브쿼리 (인라인 뷰)
-- from절에 직접 테이블을 명시해서 사용하기에는 테이블 내 데이터 규모가 클 때, 불필요한 열이 많을 떄
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

-- select 절에 사용하는 서브쿼리 (스칼라 서브쿼리)
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
    
-- 10번 부서에 근무하는 사원 중 30번 부서에는 존재하지 않는 직책을 가진 사원들의
-- 사원정보, 부서 정보를 출력
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
    
-- 사원정보, 급여정보
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
    
