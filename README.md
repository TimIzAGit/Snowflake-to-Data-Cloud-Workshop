# Data Cloud - Snowflake - Hands-On Workshop

Welcome to the repository for the **Data Cloud & Snowflake Hands-On Workshop**. This repository contains all the necessary SQL scripts and sample data files required to configure a Snowflake environment for a secure connection to Salesforce Data Cloud (formerly Data360). 

## 📁 Repository Contents

This repository is broken down into modular SQL scripts for educational purposes, a consolidated script for quick setup, and sample datasets to populate your environment.

### SQL Scripts
* **`Create Roles.sql`**: Sets up the specific Snowflake roles required for the integration, ensuring the principle of least privilege.
* **`Create User.sql`**: Provisions the dedicated Snowflake service user account that Data Cloud will use to connect.
* **`Assign Public Key.sql`**: Contains the command to assign your generated RSA public key to the Snowflake user, enabling secure, key-pair authentication.
* **`Create Warehouse.sql`**: Provisions the compute warehouse that will power the queries coming from Data Cloud.
* **`Full Script.sql`**: A consolidated file containing all the commands from the individual SQL scripts above. Use this if you want to run the entire setup at once.

### Sample Data
* **`Drivers.csv`**: Sample dataset containing driver profile information.
* **`Driver Telemetry.csv`**: Sample dataset containing telemetry and behavioral data associated with the drivers.

---

## 📋 Prerequisites

Before running these scripts in the workshop, ensure you have the following:

1. **Snowflake Access:** Access to a Snowflake account with sufficient privileges (typically `ACCOUNTADMIN` or `SECURITYADMIN` + `SYSADMIN`) to create roles, users, and warehouses.
2. **Salesforce Data Cloud Access:** An active Salesforce Data Cloud instance.
3. **Key Pair:** An RSA private/public key pair generated on your local machine. You will need the public key for the `Assign Public Key.sql` step.

---

## 🚀 Getting Started

### 1. Execute Setup Scripts
Log in to your Snowflake console (Snowsight) and open a new SQL Worksheet. You can choose one of two paths:
* **Step-by-step:** Run the individual scripts in order (`Create Roles`, `Create User`, `Create Warehouse`, then `Assign Public Key`).
* **All-at-once:** Copy the contents of `Full Script.sql` into your worksheet. **Note:** Make sure to replace the placeholder public key string in the script with your actual generated public key before executing.

### 2. Load Sample Data
Once your warehouse and schemas are established, utilize the Snowflake UI or SnowSQL to upload `Drivers.csv` and `Driver Telemetry.csv` into their respective tables for the hands-on data modeling portion of the workshop.

### 3. Connect Data Cloud
Move over to Salesforce Data Cloud and use the newly created Snowflake user credentials to establish the connection.
