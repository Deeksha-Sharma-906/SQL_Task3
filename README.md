# SQL_Task3
DATABASE MIGRATION - MIGRATE DATA BETWEEN TWO DATABASES (E.G., FROM MYSQL TO POSTGRESQL) AND ENSURE DATA INTEGRITY

<H2>STEP 1: EXPORT DATA FROM SQL SERVER AS CSV</H2>
<OL><H3>Using SSMS GUI</H3>
<LI>Open SSMS and connect to your SQL Server.</LI>
<LI>Right-click the database → Tasks → Export Data.</LI>
<LI>This launches the SQL Server Import and Export Wizard.</LI>
</OL>
In the wizard:
<UL>
<LI>Data Source: SQL Server Native Client ➜ Select your DB</LI>
<LI>Destination: Choose Flat File Destination</LI>
<UL>
  <LI>File name: C:\YourFolder\table_name.csv</LI>
  <LI>Format: CSV (Delimited)</LI>
</UL>
<LI>Click Next</LI>
<LI>Choose the table or query to export (e.g., SELECT * FROM Customers)</LI>
<LI>Click Next → Finish</LI>
</UL>
<BR>✅ This exports your SQL Server table as a .csv file.</BR>

<H2>STEP 2: CREATE A TABLE IN POSTGRESQL USING PGADMIN</H2>
<OL>
  <LI>Open pgAdmin 4 and connect to your PostgreSQL database.</LI>
  <LI>Right-click on Tables → Create → Table</LI>
  <LI>Give the table a name (e.g., customers)</LI>
  <LI>Under Columns, manually add columns matching the original SQL Server table (same names and compatible data types).</LI>
  <UL>
    <LI>int → INTEGER</LI>
    <LI>nvarchar/varchar → TEXT or VARCHAR</LI>
    <LI>datetime → TIMESTAMP</LI>
    <LI>etc.</LI>
  </UL>
</OL>
<BR>✅ This ensures your table structure is ready to receive the data.
<H2>STEP 3: IMPORT CSV INTO POSTGRESQL (PGADMIN)</H2>
<OL>
  <LI>In pgAdmin, right-click your newly created table → Import/Export</LI>
  <LI>In the Import tab:</LI>
  <UL>
    <LI>Filename: <B>Select your exported CSV file</B></LI>
    <LI>Format: <B>CSV</B></LI>
    <LI>Encoding: <B>UTF-8 </B>(usually fine)</LI>
  </UL>
  <LI>Under Delimiters:</LI>
  <UL>
    <LI>Delimiter: ,</LI>
    <LI>Quote: " (if your CSV uses it)</LI>
  </UL>
  <LI>Header: Check this box if your CSV has column headers</LI>
  <LI>Click OK to start the import</LI>
</OL>
<BR>✅ Data is now loaded into your PostgreSQL table.
<H2>STEP 4: VALIDATE THE MIGRATION</H2>
<H3>A. Count Rows</H3>
SQL
<br>-- In SQL Server : SELECT COUNT(*) FROM Customers;
<br>-- In PostgreSQL (pgAdmin query tool) - SELECT COUNT(*) FROM customers;
<H3>B. Spot Check a Few Rows</H3>
-- In PostgreSQL : SELECT * FROM customers LIMIT 10;
<H3>C. Check for Data Integrity</H3>
<UL>
  <LI>Verify nulls, date formats, and any special characters</LI>
  <LI>If needed, use CHECKSUM() in SQL Server and MD5() in PostgreSQL to compare hashes</LI>
</UL>
<BR><B>DELIVERABLE: MIGRATION SCRIPTS AND A SUMMARY REPORT OF THE PROCESS.</B>







