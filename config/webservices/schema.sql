/* This is a schema file for the storage that powers the QCubed update web service */

DROP TABLE IF EXISTS `qcubed_updates`;
CREATE TABLE `qcubed_updates` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(128) NOT NULL,
  `Description` text,
  `Version` decimal(5,2) NOT NULL,
  `DownloadUrl` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UniqName` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=4;

INSERT INTO `qcubed_updates` VALUES ('1', 'QCubed', 'Core Framework', '2.20', 'http://qcu.be');
INSERT INTO `qcubed_updates` VALUES ('2', 'DialogBoxes', 'Plugin: Dialog Boxes', '1.00', 'http://qcu.be');
INSERT INTO `qcubed_updates` VALUES ('3', 'CoolPlugin', 'Super Fancy New Plugin', '1.10', 'http://qcu.be');