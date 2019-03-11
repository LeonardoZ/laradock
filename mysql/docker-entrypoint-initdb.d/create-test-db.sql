CREATE USER 'tester'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
GRANT ALL PRIVILEGES ON *.* TO 'tester'@'localhost' WITH GRANT OPTION;
CREATE USER 'tester'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
GRANT ALL PRIVILEGES ON *.* TO 'tester'@'%' WITH GRANT OPTION;
#
CREATE DATABASE IF NOT EXISTS `clientr-test` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `clientr-test`.* TO 'tester'@'%' ;
FLUSH PRIVILEGES ;