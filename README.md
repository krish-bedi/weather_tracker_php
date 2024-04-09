# Weather Data Collection and Display System

## Project Overview
This project automates the collection of weather data from various sources, stores it in a MySQL database, and displays the latest weather conditions on a PHP-based web interface. Users can view and set their preferred state for personalized weather updates.

## Features
- Automatic weather data collection every 6 hours.
- Data parsing and storage in a MySQL database.
- Dynamic web interface for displaying weather information.
- User-specific state preference for weather data.

## Prerequisites
- PHP server with MySQL extension
- MySQL database server
- Python with `mysql.connector` installed
- Java Runtime Environment (JRE) for TagSoup

## Setup Instructions

### 1. Clone the Repository
```
git clone <repository-url>
cd <repository-directory>
```

### 2. Database Setup
Import the SQL schema and data files to your MySQL database:
```
mysql -u username -p weather < my_tables.sql
mysql -u username -p weather < my_data.sql
```

### 3. Configuration
Update the database connection details in `index.php` and `parser.py` with your own credentials.

### 4. Running the Scripts
Execute the `weather.sh` script to start collecting weather data:
```
./weather.sh
```

### 5. Web Interface
Host the `index.php` on your PHP server. Navigate to the hosted URL in your web browser to view the weather data.

## File Descriptions
- `index.php`: The PHP script for the web interface.
- `my_data.sql`: SQL data file for initial database data.
- `my_tables.sql`: SQL file for creating database schema.
- `parser.py`: Python script for parsing weather data and inserting it into the database.
- `sources.txt`: Contains URLs for weather data sources.
- `weather.sh`: Shell script for downloading and processing weather data.

## Notes
- The `weather.sh` script runs continuously, updating the weather data every 6 hours.
- Ensure you have the necessary permissions to execute the scripts and write to the database.
