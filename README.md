
# Clinic Data Model

This project presents a relational data model for managing a healthcare clinic, including appointments, billing, payments, diagnoses, and treatments. The model is based on real-world business rules and is intended for use in clinical or insurance system design.

### Business Overview

- Patients can schedule appointments with doctors.
- Appointments are linked to visits, which generate bills.
- Bills are paid through installments and may be covered by insurance claims.
- Diagnoses are associated with visits and generate treatments.
- Insurance companies process claims that can cover one or more bills.

> You can find the business rules here: ['clinic_business_rules'](./clinic_business_rules.txt)

### Entity-Relationship Diagram

> [View the Crow's Foot ERD](./clinic_data_model.jpeg)

### SQL Schema

The schema defines all entities and their relationships using `INT`, `FLOAT`, and other basic types. It uses foreign keys to maintain data integrity.

> You can find the full SQL script here: [`clinic_data_model.sql`](./clinic_data_model.sql)

---

**Author:** Luciana Junqueira  
**Tools:** LucidSpark, SQL

