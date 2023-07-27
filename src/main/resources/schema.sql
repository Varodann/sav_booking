CREATE TABLE Pracownicy (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    pesel VARCHAR(11),
    email VARCHAR(100),
    telephone VARCHAR(15),
    position VARCHAR(100)
);

CREATE TABLE Projekty (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    cost DOUBLE PRECISION,
    revenue DOUBLE PRECISION,
    project_status VARCHAR(100),
    supervisor_id INT,
    FOREIGN KEY (supervisor_id) REFERENCES Pracownicy(employee_id)
);

CREATE TABLE Pracownicy_Projekty (
    project_id INT,
    employee_id INT,
    FOREIGN KEY (project_id) REFERENCES Projekty(project_id),
    FOREIGN KEY (employee_id) REFERENCES Pracownicy(employee_id),
    PRIMARY KEY (project_id, employee_id)
);

CREATE TABLE Firma (
    company_id SERIAL PRIMARY KEY,
    company_name VARCHAR(100),
    NIP VARCHAR(10),
    owner VARCHAR(100)
);

CREATE TABLE Samochody (
    car_id SERIAL PRIMARY KEY,
    model VARCHAR(100),
    registration_number VARCHAR(15),
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES Pracownicy(employee_id)
);

INSERT Pracownicy