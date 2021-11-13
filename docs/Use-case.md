
![Awesome Title](noun_turbo_748695_small.png)
# Use Case: Turbodata
define purpose of current solution

**High-level**: Data has to be migrated from Data Lake (Azure) to MS SQL. 


- [Use Case: Turbodata](#use-case-turbodata)
  - [As-Is](#as-is)
  - [To-Be](#to-be)
  - [Development of To-Be](#development-of-to-be)
  - [PoC](#poc)
  - [MVP](#mvp)
  - [Implementation](#implementation)


## As-Is
Define the technical state of the current solution. 
* Functionalities
* Features
* Issues

**High-level**: 
* Functional: Data is migrated through CSV files and SQL scripts from Azure Data Lake to MS SQL. Every table is templated individually
* Features: Polybase (parquet files), Synapse, Data Factory, PowerShell and alot of SQL scripts/procedures
* Issues: Expensive technologies, Insecure (no security concept) with tokens hardcoded in scripts, not scalable/maintainable due to boilerplate code, no version control 

## To-Be
Define what an ideal solution would look like.
* Identical functionalities or more?
* Identical features or more?
* Expectations in terms of maintenance, usage and transferability (to other colleagues, life-cycle-management etc.)

**High-level**
* Identical
* Features should be somewhat identical, if not adhering to DevOps standards
* Easy to use, should be adaptive to different implementations of Dynamics, secure, cheap to host/do; ideally does not contain any boilerplate code.

## Development of To-Be
What stack, what technologies, what context is the solution going to be made in, and why?
* Azure functions (cheap), Python (simple code stack, easy to maintain), DataFactory for orchestration, security through Azure Key-vault.

## PoC
A script that can migrate data from Azure Data Lake to MS SQL that is not dependent on boilerplate code. Implement whilst using versioning (Git)

Features:
* Query and read Azure Data Lake `*.csv` files [x]
* For-loop that reads the csv files in the desired filesystem and combines them with the .json metadatafiles to include column names.
* Downcast to get minimal data types (deal with timestamps)
* Automatic schema creation in database with sql alchemy: accomodate schema drift.
* Upload data to database

## MVP
Implementation in DataFactory with token mangement in Azure Key-vault

## Implementation
Adequate logging and monitoring of code. CI/CD? Release management? 


