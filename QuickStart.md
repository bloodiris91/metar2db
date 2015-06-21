# Quick start guide #

This is a quick and dirty guide for helping using metar2db.

## Prerequisites ##

  * Perl
  * DBI
  * Geo::METAR
  * Database supported by DBI

Make sure Perl is installed, and it has DBI and Geo::METAR libraries. You can test the availability manually with the following command:

`$ perl -e 'use DBI; use Geo::METAR;'`

If the above doesn't give any errors they should be fine. In case you see something like this:

`Can't locate Geo/METAR.pm in @INC`

You need to install the library in question. Best practice would be to use your operating system's package manager, but in case they don't provide the libraries you need to use Perl's CPAN. You might try something like this:

```
$ sudo cpan
install Geo::METAR
install DBI
```

## Configuration ##

Extract the metar2db somewhere and edit the script. All configuration is made by changing variables in the beginning of the script. They should be pretty self explanatory.

## Usage ##

Create a database table for metar2db. If you are using MySQL, the provided sql-file will create the table automatically. If you are using some other database engine, take a look at the sql-file and create the table manually.

Use any means available to execute the script every once in a while. Most probably you should use crontab in Unix environments and scheduled tasks in Windows. Recommended frequency is 30 minutes. Most METARs update every 30 minutes, but even if they don't update that frequent the script doesn't put duplicate data to the database.