
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_type CHAR(1) -- 'S' = Staff, 'P' = Professor, 'A' = Administrator
);

CREATE TABLE Staff (
    emp_id INT PRIMARY KEY,
    wk_level VARCHAR(10),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

CREATE TABLE Professor (
    prof_id INT PRIMARY KEY,
    emp_id INT,
    is_admin BOOLEAN,
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

CREATE TABLE Administrator (
    emp_id INT PRIMARY KEY,
    position_title VARCHAR(255),
    prof_id INT,
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id),
    FOREIGN KEY (prof_id) REFERENCES Professor(prof_id)
);

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    is_chair BOOLEAN,
    is_dean BOOLEAN,
    prof_id INT,
    col_id INT,
    FOREIGN KEY (prof_id) REFERENCES Professor(prof_id)
);

CREATE TABLE College (
    col_id INT PRIMARY KEY,
    prof_id INT,
    FOREIGN KEY (prof_id) REFERENCES Professor(prof_id)
);

CREATE TABLE University (
    univ_id INT PRIMARY KEY,
    col_id INT,
    FOREIGN KEY (col_id) REFERENCES College(col_id)
);

CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    prof_id INT,
    FOREIGN KEY (prof_id) REFERENCES Professor(prof_id)
);
