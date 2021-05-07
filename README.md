# SEAquel Surf Shop

This repository hosts the seaquelcustoms database, a SQL database resposible for storing and tracking of the SEAqueal Surf Shop's business operational and inventory data. 

Big shout out to all those involved: Linh Nguyen, Caroline McCraw, Nigel Brooks, and Meghan Walthers

## Layout

The file system is split into scripts, data, documents

### Scripts

scripts is broken into two components:
* createDB - hosts the SQL files to create the database 
* tools - hosts python data for data manipulation and generation
  * manipulation - skeleton structure for loading data into python environment and changing data types of raw data, use this script for future advanced manipulations in python. 
  * generation - responsible for data generation of the raw creation table data

### Documents

Files surrounding the assignment are hosted in this tab. They include the entity relationship model, logical datamodel, and business documentation of the SEAqueal Surf Shop. 


### Data

There are three different data tabs displaying the same or similar data for different use cases. 
* main - the main data file containing tables as tabs
* distributed - tables split into folders with insert statement formating
* distributed-raw - raw distributed files for upload into python (SEAquel-Surf-Shop/scripts/tools/manipulation)
