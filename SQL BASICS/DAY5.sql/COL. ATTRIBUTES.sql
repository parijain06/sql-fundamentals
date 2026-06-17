-- COLUMN ATTRIBUTES

Definition:
Column attributes are properties or constraints applied to a column that define:
• What type of data can be stored
• Whether a value is required
• Whether duplicate values are allowed
• Whether a default value should be assigned
• Whether the column is related to another table

========================================
1. DATA TYPES
========================================

Data types specify the kind of data a column can store.

A) Numeric Data Types

• INT
  - Stores whole numbers
  - Example: 10, 25, 100

• DECIMAL(M,D)
  - Stores exact decimal values
  - M = Total digits
  - D = Digits after decimal
  - Example: DECIMAL(10,2)
  - Useful for salaries, prices, financial calculations

• FLOAT / DOUBLE
  - Stores approximate decimal values
  - Used for measurements and scientific calculations

B) String Data Types

• CHAR(n)
  - Fixed-length string
  - Example: CHAR(1)
  - Useful when data length is always the same
  - if we write CHAR(50), if we fill 5 spaces, sql will take 45 spaces extra

• VARCHAR(n)
  - Variable-length string
  - Stores only the required characters
  - even if we write VARCHAR(50), we need to fill 50 spaces... space will not be wasted
  - Most commonly used string data type

• TEXT
  - Stores large amounts of text
  - Useful for comments, reviews, descriptions

C) Date and Time Data Types

• DATE
  - Stores date only
  - Format: YYYY-MM-DD

• TIME
  - Stores time only
  - Format: HH:MM:SS

• DATETIME
  - Stores both date and time
  - Format: YYYY-MM-DD HH:MM:SS

========================================
2. NULL
========================================

• Allows a column to contain NULL values
• NULL means missing or unknown value

========================================
3. NOT NULL
========================================

• Column must contain a value
• Cannot be left empty

========================================
4. DEFAULT
========================================

• Assigns a value automatically if no value is provided

Example:
country VARCHAR(30) DEFAULT 'India'

========================================
5. PRIMARY KEY
========================================

• Uniquely identifies each row in a table
• Cannot contain NULL values
• Cannot contain duplicate values
• A table can have only one PRIMARY KEY

========================================
6. UNIQUE
========================================

• Prevents duplicate values
• NULL values may be allowed
• Multiple UNIQUE columns can exist in a table

========================================
7. AUTO_INCREMENT
========================================

• Automatically generates sequential numbers
• Commonly used with PRIMARY KEY
• MySQL-specific attribute

Example:
1, 2, 3, 4, 5...

========================================
8. CHECK
========================================

• Restricts values according to a condition

Example:
CHECK(age >= 18)

• Only values satisfying the condition can be inserted

========================================
9. FOREIGN KEY
========================================

• Creates a relationship between tables
• References a PRIMARY KEY in another table
• Maintains referential integrity
• Prevents invalid references

========================================
10. UNSIGNED
========================================

• Allows only positive numbers and zero
• Negative values are not allowed
• MySQL-specific attribute

========================================
QUICK REVISION
========================================

INT            → Whole numbers
DECIMAL        → Exact decimal values
FLOAT/DOUBLE   → Approximate decimal values
CHAR           → Fixed-length text
VARCHAR        → Variable-length text
TEXT           → Large text
DATE           → Date only
TIME           → Time only
DATETIME       → Date and time

NULL           → Value optional
NOT NULL       → Value required
DEFAULT        → Automatic value
PRIMARY KEY    → Unique row identifier
UNIQUE         → No duplicate values
AUTO_INCREMENT → Automatic numbering
CHECK          → Restricts values using conditions
FOREIGN KEY    → Links tables
UNSIGNED       → Positive numbers only
