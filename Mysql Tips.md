To format a select with a nice table:

`select * from blah where id=wibble \G`

Note the lack of ; on the end

http://mysql.rjweb.org/doc.php/mysql_analysis#tuning

[restore a large db](https://stackoverflow.com/questions/13717277/how-can-i-import-a-large-14-gb-mysql-dump-file-into-a-new-mysql-database)
[possibly set trx](https://dba.stackexchange.com/questions/29963/dynamic-change-to-innodb-flush-log-at-trx-comm)
[possibly autocommit](https://serverfault.com/questions/146525/how-can-i-speed-up-a-mysql-restore-from-a-dump-file)
[link to sed nnd for nuking certain imports](https://stackoverflow.com/a/12226844)
[starting the lock monitors](https://dev.mysql.com/doc/refman/5.6/en/innodb-enabling-monitors.html)
