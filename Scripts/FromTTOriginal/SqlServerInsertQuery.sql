USE [frienzff_Mixup]
GO
/****** Object:  Table [dbo].[TechnologyContents]    Script Date: 06/16/2019 18:21:54 ******/
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'52530b97-207a-4ec5-981a-02b8f89d7840', N'03.Fetch', N'FETCH returns a row from the result set', N'FETCH [NEXT|PRIOR|FIRST|LAST|ABSOLUTE n|RELATIVE n]02.
FROM [GLOBAL] cursor_name 03.
INTO @Variable_name[1,2,..n] ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'5728fea5-b71f-485b-98cc-0400b86354ad', N'WITH NOCHECK', N'Use if existing data will not change', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a0881277-f799-484c-956e-0414185a14fd', N'Contained database', NULL, N'https://www.sqlshack.com/contained-databases-in-sql-server/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'10509019-a6cc-4c44-a065-04508fdbb70d', N'Sql Server 2012 features', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'47e40968-9fee-4b0a-b0eb-07fbd5d4cdf7', N'DCL:', N'• It is the subset of SQL Commands that control a database,
including administering privileges and committing data
• It is used to create roles, permissions, and to control access to
database.
• The Commands are
– Grant
– Revoke
– [Deny]', N'<Example>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'837f3d42-4f28-437d-b366-0a1f1e2e8d8b', N'User-defined Data Types', N'If a user-defined data type is created in the model database, it exists in all new
user-defined databases. However, if the data type is created in a user-defined
database, the data type exists only in that user-defined database.', N'EXEC sp_addtype city, ''nvarchar(15)'', NULL
EXEC sp_droptype city', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2cdc8583-e8da-4eda-96fa-0a980c4c843f', N'empty', N'Basic Difference
 01.Function must return a value but in Stored Procedure it is optional( Procedure can return zero or n values).
 02.Functions can have only input parameters for it whereas Procedures can have input/output parameters .
03.Functions can be called from Procedure whereas Procedures cannot be called from Function.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f398b469-366b-4d87-8998-0cb3d4935b4e', N'XML datatype and Typed XML datatype', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7e27e50b-f47a-4603-bf75-0f4c9ea46442', N'how cluster index works internally', NULL, N'https://www.red-gate.com/simple-talk/sql/learn-sql-server/effective-clustered-indexes/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4bb7360b-3c64-45fc-bedc-0fe7ad30ba33', N'DELETE,TRUNCATE,DROP', N'DROP: drop the table data with table defination.
DELETE:can delete the data as per condition. But it does not free the space containing the table. 
Truncate: delete all the table data.free the space containing the table.
TRUNCATE TABLE is similar to the DELETE statement with no
WHERE clause', N'DROP _tableName
DELETE TABLE FROM _tableName where <condition>
TRUNCATE TABLE _tableName', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ee5c61ba-8560-4db7-893f-124d42e787dc', N'Restriction of SubQuery', N'Inner query should not contain order by.', N'Explore', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'42a63fed-d9f1-451f-9381-14c7b2cd2582', N'Cluster Index', N'Unique Clustered index is automatically created when column
has a PRIMARY KEY constraint', N'CREATE CLUSTERED INDEX CL_lastname
ON employees(lastname)

DROP INDEX employees.CL_lastname', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'62c80bea-a384-4176-b599-17c8dbf69be4', N'Implicit transction', N'No need to write "Begin Transaction/Tran"
 SET IMPLICIT_TRANSACTIONS ON
the instance of the Database Engine automatically starts a transaction when it first executes T-sql query', N'http://technet.microsoft.com/en-us/library/ms188317(v=sql.105).aspx', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd0cb1258-cd15-4f84-8cc3-18c2a90f9e81', N'AFTER DELETE Trigger', N'This trigger is fired after a delete on the table. 
In this trigger, the deleted record’s data is picked from the logical deleted table ', N'CREATE TRIGGER trgAfterDelete ON [dbo].[Employee_Test] 
AFTER DELETE
AS
SELECt * FROM deleted;
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a0c9667a-dc88-4976-95a2-18fc118887ee', N'3.Dynamic', N'A dynamic cursor allows you to see the data updation, deletion and insertion in the data source while the cursor is open. Hence a dynamic cursor is sensitive to any changes to the data source and supports update, delete operations. By default dynamic cursors are scrollable.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'783a919e-b38d-41f1-806c-1a64404813f6', N'key word @@IDENTITY', N'Is a system function that returns the last-inserted identity value.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'29c97f96-9884-473c-9b96-1c7e00ae9a96', N'tempdb', N'We come, at last, to tempdb. Tempdb is the workhorse of the system databases. It is the workspace that SQL Server uses to store the intermediate results of query processing and sorting. You know how you see those spools in your execution plans? When you see one of those, SQL Server is probably spooling the data to a temporary table in the tempdb. Outside of storing temporary results, tempdb is also used during snapshot isolation and for user created temporary tables (this includes table variables).

One thing that is interesting to note about tempdb is that it is re-created every time the SQL Server service is started. Any objects that you have created in tempdb will be gone once the server restarts. If you want specific tables or stored procedures to always be available in tempdb, you will need to add them to the model database or else use a stored procedure to create them in tempdb when the SQL Server is started.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6105ce5b-1635-4155-aba6-1d87c7d683c4', N'UNIQUE', NULL, N'ALTER TABLE dbo.Suppliers
ADD
CONSTRAINT U_CompanyName
UNIQUE NONCLUSTERED (CompanyName)', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd3b77736-edab-42d0-8466-1ea6180df0e9', N'Cast and Convert Difference', N'Parameter                          CAST                        CONVERT 
ANSI standard                   Yes                            No 
Data-type coverage        Limited                   Full (Date & Date Time values   supported) 
Performance                     No difference         No difference 
Microsoft SQL                   CONVERT                    CONVERT 
 Server implementation', N'http://beyondrelational.com/modules/2/blogs/77/posts/11334/cast-vs-convert-is-there-a-difference-as-far-as-sql-server-is-concerned-which-is-better.aspx

Select CONVERT(char,100) --converts 100 to ‘100’
Select CAST(100 as char)', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0429d5df-7315-417f-a528-214a4fd76d0b', N'empty', N'A database schema typically shows the different tables, their fields and the relationship between them and other tables. The database schema is defined within the native database language; therefore the logical structure and visualization of schema might vary in each database language. It helps database administrators in understanding the architectural layout of the database.

In addition to tables and fields, a database schema defines a database''s:

Indexes
Views
Triggers
Database links
Events
Procedures
Functions', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3d45c7aa-4338-4c56-ad79-239410d180a1', N'PrimaryKey', NULL, N'ALTER TABLE dbo.Customers
ADD
CONSTRAINT PK_Customers
PRIMARY KEY NONCLUSTERED (CustomerID)', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a969f65b-86ad-4be8-8a6c-23a535a543a0', N'empty', NULL, N'ALTER TABLE dbo.Employees
WITH NOCHECK
ADD CONSTRAINT FK_Employees_Employees
FOREIGN KEY (ReportsTo)
REFERENCES dbo.Employees(EmployeeID)', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dcffb6b8-66a3-4970-8f52-23a855c39022', N'StoreProcedure types', N'1.System
2.Temporary
3.Extended', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8c431d3f-e2d3-454f-895c-253b4e193bd7', N'Explicit transaction', N'Need to mention the start of the transaction.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f124b62d-fa99-4c3d-81a5-281e7040900b', N'Metadata discovery improvements', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'01ff24cc-159f-45eb-9acf-294a521358d7', N'Having Clause', N'Columns in a select list must be in the group by expression or they must be arguments of aggregate functions.', N'Order :
The where clause excludes rows that do not meet its search conditions.
The group by clause collects the remaining rows into one group for each unique
value in the group by expression.
Aggregate functions specified in the select list calculate summ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fe444d67-3549-48c6-9294-29eeff1ab3bc', N'Contained database', N'we can have a database with meta-data information, security information etc with in the database itself. So that when we migrate the database, we migrate everything with it', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'eae045af-be6d-46e1-adf0-2ae03668d4e1', N'empty', N'Grant is used to provide permissions like Select, All, Execute to user on the database objects like Tables, Views, Databases etc.', N'Syntax:

Grant privilageName
on objectName 
To{userName/Public/roleName}
[with Grant Option]
E.g: grant select on deep to user24', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'11e65678-c6a6-404d-a818-2b66a4f1a4b1', N'differnce between temp table and table datatype', N'⇒ Table variable (@table) is created in the memory. Whereas, a Temporary table (#temp) is created in the tempdb database. However, if there is a memory pressure the pages belonging to a table variable may be pushed to tempdb.

⇒ Table variables cannot be involved in transactions, logging or locking. This makes @table faster then #temp. So table variable is faster then temporary table.

⇒ Temporary tables are allowed CREATE INDEXes whereas, Table variables aren’t allowed CREATE INDEX instead they can have index by using Primary Key or Unique Constraint.

⇒ Table variable can be passed as a parameter to functions and stored procedures while the same cannot be done with Temporary tables.

⇒ Temporary tables are visible in the created routine and also in the child routines. Whereas, Table variables are only visible in the created routine.

⇒ Temporary table allows Schema modifications unlike Table variables.', NULL, N'https://www.c-sharpcorner.com/article/temporary-tables-and-table-variables-in-sql/', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e534236f-2760-4844-90f5-2cc1ac973fb1', N'Database SCHEMA', N'A database schema is a visual and logical architecture of a database created on a database management system.

It provides a graphical view of the entire database architecture and structure. It provides a means for logically grouping and displaying database objects such as tables, fields, functions and relations.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'45496007-b28d-47b9-954d-2db9d9855a75', N'Difference Between TRUNCATE, DELETE, And DROP In SQL', N'TRUNCATE is a DDL command
TRUNCATE is executed using a table lock and whole table is locked for remove all records.
We cannot use WHERE clause with TRUNCATE.
TRUNCATE removes all rows from a table.
Minimal logging in transaction log, so it is faster performance wise.
TRUNCATE TABLE removes the data by deallocating the data pages used to store the table data and records only the page deallocations in the transaction log.
Identify column is reset to its seed value if table contains any identity column.
To use Truncate on a table you need at least ALTER permission on the table.
Truncate uses less transaction space than the Delete statement.
Truncate cannot be used with indexed views.
TRUNCATE is faster than DELETE.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'01bc2702-5098-415a-9fa0-2e4decbac95f', N'empty', N'• The Data Definition Language (DDL)
• Data Manipulation Language (DML)
• Data Control Language (DCL)
• Transactional Control Language (TCL)', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'40c12542-1ca0-4c53-99c8-2e7b87dda836', N'msdb', N'msdb is used by the SQL Server Agent, database mail, Service Broker, and other services. If you aren’t actively working with things like jobs, alerts, log shipping, etc you can pretty safely ignore msdb… sort of.
One important item is that msdb holds backup history. Using the msdb tables (you can start by taking a look at msdb.dbo.backupset), it’s possible to determine when each database and filegroup was last backed up.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd427742a-fc79-453d-9d66-2f00a3b3f044', N'01.Declare Cursor', N'DECLARE CURSOR defines the attributes of a Transact-SQL server cursor, such as its scrolling behavior and the query used to build the result set on which the cursor operates.', N'DECLARE cursor_name CURSOR02. [LOCAL | GLOBAL] --define cursor scope03. 
[FORWARD_ONLY | SCROLL] --define cursor movements (forward/backward)04.
 [STATIC | KEYSET | DYNAMIC | FAST_FORWARD] --basic type of cursor05.
 [READ_ONLY | SCROLL_LOCKS | OPTIMISTIC]', N'Local :Specifies that the scope of the cursor is local to the batch, stored procedure, or trigger in which the cursor was created. The cursor name is only valid within this scope. The cursor can be referenced by local cursor variables in the batch, stored', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'718374d1-fc01-4289-86a7-2f7eed20735f', N'New Date Time Datatype', N'New types introduced are DATE,TIME,DATETIME2(n),DATETIMEOFFSET ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cdd5fc13-daf1-40a9-8db9-30a8dcc435b5', N'Types of Views', N'• Standard Views
• Indexed Views
• Partitioned Views', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'801aa156-ea99-499b-83c7-310796bc4891', N'database management system principle: ', N'ACID (atomicity, consistency, isolation, and durability)', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f6b8060f-9739-4bea-a938-3169b00a0453', N'empty', N'Enhancements to Backups:', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'34129d11-c889-498d-b98e-376b64bd60cd', N'empty', NULL, N'Select CONVERT(char,100) --converts 100 to ‘100’
Select CAST(100 as char)', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'64549d58-d480-4034-94dd-38749983df93', N'Projection redirection and the WITH RESULT SETS argument', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'94734b2d-292b-4933-99f5-388f62d11239', N'DataBase Model', N'• Flat Model
– Data is stored in an array of two dimensions
• Hierarchical model
– Data and the relationships among them are represented in the form of a tree structure ,.
• Network model
– Data and the relationships among them are represented in the form of records and links.
• Relational model
– Data is stored in tables and the relationship among them is represented in common column called foreign key', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'58b7a1a4-0b57-4da5-9478-3bb5417a6b49', N'How cursors work', N'A cursor is a symbolic name associated with a select statement. It consists of the following parts:
Cursor result set - the set (table) of rows resulting from the execution of a query that is associated with the cursor.
Cursor position - a pointer to one row within the cursor result set.
The cursor position indicates the current row of the cursor. You can explicitly
modify or delete that row using update or delete statements with a clause naming the cursor', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2cc540fa-094e-434f-96e7-436dbd29758f', N'types of function', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1d2bcec6-b5b8-414e-ac5b-446553010334', N'Groupby Difference', N'Columns in a select list must be in the group by expression or they must be arguments of aggregate functions', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f496ad92-9ff2-4be8-b29c-4584c9acd465', N'Types of Cursor : 1.Static', N'The cursor does not reflect any changes made in the database that affect either the membership of the result set or changes to the values in the columns of the rows that make up the result set. A static cursor does not display new rows inserted in the database after the cursor was opened, even if they match the search conditions of the cursor SELECT statement. If rows making up the result set are updated by other users, the new data values are not displayed in the static cursor. The static cursor displays rows deleted from the database after the cursor was opened. No UPDATE, INSERT, or DELETE operations are reflected in a static cursor (unless the cursor is closed and reopened), 
By default static cursors are scrollable. SQL Server static cursors are always read-only', N'if we are updating the data with the cursor,Will changes be updated in base table ?', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8ae1993e-4411-4a02-928e-4619cdc79369', N'WITH CTE() AS', N'the common table expression (CTE) is a temporary named result set that you can reference within a subsequent SELECT, INSERT, UPDATE, or DELETE statement', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8edf2fc7-c7a0-410b-9f2c-46b94332bee3', N'with(nolock)', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'35e45f51-0753-4e79-aea2-4cd7a5a692a7', N'SET operators', N'In order to sort the result, an ORDER BY clause should be part
of the last statement.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd9dbd63d-2e5a-4849-bb9f-4d030ac72a2f', N'Difference between char,varchar and nvarchar', N'Char datatype which is used to store fixed length of characters. Suppose if we declared char(50) it will allocates memory for 50 characters. Once we declare char(50) and insert only 10 characters of word then only 10 characters of memory will be used and other 40 characters of memory will be wasted.
Varchar means variable characters and it is used to store non-unicode characters. It will allocate the memory based on number characters inserted. Suppose if we declared varchar(50) it will allocates memory of 0 characters at the time of declaration. Once we declare varchar(50) and insert only 10 characters of word it will allocate memory for only 10 characters.It takes 1 byte per character
nvarchar datatype same as varchar datatype but only difference nvarchar is used to store Unicode characters and it allows you to store multiple languages in database.It takes 2 bytes per Unicode/Non-Unicode ', N'http://sqlhints.com/2011/12/23/difference-between-varchar-and-nvarchar/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6730d565-d3b5-40dc-8165-4d9d14aac9a7', N'TCL:', N'• It is used to manage different transactions occurring within a
database.
• The commands are
– COMMIT
– ROLLBACK
– [Save Tran]', N'<Example>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'13f8374a-9d70-4eb7-9ff4-4ed5dba2159f', N'Normalization', N'Process of efficiently organizing data in a database
eliminate redundant data
ensure data dependencies make sense', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cf476c49-f939-457e-87d0-50d479355e99', N'Exception is SP', N' Error_message(),      
 Error_number(),                        
Error_severity(),                             
Error_state(),                             
Error_line(),               
 Error_procedure()  ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'61c67d0f-f335-4015-8062-51bb24bf06fc', N'Cursor', N'– Is a data structure which helps in defining a result set and perform a
complex business logic on each row of the result set
– A cursor can be viewed as a pointer to one row in a set of rows
– The main advantage is that we can process the data row-by -row.
– They are NOT database objects

NOTE : cursors are the SLOWEST way to access data inside
SQL Server . Therefore they used be used only when there is an
absolute need', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cf598b5a-84d5-416d-8412-52a1e2a4a545', N'WITH ENCRYPTION', N'Keyword WITH ENCRYPTION is used to encrypt the text of the Stored Procedure. One SP are encrypted it is not possible to get original text of the SP from SP itself. User who created SP will need to save the text to be used to create SP somewhere safe to reuse it again', N'CREATE VIEW dbo.[Order Subtotals] WITH ENCRYPTION
AS
SELECT OrderID,
Sum(CONVERT(money,(UnitPrice*Quantity*(1-Discount)/100))*100)
AS Subtotal
FROM [Order Details', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd5984d26-7a94-4d89-ace4-53a9ff27ecab', N'Life Cycle of Cursor :', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd47391dd-cf0f-4ed8-86e5-58bcd65606c3', N'only one cluster index per table', N'Only one per table is allowed', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'332244fe-6f17-4a62-9dd2-598c154de0ac', N'Cursor', N'cursor is a database objects to retrieve data from a result set one row at a time, instead of the T-SQL commands that operate on all the rows in the result set at one time. We use cursor when we need to update records in a database table in singleton fashion means row by row.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'7104e07b-8360-4842-b229-59c66a6d26de', N'<Advanced Topic>
OPTION (RECOMPILE)  and 
before or after OPTION (RECOMPILE)
Constant Folding
avoiding Parameter Sniffing
OPTIMIZE FOR
WITH RECOMPILE (In Detail)', N'Go through the link for better understanding', N'https://blogs.msdn.microsoft.com/robinlester/2016/08/10/improving-query-performance-with-option-recompile-constant-folding-and-avoiding-parameter-sniffing-issues/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'693dd6f7-270f-477b-aaa4-5bea66e79c31', N'Second normalized Form', N'a table is in 2NF if and only if it is in 1NF and no non-prime attribute is dependent on any proper subset of any candidate key of the table. A non-prime attribute of a table is an attribute that is not a part of any candidate key of the table.

If in table single column is not suffucient to identitfy the unique row and more than one column is required and other colums deend the part of comosites key then 2NF is required,', N'http://en.wikipedia.org/wiki/Second_normal_form', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd0520e9e-7986-4bea-99f4-5e042e78f80a', N'Triggers', N'A trigger is a special kind of a store procedure that executes in response to certain action on the table like insertion, deletion or updation of data. It is a database object which is bound to a table and is executed automatically. You can’t explicitly invoke triggers. The only way to do this is by performing the required action no the table that they are assigned to. ', N'http://www.codeproject.com/Articles/25600/Triggers-SQL-Server', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c3e1e16e-d98a-45ee-a6d9-611d238d3a39', N'Error handling', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ae328dbf-1310-4910-9ecb-6735d82da522', N'empty', N'
Advance Difference 
01.Procedure allows SELECT as well as DML(INSERT/UPDATE/DELETE) statement in it whereas Function allows only SELECT statement in it.
 02.Procedures can not be utilized in a SELECT statement whereas Function can be embedded in a SELECT statement.
 03.Stored Procedures cannot be used in the SQL statements anywhere in the WHERE/HAVING/SELECT section whereas Function can be.
04.The most important feature of stored procedures over function is to retention and reuse the execution plan while in case of function it will be compiled every time.
 05.Functions that return tables can be treated as another rowset. This can be used in JOINs with other tables.
 06.Inline Function can be though of as views that take parameters and can be used in JOINs and other Rowset operations.
 07.Exception can be handled by try-catch block in a Procedure whereas try-catch block cannot be used in a Function.
 08.We can go for Transaction Management in Procedure whereas we can''t go in Function.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f4df0ade-6d2a-458d-a72f-675a28cd30d8', N'Rules for insert or update in views', NULL, NULL, N'https://www.codeproject.com/Articles/236425/How-to-Insert-Data-Using-SQL-Views-Created-Using-M', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a70a038c-3580-4881-9004-67dc32b673eb', N'Global Variable', N'• @@ERROR
• @@FETCH_STATUS
• @@IDENTITY
• @@ROWCOUNT
• @@SERVERNAME
• @@SPID
• @@TRANCOUNT
• @@VERSION', N'https://www.codeproject.com/Articles/39131/Global-Variables-in-SQL-Server', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e8e83d23-9d3d-4341-b1bc-6a3131a94552', N'SQL_Variant', N'sql_variant - A data type that stores values of various SQL Server-supported data types, except varchar, nvarchar, text, ntext, timestamp, and sql_variant.', N'https://docs.microsoft.com/en-us/sql/t-sql/data-types/sql-variant-transact-sql?view=sql-server-2017', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'00c73c1b-b614-44b2-bc99-6f354e46dfff', N'Offset/Fetch clause', NULL, N'https://www.geeksforgeeks.org/sql-offset-fetch-clause/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e38e9c4f-85b1-4c3f-9008-721b8dd26b4a', N'SystemDB: ', N'Master
model
tempdb
msdb
distribution', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd0013a84-dade-4154-8e59-73076acdc8ac', N'JOIN', N'1.INNER JOIN : (Equi JOIN) 
2.Outer JOIN :   LEFT JOIN 
                               RIGHT JOIN
                                FULL JOIN 
3.SELF JOIN 
4.CROSS JOIN', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'70bf775b-68f9-45c2-a369-762477780439', N'Logon triggers', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bc956576-12a4-4c25-bd9b-7b70f6f8e039', N'Default Constrain', NULL, N'ALTER TABLE dbo.Customers
ADD
CONSTRAINT DF_contactname DEFAULT ''UNKNOWN''
FOR ContactName', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dfd8e526-ec35-4278-a899-7e012c976515', N'empty', N'Sparse columns', N'http://sqlhints.com/2014/10/06/a-z-of-filtered-indexes-with-examples-in-sql-server/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'aca546e3-a0f0-472f-af14-7eaee915612e', N'Introduction', N'• DATABASE - A set of inter-related data
• DBMS - A software that manages the data
• SCHEMA - A set of structures and relationships, which meet a
specific need', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'be7384ae-bf6f-42ad-a06e-828264b1ff8a', N'empty', N'Large UDTs in SQL server 2008  ?', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fc0bfb33-917d-4bfc-925c-8546781ca41d', N'System catalog', N' ??', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'271928fc-470d-403a-92b7-8713d0b56554', N'Diff between Count(columnname) and count(*)', N'COUNT(*) returns a count of all records

COUNT(table.ColumnName) returns a count of all non-null values.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2cf8caec-2cad-4393-8c04-89287c454228', N'empty', N'With Grant Option: if you use  the WITH GRANT option, then user24 can GRANT SELECT privilege on the Deep table to another user. Later, if you REVOKE the SELECT privilege on employee from user24, still user25 will have SELECT privilege on the table', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'dc81c16b-3f16-4732-9533-8a0a98985b98', N'AFTER UPDATE Trigger ', N'This trigger is fired after an update on the table.
There is no logical table updated like the logical table inserted. We can obtain the updated value of a field from the update(column_name) function. In our trigger,', N'CREATE TRIGGER trgAfterUpdate ON [dbo].[Employee_Test] 
FOR UPDATE
AS
   SELECT * from inserted
if update(Emp_Name)
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'd267acbc-1e34-47d2-a579-8eb132e9e8f9', N'Recompilation of SP', N'SP needs recompilation when
– Data in underlying tables are changed  ----- ??
– Indexes are added /removed in tables', N'– CREATE PROCEDURE [WITH RECOMPILE]
– EXECUTE [procedure ]WITH RECOMPILE]
– sp_recompile [procedure]', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'2e17391d-c5b1-42cf-a7a8-90906722fdaf', N'FOREIGN KEY', NULL, N'ALTER TABLE dbo.Orders
ADD CONSTRAINT FK_Orders_Customers
FOREIGN KEY (CustomerID)
REFERENCES dbo.Customers(CustomerID)', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'067dc8c6-bb11-4138-b07a-915ac214e016', N'2.Keyset ', N'The membership and order of rows in a keyset-driven cursor are fixed when the cursor is opened. Keyset-driven cursors are controlled by a set of unique identifiers, keys, known as the keyset. The keys are built from a set of columns that uniquely identify the rows in the result set. The keyset is the set of the key values from all the rows that qualified for the SELECT statement at the time the cursor was opened. The keyset for a keyset-driven cursor is built in tempdb when the cursor is opened.

Changes to data values in nonkeyset columns (made by the cursor owner or committed by other users) are visible as the user scrolls through the cursor. Inserts to the database made outside the cursor are not visible in the cursor unless the cursor is closed and reopened. Inserts made through the cursor using an API function such as the ODBC SQLSetPos function are visible at the end of the cursor. @@FETCH_STATUS returns a "row missing" status when an attempt is made to fetch a row deleted after the cursor was opened. An update to a key column operates like a delete of the old key value followed by an insert of the new key value. The new key value is not visible if the update was not made through the cursor; it is visible at the end of the cursor if the update was made through the cursor using either an API function such as SQLSetPos or the Transact-SQL WHERE CURRENT OF clause and the SELECT statement did not contain a JOIN condition in the FROM clause. The new key value is not visible if the insert contained a remote table in the FROM clause. Attempts to retrieve the old key value get the same missing row fetch status as a deleted row.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c1b77184-230f-4207-b3b5-94d31210bc8f', N'empty', N'New HierarchyID datatype', N'??', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f89ccfef-a0e0-4a47-9505-968e4c78a677', N'Limitation of View', N'You cannot pass parameters to SQL Server views
Cannot use an Order By,COMPUTE, or COMPUTE BY or Into clause with views without specifying FOR XML or TOP
Views cannot be created on Temporary Tables
You cannot associate rules and defaults with views
You can build views on other views and on procedures that reference views.
Only INSTEAD OF triggers can be associated with views.
When a table or view is dropped, any views in the same database are also dropped.
It is not possible to create an index on a view
To alter a view, it must be dropped and re-created. Could not renamed or change the output column name', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'536b64a9-efa7-4c81-8a7d-97516e6df9d5', N'Default', N'sp_binddefault
It is database specific', N'CREATE DEFAULT phone_no_default
AS ''(000)000-0000''
GO
EXEC sp_bindefault phone_no_default,
''Customers.Phone''', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'43527392-48fc-4eac-90ab-97c87bcabea7', N'05.Deallocate', N'The DEALLOCATE statement releases the resources used by the cursor.', N'DEALLOCATE cursor_name --after deallocation it can''t be reopen ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f81dc33a-80ec-4eb0-9420-9ce29f7207c1', N'Data Integrity', N'Entity Integrity: Entity integrity ensures that no records are duplicated --PrimaryKey 
Domain Integrity: Domain integrity is the validity of entries for a given column --can be enforced by type(through data types),format(through CHECK constraints and rules), or
the range of possible values(through FOREIGN KEY constraints, CHECK constraints, DEFAULT definitions,NOT NULL definitions, and rules).
:Referential integrity preserves the defined relationships between tables Data Integrity or Referential Integrity: when records are entered or deleted
User-defined integrity:Refers to a set of rules specified by a user, which do not belong to the entity, domain, and referential integrity categories', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'35502df6-a5f3-4aea-9433-9d2e7f9242c4', N'PIVOT ', N'PIVOT rotates a table-valued expression by turning the unique values from one column in the expression into multiple columns in the output, and performs aggregations where they are required on any remaining column values that are wanted in the final output. ', N'SELECT <non-pivoted column>,
    [first pivoted column] AS <column name>,
    [second pivoted column] AS <column name>,
    ...
    [last pivoted column] AS <column name>
FROM
    (<SELECT query that produces the data>) 
    AS <alias for the source query', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'44e6e28c-160b-44d7-8786-9d58c25abe8c', N'Sequence objects', NULL, N'create sequence MySeq as int
 start with 1  -- Start with value 1
 increment by 1-- Increment with value 1
 minvalue 0 -- Minimum value to start is zero
 maxvalue 100 -- Maximum it can go to 100
 no cycle -- Do not go above 100
 cache 50 -- Increment 50 v', N'https://msdn.microsoft.com/en-IN/library/ff878091.aspx', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'4b425f45-ce8e-45b0-aa85-9f04868f9b53', N'DISTINCT', N'DISTINCT is used to eliminate duplicate rows', N'SELECT DISTINCT Region - lists out all regions in which
employees live
FROM Northwind.dbo.Employees', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0fb4dae1-4fda-4208-ab79-9f4694dc632a', N'04.Close', N'CLOSE statement releases the current result set associated with the cursor', N'CLOSE cursor_name --after closing it can be reopen ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f5d27bbe-4812-440d-99be-a02541b92676', N'1.After trigger', N'These triggers run after an insert, update or delete on a table. They are not supported for views. 
AFTER TRIGGERS can be classified further into three types as: a. AFTER INSERT Trigger.
 b. AFTER UPDATE Trigger. 
c. AFTER DELETE Trigger. 
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1126e0b0-e431-4b2d-954b-a08b401977c0', N'Instead Of Triggers', N'These can be used as an interceptor for anything that anyone tried to do on our table or view. If you define an Instead Of trigger on a table for the Delete operation, they try to delete rows, and they will not actually get deleted (unless you issue another delete instruction from within the trigger) 

INSTEAD OF TRIGGERS can be classified further into three types as: 
a.INSTEAD OF INSERT Trigger. 
b. INSTEAD OF UPDATE Trigger. 
c. INSTEAD OF DELETE Trigger. 
', N'CREATE TRIGGER trgInsteadOfDelete ON [dbo].[Employee_Test] 
INSTEAD OF DELETE
AS
', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'bcf34869-722a-409f-a6c3-a2b63e058631', N'DML:', N'It is the subset of SQL used to access and manipulate data
contained within the data structures previously defined via DDL
• The Commands are:
– INSERT - Adds data to a database.
– UPDATE - Modifies data in a database.
– DELETE - Removes data from a database.
– SELECT- Retrieves data from a database.
– TRUNCATE – Delete All', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'928cc0f9-faaa-478b-af19-a4101d32c87b', N'OUTPUT $action, deleted.*,inserted.*;', N'$action specify the action done in the execution of merge statement in each row.
inserted means what will be the data after operation,deleted menas what was the original data.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'144d713c-641d-464b-8390-a4c4ad24f23a', N'empty', N'Revoke: Revoke is used to remove the permissions or privileges provided to a user by the Grant command', N'Revoke privilageName
on objectName
from{userName/public/roleName}
E.g.: revoke select on eep 
from public', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'eb1417be-7faa-4d0e-b769-a75c791521b7', N'What cluster index is', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'16280bb2-d212-4677-9e56-a83d8d8df509', N'Views', N'– To hide the complexity of the underlying database schema, or
customize the data and schema for a set of users.
– To control access to rows and columns of data.

Objective of creating views is Abstraction , not performance

Restrictions on View Definitions
– Cannot include ORDER BY clause
– Cannot include INTO keyword', N'CREATE VIEW dbo.OrderSubtotalsView (OrderID, Subtotal) -- O/P Column name
AS
SELECT OD.OrderID,
SUM(CONVERT(money,(OD.UnitPrice*Quantity*(1-
Discount)/100))*100)
FROM [Order Details] OD
GROUP BY OD.OrderID
GO', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'987c0fd3-7c1e-44b6-a610-a859076baaaa', N'DDL triggers.', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e1b26985-3eac-4a7e-a6c6-a9d83e442803', N'Sql Server 2014 features', N'In-Memory : By moving select tables and stored procedures into memory, you can drastically reduce I/O and improve performance of your OLTP applications. ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'995d11a3-50a9-4ccf-8fb5-a9ddfceaa55d', N'Five First normalized Form', N'SYSDATETIME, SYSDATETIMEOFFSET, SYSUTCDATETIME SWITCHOFFSET and TODATETIMEOFFSET', N'The SYSDATETIME function returns the present system timestamp without the time zone, with an accuracy of 10 milliseconds. The SYSDATETIMEOFFSET function works like SYSDATETIME but the only difference is it includes the time zone. 
SYSUTCDATETIME returns t', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e6fdd3da-c3de-4809-83e5-ad612432bd7d', N'empty', N'order is fixed WGHO', N'SELECT [DISTINCT][TOP n] <columns >
[FROM] <table names>
[WHERE] <criteria that must be true for a row to be chosen>
[GROUP BY] <columns for grouping aggregate functions>
[HAVING] <criteria that must be met for aggregate functions>
[ORDER BY] <optional sp', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'956bd3de-37c8-4a09-a63f-ae3318143c1c', N'RULE', N'sp_bindrule
It is database specific', N'CREATE RULE regioncode_rule
AS @regioncode IN (''IA'', ''IL'', ''KS'', ''MO'')
GO
EXEC sp_bindrule regioncode_rule,
''Customers.Region''', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
GO
print 'Processed 100 total records'
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cffe9510-69ae-4d14-bb31-afb88c0df5b7', N'empty', NULL, N'CREATE TABLE my_publishers
(pub_id char(4) , pub_name varchar(40),
constraint my_chk_constraint check (pub_id in ("1234", “4321", “1212") or
pub_name not like "Bad Books"))', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'3b13858e-a83f-4353-8287-afb9984b390d', N'Types of cursors', N'1. static :whenever cursor opens all records will be stored in tempdb.
changes on the data can''t be seen.
2. Key setdriven:Whenever cursor opens only key values will be stored in the cursor If we use fetch next it will take key value and search record from the database.
All committed writes are visible.
3.Dynamic cursors : Cursor can move anywhere and all the changes on the data can be viewed.
4. forward-only :Cursor moves one step forward. Can''t move
backwards.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f643b19c-32ca-40c7-9f12-b0ebf6b6c7f0', N'All basic Queries', N'Creating table with primary and foreigh key
Add primary key and foreign query later
droping table
add/delete/Modify column after creating table..', N'ALTER TABLE Employee Add  city nvarchar(max)', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'691cb74a-12f4-4b95-be26-b609ceb50b39', N'empty', N'The DROP command removes a table from the database.
All the tables'' rows, indexes and privileges will also be removed.
No DML triggers will be fired.
The operation cannot be rolled back.
DROP and TRUNCATE are DDL commands, whereas DELETE is a DML command.
DELETE operations can be rolled back (undone), while DROP and TRUNCATE operations cannot be rolled back', NULL, N'https://www.c-sharpcorner.com/blogs/difference-between-truncate-delete-and-drop-in-sql-server1', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fba07aef-a655-4242-93fd-b8fdbe814d11', N'GROUPING SETS, CUBE, and ROLLUP Subclauses', N'https://technet.microsoft.com/en-us/library/cc721270(v=sql.100).aspx', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'da79c690-eab6-46a9-b742-b9040c6283d3', N'Merge', N'In SQL Server 2008, you can perform insert, update, or delete operations in a single statement using the MERGE statement. The MERGE statement allows you to join a data source with a target table or view, and then perform multiple actions against the target based on the results of that join.', N'DECLARE @TargetTable TABLE(EmployeeID int, EmployeeName varchar(10))
DECLARE  @SourceTable TABLE(EmployeeID int, EmployeeName varchar(10))

INSERT @TargetTable(EmployeeID, EmployeeName) VALUES(100, ''Mary'');
INSERT @TargetTable(EmployeeID, EmployeeName) VA', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'1826a854-323f-4fb3-b3d3-b9fb812801ae', N'return value in SP', N'– OUTPUT parameter
• More than 1 parameter can be of type OUTPUT – Return statement
• Used to provide the execution status of the procedure to the calling program
• Only one value can be returned
• 0 to -99 are reserved for internal usage , one can return customized values also
• Return value can be processed by the calling program as', N'exec @return_value = <storedprocname>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'fe3c4fca-6bca-4d39-8948-ba8f4f4e540c', N'Resource database', N'The resource database is a hidden system database. This is where system objects are stored. It isn’t possible to see the resource database by normal means. However you can see the data file by navigating to C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\Binn. The exact size and modification data of this file will be different from version to version, but the modified date should be the same date that you see when you run SELECT @@version.

It is best to think of the resource database as if it were another system DLL. The resource database is designed to make it easy for quick database upgrades. If new system objects are being put in place, it is only necessary to swap out the resource database MDF file.

Typically, the only way to view the contents of the resource database is using the OBJECT_DEFINITION system function.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'cbe0829c-51e9-45c4-8e0d-bb5e9f8f4941', N'Fisrt normalized Form', N'A relation is in first normal form if the domain of each attribute contains only atomic values, and the value of each attribute contains only a single value from that domain', N'http://en.wikipedia.org/wiki/First_normal_form', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e7ec83b0-9a9d-4930-b06b-bba7df03e4cf', N'empty', N'AlwaysOn Availability Groups :SQL Server 2014''s AlwaysOn Availability Groups has been enhanced with support for additional secondary replicas and Windows Azure integration.First introduced with SQL Server 2012, AlwaysOn Availability Groups boosted SQL Server availability by providing the ability to protect multiple databases with up to four secondary replicas. In SQL Server 2014, Microsoft has enhanced AlwaysOn integration by expanding the maximum number of secondary replicas from four to eight. Readable secondary replicas are now available for read-only workloads, even when the primary replica is unavailable. ', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c455b5bc-70af-4aba-a51d-bc61a61fa2a9', N'column store indexes ', N'When you create a column store index it stores same column data in the same page. ', N'How we know that we required only set of columns only.? 
No clear understanding.', N'http://www.codeproject.com/Articles/526621/Top-exciting-features-of-SQL-Server-Part', N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'58115a26-37c1-488f-b064-bcda4c762980', N'Third normalized Form', N'a table is in 3NF if and only if
1.the entity is in second normal form and
 2.all the attributes in a table are dependent on the primary key and only the primary key
', N'http://en.wikipedia.org/wiki/Third_normal_form', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6f117430-ae31-4e44-909b-bd10a7de501d', N'02.Open ', N'OPEN statement populates the result set, ', N'OPEN [GLOBAL] cursor_name --by default it is local ', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8c71daf6-64be-4286-be9f-bf92783f5018', N'cluster index on not primary key', NULL, N'https://www.c-sharpcorner.com/UploadFile/ff2f08/create-cluster-index-other-than-primary-key-column-in-sql-se/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'51456c6b-f104-47ef-8cf2-c2b0220fddce', N'READ_ONLY', N'Prevents updates made through this cursor. The cursor cannot be referenced in a WHERE CURRENT OF clause in an UPDATE or DELETE statement. This option overrides the default capability of a cursor to be updated.', N'Update Employee SET name=''nImesh'' WHERE CURRENT OF cursoor', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'acc472df-f5b3-4865-82c2-c4afd3c527b6', N'database catalog', N'??', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b1b0c494-8e36-44f9-93e8-c915a531aac5', N'Types of triggers ', N'1.After trigger
2.Instead-of Triggers', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'8cdfd0de-0ce7-4f31-8304-cd4673fc3aed', N'empty', N'Unique non clustered index is automatically created when a
column has UNIQUE constraint', N'CREATE UNIQUE NONCLUSTERED INDEX U_CustID
ON customers(CustomerID)', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a8596781-6426-44ba-a09d-ce78a70f4b76', N'DDL :', N'• It is the subset of SQL which contains the commands used to
create alter and destroy databases and database objects
• DDL includes the commands for handling tasks such as
creating tables, indexes, views, and constraints
• The commands are
– CREATE
– ALTER
– DROP
– [USE]', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'04ac32c3-c22d-4671-8390-d517fc65f832', N'AFTER INSERT Trigger.', N'The FOR INSERT specifies that this is an AFTER INSERT trigger. In place of FOR INSERT, AFTER INSERT can be used. Both of them mean the same. 

In the trigger body, table named inserted has been used. This table is a logical table and contains the row that has been inserted', N'CREATE TRIGGER trgAfterInsert ON [dbo].[Employee_Test] 
FOR INSERT
AS
   SELECT * from inserted

', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'9a0431b6-48b7-4134-b418-d5b01c8eed90', N'Save Point in Transaction', NULL, N'http://www.blackwasp.co.uk/SQLSavepoints.aspx', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ea09431a-5fbf-4526-8005-d60fd2f44fa5', N'Exception is SP', N'RAISERROR ()', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'63c8b3b9-18ae-4e33-a422-d756666149c7', N'COMPUTE BY,COMPUTE', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ae63a338-2213-414b-90f1-d7edd97e4a6e', N'If we add two column in index ..use ?', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'29ab3989-8d7d-4903-b99a-d8cbcd1e257d', N' WITH RECOMPILE on stored procedure', N'With Recompile at Stored proc level,will cause recompilation every time the proc is executed and query is not saved to Cache', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'eeace3b9-a8b8-4731-bc32-da2e3ce2dea5', N'Pagination', N'Fetch,Offset', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'905c7811-1b99-4dbe-873a-db98665a8c67', N'empty', N'DELETE is a DML command.
DELETE is executed using a row lock, each row in the table is locked for deletion.
We can use where clause with DELETE to filter & delete specific records.
The DELETE command is used to remove rows from a table based on WHERE condition.
It maintain the log, so it slower than TRUNCATE.
The DELETE statement removes rows one at a time and records an entry in the transaction log for each deleted row.
Identity of column keep DELETE retains the identity.
To use Delete you need DELETE permission on the table.
Delete uses the more transaction space than Truncate statement.
Delete can be used with indexed views.
To execute a DELETE queue, delete permissions are required on the target table. If you need to use a WHERE clause in a DELETE, select permissions are required as well.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'ce05f68e-b7e5-4898-8166-dcabe5e766eb', N'empty', N'1. Declaring the cursor :If you declare the cursor within a stored procedure, Server creates the cursor structure and compiles the query defined for that cursor. It stores the compiled query plan but does not execute it.
2. Opening the cursor :When the cursor is opened, Server needs to perform preliminary operations for executing a scan and returning a result set.
3. Fetching from the cursor: The fetch command executes the compiled cursor to return one or more rows meeting the conditions defined in the cursor
4. Processing the row by examining, updating, or deleting it through the cursor :
5. Closing the cursor:Server closes the cursor result set, removes any remaining temporary tables, and releases the server resources held for the cursor structure. However, it keeps the query plan for the cursor so that it can be opened again
6. Deallocating the cursor: Server dumps the query plan from memory and eliminates all trace of the cursor structure', N'DECLARE @USER_ID INT
DECLARE @USER_NAME VARCHAR(10)
DECLARE @TABLE_COUNT INT 

DECLARE dbuser_cursor CURSOR READ_ONLY
FOR SELECT uid,name from sysusers

OPEN dbuser_cursor

FETCH NEXT FROM dbuser_cursor INTO @USER_ID,@USER_NAME
WHILE @@FETCH_STATUS = 0
BE', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a85a5d54-dca3-471c-ab2b-e10c1abd8e62', N'Check Constrain', NULL, N'ALTER TABLE dbo.Employees
ADD
CONSTRAINT CK_birthdate
CHECK (BirthDate > ''01-01-1900'' AND BirthDate < getdate())', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'e9693f45-5a85-43fe-a856-e30c0e968e0d', N'can we have two commit statement in single transaction', N'??', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'0f5318c4-6eb6-49a3-a986-e3d60e89d908', N'IDENTITY', N'Only one identifier column and one globally unique identifier column can be created for each table.
@@identity to determine most recent value', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'97698d83-1491-41d3-a233-e61dd32c68fe', N'master', N'The master database hold all of the information related to logins, endpoints, linked servers, and user databases, it’s important that you take a backup of the master database after configuring any of these server level changes. Otherwise, if your SQL Server suffers a catastrophic failure, those changes will be lost to the sands of time', N'<Need more and concrete information of all system databases>', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'03846a9e-08a4-4115-8ace-e8850f22c136', N'4.Forward Only Cursors', N' A forward only cursor is the fastest cursor among the all cursors but it doesn''t support backward scrolling. You can update, delete data using Forward Only cursor. It is sensitive to any changes to the original data source.
 
There are three more types of Forward Only Cursors.Forward_Only KEYSET, FORWARD_ONLY STATIC and FAST_FORWARD.

 A FORWARD_ONLY STATIC Cursor is populated at the time of creation and cached the data to the cursor lifetime. It is not sensitive to any changes to the data source.
 
A FAST_FORWARD Cursor is the fastest cursor and it is not sensitive to any changes to the data source.
', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'a1bf2a44-f0a1-4515-84f9-e9943859d5e4', N'incoude in index', NULL, NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b3941184-fec8-449c-9c27-ec1b66aa7b05', N'Update delete and insert in View', N'http://www.informit.com/articles/article.aspx?p=130855&seqNum=4', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'b3c0bcba-9141-4c72-93c0-ee314031ea58', N'model', N'The model database is used as the template for all databases created on an instance of SQL Server. Because tempdb is created every time SQL Server is started, the model database must always exist on a SQL Server system. The entire contents of the model database, including database options, are copied to the new database. Some of the settings of model are also used for creating a new tempdb during start up, so the model database must always exist on a SQL Server system.', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'783f2742-0a1f-49a1-b266-ef4299bcdafb', N'SET operators', N'UNION:Combine two or more result sets into a single set, without duplicates.
UNION ALL:Combine two or more result sets into a single set, including all duplicates.
INTERSECT:Takes the data from both result sets which are in common.
EXCEPT:Takes the data from first result set, but not the second (i.e. no matching to each other)', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'13e187de-e494-496d-a3a6-f36b9c050bd6', N'sp_helpindex', N'Will shows index details of table', N'EXEC sp_helpindex Customers', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'f6cc93cf-0b3a-4fc4-804c-f437378fb3c2', N'Set NOCOUNT', N'Stops the message that shows the count of the number of rows affected by a Transact-SQL statement or stored procedure from being returned as part of the result set', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c716f1ea-e1b1-478b-9f5f-f612d8ac39f8', N'SQL Server 2008 New features', N'http://sqlhints.com/2011/09/11/new-features-in-sql-server-2008/', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6d58b546-9ecb-437f-ad0d-f86dc32ed7d5', N'Why cluster index', NULL, N'https://www.geeksforgeeks.org/sql-indexes/', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6a2ef172-dfc2-430a-b530-f9eeaf74afed', N'Difference between procedure and function', N'Procedures                                                                                  
•Return single integer value represents return
status

• Use execute (EXEC) statement to execute stored
procedure

•Use output parameter to pass values to caller
', N'    Function
• Return single value of any scalar data type
supported by SQL server 2005 or Table type

• Can be called through select statement if it
returns scalar value otherwise can be called
through from statement if it returns table.

• Use return st', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'c1783ee9-51c4-403a-b3d0-fbbebb1ed10d', N'Store Procedure', N'Two types of parameters
1. Input type : IN
2. Output type : OUT', NULL, NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
INSERT [dbo].[TechnologyContents] ([TechnologyContentGuid], [Topic], [Description], [Example], [Link], [TechnologyGuid]) VALUES (N'6115ce07-72c7-40f2-8f4a-fdad81676a2c', N'SET ANSI NULLS ON', N'When SET ANSI_NULLS is ON, a SELECT statement that uses WHERE column_name = NULL returns zero rows even if there are null values in column_name. A SELECT statement that uses WHERE column_name <> NULL returns zero rows even if there are nonnull values in column_name.
When SET ANSI_NULLS is OFF, the Equals (=) and Not Equal To (<>) comparison operators do not follow the ISO standard. A SELECT statement that uses WHERE column_name = NULL returns the rows that have null values in column_name. A SELECT statement that uses WHERE column_name <> NULL returns the rows that have nonnull values in the column. ', N'By default it will be ON. And use can use IS NULL or IS NOT NULL', NULL, N'ac709dea-4262-4f65-b8ad-01212ca6947d')
