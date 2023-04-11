
CREATE TABLE IF NOT EXISTS `BILL`  (
  `ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `DATE_ODER` DATETIME  DEFAULT NULL,
  `NOTE` VARCHAR(255)  DEFAULT NULL,
  `STATUS` INT(11)  DEFAULT NULL,
  `TOTAL` BIGINT(20)  DEFAULT NULL,
  `USER_ID` BIGINT(20)  DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FKSPVMSMRVVCE95ECG9TGSSJ92Y`(`USER_ID`) USING BTREE,
  CONSTRAINT `FKSPVMSMRVVCE95ECG9TGSSJ92Y` FOREIGN KEY (`USER_ID`) REFERENCES `APP_USER` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
)