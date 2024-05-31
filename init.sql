CREATE SEQUENCE employees_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE Employees (
    key BIGINT DEFAULT nextval('employees_key_seq') PRIMARY KEY,
    name VARCHAR(255),
    lastname VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(20)
);

CREATE SEQUENCE users_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE users
(
    key BIGINT DEFAULT nextval('users_key_seq') PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    roles VARCHAR(255)
);

INSERT INTO users (username, password, roles) VALUES ('admin', 'admin_password', 'admin');
