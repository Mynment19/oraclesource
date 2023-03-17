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
    sal * 12 + comm AS annsal
FROM
    emp;

SELECT
    empno           사원번호,
    ename           사원명,
    sal * 12 + comm annsal
FROM
    emp;