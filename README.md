# SEAquel Surf Shop

This repository hosts the seaquelcustoms database, a SQL database resposible for storing and tracking of the SEAqueal Surf Shop's business operational and inventory data. 

Big shout out to all those involved: Linh Nguyen, Caroline McCraw, Nigel Brooks, and Meghan Walthers

## Layout

The file system is split into scripts, data, documents

### Scripts

scripts is broken into two components:
* createDB - hosts the SQL files to create the database 
* tools - hosts python data for data manipulation and generation
  * manipulation - skeleton structure for loading data into python environment and changing data types of raw data
  * generation - responsible for data generation of the raw creation table data

### Documents

Files surrounding the assignment are hosted in this tab. They include the entity relationship model, logical datamodel, and business documentation of the SEAqueal Surf Shop. 


### Data

The data in this repository folder was used in the generation of the database values. The format folder host the data files with formulas to convert the main datatype for SQL insert statements. The main data file hosts the raw data for insert into the database. 
