create database springdb;
use springdb;
drop table rules_info;
CREATE TABLE `rules_info` (
  `ruleName` varchar(45)  NOT NULL,
  `ruleLabel` varchar(45) NOT NULL,
  PRIMARY KEY (`ruleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
