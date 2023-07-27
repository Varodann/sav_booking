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

INSERT INTO Pracownicy (first_name, last_name, pesel, email, telephone, position) VALUES
('Jan', 'Kowalski', '85010112345', 'jan.kowalski@example.com', '123456789', 'Manager'),
('Anna', 'Nowak', '89010112345', 'anna.nowak@example.com', '987654321', 'Developer'),
('Adam', 'Wiśniewski', '90010112345', 'adam.wisniewski@example.com', '112233445', 'Developer'),
('Marta', 'Zielińska', '92010112345', 'marta.zielinska@example.com', '556677889', 'Designer'),
('Tomasz', 'Wójcik', '94010112345', 'tomasz.wojcik@example.com', '998877665', 'Tester'),
('Magdalena', 'Kaczmarek', '96010112345', 'magdalena.kaczmarek@example.com', '443322110', 'Manager');

INSERT INTO Projekty (project_name, start_date, end_date, cost, revenue, project_status, supervisor_id) VALUES
('Project A', '2023-01-01', '2023-06-30', 10000.00, 15000.00, 'Completed', 1),
('Project B', '2023-07-01', '2023-12-31', 15000.00, NULL, 'Ongoing', 2),
('Project C', '2022-01-01', '2022-12-31', 20000.00, 30000.00, 'Completed', 1),
('Project D', '2023-01-01', '2023-12-31', 25000.00, NULL, 'Ongoing', 2),
('Project E', '2022-07-01', '2023-06-30', 15000.00, 20000.00, 'Completed', 3),
('Project F', '2023-07-01', '2024-06-30', 30000.00, NULL, 'Ongoing', 4);

INSERT INTO Pracownicy_Projekty (project_id, employee_id) VALUES
(1, 1), (1, 2), (1, 3),
(2, 2), (2, 4),
(3, 1), (3, 3), (3, 5),
(4, 2), (4, 4), (4, 6),
(5, 3), (5, 5),
(6, 4), (6, 6);

INSERT INTO Firma (company_name, NIP, owner) VALUES
('ABC Company', '1234567890', 'Jan Kowalski'),
('XYZ Company', '0987654321', 'Adam Wiśniewski'),
('LMN Company', '1122334455', 'Marta Zielińska');

INSERT INTO Samochody (model, registration_number, owner_id) VALUES
('Audi A4', 'WP12345', 1),
('BMW X5', 'WP67890', 2),
('VW Golf', 'KR11223', 3),
('Fiat 500', 'GD44556', 4),
('Opel Astra', 'PO78901', 5),
('Ford Focus', 'SZ34567', 6);
