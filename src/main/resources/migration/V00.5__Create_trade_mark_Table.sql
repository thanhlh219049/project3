
CREATE TABLE IF NOT EXISTS `TRADE_MARK`  (
  `ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `IMAGE` VARCHAR(255)   DEFAULT NULL,
  `NAME` VARCHAR(255)   DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
)