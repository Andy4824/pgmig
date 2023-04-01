# PGMig

PGMig will help you create database migration from your code, make your database vesion based and install schema changes. It provide following features:
- Analyze code changes and prepare correct migrations
- Control schema changes
- Create an empty database for tests when you wish and for specific commit on specific branch
- Carry on your database even you are using some business logic on it
- Collaborate with multiple developers

## Automation and integration

PGMig is a tool for prepare database migration scripts easily and as close as possiple "hands free"
PGMig supported **PostgreSQL** database (**PostgreSQL** database is not a part of PGMig)
PGMig can be integrated into your application to keep yor database up to date everytime

# Install and run PGMig

You can download precompiled binary from this repository. Special procedure of installation does not required. However you need to install release_log table from release_log.sql/ In addition you should copy and tune config.ini into `/to_deploy` folder of your project repository. To run PGMig you should install Java runtime library Open JDK 16.x.x or 17.x.x.
To run PGMig enter following command `java -jar pgmig-1.0.jar -prepare -help` to get help about prepare parameters.
Now PGMig supports modes
- `-prepare` - prepare install script for "task" related mode
- `-deploy` - deploy prepared task scripts
- `-create_database` - prepare adn install empty database
- `-cumulative_deploy` - deploy cumulative changeset, made as set of "task" related scripts

For example run `java -jar pgmig-1.0.jar -prepare -config=/path/to/repository/config.ini -db_host=127.0.0.1 -db_port=5432 -db_user=postgres -db_name=test_db -password=postgres -wipelogs -tryreorder -recreate -analyzedeps=y`

# Contact us

[Grigorev Andrey](mailto://andr.grigor@gmail.com)
[Plotnikov Yuri](mailto://Plotnikovya@gmail.com)
