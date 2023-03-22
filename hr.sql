-- employee 테이블 전체 내용 조회

-- employee 테이블 first_name,  last_name, job_id 조회

SELECT
    *
FROM
    employees;

SELECT
    first_name,
    last_name,
    job_id
FROM
    employees;
    
-- 사원번호가 176인 사람의 last_name 조회
SELECT
    last_name
FROM
    employees
WHERE
    employee_id = 176;

-- 연봉이 12000 이상 되는 직원들의 last_name, salary 조회
SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary >= 12000;

-- 연봉이 5000 에서 12000 범위가 아닌 사람들의 last_name, salary 조회
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
    

-- 20, 50번 부서에서 근무하는 모든 사원들의 last_name, 부서번호를 오름차순으로 출력
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
    
-- 커미션을 받는 모든 사원들의 last_name, 연봉, 커미션 조회(연봉의 내림차순, 커미션 내림차순)
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
    
-- 연봉이 2500,3500,7000이 아니며 직업이 SA_REP나 ST_CLECK인 사원 조회
SELECT
    *
FROM
    employees
WHERE
    salary NOT IN ( 2500, 3500, 7000 )
    AND job_id IN ( 'SA_REP', 'ST_CLECK' );
    
    
-- 2008/02/20 ~ 2008/05/01 사이에 고용된 사원들의 last_name, 사번, 고용일자 조회
-- 고용일자 내림차순 정렬
SELECT
    last_name,
    employee_id,
    hire_date
FROM
    employees
WHERE
        hire_date >= '2008-02-20'
    AND hire_date <= '2008/05/01'
ORDER BY
    hire_date DESC;
    
 -- 2004년도에 고용된 사원들의 last_name, hire_date 조회
 -- 고용일자 오름차순 정렬
SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '2004-01-01' AND '2004-12-31'
ORDER BY
    hire_date DESC;
    
-- 부서가 20,50이고 연봉이 5000에서 12000범위인 사람들의 last_name, salary 조회
-- 연봉 오름차순 정렬
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
    
-- 2004년도에 고용된 사원들의 last_name, hire_date 조회
SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date LIKE '04%';

-- last_name에 u가 포함된 사원들의 사번, last_name 조회
SELECT
    last_name,
    employee_id
FROM
    employees
WHERE
    last_name LIKE '%u%';

-- last_name에 네번째 글자가 a인 사원들의 last_name 조회
SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE ( '___a%' );

-- last_name에 a혹은 e가 포함된 사원들의 사번, last_name 조회
-- last_name 오름차순 정렬
SELECT
    last_name,
    employee_id
FROM
    employees
WHERE
    last_name LIKE '%a%'
    OR last_name LIKE '%e%'
ORDER BY
    last_name;

-- last_name에 a와 e가 포함된 사원들의 last_name 조회
-- last_name 오름차순 정렬
SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE ( '%a%%e%' )
ORDER BY
    last_name;
    
-- 매니저(manager_id)가 없는 사람들의 last_name, job_id 조회
SELECT
    last_name,
    job_id
FROM
    employees
WHERE
    manager_id IS NULL;

-- job_id가 ST_CLERK 인 사원 조회 (단, 부서번호가 NULL인 사원은 제외)
-- 중복을 제거한 후 부서번호만 조회
SELECT DISTINCT
    department_id
FROM
    employees
WHERE
        job_id = 'ST_CLERK'
    AND department_id IS NOT NULL;

-- commission_pct가 null이 아닌 사원들 중에서 
-- commission = salary * commission_pct를
-- 구하여 employee_id, first_name, job_id 출력
SELECT
    employee_id,
    first_name,
    job_id,
    salary * commission_pct AS commission
FROM
    employees
WHERE
    commission_pct IS NOT NULL;
    
    
-- join
-- 자신의 담당 매니저의 고용일보다 빠른 입사자 찾기 (self join - employees)
-- hire_date, last_name, manager_id 조회
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

SELECT
    e1.hire_date,
    e1.last_name,
    e1.manager_id
FROM
         employees e1
    JOIN employees e2 ON e1.manager_id = e2.employee_id
                         AND e1.hire_date < e2.hire_date;


-- 도시 이름이 T로 시작하는 지역에 사는 사원들의 사번, last_name, 부서번호, 도시 조회
-- employees, departments, locations inner join
SELECT
    e.employee_id,
    e.last_name,
    e.department_id,
    l.city
FROM
    employees   e,
    departments d,
    locations   l
WHERE
        e.department_id = d.department_id
    AND d.location_id = l.location_id
    AND city LIKE 'T%';


-- 위치 id가 1700인 사원들의 사번, last_name, 부서번호, 급여조회
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

-- 부서명, 위치id, 각 부서별 사원 총 수, 각 부서별 평균 연봉 조회
-- 평균 연봉은 소수점 2자리까지만
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




-- Excutive 부서에 근무하는 사원들의 부서번호, last_name, job_id 조회
-- employees, departments inner join
SELECT
    e.last_name,
    d.department_id,
    e.job_id
FROM
    employees   e,
    departments d
WHERE
        e.department_id = d.department_id
    AND d.department_name = 'Executive';

-- 각 사원별 소속 부서에서 자신보다 늦게 고용되었으나 보다 많은 연봉을 받는 사원이 존재하는 모든 사원들의
-- 부서번호, 이름(first_name과 last_name 연결하기), salary, hire_date 조회
-- employees self join
SELECT
    e1.department_id,
    e1.first_name || ' ' || e1.last_name,
    e2.salary,
    e2.hire_date
FROM
    employees e1,
    employees e2
WHERE
        e1.department_id = e2.department_id
    AND e1.hire_date < e2.hire_date
    AND e1.salary < e2.salary;
    
    
    
    
    -- 서브쿼리 
-- last_name에 u가 포함된 사원들과 동일 부서에 근무하는 사원들의 사번, last_name 조회
select e.employee_id, e.last_name
from employees e, departments d
where e.department_id = (select distinct d.department_id from employees where last_name like '%u%');

-- job_id가 SA_MAN인 사원들의 최대 연봉보다 높게 받는 사원들의 last_name, job_id, salary 조회
SELECT
    last_name, job_id, salary
FROM
    employees
WHERE
    salary > (select max(salary) from employees where job_id = 'SA_MAN');

-- 커미션을 버는 사원들의 부서와 연봉이 동일한 사원들의 last_name,department_id, salary 조회



-- 회사 전체 평균 연봉보다 더 받는 사원들 중 last_name에 u가 있는 사원들의 근무하는 부서에서 
-- 근무하는 사원들의 employee_id, last_name, salary 조회

-- last_name이 Daives인 사람보다 나중에 고용된 사원들의 last_name, hire_date 조회
select last_name, hire_date
from employees
where hire_date > (select hire_date from employees where last_name = 'Daives');

-- last_name이 King인 사원을 매니저로 두고 있는 모든 사원들의 last_name, salary 조회
select last_name, hire_date
from employees
where  manager_id = (select manager_id from employees where last_name = 'King');





