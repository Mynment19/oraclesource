-- scott

<<<<<<< HEAD
-- emp(employee) ���̺� ���� ����
-- �ʵ��(���̸�)   ��������     ������Ÿ��
--     EMPNO(�����ȣ)       NOT NULL     NUMBER(4)
--     ENAME(�����), JOB(��å), MGR(���ӻ�� ��ȣ), HIREDATE(�Ի���), SAL(�޿�),COMM(����), DEPTNO(�μ���ȣ)
--  NUMBER : �Ҽ��� �ڸ����� �����ؼ� ���� ����
--  NUMBER(4) : 4�ڸ� ���ڱ��� ���,   NUMBER(8,2) : ��ü �ڸ����� 8 �ڸ��̰� �Ҽ��� 2�ڸ��� �����Ѵ�
--  VARCHAR2 : ������ ���ڿ� ����
--  VARCHAR2(10) : 10byte ���ڱ��� ���� ����
--  DATE : ��¥ ������

DESC emp; 

-- DEPTNO(�μ���ȣ), DNAME(�μ���), LOC(�μ���ġ)
DESC dept; 

-- GRADE(�޿����), LOSAL(�ּ� �޿���), HISAL(�ִ� �޿���)
DESC salgrade; 

-- select : ������ ��ȸ
-- ��ȸ ��� : ������(�� ������ ��ȸ), ��������(�� ������ ��ȸ), ����(�� �� �̻��� ���̺��� ����Ͽ� ��ȸ)
-- SELECT ���̸�1, ���̸�2..... (��ȸ�� ���� ��ü��� * �� ó��)
-- FROM ���̺��;

-- 1. EMP ���̺��� ��ü ���� ��ȸ
=======
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
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp;

<<<<<<< HEAD
-- 2. EMP ���̺��� �����ȣ,�̸�,�޿� ���� ��ȸ
=======
-- 2. EMP 테이블에서 사원번호,이름,급여 열을 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    sal
FROM
    emp;


<<<<<<< HEAD
-- 3. DEPT ���̺� ��ü ��ȸ
=======
-- 3. DEPT 테이블 전체 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    dept;
<<<<<<< HEAD
-- 4. DEPT ���̺�ȿ� �μ���ȣ, ������ ��ȸ
=======
-- 4. DEPT 테이블안에 부서번호, 지역만 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    deptno,
    loc
FROM
    dept;
    
<<<<<<< HEAD
-- 5. EMP ���̺�ȿ� �μ���ȣ ��ȸ
=======
-- 5. EMP 테이블안에 부서번호 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    deptno
FROM
    emp;

<<<<<<< HEAD
-- 6. EMP ���̺�ȿ� �μ���ȣ ��ȸ(��, �ߺ��� �μ� ��ȣ�� ����) 
-- DISTINCT : �ߺ� ����
=======
-- 6. EMP 테이블안에 부서번호 조회(단, 중복된 부서 번호는 제거) 
-- DISTINCT : 중복 제거
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT DISTINCT
    deptno
FROM
    emp;
    
<<<<<<< HEAD
-- ���� ���� ���� ���(��� �ߺ��̳� �ƴϳĸ� �Ǵ�)    
=======
-- 열이 여러 개인 경우(묶어서 중복이냐 아니냐를 판단)    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT DISTINCT
    job,
    deptno
FROM
    emp;
    
<<<<<<< HEAD
-- 7. ����
-- ��Ī : �ʵ忡 ��Ī�� ���Ƿ� �ο�( as ��Ī, Ȥ�� ��ĭ ��� ��Ī, ��Ī�� ������ �ִٸ� ""�� �����ֱ�)
-- ������� 1�� ���� ���ϱ� ( SAL * 12 + COMM )
=======
-- 7. 연산
-- 별칭 : 필드에 별칭을 임의로 부여( as 별칭, 혹은 한칸 띄고 별칭, 별칭에 공백이 있다면 ""로 묶어주기)
-- 사원들의 1년 연봉 구하기 ( SAL * 12 + COMM )
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
    ename           �����,
    job             "�� å",
=======
    ename           사원명,
    job             "직 책",
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    sal * 12 + comm annsal
FROM
    emp;
    
<<<<<<< HEAD
-- 8. ���� : ORDER BY
--           �������� => DESC, �������� => ASC

-- ENAME, SAL �� �����ϰ�, SAL ������������ ����
=======
-- 8. 정렬 : ORDER BY
--           내림차순 => DESC, 오름차순 => ASC

-- ENAME, SAL 열 추출하고, SAL 내림차순으로 정렬
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    sal
FROM
    emp
ORDER BY
    sal DESC;
    
<<<<<<< HEAD
-- ENAME, SAL �� �����ϰ�, SAL ������������ ����    
=======
-- ENAME, SAL 열 추출하고, SAL 오름차순으로 정렬    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    sal
FROM
    emp
ORDER BY
<<<<<<< HEAD
    sal;    -- ASC ���� ����
    
-- ��ü ���� ����ϰ�, ����� �����ȣ�� ������������ ����    
=======
    sal;    -- ASC 생략 가능
    
-- 전체 내용 출력하고, 결과가 사원번호의 오름차순으로 정렬    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
ORDER BY
    empno;
    
    
<<<<<<< HEAD
-- ��ü ���� ����ϰ�, ����� �μ���ȣ�� ���������� �޿� ������������ ����     
=======
-- 전체 내용 출력하고, 결과가 부서번호의 오름차순과 급여 내림차순으로 정렬     
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
ORDER BY
    deptno,
    sal DESC;
    

<<<<<<< HEAD
-- [�ǽ�] emp ���̺��� ��� �� ���
=======
-- [실습] emp 테이블의 모든 열 출력
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- empno => employee_no
-- ename => employee_name
-- mgr => manager
-- sal => salary
-- comm => commission
-- deptno => department_no
<<<<<<< HEAD
-- �μ� ��ȣ�� �������� ������������ �����ϵ� �μ���ȣ�� ���ٸ� 
-- ��� �̸��� �������� �������� ����
=======
-- 부서 번호를 기준으로 내림차순으로 정렬하되 부서번호가 같다면 
-- 사원 이름을 기준으로 오름차순 정렬
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
-- WHERE : Ư�� ������ �������� ���ϴ� ���� ��ȸ

-- �μ���ȣ�� 30�� �����͸� ��ȸ
=======
-- WHERE : 특정 조건을 기준으로 원하는 행을 조회

-- 부서번호가 30인 데이터만 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
<<<<<<< HEAD
    deptno = 30;  --  = : ����
    
-- �����ȣ�� 7782�� ��� ��ȸ    
=======
    deptno = 30;  --  = : 같다
    
-- 사원번호가 7782인 사원 조회    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    empno = 7782;   

<<<<<<< HEAD
-- �μ���ȣ�� 30�̰�, �����å�� SALESMAN�� �� ��ȸ
=======
-- 부서번호가 30이고, 사원직책이 SALESMAN인 행 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
        deptno = 30
    AND job = 'SALESMAN';   

<<<<<<< HEAD
-- �����ȣ�� 7499�̰�, �μ���ȣ�� 30�� �� ��ȸ
=======
-- 사원번호가 7499이고, 부서번호가 30인 행 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
        empno = 7499
    AND deptno = 30;  

<<<<<<< HEAD
-- �μ���ȣ�� 30�̰ų�, �����å�� CLERK �� �� ��ȸ
=======
-- 부서번호가 30이거나, 사원직책이 CLERK 인 행 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    deptno = 30
    OR job = 'CLERK';     


<<<<<<< HEAD
-- ��������� : +, -, *, /, mod(������- ǥ���� �ƴ�(����Ŭ������ ����))
-- �񱳿����� : >, >=, <, <=
-- ��񱳿����� : =,  !=, <>, ^= (!=, <>, ^= : A���� B���� �ٸ� ��� true, ���� ��� false)
-- ������������ : NOT
-- IN ������
-- BETWEEN A AND B ������
-- LIKE�����ڿ� ���ϵ� ī��(_, %)
-- IS NULL ������
-- ���տ����� : UNION(������-�ߺ�����), UNION ALL(������-�ߺ�����), MINUS(������), INTERSECT(������)

-- ������ �켱����
-- 1) ��������� *, /
-- 2) ��������� +, -
-- 3) �񱳿�����
=======
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
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- 4) IS NULL, IS NOT NULL, LIKE, IN
-- 5) BETWEEN A AND B
-- 6) NOT
-- 7) AND
-- 8) OR
<<<<<<< HEAD
-- �켱������ ��� �Ѵٸ� �Ұ�ȣ ��� ��õ



-- EMP ���̺��� �޿� ���� 12�� ���� ���� 36000 �� �� ��ȸ
=======
-- 우선순위를 줘야 한다면 소괄호 사용 추천



-- EMP 테이블에서 급여 열에 12를 곱한 값이 36000 인 행 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal * 12 = 36000;

<<<<<<< HEAD
-- ename �� F ������ ���ڷ� �����ϴ� ��� ��ȸ
-- ���� ǥ���� '' �� ���
=======
-- ename 이 F 이후의 문자로 시작하는 사원 조회
-- 문자 표현시 '' 만 사용
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
-- JOB�� MANAGER, SALESMAN, CLERK ��� ��ȸ
=======
-- JOB이 MANAGER, SALESMAN, CLERK 사원 조회
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
-- sal �� 3000 �� �ƴ� ��� ��ȸ
=======
-- sal 이 3000 이 아닌 사원 조회
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
-- JOB�� MANAGER, SALESMAN, CLERK ��� ��ȸ ==> IN ������
=======
-- JOB이 MANAGER, SALESMAN, CLERK 사원 조회 ==> IN 연산자
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    job IN ( 'MANAGER', 'SALESMAN', 'CLERK' );    
    
    
<<<<<<< HEAD
-- JOB�� MANAGER, SALESMAN, CLERK �ƴ� ��� ��ȸ  
=======
-- JOB이 MANAGER, SALESMAN, CLERK 아닌 사원 조회  
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
-- �μ���ȣ�� 10, 20 �����ȸ(in ���)
=======
-- 부서번호가 10, 20 사원조회(in 사용)
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b


SELECT
    *
FROM
    emp
WHERE
    deptno IN ( 10, 20 );

<<<<<<< HEAD
-- �޿��� 2000 �̻� 3000 ������ ��� ��ȸ
=======
-- 급여가 2000 이상 3000 이하인 사원 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
        sal >= 2000
    AND sal <= 3000;


<<<<<<< HEAD
-- BETWEEN �ּҰ� AND �ִ밪;
=======
-- BETWEEN 최소값 AND 최대값;
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    sal BETWEEN 2000 AND 3000;

<<<<<<< HEAD
-- �޿��� 2000 �̻� 3000 ���ϰ� �ƴ� ��� ��ȸ
=======
-- 급여가 2000 이상 3000 이하가 아닌 사원 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    sal NOT BETWEEN 2000 AND 3000;

<<<<<<< HEAD
-- LIKE�����ڿ� ���ϵ� ī��(_, %)
-- _ : � ���̵� ������� �� ���� ���� �����͸� �ǹ�
-- % : ���̿� �������(���� ���� ��쵵 ����) ��� ���� �����͸� �ǹ�


-- ��� �̸��� S�� �����ϴ� ��� ���� ��ȸ
=======
-- LIKE연산자와 와일드 카드(_, %)
-- _ : 어떤 값이든 상관없이 한 개의 문자 데이터를 의미
-- % : 길이와 상관없이(문자 없는 경우도 포함) 모든 문자 데이터를 의미


-- 사원 이름이 S로 시작하는 사원 정보 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE 'S%';

<<<<<<< HEAD
-- ��� �̸��� �ι�° ���ڰ� L �� ����� ��ȸ
=======
-- 사원 이름의 두번째 글자가 L 인 사원만 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '_L%';

<<<<<<< HEAD
-- ��� �̸��� AM �� ���Ե� ����� ��ȸ
=======
-- 사원 이름에 AM 이 포함된 사원만 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%AM%';

<<<<<<< HEAD
-- ��� �̸��� AM �� ���Ե��� ���� ����� ��ȸ
=======
-- 사원 이름에 AM 이 포함되지 않은 사원만 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    ename NOT LIKE '%AM%';

<<<<<<< HEAD
-- NULL : ������ ���� ������ ��� �ִ� ����
-- = �� ����� �� ����

-- COMM �� NULL�� ��� ��ȸ
=======
-- NULL : 데이터 값이 완전히 비어 있는 상태
-- = 을 사용할 수 없음

-- COMM 이 NULL인 사원 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    comm IS NULL;

<<<<<<< HEAD
-- MGR �� NULL�� ��� ��ȸ
=======
-- MGR 이 NULL인 사원 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    mgr IS NULL;
    
<<<<<<< HEAD
-- MGR �� NULL�� �ƴ� ��� ��ȸ    
=======
-- MGR 이 NULL이 아닌 사원 조회    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp
WHERE
    mgr IS NOT NULL;

<<<<<<< HEAD
-- ���տ�����

-- union(������ ������� ��� �ߺ� ����), union all(�ߺ� ���� ����) : ������
=======
-- 집합연산자

-- union(동일한 결과값인 경우 중복 제거), union all(중복 제거 안함) : 합집합
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
-- MINUS(������)
=======
-- MINUS(차집합)
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
-- INTERSECT(������)
=======
-- INTERSECT(교집합)
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
-- EMP ���̺��� ����̸��� S�� ������ ��� ������ ��ȸ
=======
-- EMP 테이블에서 사원이름이 S로 끝나는 사원 데이터 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%S';

<<<<<<< HEAD
-- EMP ���̺��� 30�� �μ��� �ٹ��ϴ� ��� �߿��� ��å�� SALESMAN�� ����� 
-- �����ȣ, �̸�, �޿� ��ȸ(SAL ��������)
=======
-- EMP 테이블에서 30번 부서에 근무하는 사원 중에서 직책이 SALESMAN인 사원의 
-- 사원번호, 이름, 급여 조회(SAL 내림차순)
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
-- EMP ���̺��� ����Ͽ� 20,30�� �μ��� �ٹ��ϰ� �ִ� ��� �� �޿��� 2000 �ʰ��� ��� ��ȸ
-- �����ȣ, �̸�, �޿�, �μ���ȣ ��ȸ
-- ���� �����ڸ� ����ϴ� ��İ� ������� �ʴ� ��� �� ������ ����Ѵ�

-- ���տ����� ������� �ʴ� ���
=======
-- EMP 테이블을 사용하여 20,30번 부서에 근무하고 있는 사원 중 급여가 2000 초과인 사원 조회
-- 사원번호, 이름, 급여, 부서번호 조회
-- 집합 연산자를 사용하는 방식과 사용하지 않는 방식 두 가지를 사용한다

-- 집합연산자 사용하지 않는 경우
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
-- ���տ����� ����ϴ� ���
=======
-- 집합연산자 사용하는 경우
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
-- ��� �̸��� E�� ���ԵǾ� �ִ� 30�� �μ� ��� �� �޿��� 1000~2000 ���̰� �ƴ� ����� �̸�
-- �����ȣ, �޿�, �μ���ȣ�� ��ȸ�ϱ�
=======
-- 사원 이름에 E가 포함되어 있는 30번 부서 사원 중 급여가 1000~2000 사이가 아닌 사원의 이름
-- 사원번호, 급여, 부서번호를 조회하기
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
-- �߰� ������ �������� ������, ����ڰ� �ְ� ��å�� MANAGER, CLERK �� ��� �߿��� ��� �̸���
-- �ι�° ���ڰ� L �� �ƴ� ����� ���� ��ȸ
=======
-- 추가 수당이 존재하지 않으며, 상급자가 있고 직책이 MANAGER, CLERK 인 사원 중에서 사원 이름의
-- 두번째 글자가 L 이 아닌 사원의 정보 조회
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
-- ����Ŭ �Լ�
-- ����Ŭ���� �⺻���� �����ϴ� ���� �Լ��� ����ڰ� �ʿ信 ���� ���� ������ ����� ���� �Լ�


-- 1. ���ڿ� �Լ�
-- 1) UPPER, LOWER, INITCAP
-- UPPER : ��� �빮��, LOWER : ��� �ҹ���, INITCAP : ù ���ڸ� �빮��
-- LIKE '%ORACLE%' OR LIKE '%oracle%' OR LIKE '%Oracle%' ==> �˻� �� ���
=======
-- 오라클 함수
-- 오라클에서 기본으로 제공하는 내장 함수와 사용자가 필요에 의해 직접 정의한 사용자 정의 함수


-- 1. 문자열 함수
-- 1) UPPER, LOWER, INITCAP
-- UPPER : 모두 대문자, LOWER : 모두 소문자, INITCAP : 첫 글자만 대문자
-- LIKE '%ORACLE%' OR LIKE '%oracle%' OR LIKE '%Oracle%' ==> 검색 시 사용
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
-- 2) LENGTH : ���ڿ� ����
=======
-- 2) LENGTH : 문자열 길이
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    length(ename)
FROM
    emp;

<<<<<<< HEAD
-- ��� �̸��� ���̰� 5 �̻��� ��� ��ȸ
=======
-- 사원 이름의 길이가 5 이상인 사원 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    ename,
    length(ename)
FROM
    emp
WHERE
    length(ename) >= 5;
    
<<<<<<< HEAD
-- �ѱ��� ��
-- dual : sys�� �����ϴ� ���̺�(�ӽ� �����̳� �Լ��� ��� �� Ȯ���ϴ� �뵵)
-- length, lengthb(���ڰ� ����ϴ� ����Ʈ ��)
-- ���� : ����1 => 1byte, �ѱ� : ���� 1 => 3 byte
SELECT
    length('�ѱ�'),
    lengthb('�ѱ�'),
=======
-- 한글일 때
-- dual : sys가 소유하는 테이블(임시 연산이나 함수의 결과 값 확인하는 용도)
-- length, lengthb(문자가 사용하는 바이트 수)
-- 영어 : 문자1 => 1byte, 한글 : 문자 1 => 3 byte
SELECT
    length('한글'),
    lengthb('한글'),
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    lengthb('ab')
FROM
    dual;
    
<<<<<<< HEAD
-- 3) SUBSTR(���ڿ�������, ������ġ, �������) : ������� ���� ����
--    ���ڿ� �Ϻ� ����
=======
-- 3) SUBSTR(문자열데이터, 시작위치, 추출길이) : 추출길이 생략 가능
--    문자열 일부 추출
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
-- ENAME, ����° ���ں��� ���
=======
-- ENAME, 세번째 글자부터 출력
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    ename,
    substr(ename, 3)
FROM
    emp;
    
<<<<<<< HEAD
-- 3) INSTR : ���ڿ� ������ �ȿ��� Ư�� ���� ��ġ ã��
-- INSTR(����ڿ�, ��ġ�� ã������ ���ڿ�, ����ڿ����� ã�⸦ ������ ��ġ(����), ������ġ���� ã������ ���ڰ� ���°���� ����(����))

-- HELLO, ORACLE! ���ڿ����� L ���ڿ� ã��
=======
-- 3) INSTR : 문자열 데이터 안에서 특정 문자 위치 찾기
-- INSTR(대상문자열, 위치를 찾으려는 문자열, 대상문자열에서 찾기를 시작할 위치(선택), 시작위치에서 찾으려는 문자가 몇번째인지 지정(선택))

-- HELLO, ORACLE! 문자열에서 L 문자열 찾기
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    instr('HELLO, ORACLE!', 'L')       AS instr_1,
    instr('HELLO, ORACLE!', 'L', 5)    AS instr_2,
    instr('HELLO, ORACLE!', 'L', 2, 2) AS instr_3
FROM
    dual;
    
<<<<<<< HEAD
-- 4) replace : Ư�� ���ڸ� �ٸ� ���ڷ� ����
-- replace(���ڿ�������, ã�¹���, ���湮��)

-- 010-1234-5678   - �� �� ���ڿ��� ���� / -�� ���ֱ�
SELECT
    '010-1234-5678'                    AS ������,
=======
-- 4) replace : 특정 문자를 다른 문자로 변경
-- replace(문자열데이터, 찾는문자, 변경문자)

-- 010-1234-5678   - 를 빈 문자열로 변경 / -를 없애기
SELECT
    '010-1234-5678'                    AS 변경전,
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    replace('010-1234-5678', '-', ' ') AS replace_1,
    replace('010-1234-5678', '-')      AS replace_2
FROM
    dual;

<<<<<<< HEAD
-- '�̰��� Oracle �̴�', '�̰���' => This is ����
SELECT
    '�̰��� Oracle �̴�'                            AS ������,
    replace('�̰��� Oracle �̴�', '�̰���', 'This is') AS replace_1
FROM
    dual;

-- 5) concat : �� ���ڿ� ������ ��ġ��
=======
-- '이것이 Oracle 이다', '이것이' => This is 변경
SELECT
    '이것이 Oracle 이다'                            AS 변경전,
    replace('이것이 Oracle 이다', '이것이', 'This is') AS replace_1
FROM
    dual;

-- 5) concat : 두 문자열 데이터 합치기
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
-- || : ���ڿ� ���� ������
=======
-- || : 문자열 연결 연산자
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    empno || ename,
    empno
    || ':'
    || ename
FROM
    emp;

<<<<<<< HEAD
-- 6) TRIM, LTRIM, RTRIM : ���� ���� Ư�� ���� ����
-- ' ORACLE' = 'ORACLE' ==> FALSE

SELECT
    '     �̰���     ',
    TRIM('     �̰���     ')
=======
-- 6) TRIM, LTRIM, RTRIM : 공백 포함 특정 문자 제거
-- ' ORACLE' = 'ORACLE' ==> FALSE

SELECT
    '     이것이     ',
    TRIM('     이것이     ')
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
FROM
    dual;



<<<<<<< HEAD
-- 2. �����Լ�
-- 1) ROUND, TRUNC, CEIL, FLOOR, MOD

-- round : �ݿø�
-- round(����, �ݿø� ��ġ(����))
SELECT
    round(1234.5678)      AS round,           -- �Ҽ��� ù° �ڸ����� �ݿø�
    round(1234.5678, 0)   AS round0,          -- �Ҽ��� ù° �ڸ����� �ݿø�
    round(1234.5678, 1)   AS round1,          -- �Ҽ��� ��° �ڸ����� �ݿø� 
    round(1234.5678, 2)   AS round2,          -- �Ҽ��� ����° �ڸ����� �ݿø�
    round(1234.5678, - 1) AS round_minus1,    -- �ڿ��� ù° �ڸ����� �ݿø�
    round(1234.5678, - 2) AS round_minus2     -- �ڿ��� ��° �ڸ����� �ݿø�
=======
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
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
FROM
    dual;
    
    
<<<<<<< HEAD
-- trunc : Ư�� ��ġ���� ������ �Լ�
-- trunc(����, ���� ��ġ(����))
SELECT
    trunc(1234.5678)      AS trunc,           -- �Ҽ��� ù° �ڸ����� ����
    trunc(1234.5678, 0)   AS trunc0,          -- �Ҽ��� ù° �ڸ����� ����
    trunc(1234.5678, 1)   AS trunc1,          -- �Ҽ��� ��° �ڸ����� ���� 
    trunc(1234.5678, 2)   AS trunc2,          -- �Ҽ��� ����° �ڸ����� ����
    trunc(1234.5678, - 1) AS trunc_minus1,    -- �ڿ��� ù° �ڸ����� ����
    trunc(1234.5678, - 2) AS trunc_minus2     -- �ڿ��� ��° �ڸ����� ����
FROM
    dual;    
    
-- ceil(����), floor(����) : �Էµ� ���ڿ� ����� ū ����, ���� ����   
=======
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
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    ceil(3.14),
    floor(3.14),
    ceil(- 3.14),
    floor(- 3.14)
FROM
    dual;


<<<<<<< HEAD
-- mod(����, ������) : ��������
=======
-- mod(숫자, 나눌수) : 나머지값
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    mod(15, 6),
    mod(10, 2),
    mod(11, 2)
FROM
    dual;    
    
    
    
<<<<<<< HEAD
-- ��¥ �Լ�
-- ��¥ ������ + ���� : ��¥ �����ͺ��� ���ڸ�ŭ �ϼ� ������ ��¥
-- ��¥ ������ - ��¥ ������ : �� ��¥ ������ ���� �ϼ� ����

-- ��¥ ������ + ��¥ ������ : ����Ұ�

-- 1) sysdate �Լ� : ����Ŭ �����ͺ��̽� ������ ��ġ�� OS�� ���糯¥�� �ð��� ������
=======
-- 날짜 함수
-- 날짜 데이터 + 숫자 : 날짜 데이터보다 숫자만큼 일수 이후의 날짜
-- 날짜 데이터 - 날짜 데이터 : 두 날짜 데이터 간의 일수 차이

-- 날짜 데이터 + 날짜 데이터 : 연산불가

-- 1) sysdate 함수 : 오라클 데이터베이스 서버가 설치된 OS의 현재날짜와 시간을 가져옴
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    sysdate,
    sysdate - 1 AS yesterday,
    sysdate + 1 AS tomorrow
FROM
    dual;
    
<<<<<<< HEAD
-- 2) add_months(��¥, ���� ������) : �� ���� ���� ��¥ ���ϱ�
=======
-- 2) add_months(날짜, 더할 개월수) : 몇 개월 이후 날짜 구하기
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    sysdate,
    add_months(sysdate, 3)
FROM
    dual;
    
<<<<<<< HEAD
-- �Ի� 50�ֳ��� �Ǵ� ��¥ ���ϱ�
-- empno, ename, hiredate, �Ի�50�ֳ⳯¥ ��ȸ
=======
-- 입사 50주년이 되는 날짜 구하기
-- empno, ename, hiredate, 입사50주년날짜 조회
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename,
    hiredate,
    add_months(hiredate, 600)
FROM
    emp;

<<<<<<< HEAD
-- 3) MONTHS_BETWEEN(ù��°��¥, �ι�° ��¥) : �� ��¥ ������ ���� ��¥ ���̸� �������� ����Ͽ� ���

-- �Ի� 45�� �̸��� ��� ������ ��ȸ
=======
-- 3) MONTHS_BETWEEN(첫번째날짜, 두번째 날짜) : 두 날짜 데이터 간의 날짜 차이를 개월수로 계산하여 출력

-- 입사 45년 미만인 사원 데이터 조회
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
-- ���� ��¥�� 6���� �� ��¥�� ���
=======
-- 현재 날짜와 6개월 후 날짜가 출력
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
-- 4) next_day(��¥, ����) : Ư�� ��¥�� �������� ���ƿ��� ������ ��¥ ���
--    last_day(��¥) : Ư�� ��¥�� ���� ���� ������ ��¥�� ���
SELECT
    sysdate,
    next_day(sysdate, '�ݿ���'),
=======
-- 4) next_day(날짜, 요일) : 특정 날짜를 기준으로 돌아오는 요일의 날짜 출력
--    last_day(날짜) : 특정 날짜가 속한 달의 마지막 날짜를 출력
SELECT
    sysdate,
    next_day(sysdate, '금요일'),
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    last_day(sysdate)
FROM
    dual;

<<<<<<< HEAD
-- ��¥�� �ݿø�, ���� : ROUND, TRUNC
-- CC : �� �ڸ� ������ �� ���ڸ��� �������� ���
--      2023 ���� ��� 2050 �����̹Ƿ� 2001������ ó��
=======
-- 날짜의 반올림, 버림 : ROUND, TRUNC
-- CC : 네 자리 연도의 끝 두자리를 기준으로 사용
--      2023 년인 경우 2050 이하이므로 2001년으로 처리
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
-- ����ȯ �Լ� : �ڷ����� �� ��ȯ
=======
-- 형변환 함수 : 자료형을 형 변환
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
--ORA-01722: ��ġ�� �������մϴ�
=======
--ORA-01722: 수치가 부적합합니다
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
--01722. 00000 -  "invalid number"
--SELECT empno, ename, 'abcd'+empno
--FROM emp
--WHERE ename = 'FORD';

<<<<<<< HEAD
-- TO_CHAR() : ���� �Ǵ� ��¥ �����͸� ���� �����ͷ� ��ȯ
-- TO_NUMBER() : ���� �����͸� ���� �����ͷ� ��ȯ
-- TO_DATE() : ���� �����͸� ��¥ �����ͷ� ��ȯ

-- ���ϴ� ��� ���·� ��¥ ����ϱ� to_char �ַ� ����
SELECT
    sysdate,
    to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') AS ���糯¥�ð�
FROM
    dual;
    
-- MON, MONTH : �� �̸�
-- DDD : 365�� �߿��� ��ĥ 
SELECT
    sysdate,
    to_char(sysdate, 'YYYY/MM/DD')    AS ���糯¥,
    to_char(sysdate, 'YYYY')          AS ���翬��,
    to_char(sysdate, 'MM')            AS �����,
    to_char(sysdate, 'MON')           AS �����1,
    to_char(sysdate, 'DD')            AS ��������,
    to_char(sysdate, 'DDD')           AS ��������2,
    to_char(sysdate, 'HH12:MI:SS AM') AS ���糯¥�ð�
FROM
    dual;    
    
-- sal �ʵ忡 , �� ��ȭǥ�ø� �ϰ� �ʹٸ�?
-- L (Locale) ���� ȭ�� ���� ��ȣ �ٿ���
=======
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
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    sal,
    to_char(sal, '$999,999') AS sal_$,
    to_char(sal, 'L999,999') AS sal_l
FROM
    emp;
    


<<<<<<< HEAD
-- to_number(���ڿ�������, �νĵ� ��������)

-- �ڵ�����ȯ
=======
-- to_number(문자열데이터, 인식될 숫자형태)

-- 자동형변환
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    1300 - '1500',
    '1300' + 1500
FROM
    dual;

<<<<<<< HEAD
-- �ڵ�����ȯ�ȵǴ� ��Ȳ    
=======
-- 자동형변환안되는 상황    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    TO_NUMBER('1,300', '999,999') - TO_NUMBER('1,500', '999,999')
FROM
    dual;
    
    
<<<<<<< HEAD
-- to_date(���ڿ�������, '�νĵ� ��¥ ����')
=======
-- to_date(문자열데이터, '인식될 날짜 형태')
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    TO_DATE('2018-07-14', 'YYYY-MM-DD') AS todate1,
    TO_DATE('20230320', 'YYYY-MM-DD')   AS todate2
FROM
    dual;
    
<<<<<<< HEAD
-- ORA-01722: ��ġ�� �������մϴ�    
=======
-- ORA-01722: 수치가 부적합합니다    
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
--SELECT '2023-03-21' - '2023-02-01'
--FROM dual;

SELECT
    TO_DATE('2023-03-21') - TO_DATE('2023-02-01')
FROM
    dual;    
    

<<<<<<< HEAD
-- ��ó�� �Լ�
-- NULL + 300 => NULL

-- NVL(������, ���� ��� ��ȯ�� ������) 
=======
-- 널처리 함수
-- NULL + 300 => NULL

-- NVL(데이터, 널일 경우 반환할 데이터) 
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
-- NVL2(������,���� �ƴҰ�� ��ȯ�� ������,���� ��� ��ȯ�� ������)
=======
-- NVL2(데이터,널이 아닐경우 반환할 데이터,널일 경우 반환할 데이터)
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
-- DECODE�Լ� / CASE ��

-- DECODE(�˻� ����� �� ������, 
--        ����1, ����1�� ��ġ�Ҷ� ������ ����
--        ����2, ����2�� ��ġ�Ҷ� ������ ����)
    
-- emp ���̺� ��å�� MANAGER �� ����� �޿��� 10% �λ�, 
-- SALESMAN �� ����� 5%, ANALYST �� ����� �״��, �������� 3% �λ�� �޿� ���
=======
-- DECODE함수 / CASE 문

-- DECODE(검사 대상이 될 데이터, 
--        조건1, 조건1이 일치할때 실행할 구문
--        조건2, 조건2이 일치할때 실행할 구문)
    
-- emp 테이블에 직책이 MANAGER 인 사람은 급여의 10% 인상, 
-- SALESMAN 인 사람은 5%, ANALYST 인 사람은 그대로, 나머지는 3% 인상된 급여 출력
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
            '�ش���� ����'
        WHEN comm = 0 THEN
            '�������'
        WHEN comm > 0 THEN
            '���� : ' || comm
=======
            '해당사항 없음'
        WHEN comm = 0 THEN
            '수당없음'
        WHEN comm > 0 THEN
            '수당 : ' || comm
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    END AS comm_text
FROM
    emp;
    
<<<<<<< HEAD
-- EMP ���̺��� ������� �� ��� �ٹ��ϼ��� 21.5���̴�. 
-- �Ϸ� �ٹ� �ð��� 8�ð����� ������ �� ������� 
-- �Ϸ� �޿�(DAY_PAY)�� �ñ�(TIME_PAY)�� ����Ͽ� 
-- ����� ����Ѵ�. ��, �Ϸ� �޿��� �Ҽ��� ��° �ڸ�����
-- ������, �ñ��� �� ��° �Ҽ������� �ݿø��Ͻÿ�.
=======
-- EMP 테이블에서 사원들의 월 평균 근무일수는 21.5일이다. 
-- 하루 근무 시간을 8시간으로 보았을 때 사원들의 
-- 하루 급여(DAY_PAY)와 시급(TIME_PAY)를 계산하여 
-- 결과를 출력한다. 단, 하루 급여는 소수점 셋째 자리에서
-- 버리고, 시급은 두 번째 소수점에서 반올림하시오.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    empno,
    ename                    sal,
    trunc(sal / 21.5, 2)     AS day_pay,
    round(sal / 21.5 / 8, 1) AS time_pay
FROM
    emp;
    
<<<<<<< HEAD
-- EMP ���̺��� ������� �Ի���(HIREDATE)�� �������� 
-- 3������ ���� �� ù �����Ͽ� �������� �ȴ�. ������� 
-- �������� �Ǵ� ��¥(R_JOB)�� YYYY-MM-DD �������� �Ʒ��� 
-- ���� ����Ͻÿ�. ��, �߰�����(COMM)�� ���� ����� �߰� ������ N/A�� ����Ͻÿ�.
=======
-- EMP 테이블에서 사원들은 입사일(HIREDATE)을 기준으로 
-- 3개월이 지난 후 첫 월요일에 정직원이 된다. 사원들이 
-- 정직원이 되는 날짜(R_JOB)를 YYYY-MM-DD 형식으로 아래와 
-- 같이 출력하시오. 단, 추가수당(COMM)이 없는 사원의 추가 수당은 N/A로 출력하시오.
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    comm,
    nvl(to_char(comm),
<<<<<<< HEAD
        'N/A')  -- ORA-01722: ��ġ�� �������մϴ�
=======
        'N/A')  -- ORA-01722: 수치가 부적합합니다
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
FROM
    emp;

SELECT
    empno,
    ename,
    hiredate,
    next_day(add_months(hiredate, 3),
<<<<<<< HEAD
             '������') AS r_job,
=======
             '월요일') AS r_job,
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
             '������') AS r_job,
=======
             '월요일') AS r_job,
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    nvl2(comm,
         to_char(comm),
         'N/A')     AS comm
FROM
    emp;
    
<<<<<<< HEAD
--EMP ���̺��� ��� ����� ������� ���� ����� ��� ��ȣ(MGR)�� 
--������ ���� ������ �������� ��ȯ�ؼ� CHG_MGR ���� ����Ͻÿ�.
--
--���ӻ���� ��� ��ȣ�� �������� ���� ��� : 0000
--���ӻ���� ��� ��ȣ �� ���ڸ��� 75�� ��� : 5555
--���ӻ���� ��� ��ȣ �� ���ڸ��� 76�� ��� : 6666
--���ӻ���� ��� ��ȣ �� ���ڸ��� 77�� ��� : 7777
--���ӻ���� ��� ��ȣ �� ���ڸ��� 78�� ��� : 8888
--�� �� ���� ��� ��� ��ȣ�� ��� : ���� ���� ����� �����ȣ �״�� ���
=======
--EMP 테이블의 모든 사원을 대상으로 직속 상관의 사원 번호(MGR)를 
--다음과 같은 조건을 기준으로 변환해서 CHG_MGR 열에 출력하시오.
--
--직속상관의 사원 번호가 존재하지 않을 경우 : 0000
--직속상관의 사원 번호 앞 두자리가 75일 경우 : 5555
--직속상관의 사원 번호 앞 두자리가 76일 경우 : 6666
--직속상관의 사원 번호 앞 두자리가 77일 경우 : 7777
--직속상관의 사원 번호 앞 두자리가 78일 경우 : 8888
--그 외 직속 상관 사원 번호의 경우 : 본래 직속 상관의 사원번호 그대로 출력
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
-- ������(����) �Լ� : sum, count, max, min, avg

-- ORA-00937: ���� �׷��� �׷� �Լ��� �ƴմϴ�
=======
-- 다중행(집계) 함수 : sum, count, max, min, avg

-- ORA-00937: 단일 그룹의 그룹 함수가 아닙니다
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
-- sum() : NULL �� �����ϰ� �հ� ������     
=======
-- sum() : NULL 은 제외하고 합계 구해줌     
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
-- �μ���ȣ�� 20�� ����� �Ի��� �� ���� �ֱ� �Ի���
=======
-- 부서번호가 20인 사원의 입사일 중 제일 최근 입사일
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    MAX(hiredate)
FROM
    emp
WHERE
    deptno = 20;

<<<<<<< HEAD
-- �μ���ȣ�� 20�� ����� �Ի��� �� ���� ������ �Ի���
=======
-- 부서번호가 20인 사원의 입사일 중 제일 오래된 입사일
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
-- group by : ��� ���� ���ϴ� ���� ���� ���

-- �μ��� sal ��� ���ϱ�
=======
-- group by : 결과 값을 원하는 열로 묶어 출력

-- 부서별 sal 평균 구하기
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
-- �μ��� �߰����� ��� ���ϱ�
=======
-- 부서별 추가수당 평균 구하기
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    deptno,
    AVG(comm)
FROM
    emp
GROUP BY
    deptno;
    
    
<<<<<<< HEAD
-- GROUP BY ǥ������ �ƴմϴ�.
=======
-- GROUP BY 표현식이 아닙니다.
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
-- GROUP BY + HAVING : group by ���� ������ �� ��
-- HAVING : �׷�ȭ�� ����� ��� ���� �ɶ�

-- �� �μ��� ��å�� ��� �޿� ���ϱ�(��, ��� �޿��� 2000 �̻��� �׷츸 ���)
-- deptno, job, ���
=======
-- GROUP BY + HAVING : group by 절에 조건을 줄 때
-- HAVING : 그룹화된 대상을 출력 제한 걸때

-- 각 부서의 직책별 평균 급여 구하기(단, 평균 급여가 2000 이상인 그룹만 출력)
-- deptno, job, 평균
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
-- �׷� �Լ��� �㰡���� �ʽ��ϴ�    
=======
-- 그룹 함수는 허가되지 않습니다    
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
-- select ���� ����    
-- 1) from ���� ����  2) where ����  3) group by 4) having 5) select 6) order by
=======
-- select 실행 순서    
-- 1) from 구문 실행  2) where 실행  3) group by 4) having 5) select 6) order by
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
-- EMP ���̺��� �̿��Ͽ� �μ���ȣ(DEPTNO), ��ձ޿�(AVG_SAL), 
-- �ְ�޿�(MAX_SAL), �����޿�(MIN_SAL), �����(CNT)�� ����Ѵ�. 
-- ��, ��� �޿��� ����� �� �Ҽ����� �����ϰ� �� �μ���ȣ���� ����ϴ� SQL ���� �ۼ��Ͻÿ�.
=======
-- EMP 테이블을 이용하여 부서번호(DEPTNO), 평균급여(AVG_SAL), 
-- 최고급여(MAX_SAL), 최저급여(MIN_SAL), 사원수(CNT)를 출력한다. 
-- 단, 평균 급여를 출력할 때 소수점을 제외하고 각 부서번호별로 출력하는 SQL 문을 작성하시오.
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
-- ���� ��å�� �����ϴ� ����� 3�� �̻��� ��å�� �ο����� ���
=======
-- 같은 직책에 종사하는 사원이 3명 이상인 직책과 인원수를 출력
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
-- ������� �Ի翬��(HIRE_YEAR)�� �������� �μ����� �� ���� �Ի��ߴ��� ���
=======
-- 사원들의 입사연도(HIRE_YEAR)를 기준으로 부서별로 몇 명이 입사했는지 출력
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
-- ���� : ���� ���̺��� �ϳ��� ���̺�ó�� ���
-- 1) ��������(inner join) : ���� ���� ���̺��� ����� �κи� ����
--    �� ����� : �� ���� ���� ��ġ�� �� �� ����
--    �� ������ : ������ �ش��� �� �� ����

-- 2) �ܺ�����(outer join)
--    �� left outer join
--    �� right outer join
--    �� full outer join

-- dept : 4 ��, emp : 12 �� ==> 4*12 = 48��
-- ũ�ν� ����(���� �� �ִ� ��� ���� ����)
=======
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
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    *
FROM
    emp,
    dept
ORDER BY
    empno;


<<<<<<< HEAD
-- ORA-00918: ���� ���ǰ� �ָ��մϴ�( column ambiguously defined )
=======
-- ORA-00918: 열의 정의가 애매합니다( column ambiguously defined )
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
-- SQL-99 ǥ��
=======
-- SQL-99 표준
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
-- SQL-99 ǥ��
=======
-- SQL-99 표준
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
-- emp, dept inner join, �޿��� 2500 �����̰�, �����ȣ�� 9999 ������ ��� ���� ��ȸ
=======
-- emp, dept inner join, 급여가 2500 이하이고, 사원번호가 9999 이하인 사원 정보 조회
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
-- SQL-99 ǥ��
=======
-- SQL-99 표준
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
-- emp�� salgrade ����
-- emp ���̺��� sal �� salgrade ���̺��� losal �� hisal ������ ���� ���·� ����
=======
-- emp와 salgrade 조인
-- emp 테이블의 sal 이 salgrade 테이블의 losal 과 hisal 범위에 들어가는 형태로 조인
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

SELECT
    *
FROM
    emp      e,
    salgrade s
WHERE
    e.sal BETWEEN s.losal AND s.hisal;


<<<<<<< HEAD
-- SQL-99 ǥ��
=======
-- SQL-99 표준
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- join ~ on

SELECT
    *
FROM
         emp e
    JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal;



<<<<<<< HEAD
-- self join : �ڱ� �ڽ� ���̺�� ����
=======
-- self join : 자기 자신 테이블과 조인
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
-- SQL-99 ǥ��
=======
-- SQL-99 표준
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
-- SQL-99 ǥ��
=======
-- SQL-99 표준
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
-- outer-join�� ���̺��� 1���� ������ �� �ֽ��ϴ�
=======
-- outer-join된 테이블은 1개만 지정할 수 있습니다
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
-- 01468. 00000 -  "a predicate may reference only one outer-joi
--SELECT e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename
--FROM emp e1, emp e2
--WHERE e1.mgr(+) = e2.empno(+);

<<<<<<< HEAD
-- SQL-99 ǥ��
=======
-- SQL-99 표준
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
-- �����ؾ� �� ���̺��� �����϶�
=======
-- 연결해야 할 테이블이 세개일때
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

--SELECT *
--FROM table1 t1, table2 t2, table3 t3
--WHERE t1.empno = t2.empno AND t2.deptno = t3.deptno;
--
--
--SELECT *
--FROM table1 t1 join table2 t2 on t1.empno = t2.empno join table3 t3 on t2.deptno = t3.deptno;


<<<<<<< HEAD
-- �޿��� 2000�ʰ��� ������� �μ� ����, ��� ������ �Ʒ��� ���� ����ϴ� SQL ���� �ۼ��Ͻÿ�.
=======
-- 급여가 2000초과인 사원들의 부서 정보, 사원 정보를 아래와 같이 출력하는 SQL 문을 작성하시오.
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
-- �� �μ��� ��� �޿�, �ִ� �޿�, �ּ� �޿�, ������� ����ϴ� SQL���� �ۼ��Ͻÿ�.
=======
-- 각 부서별 평균 급여, 최대 급여, 최소 급여, 사원수를 출력하는 SQL문을 작성하시오.
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
-- ��� �μ������� ��� ������ �Ʒ��� ���� �μ���ȣ, ����̸� ������ �����Ͽ� ����ϴ� SQL���� �ۼ��Ͻÿ�.
=======
-- 모든 부서정보와 사원 정보를 아래와 같이 부서번호, 사원이름 순으로 정렬하여 출력하는 SQL문을 작성하시오.
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
-- ��������
-- sql ���� �����ϴ� �� �ʿ��� �����͸� �߰��� ��ȸ�ϱ� ���� sql �� ���ο��� ����ϴ� select ��
-- 1) ������ �������� 2) ������ �������� 3) ���߿� �������� 

--SELECT ��ȸ�� ��
--FROM ���̺��
--WHERE ���ǽ�(SELECT ��ȸ�� �� FROM ���̺� WHERE ���ǽ�)


-- ������ �޿����� ���� �޿��� �޴� ��� ��ȸ
-- JONES �޿� �˾Ƴ��� / �˾Ƴ� JONES �޿��� ������ ���ǽ�
=======
-- 서브쿼리
-- sql 문을 실행하는 데 필요한 데이터를 추가로 조회하기 위해 sql 문 내부에서 사용하는 select 문
-- 1) 단일행 서브쿼리 2) 다중행 서브쿼리 3) 다중열 서브쿼리 

--SELECT 조회할 열
--FROM 테이블명
--WHERE 조건식(SELECT 조회할 열 FROM 테이블 WHERE 조건식)


-- 존스의 급여보다 높은 급여를 받는 사원 조회
-- JONES 급여 알아내기 / 알아낸 JONES 급여를 가지고 조건식
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
-- ������ �������� : �������� ����� �ϳ��� �� ��ȯ
-- =, >, <, >=, <=, <>, ^=, != ������ ���


-- ������ �޿����� ���� �޿��� �޴� ��� ��ȸ(��������)
=======
-- 단일행 서브쿼리 : 서브쿼리 결과로 하나의 행 반환
-- =, >, <, >=, <=, <>, ^=, != 연산자 허용


-- 존스의 급여보다 높은 급여를 받는 사원 조회(서브쿼리)
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
-- ����̸��� ALLEN �� ����� �߰����� ���� ���� �߰������� �޴� ��� ��ȸ
=======
-- 사원이름이 ALLEN 인 사원의 추가수당 보다 많은 추가수당을 받는 사원 조회
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
-- ����̸��� WARD �� ����� �Ի��Ϻ��� ���� �Ի��� ��� ��ȸ     
=======
-- 사원이름이 WARD 인 사원의 입사일보다 빨리 입사한 사원 조회     
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
-- 20�� �μ��� ���� ��� �� ��ü ����� ��� �޿����� ���� �޿��� �޴� ������� ��
-- �μ����� ��ȸ
-- �����ȣ, �����, ����, �޿�, �μ���ȣ, �μ���, ����
=======
-- 20번 부서에 속한 사원 중 전체 사원의 평균 급여보다 높은 급여를 받는 사원정보 및
-- 부서정보 조회
-- 사원번호, 사원명, 직무, 급여, 부서번호, 부서명, 지역
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
-- 20�� �μ��� ���� ��� �� ��ü ����� ��� �޿����� �۰ų� ���� �޿��� �޴� ������� ��
-- �μ����� ��ȸ 
=======
-- 20번 부서에 속한 사원 중 전체 사원의 평균 급여보다 작거나 같은 급여를 받는 사원정보 및
-- 부서정보 조회 
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
-- ������ �������� : �������� ����� �������� �� ��ȯ 
-- IN, ANY(SOME), ALL, EXISTS ������ ���(������ ���������� ���� ������ ��� �Ұ�)

-- �� �μ��� �ְ� �޿��� ������ �޿��� �޴� ������� ��ȸ

-- �� �μ��� �ְ� �޿�
=======
-- 다중행 서브쿼리 : 서브쿼리 결과로 여러개의 행 반환 
-- IN, ANY(SOME), ALL, EXISTS 연산자 허용(단일행 서브쿼리에 쓰는 연산자 사용 불가)

-- 각 부서별 최고 급여와 동일한 급여를 받는 사원정보 조회

-- 각 부서별 최고 급여
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
SELECT
    MAX(sal)
FROM
    emp
GROUP BY
    deptno;

<<<<<<< HEAD
-- ���� �� ���� ���ǿ� 2�� �̻��� ���� ���ϵǾ����ϴ�.    
-- SELECT * FROM emp WHERE sal = (SELECT MAX(sal) FROM emp GROUP BY deptno);    

-- IN : �������� ����� �������� ��� �� �ϳ��� ��ġ�ϸ� TRUE    
=======
-- 단일 행 하위 질의에 2개 이상의 행이 리턴되었습니다.    
-- SELECT * FROM emp WHERE sal = (SELECT MAX(sal) FROM emp GROUP BY deptno);    

-- IN : 메인쿼리 결과가 서브쿼리 결과 중 하나라도 일치하면 TRUE    
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
-- 30�� �μ� ������� �޿����� ���� �޿��� �޴� ��� ���� ��ȸ

-- ANY(SOME) : �������� ����� �������� ����� �ϳ��̻��̸� TRUE    
=======
-- 30번 부서 사원들의 급여보다 적은 급여를 받는 사원 정보 조회

-- ANY(SOME) : 메인쿼리 결과가 서브쿼리 결과가 하나이상이면 TRUE    
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
-- �� ����� ������ ������ �ۼ��� ������ ��Ȳ��
=======
-- 위 결과는 단일행 쿼리로 작성이 가능한 상황임
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
-- 30�� �μ� ������� �ּ� �޿����� ���� �޿��� �޴� ��� ���� ��ȸ

-- �� ������ ��������
=======
-- 30번 부서 사원들의 최소 급여보다 많은 급여를 받는 사원 정보 조회

-- ① 단일행 서브쿼리
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
-- �� ������ ��������
=======
-- ② 다중행 서브쿼리
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
-- ALL : �������� ��� ����� ���ǽĿ� �¾� �������߸� �������� ���ǽ��� TRUE
=======
-- ALL : 서브쿼리 모든 결과가 조건식에 맞아 떨어져야만 메인쿼리 조건식이 TRUE
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
-- EXISTS : ���� ������ ��� ���� �ϳ� �̻� �����ϸ� ���ǽ��� ��� TRUE, �������� ������ FALSE
=======
-- EXISTS : 서브 쿼리에 결과 값이 하나 이상 존재하면 조건식이 모두 TRUE, 존재하지 않으면 FALSE
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
-- ��ü ��� �� ALLEN�� ���� ��å�� ������� �������, �μ� ������ ������ ���� ����ϴ� SQL���� �ۼ��Ͻÿ�.
=======
-- 전체 사원 중 ALLEN과 같은 직책인 사원들의 사원정보, 부서 정보를 다음과 같이 출력하는 SQL문을 작성하시오.
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
-- ��ü ����� ��� �޿����� ���� �޿��� �޴� ������� �������, �μ�����, 
-- �޿� ��� ������ ����ϴ� SQL���� �ۼ��Ͻÿ�(��, ����� �� �޿��� 
-- ���� ������ �����ϵ� �޿��� ���� ��쿡�� ��� ��ȣ�� �������� ������������ �����ϱ�)
=======
-- 전체 사원의 평균 급여보다 높은 급여를 받는 사원들의 사원정보, 부서정보, 
-- 급여 등급 정보를 출력하는 SQL문을 작성하시오(단, 출력할 때 급여가 
-- 많은 순으로 정렬하되 급여가 같을 경우에는 사원 번호를 기준으로 오름차순으로 정렬하기)
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
-- ���߿� �������� : ���������� select ���� ���� �����͸� ���� �� ����
=======
-- 다중열 서브쿼리 : 서브쿼리의 select 절에 비교할 데이터를 여러 개 지정
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
-- FROM ���� ����ϴ� ��������(�ζ��� ��)
-- FROM ���� ���� ���̺��� ����ؼ� ����ϱ⿡�� ���̺� �� ������ �Ը� Ŭ ��, ���ʿ��� ���� ���� ��
=======
-- FROM 절에 사용하는 서브쿼리(인라인 뷰)
-- FROM 절에 직접 테이블을 명시해서 사용하기에는 테이블 내 데이터 규모가 클 때, 불필요한 열이 많을 때
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
-- SELECT ���� ����ϴ� ��������(��Į�� ��������)
-- SELECT ���� ����ϴ� ���������� �ݵ�� �ϳ��� ����� ��ȯ�ؾ� ��
=======
-- SELECT 절에 사용하는 서브쿼리(스칼라 서브쿼리)
-- SELECT 절에 사용하는 서브쿼리는 반드시 하나의 결과만 반환해야 함
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
-- 10�� �μ��� �ٹ��ϴ� ��� �� 30�� �μ����� �������� �ʴ� ��å�� ����
-- ������� �������, �μ� ������ ������ ���� ����ϴ� SQL���� �ۼ��Ͻÿ�.
=======
-- 10번 부서에 근무하는 사원 중 30번 부서에는 존재하지 않는 직책을 가진
-- 사원들의 사원정보, 부서 정보를 다음과 같이 출력하는 SQL문을 작성하시오.
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
-- ��å�� SALESMAN�� ������� �ְ� �޿����� ���� �޿��� �޴� ������� �������, �޿���� ������ ����ϴ� SQL���� �ۼ��Ͻÿ�
-- (��, ���������� Ȱ���� �� ������ �Լ��� ����ϴ� ����� ������� �ʴ� ����� ���� �����ȣ�� �������� �������� �����Ͽ� ���    

-- ������ ��������    
=======
-- 직책이 SALESMAN인 사람들의 최고 급여보다 높은 급여를 받는 사원들의 사원정보, 급여등급 정보를 출력하는 SQL문을 작성하시오
-- (단, 서브쿼리를 활용할 때 다중행 함수를 사용하는 방법과 사용하지 않는 방법을 통해 사원번호를 기준으로 오름차순 정렬하여 출력    

-- 단일행 서브쿼리    
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
-- ������ �Լ� ����(IN, any, some, all, exists)    
=======
-- 다중행 함수 사용시(IN, any, some, all, exists)    
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
-- DML(Data Manipulation Language) : ������ �߰�(INSERT), ����(UPDATE), ����(DELETE)�ϴ� ������ ���۾�
-- COMMIT : DML �۾��� �����ͺ��̽��� ���� �ݿ�
-- ROLLBACK : DML �۾��� ���
-- select + DML ==> ���� ����ϴ� sql ��


-- ������ ���̺� ����
-- ���� ���̺� ����
=======
-- DML(Data Manipulation Language) : 데이터 추가(INSERT), 수정(UPDATE), 삭제(DELETE)하는 데이터 조작어
-- COMMIT : DML 작업을 데이터베이스에 최종 반영
-- ROLLBACK : DML 작업을 취소
-- select + DML ==> 자주 사용하는 sql 임


-- 연습용 테이블 생성
-- 기존 테이블 복사
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
CREATE TABLE dept_temp
    AS
        SELECT
            *
        FROM
            dept;

DROP TABLE dept_temp;  

<<<<<<< HEAD
-- ���̸��� ���û�����
-- insert into ���̺��̸�(���̸�1, ���̸�2.....)
-- values(������1, ������2......);


-- dept_temp ���ο� �μ� �߰��ϱ�
=======
-- 열이름은 선택사항임
-- insert into 테이블이름(열이름1, 열이름2.....)
-- values(데이터1, 데이터2......);


-- dept_temp 새로운 부서 추가하기
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
-- �� �̸� ������ ��
=======
-- 열 이름 제거할 때
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
INSERT INTO dept_temp VALUES (
    60,
    'NETWORK',
    'BUSAN'
);

<<<<<<< HEAD
-- INSERT �� ����

-- �� ���� ���� ������ ��ü �ڸ������� ū ���� ���˴ϴ�.
--INSERT INTO dept_temp
--VALUES(600,'NETWORK','BUSAN');

-- ��ġ�� �������մϴ�
--INSERT INTO dept_temp
--VALUES('NO','NETWORK','BUSAN');

-- ���� ���� ������� �ʽ��ϴ�
--INSERT INTO dept_temp(deptno, dname, loc)
--VALUES(70,'DATABASE');

-- NULL����
=======
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
-- NULL ������ �÷��� �������� �ʾ���
-- ���Խ� ��ü �÷��� �������� �ʴ´ٸ� �ʵ�� �ʼ�
=======
-- NULL 삽입할 컬럼명 지정하지 않았음
-- 삽입시 전체 컬럼을 삽입하지 않는다면 필드명 필수
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
-- emp_temp ����(emp ���̺� ���� - �����ʹ� ���縦 ���� ���� ��)
-- ������ ����
=======
-- emp_temp 생성(emp 테이블 복사 - 데이터는 복사를 하지 않을 때)
-- 구조만 복사
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
    'ȫ�浿',
=======
    '홍길동',
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
    '������',
=======
    '성춘향',
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    'MANAGER',
    9999,
    '2002-01-05',
    4000,
    NULL,
    20
);
  
<<<<<<< HEAD
-- ��¥ �Է� �� ��/��/�� ���� => ��/��/�� ����
-- ��¥ ������ ������ ���ʿ��� �����Ͱ� ����
--INSERT INTO emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
--VALUES(2222,'�̼���','MANAGER',9999,'07/01/2001',4000,NULL,20);
=======
-- 날짜 입력 시 년/월/일 순서 => 일/월/년 삽입
-- 날짜 형식의 지정에 불필요한 데이터가 포함
--INSERT INTO emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
--VALUES(2222,'이순신','MANAGER',9999,'07/01/2001',4000,NULL,20);
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
    '�̼���',
=======
    '이순신',
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
    '�ɺ���',
=======
    '심봉사',
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
    'MANAGER',
    9999,
    sysdate,
    4000,
    NULL,
    30
);

<<<<<<< HEAD
-- ���������� INSERT ����
-- emp, salgrade ���̺��� ���� �� �޿� ����� 1�� ����� emp_temp �� �߰�
=======
-- 서브쿼리로 INSERT 구현
-- emp, salgrade 테이블을 조인 후 급여 등급이 1인 사원만 emp_temp 에 추가
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
-- UPDATE : ���̺� �ִ� ������ ����

--UPDATE ���̺��
--SET  �����ҿ��̸� = ������, �����ҿ��̸� = ������.....
--WHERE ������ ���� ��� ���� �����ϱ� ���� ����
    


-- dept_temp loc ���� ��� ���� seoul �� ����
=======
-- UPDATE : 테이블에 있는 데이터 수정

--UPDATE 테이블명
--SET  변경할열이름 = 데이터, 변경할열이름 = 데이터.....
--WHERE 변경을 위한 대상 행을 선별하기 위한 조건
    


-- dept_temp loc 열의 모든 값을 seoul 로 변경
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
UPDATE dept_temp
SET
    loc = 'SEOUL';

ROLLBACK;

<<<<<<< HEAD
-- ������ �Ϻκ� ���� : where ���
-- dept_temp �μ���ȣ�� 40���� loc ���� ���� seoul �� ����
=======
-- 데이터 일부분 수정 : where 사용
-- dept_temp 부서번호가 40번인 loc 열의 값을 seoul 로 변경
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
UPDATE dept_temp
SET
    loc = 'SEOUL'
WHERE
    deptno = 40;


<<<<<<< HEAD
-- dept_temp �μ���ȣ�� 80���� dname �� SALES, LOC ��  CHICAGO
=======
-- dept_temp 부서번호가 80번인 dname 은 SALES, LOC 는  CHICAGO
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
-- emp_temp ����� �߿��� �޿��� 2500������ ����� �߰������� 50���� ����

UPDATE emp_temp
SET
    comm = 50
WHERE
    sal <= 2500;

-- ���������� ����Ͽ� ������ ����
-- dept ���̺��� 40�� �μ��� dname, loc�� dept_temp 40�� �μ��� dname,loc�� ������Ʈ

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

-- DELETE : ���̺� �ִ� ������ ����
--DELETE ���̺��
--FROM (����)
--WHERE ���� �����͸� �����ϱ� ���� ���ǽ�


CREATE TABLE emp_temp2
    AS
        SELECT
            *
        FROM
            emp;

-- job�� MANAGER �� ��� ����

DELETE FROM emp_temp2
WHERE
    job = 'MANAGER';

-- job�� SALESMAN �� ��� ����
DELETE emp_temp2
WHERE
    job = 'SALESMAN';

-- ��ü ������ ����
=======
-- emp_temp 사원들 중에서 급여가 2500이하인 사원만 추가수당을 50으로 수정

UPDATE emp_temp
SET comm = 50
WHERE sal <= 2500;

-- 서브쿼리를 사용하여 데이터 수정
-- dept 테이블의 40번 부서의 dname, loc를 dept_temp 40번 부서의 dname,loc로 업데이트

UPDATE dept_temp
SET (dname,loc) = (SELECT dname, loc
                   FROM dept
                   WHERE deptno = 40)
WHERE deptno = 40;


COMMIT;

-- DELETE : 테이블에 있는 데이터 삭제
--DELETE 테이블명
--FROM (선택)
--WHERE 삭제 데이터를 선별하기 위한 조건식


CREATE TABLE emp_temp2 AS SELECT * FROM emp;

-- job이 MANAGER 인 사원 삭제

DELETE FROM emp_temp2
WHERE job='MANAGER';

-- job이 SALESMAN 인 사원 삭제
DELETE emp_temp2
WHERE job='SALESMAN';

-- 전체 데이터 삭제
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
DELETE emp_temp2;

ROLLBACK;

<<<<<<< HEAD
-- ���������� ����Ͽ� ����
-- �޿� ����� 3����̰�, 30���μ��� ��� ����

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
-- 서브쿼리를 사용하여 삭제
-- 급여 등급이 3등급이고, 30번부서의 사원 삭제

DELETE FROM emp_temp2
WHERE empno IN (SELECT e.empno
                FROM emp_temp2 e, salgrade s
                WHERE e.sal BETWEEN s.losal AND s.hisal AND s.grade=3 AND e.deptno = 30);

SELECT * FROM emp_temp2;

>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

COMMIT;


/*
<<<<<<< HEAD
    �� EMP ���̺��� ������ �̿��Ͽ� EXAM_EMP ����
    �� DEPT ���̺��� ������ �̿��Ͽ� EXAM_DEPT ����
    �� SALGRADE ���̺��� ������ �̿��Ͽ� EXAM_SALGRADE ����
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

-- ���� �Է�
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

/* ��������
[�ǽ�3] EXAM_EMP�� ���� ��� �� 50�� �μ����� �ٹ��ϴ� ������� ��� �޿�����
���� �޿��� �ް� �ִ� ������� 70�� �μ��� �ű�� SQL �� �ۼ��ϱ�
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

/* ��������
[�ǽ�4] EXAM_EMP�� ���� ��� �� 60�� �μ��� ��� �߿��� �Ի����� ���� ���� �������
�ʰ� �Ի��� ����� �޿��� 10% �λ��ϰ� 80�� �μ��� �ű�� SQL �� �ۼ��ϱ�
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


--[�ǽ�5] EXAM_EMP�� ���� ��� ��, �޿� ����� 5�� ����� �����ϴ� SQL���� �ۼ��ϱ�
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


-- Ʈ�����(transaction) : �ּ� ���� ���� 
-- Ʈ����� �����ϴ� ���� TCL(Transaction Control Language) : commit, rollback

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

-- Ʈ����� ��� 
ROLLBACK;

-- Ʈ����� ���� �ݿ�
COMMIT;


-- ���� : � Ȱ���� ���� �ð��̳� �Ⱓ
-- �����ͺ��̽� ���� : �����ͺ��̽� ������ �������� �����۾� ������ �� ���� ����
-- LOCK : ���(���� ���� ������ ���� ����)
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
    
    
-- DDL : ������ ���Ǿ�(������ ���̽� ��ü ����, ����, ����)   
-- 1. ���̺� ���� 
-- CREATE TABLE ���̺��(
--    ���̸�1 �ڷ���,
--    ���̸�2 �ڷ���,
--    ���̸�3 �ڷ���,
--    ���̸�4 �ڷ���
-- );

-- ���̺� ���� / ���̸� ���� ��Ģ
-- 1) ���̺� �̸��� ���ڷ� ����
-- 2) ���̺� �̸��� 30BYTE ����
-- 3) ���� ����� ������ ���̺� �̸��� �ߺ��� �� ����
-- 4) ���̺� �� ����� �� �ִ� Ư�����ڴ� $, #, _ ����
-- 5) SQL Ű����(ex SELECT, FROM, WHERE...)�� ���̺�� ����� �� ����

-- �ڷ���

-- 1. ����
-- VARCHAR2(����) : ���� ���� ���ڿ� ������ ����(�ִ� 4000BYTE)
-- CHAR(����) : ���� ���� ���ڿ� ������ ����
-- NVARCHAR2(����) : ���� ����(unicode) ������ ����
--    name varchar2(10) : ����� 10��, �ѱ��� 3�� ���� �Է�
--    name nvarchar2(10) : ���� 10��, �ѱ� 10�� ���� �Է�
-- NCHAR(����) : ���� ����(unicode)
--    name char(10) : ����� 10��, �ѱ��� 3��, + �޸� 10byte ����
--    name nchar(10) : ����� 10��, �ѱ��� 10��, + �޸� 10byte ����

-- 2. ����
-- NUMBER(��ü�ڸ���,�Ҽ��������ڸ���)

-- 3. ��¥
-- DATE : ��¥,�ð� ����
-- TIMESTAMP

-- 4. ��Ÿ
-- BLOB : ��뷮 ���� ������ ����
-- CLOB : ��뷮 �ؽ�Ʈ ������ ����
-- JSON : JSON ������ ����

CREATE TABLE emp_ddl (
    empno    NUMBER(4),     -- ����� �� 4�ڸ� ����
    ename    VARCHAR2(10),  -- ������� �� 10byte �� ����
    job      VARCHAR2(9),     -- ���� �� 9byte ����
    mgr      NUMBER(4),       -- �Ŵ��� ��ȣ
    hiredate DATE,       -- ��¥/�ð� ����
    sal      NUMBER(7, 2),     -- �޿��� ��ü �ڸ��� 7�ڸ� ����(�Ҽ��� 2�ڸ����� ���)
    comm     NUMBER(7, 2),    -- �߰�����
    deptno   NUMBER(2)     -- �μ���ȣ
);

desc emp_ddl;


-- 2. ���̺� ���� : ALTER
-- 1) �� �߰� : ADD
ALTER TABLE emp_temp2 ADD hp VARCHAR2(20);

-- 2) �� �̸� ���� : RENAME
ALTER TABLE emp_temp2 RENAME COLUMN hp TO tel;

-- 3) �� �ڷ���(����) ���� : MODIFY
ALTER TABLE emp_temp2 MODIFY
    empno NUMBER(5);

-- 4) Ư�� ���� ���� : DROP
ALTER TABLE emp_temp2 DROP COLUMN tel;



-- 3. ���̺� ���� : DROP
DROP TABLE emp_rename;



-- ���̺� �� ����
RENAME emp_temp2 TO emp_rename;

-- ���̺� ������ ��ü ����
DELETE FROM emp_rename;

SELECT
    *
FROM
    emp_rename;

ROLLBACK;

--  rollback �ȵ� : DDL �����̱� ����
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


-- "SCOTT"."MEMBER"."NATION" ���� ���� ���� �ʹ� ŭ(����: 12, �ִ밪: 4)
INSERT INTO member VALUES (
    'hong1234',
    'ȫ�浿',
    '����� ���α� ������',
    '���ѹα�',
    'hong123@naver.com',
    25,
    NULL
);


-- ������ ���̽� ��ü
-- ���̺�, �ε���, ��, ������ ����, ������, �ó��, ���ν���, �Լ�, ��Ű��, Ʈ����
-- ���� : create, ���� : alter, ���� : drop

-- �ε��� : �� ���� �˻��� ������
-- �ε��� : ����ڰ� ���� Ư�� ���̺� ���� ���� ����
--          �⺻Ű(Ȥ�� unique key) �� �����ϸ� �ε����� ����

-- CREATE INDEX �ε����̸� ON ���̺��(�ε����� ����� ���̸�)

-- emp ���̺��� sal ���� �ε����� ����
CREATE INDEX idx_emp_sal ON
    emp (
        sal
    );

-- select : �˻����
-- FULL Scan
-- Index Scan

SELECT
    *
FROM
    emp
WHERE
    empno = 7900;


-- �ε��� ����
DROP INDEX idx_emp_sal;

-- View : ���� ���̺�
-- ���� : SELECT ���� ���⵵�� ��ȭ�ϱ� ����
-- ���ȼ� : ���̺��� Ư�� ���� �����ϰ� ���� ���� ��

-- CREATE[OR REPLACE]  [FORCE | NOFORCE] VIEW ���̸�(���̸�1,���̸�2...)
-- AS (������ SELECT ����) 
-- [WITH CHECK OPTION]
-- [WITH READ ONLY]

-- SELECT EMPNO, ENAME, JOB, DEPTNO FROM EMP WHERE DEPTNO=20 ��� ����
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


-- ���������� ���
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

-- �� ���
SELECT
    *
FROM
    vm_emp20;


-- �� ���� 
DROP VIEW vm_emp20;

-- �� ���� �� �б⸸ ����
CREATE VIEW vm_emp_read AS
    SELECT
        empno,
        ename,
        job
    FROM
        emp
WITH READ ONLY;

-- VIEW �� INSERT �۾�?
INSERT INTO vm_emp20 VALUES (
    8888,
    'KIM',
    'SALES',
    20
);
-- ���� ������ �Ͼ
SELECT
    *
FROM
    emp;

-- �б� ���� �信���� DML �۾��� ������ �� �����ϴ�.
INSERT INTO vm_emp_read VALUES (
    9999,
    'KIM',
    'SALES'
);

-- �ζ��� �� : ��ȸ������ ���� ����ϴ� ��
-- rownum : ��ȸ�� ������� �Ϸù�ȣ �ű�

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

-- �޿� ���� ���� �� ��� ��ȸ
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


-- ������ : ��Ģ�� ���� ���� ����
-- CREATE SEQUENCE �������̸�; (�������ϴ� �͵��� �� �⺻������ ����)

--CREATE SEQUENCE ��������
--[INCREMENT BY ����]  �⺻�� 1
--[START WITH ����]    �⺻�� 1
--[MAXVALUE ���� | NOMAXVALUE ]
--[MINVALUE ���� | NOMINVALUE]
--[CYCLE | NOCYCLE ]   CYCLE �� ��� MAXVALUE�� ���� �ٴٸ��� ���۰����� �ٽ� ����
--[CACHE ���� | NOCACHE ]  �������� ������ ��ȣ�� �̸� �޸𸮿� �Ҵ��� ����(�⺻ CACHE 20)

CREATE TABLE dept_sequence
    AS
        SELECT
            *
        FROM
            dept
        WHERE
            1 <> 1;

CREATE SEQUENCE seq_dept_sequence INCREMENT BY 10 START WITH 10 MAXVALUE 90 MINVALUE 0 NOCYCLE CACHE 2;

-- ������ ��� : �������̸�.CURRVAL(���������� ������ ������ ��ȸ), �������̸�.NEXTVAL(������ ����)

-- �μ���ȣ �Է½� ������ ���
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

-- �ִ밪 90 ���� ����
-- ������ SEQ_DEPT_SEQUENCE.NEXTVAL exceeds MAXVALUE : NOCYCLE �ɼ����� �����߱� ������ ��ȣ�� ��ȯ���� ����

-- ������ ����
DROP SEQUENCE seq_dept_sequence;

CREATE SEQUENCE seq_dept_sequence INCREMENT BY 3 START WITH 10 MAXVALUE 99 MINVALUE 0 CYCLE CACHE 2;

SELECT
    seq_dept_sequence.CURRVAL
FROM
    dual;
    
-- synonym(���Ǿ�) : ���̺�, ��, ������ �� ��ü �̸� ��� ����� �� �ִ� �ٸ� �̸��� �ο��ϴ� ��ü  

-- EMP ���̺��� ��Ī�� E �� ����    
CREATE SYNONYM e FOR emp; 

-- PUBLIC : ���Ǿ �����ͺ��̽� �� ��� ����ڰ� ����� �� �ֵ��� ���� 
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
 
 
--[�ǽ�1] ���� SQL���� �ۼ��� ������
--�� EMP���̺�� ���� ������ �����͸� �����ϴ� EMPIDX ���̺��� �����Ͻÿ�.

CREATE TABLE empidx
    AS
        SELECT
            *
        FROM
            emp;

--�� ������ EMPIDX ���̺��� EMPNO ���� IDX_EMPIDX_EMPNO �ε����� �����Ͻÿ�.
CREATE INDEX idx_empidx_empno ON
    empidx (
        empno
    );

--������ ���� �並 ���� �ε��� Ȯ��
SELECT
    *
FROM
    user_indexes;


--[�ǽ�2] �ǽ�1���� ������ EMPIDX ���̺��� ������ �� �޿��� 1500 �ʰ��� 
--����鸸 ����ϴ� EMPIDX_OVER15K �並 �����Ͻÿ�. 
--(�����ȣ, ����̸�, ��å,�μ���ȣ,�޿�,�߰����� ���� ������ �ִ�)
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



--[�ǽ�3] ���� SQL���� �ۼ��� ������
--�� DEPT ���̺�� ���� ���� �� ������ ������ DEPTSEQ ���̺��� �ۼ��Ͻÿ�.


CREATE TABLE deptseq
    AS
        SELECT
            *
        FROM
            dept;

--�� ������ DEPTSEQ ���̺��� DEPTNO ���� ����� �������� �Ʒ��� ���õ� Ư���� ���� ������ ���ÿ�.
--�μ� ��ȣ�� ���۰� : 1
--�μ� ��ȣ�� ���� : 1
--�μ� ��ȣ�� �ִ� : 99
--�μ� ��ȣ�� �ּҰ� : 1
--�μ� ��ȣ �ִ񰪿��� ���� �ߴ�
--ĳ�� ����

CREATE SEQUENCE seq_dept START WITH 1 INCREMENT BY 1 MAXVALUE 99 MINVALUE 1 NOCYCLE NOCACHE;


--������ ���� �並 ���� ������ Ȯ��
SELECT
    *
FROM
    user_sequences;


-- �������� : ���̺��� Ư�� ���� ����
--            NULL ��� / �����, ������ ��, ���ǽ��� �����ϴ� �����͸� �Է� ����...
--            ������ ���Ἲ(������ ��Ȯ��, �ϰ��� ����) ���� ==> DML �۾� �� ���Ѿ� ��
--            ���� ���Ἲ, ��ü ���Ἲ, ���� ���Ἲ
--            ���̺� ���� �� �������� ����, OR ���� �Ŀ� ALTER �� ���� �߰�, ���� ����

-- 1) NOT NULL : �� ��� �Ұ�
-- ����ڷκ��� �Է°��� �ʼ��� �ԷµǾ�� �� ��
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

-- ORA-01400: NULL�� ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD") �ȿ� ������ �� �����ϴ�
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
    
-- ��ü �������� ��ȸ  
SELECT
    *
FROM
    user_constraints;
    
    
-- �������� + �������� �� ����    
CREATE TABLE table_notnull2 (
    login_id  VARCHAR2(20)
        CONSTRAINT tblnn2_login_nn NOT NULL,
    login_pwd VARCHAR2(20)
        CONSTRAINT tblnn2_lgpwd_nn NOT NULL,
    tel       VARCHAR2(20)
);    
 
-- ������ ���̺� �������� �߰�
-- (SCOTT.) ������� ���� �Ұ� - �� ���� �߰ߵǾ����ϴ�.
-- �̹� ���Ե� �����͵� üũ ����� �Ǳ� ��
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
    
-- �������� �� ����
ALTER TABLE table_notnull2 RENAME CONSTRAINT tblnn2_tel_nn TO tblnn3_tel_nn;
    
-- �������� �� ����    
ALTER TABLE table_notnull2 DROP CONSTRAINT tblnn3_tel_nn;
 
 
-- 2) UNIQUE : �ߺ����� �ʴ� ��(null ���� ����)
--             ���̵�, ��ȭ��ȣ

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

-- login_id �� �ߺ��� ��Ȳ�� �� : unique ����
-- ���Ἲ ���� ����(SCOTT.SYS_C008364)�� ����˴ϴ�
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

-- ���̺� ���� �������� ����, ����, ���� not null ���¿� ������


--3) PRIMARY KEY(PK) : UNIQUE + NOT NULL
CREATE TABLE table_primary (
    login_id  VARCHAR2(20) PRIMARY KEY,
    login_pwd VARCHAR2(20) NOT NULL,
    tel       VARCHAR2(20)
);

-- PRIMARY KEY ==> INDEX �ڵ� ���� ��

-- NULL�� ("SCOTT"."TABLE_PRIMARY"."LOGIN_ID") �ȿ� ������ �� �����ϴ�
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

-- 4) �ܷ�Ű : Foreign key(FK) : �ٸ� ���̺� �� ���踦 �����ϴµ� ���
--             Ư�� ���̺��� primary key ���������� ������ ���� �ٸ� ���̺��� Ư�� ������ ����

-- ��� �߰� �� �μ� ��ȣ �Է��� �ؾ� �� => dept ���̺��� deptno �� ����

-- �θ� ���̺�
CREATE TABLE DEPT_FK(
    DEPTNO NUMBER(2) CONSTRAINT DEPTFK_DEPTNO_PK PRIMARY KEY,
    DNAME VARCHAR2(14),
    LOC VARCHAR2(13)
);

-- �ڽ� ���̺�
-- REFERENCES ���������̺��(������ ��) : �ܷ�Ű ����
CREATE TABLE EMP_FK(
    EMPNO NUMBER(4) CONSTRAINT EMPFK_EMPNO_PK PRIMARY KEY,
    ENAME VARCHAR2(10),
    JOB VARCHAR2(9),
    DEPTNO NUMBER(2) CONSTRAINT EMPFK_DEPTNO_FK REFERENCES DEPT_FK(DEPTNO));
    
-- ���Ἲ ��������(SCOTT.EMPFK_DEPTNO_FK)�� ����Ǿ����ϴ�- �θ� Ű�� �����ϴ�
INSERT INTO EMP_FK VALUES(1000, 'TEST', 'SALES', 10);

-- �ܷ�Ű ���� ����
-- �θ� ���̺� �����Ͱ� ������ ���� �Է�

INSERT INTO DEPT_FK VALUES(10, 'DATABASE', 'SEOUL');

-- ���� �� 
-- �ڽ� ���̺� ������ ���� ����
-- �θ� ���̺� ������ ����

-- ���Ἲ ��������(SCOTT.EMPFK_DEPTNO_FK)�� ����Ǿ����ϴ�- �ڽ� ���ڵ尡 �߰ߵǾ����ϴ�
-- DELETE FROM DEPT_FK WHERE DEPTNO=10;


-- �ܷ� Ű �������� �ɼ�
-- ON DELETE CASCADE : �θ� �����Ǹ� �θ� �����ϴ� �ڽ� ���ڵ嵵 ���� ����
-- ON DELETE SET NULL : �θ� �����Ǹ� �θ� �����ϴ� �ڽ� ���ڵ��� ���� NULL ����

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

-- 5) CHECK : ���� ������ �� �ִ� ���� ���� �Ǵ� ���� ����
-- ��й�ȣ�� 3 �ڸ����� Ŀ�� �Ѵ�

CREATE TABLE table_CHECK (
    login_id  VARCHAR2(20) PRIMARY KEY,
    login_pwd VARCHAR2(20) CHECK (LENGTH(LOGIN_PWD) > 3),
    tel       VARCHAR2(20)
);
-- üũ ��������(SCOTT.SYS_C008373)�� ����
INSERT INTO TABLE_CHECK VALUES('TEST','123','010-1234-5678');

INSERT INTO TABLE_CHECK VALUES('TEST','1234','010-1234-5678');


-- 6) DEFAULT : �⺻�� ����
CREATE TABLE table_default (
    login_id  VARCHAR2(20) PRIMARY KEY,
    login_pwd VARCHAR2(20) DEFAULT '1234',
    tel       VARCHAR2(20)
);

INSERT INTO TABLE_DEFAULT VALUES('TEST',NULL,'010-1234-5678');
INSERT INTO TABLE_DEFAULT(login_id, tel) VALUES('TEST1','010-1234-5678');

SELECT * FROM TABLE_DEFAULT;






=======
    ① EMP 테이블의 내용을 이용하여 EXAM_EMP 생성
    ② DEPT 테이블의 내용을 이용하여 EXAM_DEPT 생성
    ③ SALGRADE 테이블의 내용을 이용하여 EXAM_SALGRADE 생성
*/
CREATE TABLE EXAM_EMP AS SELECT * FROM EMP;
CREATE TABLE EXAM_DEPT AS SELECT * FROM DEPT;
CREATE TABLE EXAM_SALGRADE AS SELECT * FROM SALGRADE;

SELECT * FROM EXAM_EMP;
SELECT * FROM EXAM_DEPT;
SELECT * FROM EXAM_SALGRADE;

-- 정보 입력
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

/* 서브쿼리
[실습3] EXAM_EMP에 속한 사원 중 50번 부서에서 근무하는 사원들의 평균 급여보다
많은 급여를 받고 있는 사원들을 70번 부서로 옮기는 SQL 문 작성하기-서브쿼리 한 후
*/

UPDATE EXAM_EMP
SET DEPTNO=70
WHERE SAL > (SELECT AVG(SAL) FROM EXAM_EMP WHERE DEPTNO=50);

/* 서브쿼리
[실습4] EXAM_EMP에 속한 사원 중 60번 부서의 사원 중에서 입사일이 가장 빠른 사원보다
늦게 입사한 사원의 급여를 10% 인상하고 80번 부서로 옮기는 SQL 문 작성하기
*/
UPDATE EXAM_EMP SET SAL=SAL*1.1, DEPTNO=80 WHERE
HIREDATE>(SELECT MIN(HIREDATE) FROM EXAM_EMP WHERE DEPTNO=60);


--[실습5] EXAM_EMP에 속한 사원 중, 급여 등급이 5인 사원을 삭제하는 SQL문을 작성하기
DELETE FROM EXAM_EMP WHERE EMPNO IN (SELECT EMPNO FROM EXAM_EMP,SALGRADE
WHERE SAL BETWEEN LOSAL AND HISAL AND GRADE=5);
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b




