
# Data Model Projects

This repository contains two relational data modeling projects designed using Crow's Foot ERD notation and implemented in SQL. Each project is based on real-world business logic and focuses on clarity, referential integrity, and normalized structure.

---

## Clinic Data Model

A relational data model for managing a healthcare clinic, including appointments, billing, payments, diagnoses, and treatments. This model is ideal for clinical and insurance systems requiring billing, coverage, and treatment tracking.

### Business Overview

- Patients can schedule appointments with doctors.
- Appointments are linked to visits, which generate bills.
- Bills are paid through installments and may be covered by insurance claims.
- Diagnoses are associated with visits and generate treatments.
- Insurance companies process claims that can cover one or more bills.

> Business Rules: [clinic_business_rules.txt](./clinic_business_rules.txt)  
> ERD Diagram: [clinic_data_model.jpeg](./clinic_data_model.jpeg)  
> SQL Schema: [clinic_data_model.sql](./clinic_data_model.sql)

---

## College Data Model

A relational model for representing employees, faculty, administration, departments, colleges, and university hierarchy. Useful in academic administration systems.

### Business Overview

- An employee can be a staff member, professor, or administrator.
- Professors can also be administrators.
- Professors may teach classes, chair departments, and serve as deans of colleges.
- Departments are linked to colleges; colleges are part of a university.
- Administrators have defined position titles.

> Business Rules: [college_business_rules.txt](./college_business_rules.txt)  
> ERD Diagram: [college_data_model.jpeg](./college_data_model.jpeg)  
> SQL Schema: [college_data_model.sql](./college_data_model.sql)

---

**Author:** Luciana Junqueira  
**Tools:** LucidSpark, SQL  
**Folder:** `data-model-projects/`
