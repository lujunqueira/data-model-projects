
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    deductible_value FLOAT
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY
);

CREATE TABLE Insurance_Companies (
    insurance_id INT PRIMARY KEY,
    deductible_value FLOAT,
    claim_id INT,
    FOREIGN KEY (claim_id) REFERENCES Claims(claim_id)
);

CREATE TABLE Claims (
    claim_id INT PRIMARY KEY,
    insurance_id INT,
    FOREIGN KEY (insurance_id) REFERENCES Insurance_Companies(insurance_id)
);

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    doctor_id INT,
    patient_id INT,
    visit_id INT,
    is_schedule BOOLEAN,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (visit_id) REFERENCES Visits_Records(visit_id)
);

CREATE TABLE Visits_Records (
    visit_id INT PRIMARY KEY,
    visit_notes VARCHAR(500),
    visit_date DATE
);

CREATE TABLE Bills (
    bill_id INT PRIMARY KEY,
    visit_id INT,
    doctor_id INT,
    patient_id INT,
    insurance_id INT,
    FOREIGN KEY (visit_id) REFERENCES Visits_Records(visit_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (insurance_id) REFERENCES Insurance_Companies(insurance_id)
);

CREATE TABLE Claims_Bill (
    claim_id INT,
    bill_id INT,
    PRIMARY KEY (claim_id, bill_id),
    FOREIGN KEY (claim_id) REFERENCES Claims(claim_id),
    FOREIGN KEY (bill_id) REFERENCES Bills(bill_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    installment_num INT,
    deductible_value FLOAT
);

CREATE TABLE Bill_Payments (
    payment_id INT,
    bill_id INT,
    amount_paid FLOAT,
    PRIMARY KEY (payment_id, bill_id),
    FOREIGN KEY (payment_id) REFERENCES Payments(payment_id),
    FOREIGN KEY (bill_id) REFERENCES Bills(bill_id)
);

CREATE TABLE Diagnosis (
    diagnose_id INT PRIMARY KEY,
    visit_id INT,
    FOREIGN KEY (visit_id) REFERENCES Visits_Records(visit_id)
);

CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY,
    diagnosis_id INT,
    visit_id INT,
    FOREIGN KEY (diagnosis_id) REFERENCES Diagnosis(diagnose_id),
    FOREIGN KEY (visit_id) REFERENCES Visits_Records(visit_id)
);
