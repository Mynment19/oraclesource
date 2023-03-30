-- employees ���̺� ��ü ���� ��ȸ

SELECT
    *
FROM
    employees;

-- employee ���̺� first_name, last_name, job_id �� ��ȸ

SELECT
    first_name,
    last_name,
    job_id
FROM
    employees;
    
-- �����ȣ�� 176�� ����� LAST_NAME ��ȸ
SELECT
    last_name
FROM
    employees
WHERE
    employee_id = 176;

-- ������ 12000 �̻� �Ǵ� �������� LAST_NAME, SALARY ��ȸ

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary >= 12000;
    
    
-- ������ 5000 ���� 12000 ������ �ƴ� ������� LAST_NAME, SALARY ��ȸ

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
    
    
-- 20, 50 �� �μ����� �ٹ��ϴ� ��� ������� LAST_NAME, �μ���ȣ�� ������������ ��ȸ
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

-- Ŀ�̼��� �޴� ��� ������� LAST_NAME, ����, Ŀ�̼� ��ȸ(������ ��������, Ŀ�̼� ��������)

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


-- ������ 2500,3500,7000�� �ƴϸ� ������ SA_REP �� ST_CLERK �� ��� ��ȸ

SELECT
    *
FROM
    employees
WHERE
    salary NOT IN ( 2500, 3500, 7000 )
    AND job_id IN ( 'SA_REP', 'ST_CLERK' );


-- 2008/02/20 ~ 2008/05/01 ���̿� ���� ������� last_name,���,������� ��ȸ
-- ������� �������� ����
-- ��¥ ǥ���� Ȭ����ǥ �ȿ� ǥ�� - OR / ��� ����

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


-- 2004�⵵�� ���� ������� last_name, hire_date ��ȸ
-- ������� �������� ����

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

-- �μ��� 20,50�̰� ������ 5000 ���� 12000 ������ ������� LAST_NAME, SALARY ��ȸ
-- ���� �������� ����

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
-- 2004�⵵�� ���� ������� last_name, hire_date ��ȸ
-- ������� �������� ����    

SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date LIKE '04%'
ORDER BY
    hire_date;    
    
-- LAST_NAME �� u�� ���Ե� ������� ���, last_name ��ȸ

SELECT
    employee_id,
    last_name
FROM
    employees
WHERE
    last_name LIKE '%u%';
    
-- LAST_NAME �� �׹�° ���ڰ� a�� ������� last_name ��ȸ    

SELECT
    employee_id,
    last_name
FROM
    employees
WHERE
    last_name LIKE '___a%';    
    
-- LAST_NAME �� a Ȥ�� e ���ڰ� ���Ե� ������� last_name ��ȸ  
-- last_name �������� ����

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

-- LAST_NAME �� a �� e ���ڰ� ���Ե� ������� last_name ��ȸ  
-- last_name �������� ����    

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
    
-- �Ŵ���(manager_id)�� ���� ������� last_name, job_id ��ȸ

SELECT
    last_name,
    job_id
FROM
    employees
WHERE
    manager_id IS NULL
    OR manager_id = '';

-- job_id�� ST_CLERK �� ����� �μ���ȣ ��ȸ(�� �μ���ȣ�� NULL �� ����� �����Ѵ�.)
-- �ߺ��� ������ �� �μ���ȣ�� ��ȸ

SELECT DISTINCT
    department_id
FROM
    employees
WHERE
        job_id = 'ST_CLERK'
    AND department_id IS NOT NULL;

-- commission_pct �� null�� �ƴ� ����� �߿��� commission = salary * commission_pct �� ���Ͽ�
-- employee_id, first_name, job_id ���

SELECT
    employee_id,
    first_name,
    job_id,
    salary * commission_pct AS commission
FROM
    employees
WHERE
    commission_pct IS NOT NULL;
    
-- first_name �� Curtis �� ����� first_name, last_name, email, phone_number, job_id�� ��ȸ�Ѵ�.
-- ��, job_id �� ����� �ҹ��ڷ� ��µǵ��� �Ѵ�.

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


-- �μ���ȣ�� 60,70,80,90�� ������� employee_id, first_name, hire_date, job_id ��ȸ
-- ��, job_id�� IT_PROG �� ����� ��� ���α׷��ӷ� ������ �� ���


SELECT
    employee_id,
    first_name,
    hire_date,
    replace(job_id, 'IT_PROG', '���α׷���')
FROM
    employees
WHERE
    department_id IN ( 60, 70, 80, 90 );


-- JOB_ID�� AD_PRES, PU_CLERK �� ������� employee_id, first_name,last_name,department_id,job_id�� ��ȸ�Ѵ�.
-- �� ������� first_name�� last_name�� �����Ͽ� ����Ͻÿ�

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


-- �μ� 80�� �� ����� ���� ���� ������ ������ ǥ���Ͻÿ�.

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
    
-- ȸ�� ���� �ִ� ���� �� �ּ� ������ ���̸� ���
SELECT
    MAX(salary) - MIN(salary) AS sal_gap
FROM
    employees;

-- �Ŵ����� �ٹ��ϴ� ������� �� ���� ���(�Ŵ��� �ߺ� ����)

SELECT
    COUNT(DISTINCT manager_id)
FROM
    employees;


-- join
-- �ڽ��� ��� �Ŵ����� ����Ϻ��� ���� �Ի��� ã��(self join - employees)
-- hire_date, last_name, manager_id ��ȸ

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

-- ���� �̸��� T�� �����ϴ� ������ ��� ������� ���, last_name, �μ���ȣ, ���� ��ȸ
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



-- ��ġ id�� 1700�� ������� ���, last_name, �μ���ȣ, �޿� ��ȸ
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

-- �μ���, ��ġid, �� �μ��� ��� �� ��, �� �μ��� ��� ���� ��ȸ
-- ��� ������ �Ҽ��� 2�ڸ�������
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


-- Executive �μ��� �ٹ��ϴ� ������� �μ���ȣ,last_name,job_id ��ȸ
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

-- �� ����� �ҼӺμ����� �ڽź��� �ʰ� ���Ǿ����� ���� ���� ������ �޴� ����� �����ϴ� ��� �������
-- �μ���ȣ, �̸�(first_name�� last_name �����ϱ�), salary, hire_date ��ȸ
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

-- ��������
-- LAST_NAME �� u�� ���Ե� ������ ���� �μ��� �ٹ��ϴ� ������� ���, last_name ��ȸ

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

-- job_id �� SA_MAN �� ������� �ִ� �������� ���� �޴� ������� last_name, job_id, salary ��ȸ

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

-- Ŀ�̼��� ���� ������� �μ��� ������ ������ ������� last_name, department_id, salary ��ȸ

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

-- ȸ�� ��ü ��� �������� �� �޴� ����� �� last_name�� u�� �ִ� ������� �ٹ��ϴ� �μ�����
-- �ٹ��ϴ� ������� employee_id, last_name, salary ��ȸ
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

-- last_name �� Davies �� ������� ���߿� ���� ������� last_name, hire_date ��ȸ

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

-- last_name�� King �� ����� �Ŵ����� �ΰ� �ִ� ��� ������� last_name, salary ��ȸ

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