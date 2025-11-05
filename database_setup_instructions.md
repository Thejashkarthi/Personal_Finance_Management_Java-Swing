# Database Setup Instructions

## Prerequisites
1. Install MySQL Server on your system
2. Make sure MySQL service is running

## Database Setup Steps

### Option 1: Using MySQL Workbench (Recommended)
1. Open MySQL Workbench
2. Connect to your MySQL server (usually localhost:3306)
3. Open the file `Database_Setup/PFMS_Backend.sql`
4. Execute the entire script

### Option 2: Using MySQL Command Line
1. Open Command Prompt as Administrator
2. Navigate to MySQL bin directory (usually `C:\Program Files\MySQL\MySQL Server X.X\bin`)
3. Run: `mysql -u root -p`
4. Enter your MySQL root password
5. Run: `source path\to\your\project\Database_Setup\PFMS_Backend.sql`

### Option 3: Manual Setup
1. Create database: `CREATE DATABASE pfmsdemo;`
2. Use database: `USE pfmsdemo;`
3. Copy and paste the table creation statements from `Database_Setup/PFMS_Backend.sql`

## Database Configuration
The application is configured to connect to:
- **Host:** localhost:3306
- **Database:** pfmsdemo
- **Username:** root
- **Password:** admin

If your MySQL setup is different, update the connection details in:
`src/Database/DatabaseManager.java`

## Testing the Connection
1. Start the application using `run.bat`
2. Try to sign up for a new account
3. If successful, the database connection is working

## Troubleshooting
- If you get connection errors, check if MySQL service is running
- Verify the username/password in DatabaseManager.java matches your MySQL setup
- Make sure the database `pfmsdemo` exists