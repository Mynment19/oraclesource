<<<<<<< HEAD
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
=======
-- 대소문자 구별하지 않음(단, 비밀번호는 구별함)
-- CREATE : 생성 / ALTER : 수정 / DROP : 삭제 , DELETE : 삭제

-- 오라클 버전이 변경되면서 사용자 생성 시 c## 문자를 넣어서 만들도록 변경 됨
-- JAVADB => c##JAVADB 이런 방식을 c## 사용하지 않겠음
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
 
-- user 생성은 sys, system 만 가능
-- user 생성 (공간 할당)
-- CREATE USER 사용자이름 IDENTIFIED BY 비밀번호
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
CREATE USER JAVADB IDENTIFIED BY 12345
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

<<<<<<< HEAD
ALTER USER javadb QUOTA 2M ON USERS;

-- ����� ���� �ο�
GRANT CONNECT, RESOURCE TO JAVADB;

=======
-- GRANT : 권한 부여 (사용자 생성만 해서는 아무것도 할 수 없음)
GRANT CONNECT, RESOURCE TO JAVADB;
 
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

CREATE USER SCOTT IDENTIFIED BY TIGER
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;
<<<<<<< HEAD

-- SCOTT ���� �ο��� ����
GRANT CONNECT, RESOURCE TO SCOTT;
-- �� ���� ���� �ο�
GRANT CREATE VIEW TO SCOTT;
-- SYNONYM ���� ���� �ο�
GRANT CREATE SYNONYM TO SCOTT;
GRANT CREATE PUBLIC SYNONYM TO SCOTT;


=======
  
GRANT CONNECT, RESOURCE TO SCOTT;
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b

select * from all_users;

GRANT UNLIMITED TABLESPACE TO SCOTT;

<<<<<<< HEAD


=======
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO SCOTT IDENTIFIED BY TIGER;
ALTER USER SCOTT DEFAULT TABLESPACE USERS;
ALTER USER SCOTT TEMPORARY TABLESPACE TEMP;

<<<<<<< HEAD
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











=======
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b




<<<<<<< HEAD
=======
 
>>>>>>> 039ec8fa516c9c41d3a0c0fc64ab63ec35d4003b
