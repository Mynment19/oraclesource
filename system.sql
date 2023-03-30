-- ����� : scott, hr => �����ͺ��̽� �����Ͽ� �����͸� �����ϴ� ����
--          ���̺�, �ε���, �� �� ���� ��ü�� ����ں��� ������
--          ������ ���� ����ڵ��� ������ ����


-- ��Ű�� : �����Ͱ� ����, ������ ����, �������� �� �����͸� ���� �����ϱ� ���� ������ �����ͺ��̽� ������ ����
-- ��Ű�� == �����(����Ŭ �����ͺ��̽� ���)

-- ����� ���� : ����� ���� ������ �ʿ��� ==> sys, system

-- ����Ŭ ���� �ö󰡸鼭 ����� ������ �䱸�ϴ� ���λ� ������ ����
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- ����� ����
-- ��й�ȣ�� ��ҹ��� ������
CREATE USER JAVADB IDENTIFIED BY 12345
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

ALTER USER javadb QUOTA 2M ON USERS;

-- ����� ���� �ο�
GRANT CONNECT, RESOURCE TO JAVADB;


CREATE USER SCOTT IDENTIFIED BY TIGER
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

-- SCOTT ���� �ο��� ����
GRANT CONNECT, RESOURCE TO SCOTT;
-- �� ���� ���� �ο�
GRANT CREATE VIEW TO SCOTT;
-- SYNONYM ���� ���� �ο�
GRANT CREATE SYNONYM TO SCOTT;
GRANT CREATE PUBLIC SYNONYM TO SCOTT;



select * from all_users;

GRANT UNLIMITED TABLESPACE TO SCOTT;



GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO SCOTT IDENTIFIED BY TIGER;
ALTER USER SCOTT DEFAULT TABLESPACE USERS;
ALTER USER SCOTT TEMPORARY TABLESPACE TEMP;

-- test ����� ���� / ��� 12345
CREATE USER test IDENTIFIED BY 12345;

-- ���ӱ��� �ο����� ������ �ȵ�

-- ���� �Ǹ�
-- 1) �ý��� ����
--    ����� ����(CREATE USER) / ����(ALTER USER) / ����(DROP USER)
--    �����ͺ��̽� ���� (CREATE SESSION) / ���� (ALTER SESSION)
--    ���� ��ü ����(view, synonym) �� ���� ����


-- 2) ��ü ����
--    ���̺� ����, ����, �ε��� ����, ����, ����, ��ȸ, ����
--    �� ����, ����, ����, ��ȸ, ����
--    ������ ����, ��ȸ
--    ���ν���, �Լ�, ��Ű�� ����



-- ���� �ο�

-- CREATE SESSION �� test ���� �ο�
GRANT CREATE SESSION TO test;

GRANT RESOURCE, CREATE TABLE TO test;

-- ���̺� �����̽� USERS�� ������ �����ϴ�.
ALTER USER test DEFAULT TABLESPACE USERS;
ALTER USER test TEMPORARY TABLESPACE TEMP;
ALTER USER test QUOTA 2M ON USERS;  -- USERS �� ���� ����

-- scott ���� test�� ������ member ���̺� ��ȸ ���� �ο�
-- GRANT SELECT ON member TO scott;

-- ���� ���
-- REVOKE SELECT, INSERT ON member FROM scott;

-- �� : ���� ���ѵ��� ����
-- CONNECT �� : CREATE SESSION
-- RESOURCE �� : CREATE TRIGGER, CREATE SEQUENCE, CREATE PROCEDURE, CREATE TABLE...



-- ����� ����
DROP USER test;
DROP USER test CASCADE; -- test�� ���õ� ��� ��ü ���� ����








-- ����� ���� + ���̺� �����̽� ���� �ο�
CREATE USER test2 IDENTIFIED BY 12345
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

-- ���Ѻο�
GRANT CONNECT, RESOURCE TO test2;















