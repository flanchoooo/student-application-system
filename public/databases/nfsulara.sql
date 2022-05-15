/*
Navicat MySQL Data Transfer

Source Server         : MysqlCon
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : nfsulara

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-05-10 13:00:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for areaofstudy
-- ----------------------------
DROP TABLE IF EXISTS `areaofstudy`;
CREATE TABLE `areaofstudy` (
  `AOS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AOStudy` varchar(1000) NOT NULL,
  `AOSDetails` varchar(1000) NOT NULL,
  `AOStatus` int(11) NOT NULL,
  `AOSDate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`AOS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of areaofstudy
-- ----------------------------
INSERT INTO `areaofstudy` VALUES ('1', 'Computer Technology', 'Digital Forensics Computer Science Information Technology Systems Computer Engineering Artificial Intelligence Cyber Security Networks Telecommunications Data Analytics Robotics Computer Applications', '1', '2022-05-08 13:28:01');
INSERT INTO `areaofstudy` VALUES ('2', 'Homeland Security', 'Intelligence Security International Law International Relations Police Military Border Control Immigration National Security Criminology  ', '1', '2022-05-08 13:45:06');
INSERT INTO `areaofstudy` VALUES ('3', 'Forensic Science', 'Police Criminology Forensics Chemistry Biology', '1', '2022-05-09 15:03:33');

-- ----------------------------
-- Table structure for audittrail
-- ----------------------------
DROP TABLE IF EXISTS `audittrail`;
CREATE TABLE `audittrail` (
  `Trail_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SysUser_ID` int(11) NOT NULL,
  `Tablename` varchar(255) NOT NULL,
  `SysDate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SysHostIP` varchar(1000) NOT NULL,
  `SysHostName` varchar(1000) NOT NULL,
  `SysAction` varchar(1000) NOT NULL,
  PRIMARY KEY (`Trail_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of audittrail
-- ----------------------------
INSERT INTO `audittrail` VALUES ('1', '1', 'staffusers', '2022-05-08 13:07:16', '127.0.0.1', 'DESKTOP-SSJC20D', 'User was Deactivated');
INSERT INTO `audittrail` VALUES ('2', '1', 'staffusers', '2022-05-08 13:07:17', '127.0.0.1', 'DESKTOP-SSJC20D', 'User was Activated');
INSERT INTO `audittrail` VALUES ('3', '1', 'suserlevel', '2022-05-08 13:07:55', '127.0.0.1', 'DESKTOP-SSJC20D', 'Added Access Level');
INSERT INTO `audittrail` VALUES ('4', '1', 'suserlevel', '2022-05-08 13:08:23', '127.0.0.1', 'DESKTOP-SSJC20D', 'Added Access Level');
INSERT INTO `audittrail` VALUES ('5', '1', 'suserlevel', '2022-05-08 13:09:35', '127.0.0.1', 'DESKTOP-SSJC20D', 'Added Access Level');
INSERT INTO `audittrail` VALUES ('6', '1', 'suserlevel', '2022-05-08 13:09:50', '127.0.0.1', 'DESKTOP-SSJC20D', 'Access Level Edited');
INSERT INTO `audittrail` VALUES ('7', '0', 'staffusers', '2022-05-08 13:10:36', '127.0.0.1', 'DESKTOP-SSJC20D', 'A New user was added');
INSERT INTO `audittrail` VALUES ('8', '0', 'staffusers', '2022-05-08 13:13:01', '127.0.0.1', 'DESKTOP-SSJC20D', 'A New user was added');
INSERT INTO `audittrail` VALUES ('9', '0', 'staffusers', '2022-05-08 13:14:35', '127.0.0.1', 'DESKTOP-SSJC20D', 'A New user was added');
INSERT INTO `audittrail` VALUES ('10', '0', 'staffusers', '2022-05-08 13:14:55', '127.0.0.1', 'DESKTOP-SSJC20D', 'A New user was added');
INSERT INTO `audittrail` VALUES ('11', '0', 'staffusers', '2022-05-08 13:15:59', '127.0.0.1', 'DESKTOP-SSJC20D', 'A New user was added');
INSERT INTO `audittrail` VALUES ('12', '0', 'staffusers', '2022-05-08 13:16:33', '127.0.0.1', 'DESKTOP-SSJC20D', 'A New user was added');
INSERT INTO `audittrail` VALUES ('13', '1', 'suserlevel', '2022-05-08 13:17:10', '127.0.0.1', 'DESKTOP-SSJC20D', 'Access Level Edited');
INSERT INTO `audittrail` VALUES ('14', '1', 'suserlevel', '2022-05-08 13:17:33', '127.0.0.1', 'DESKTOP-SSJC20D', 'Access Level Edited');
INSERT INTO `audittrail` VALUES ('15', '1', 'suserlevel', '2022-05-08 13:17:42', '127.0.0.1', 'DESKTOP-SSJC20D', 'Access Level Edited');
INSERT INTO `audittrail` VALUES ('16', '1', 'suserlevel', '2022-05-08 13:18:48', '127.0.0.1', 'DESKTOP-SSJC20D', 'Access Level Edited');
INSERT INTO `audittrail` VALUES ('17', '1', 'suserlevel', '2022-05-08 13:19:03', '127.0.0.1', 'DESKTOP-SSJC20D', 'Access Level Edited');
INSERT INTO `audittrail` VALUES ('18', '1', 'staffusers', '2022-05-08 13:19:32', '127.0.0.1', 'DESKTOP-SSJC20D', 'User details were edited');
INSERT INTO `audittrail` VALUES ('19', '1', 'staffusers', '2022-05-08 13:19:42', '127.0.0.1', 'DESKTOP-SSJC20D', 'User details were edited');
INSERT INTO `audittrail` VALUES ('20', '1', 'suserlevel', '2022-05-08 13:20:09', '127.0.0.1', 'DESKTOP-SSJC20D', 'Access Level Edited');
INSERT INTO `audittrail` VALUES ('21', '1', 'areaofstudy', '2022-05-08 13:28:01', '127.0.0.1', 'DESKTOP-SSJC20D', 'New Area of Study Added');
INSERT INTO `audittrail` VALUES ('22', '1', 'areaofstudy', '2022-05-08 13:45:06', '127.0.0.1', 'DESKTOP-SSJC20D', 'New Area of Study Added');
INSERT INTO `audittrail` VALUES ('23', '1', 'areaofstudy', '2022-05-08 13:46:13', '127.0.0.1', 'DESKTOP-SSJC20D', 'Area of study has been Edited');
INSERT INTO `audittrail` VALUES ('24', '1', 'areaofstudy', '2022-05-09 15:03:33', '127.0.0.1', 'DESKTOP-SSJC20D', 'New Area of Study Added');
INSERT INTO `audittrail` VALUES ('25', '1', 'areaofstudy', '2022-05-09 15:07:32', '127.0.0.1', 'DESKTOP-SSJC20D', 'Area of study has been Edited');
INSERT INTO `audittrail` VALUES ('26', '1', 'faculties', '2022-05-10 12:47:38', '127.0.0.1', 'DESKTOP-SSJC20D', 'New Faculty has been created');
INSERT INTO `audittrail` VALUES ('27', '1', 'faculties', '2022-05-10 12:50:15', '127.0.0.1', 'DESKTOP-SSJC20D', 'New Faculty has been created');
INSERT INTO `audittrail` VALUES ('28', '1', 'faculties', '2022-05-10 12:50:37', '127.0.0.1', 'DESKTOP-SSJC20D', 'New Faculty has been created');
INSERT INTO `audittrail` VALUES ('29', '1', 'faculties', '2022-05-10 12:50:58', '127.0.0.1', 'DESKTOP-SSJC20D', 'New Faculty has been created');
INSERT INTO `audittrail` VALUES ('30', '1', 'programmes', '2022-05-10 12:51:27', '127.0.0.1', 'DESKTOP-SSJC20D', 'New degree Programme has been created');
INSERT INTO `audittrail` VALUES ('31', '1', 'programmes', '2022-05-10 12:53:10', '127.0.0.1', 'DESKTOP-SSJC20D', 'New degree Programme has been created');
INSERT INTO `audittrail` VALUES ('32', '1', 'programmes', '2022-05-10 12:53:36', '127.0.0.1', 'DESKTOP-SSJC20D', 'New degree Programme has been created');
INSERT INTO `audittrail` VALUES ('33', '1', 'programmes', '2022-05-10 12:53:55', '127.0.0.1', 'DESKTOP-SSJC20D', 'New degree Programme has been created');
INSERT INTO `audittrail` VALUES ('34', '1', 'programmes', '2022-05-10 12:54:11', '127.0.0.1', 'DESKTOP-SSJC20D', 'New degree Programme has been created');
INSERT INTO `audittrail` VALUES ('35', '1', 'programmes', '2022-05-10 12:55:17', '127.0.0.1', 'DESKTOP-SSJC20D', 'New degree Programme has been created');
INSERT INTO `audittrail` VALUES ('36', '1', 'faculties', '2022-05-10 12:57:12', '127.0.0.1', 'DESKTOP-SSJC20D', 'A Faculty was EDITED');
INSERT INTO `audittrail` VALUES ('37', '1', 'faculties', '2022-05-10 12:57:32', '127.0.0.1', 'DESKTOP-SSJC20D', 'A Faculty was EDITED');
INSERT INTO `audittrail` VALUES ('38', '1', 'faculties', '2022-05-10 12:57:40', '127.0.0.1', 'DESKTOP-SSJC20D', 'A Faculty was Deactivated');
INSERT INTO `audittrail` VALUES ('39', '1', 'faculties', '2022-05-10 12:57:43', '127.0.0.1', 'DESKTOP-SSJC20D', 'A Faculty has been Activated');

-- ----------------------------
-- Table structure for certificates
-- ----------------------------
DROP TABLE IF EXISTS `certificates`;
CREATE TABLE `certificates` (
  `Cert_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `fullpath` varchar(1000) NOT NULL,
  `filesize` varchar(1000) NOT NULL,
  `downloads` varchar(1000) NOT NULL,
  PRIMARY KEY (`Cert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of certificates
-- ----------------------------

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `S_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_Location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_date` datetime NOT NULL DEFAULT current_timestamp(),
  `S_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'testing', 'resting', 'Female', 'zimbabwe', 'sasd@sd.com', '12-12-2002', 'Portugal', '2022-05-05 03:12:35', 'me', 'me', '2022-05-04 21:43:27', '2022-05-04 21:42:35');
INSERT INTO `contacts` VALUES ('2', 'sdfs', 'sfs', 'fss', 'sfsf', 'sdee@xvd', '2022-05-24', 'sfse', '2022-05-05 16:29:10', 'sdfd', 'dsds', '2022-05-05 10:59:10', '2022-05-05 10:59:10');

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneCode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=493 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('247', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AF', '1', 'Afghanistan', '93');
INSERT INTO `countries` VALUES ('248', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AL', '2', 'Albania', '355');
INSERT INTO `countries` VALUES ('249', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'DZ', '3', 'Algeria', '213');
INSERT INTO `countries` VALUES ('250', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AS', '4', 'American Samoa', '1684');
INSERT INTO `countries` VALUES ('251', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AD', '5', 'Andorra', '376');
INSERT INTO `countries` VALUES ('252', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AO', '6', 'Angola', '244');
INSERT INTO `countries` VALUES ('253', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AI', '7', 'Anguilla', '1264');
INSERT INTO `countries` VALUES ('254', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AQ', '8', 'Antarctica', '0');
INSERT INTO `countries` VALUES ('255', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AG', '9', 'Antigua And Barbuda', '1268');
INSERT INTO `countries` VALUES ('256', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AR', '10', 'Argentina', '54');
INSERT INTO `countries` VALUES ('257', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AM', '11', 'Armenia', '374');
INSERT INTO `countries` VALUES ('258', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AW', '12', 'Aruba', '297');
INSERT INTO `countries` VALUES ('259', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AU', '13', 'Australia', '61');
INSERT INTO `countries` VALUES ('260', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AT', '14', 'Austria', '43');
INSERT INTO `countries` VALUES ('261', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AZ', '15', 'Azerbaijan', '994');
INSERT INTO `countries` VALUES ('262', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BS', '16', 'Bahamas The', '1242');
INSERT INTO `countries` VALUES ('263', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BH', '17', 'Bahrain', '973');
INSERT INTO `countries` VALUES ('264', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BD', '18', 'Bangladesh', '880');
INSERT INTO `countries` VALUES ('265', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BB', '19', 'Barbados', '1246');
INSERT INTO `countries` VALUES ('266', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BY', '20', 'Belarus', '375');
INSERT INTO `countries` VALUES ('267', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BE', '21', 'Belgium', '32');
INSERT INTO `countries` VALUES ('268', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BZ', '22', 'Belize', '501');
INSERT INTO `countries` VALUES ('269', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BJ', '23', 'Benin', '229');
INSERT INTO `countries` VALUES ('270', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BM', '24', 'Bermuda', '1441');
INSERT INTO `countries` VALUES ('271', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BT', '25', 'Bhutan', '975');
INSERT INTO `countries` VALUES ('272', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BO', '26', 'Bolivia', '591');
INSERT INTO `countries` VALUES ('273', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BA', '27', 'Bosnia and Herzegovina', '387');
INSERT INTO `countries` VALUES ('274', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BW', '28', 'Botswana', '267');
INSERT INTO `countries` VALUES ('275', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BV', '29', 'Bouvet Island', '0');
INSERT INTO `countries` VALUES ('276', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BR', '30', 'Brazil', '55');
INSERT INTO `countries` VALUES ('277', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'IO', '31', 'British Indian Ocean Territory', '246');
INSERT INTO `countries` VALUES ('278', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BN', '32', 'Brunei', '673');
INSERT INTO `countries` VALUES ('279', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BG', '33', 'Bulgaria', '359');
INSERT INTO `countries` VALUES ('280', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BF', '34', 'Burkina Faso', '226');
INSERT INTO `countries` VALUES ('281', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'BI', '35', 'Burundi', '257');
INSERT INTO `countries` VALUES ('282', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'KH', '36', 'Cambodia', '855');
INSERT INTO `countries` VALUES ('283', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CM', '37', 'Cameroon', '237');
INSERT INTO `countries` VALUES ('284', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CA', '38', 'Canada', '1');
INSERT INTO `countries` VALUES ('285', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CV', '39', 'Cape Verde', '238');
INSERT INTO `countries` VALUES ('286', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'KY', '40', 'Cayman Islands', '1345');
INSERT INTO `countries` VALUES ('287', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CF', '41', 'Central African Republic', '236');
INSERT INTO `countries` VALUES ('288', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TD', '42', 'Chad', '235');
INSERT INTO `countries` VALUES ('289', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CL', '43', 'Chile', '56');
INSERT INTO `countries` VALUES ('290', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CN', '44', 'China', '86');
INSERT INTO `countries` VALUES ('291', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CX', '45', 'Christmas Island', '61');
INSERT INTO `countries` VALUES ('292', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CC', '46', 'Cocos (Keeling) Islands', '672');
INSERT INTO `countries` VALUES ('293', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CO', '47', 'Colombia', '57');
INSERT INTO `countries` VALUES ('294', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'KM', '48', 'Comoros', '269');
INSERT INTO `countries` VALUES ('295', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CG', '49', 'Republic Of The Congo', '242');
INSERT INTO `countries` VALUES ('296', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CD', '50', 'Democratic Republic Of The Congo', '242');
INSERT INTO `countries` VALUES ('297', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CK', '51', 'Cook Islands', '682');
INSERT INTO `countries` VALUES ('298', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CR', '52', 'Costa Rica', '506');
INSERT INTO `countries` VALUES ('299', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CI', '53', 'Cote D Ivoire (Ivory Coast)', '225');
INSERT INTO `countries` VALUES ('300', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'HR', '54', 'Croatia (Hrvatska)', '385');
INSERT INTO `countries` VALUES ('301', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CU', '55', 'Cuba', '53');
INSERT INTO `countries` VALUES ('302', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CY', '56', 'Cyprus', '357');
INSERT INTO `countries` VALUES ('303', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CZ', '57', 'Czech Republic', '420');
INSERT INTO `countries` VALUES ('304', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'DK', '58', 'Denmark', '45');
INSERT INTO `countries` VALUES ('305', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'DJ', '59', 'Djibouti', '253');
INSERT INTO `countries` VALUES ('306', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'DM', '60', 'Dominica', '1767');
INSERT INTO `countries` VALUES ('307', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'DO', '61', 'Dominican Republic', '1809');
INSERT INTO `countries` VALUES ('308', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TP', '62', 'East Timor', '670');
INSERT INTO `countries` VALUES ('309', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'EC', '63', 'Ecuador', '593');
INSERT INTO `countries` VALUES ('310', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'EG', '64', 'Egypt', '20');
INSERT INTO `countries` VALUES ('311', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SV', '65', 'El Salvador', '503');
INSERT INTO `countries` VALUES ('312', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GQ', '66', 'Equatorial Guinea', '240');
INSERT INTO `countries` VALUES ('313', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'ER', '67', 'Eritrea', '291');
INSERT INTO `countries` VALUES ('314', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'EE', '68', 'Estonia', '372');
INSERT INTO `countries` VALUES ('315', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'ET', '69', 'Ethiopia', '251');
INSERT INTO `countries` VALUES ('316', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'XA', '70', 'External Territories of Australia', '61');
INSERT INTO `countries` VALUES ('317', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'FK', '71', 'Falkland Islands', '500');
INSERT INTO `countries` VALUES ('318', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'FO', '72', 'Faroe Islands', '298');
INSERT INTO `countries` VALUES ('319', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'FJ', '73', 'Fiji Islands', '679');
INSERT INTO `countries` VALUES ('320', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'FI', '74', 'Finland', '358');
INSERT INTO `countries` VALUES ('321', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'FR', '75', 'France', '33');
INSERT INTO `countries` VALUES ('322', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GF', '76', 'French Guiana', '594');
INSERT INTO `countries` VALUES ('323', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PF', '77', 'French Polynesia', '689');
INSERT INTO `countries` VALUES ('324', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TF', '78', 'French Southern Territories', '0');
INSERT INTO `countries` VALUES ('325', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GA', '79', 'Gabon', '241');
INSERT INTO `countries` VALUES ('326', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GM', '80', 'Gambia The', '220');
INSERT INTO `countries` VALUES ('327', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GE', '81', 'Georgia', '995');
INSERT INTO `countries` VALUES ('328', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'DE', '82', 'Germany', '49');
INSERT INTO `countries` VALUES ('329', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GH', '83', 'Ghana', '233');
INSERT INTO `countries` VALUES ('330', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GI', '84', 'Gibraltar', '350');
INSERT INTO `countries` VALUES ('331', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GR', '85', 'Greece', '30');
INSERT INTO `countries` VALUES ('332', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GL', '86', 'Greenland', '299');
INSERT INTO `countries` VALUES ('333', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GD', '87', 'Grenada', '1473');
INSERT INTO `countries` VALUES ('334', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GP', '88', 'Guadeloupe', '590');
INSERT INTO `countries` VALUES ('335', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GU', '89', 'Guam', '1671');
INSERT INTO `countries` VALUES ('336', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GT', '90', 'Guatemala', '502');
INSERT INTO `countries` VALUES ('337', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'XU', '91', 'Guernsey and Alderney', '44');
INSERT INTO `countries` VALUES ('338', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GN', '92', 'Guinea', '224');
INSERT INTO `countries` VALUES ('339', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GW', '93', 'Guinea-Bissau', '245');
INSERT INTO `countries` VALUES ('340', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GY', '94', 'Guyana', '592');
INSERT INTO `countries` VALUES ('341', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'HT', '95', 'Haiti', '509');
INSERT INTO `countries` VALUES ('342', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'HM', '96', 'Heard and McDonald Islands', '0');
INSERT INTO `countries` VALUES ('343', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'HN', '97', 'Honduras', '504');
INSERT INTO `countries` VALUES ('344', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'HK', '98', 'Hong Kong S.A.R.', '852');
INSERT INTO `countries` VALUES ('345', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'HU', '99', 'Hungary', '36');
INSERT INTO `countries` VALUES ('346', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'IS', '100', 'Iceland', '354');
INSERT INTO `countries` VALUES ('347', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'IN', '101', 'India', '91');
INSERT INTO `countries` VALUES ('348', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'country_id', '102', 'Indonesia', '62');
INSERT INTO `countries` VALUES ('349', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'IR', '103', 'Iran', '98');
INSERT INTO `countries` VALUES ('350', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'IQ', '104', 'Iraq', '964');
INSERT INTO `countries` VALUES ('351', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'IE', '105', 'Ireland', '353');
INSERT INTO `countries` VALUES ('352', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'IL', '106', 'Israel', '972');
INSERT INTO `countries` VALUES ('353', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'IT', '107', 'Italy', '39');
INSERT INTO `countries` VALUES ('354', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'JM', '108', 'Jamaica', '1876');
INSERT INTO `countries` VALUES ('355', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'JP', '109', 'Japan', '81');
INSERT INTO `countries` VALUES ('356', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'XJ', '110', 'Jersey', '44');
INSERT INTO `countries` VALUES ('357', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'JO', '111', 'Jordan', '962');
INSERT INTO `countries` VALUES ('358', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'KZ', '112', 'Kazakhstan', '7');
INSERT INTO `countries` VALUES ('359', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'KE', '113', 'Kenya', '254');
INSERT INTO `countries` VALUES ('360', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'KI', '114', 'Kiribati', '686');
INSERT INTO `countries` VALUES ('361', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'KP', '115', 'Korea North', '850');
INSERT INTO `countries` VALUES ('362', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'KR', '116', 'Korea South', '82');
INSERT INTO `countries` VALUES ('363', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'KW', '117', 'Kuwait', '965');
INSERT INTO `countries` VALUES ('364', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'KG', '118', 'Kyrgyzstan', '996');
INSERT INTO `countries` VALUES ('365', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'LA', '119', 'Laos', '856');
INSERT INTO `countries` VALUES ('366', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'LV', '120', 'Latvia', '371');
INSERT INTO `countries` VALUES ('367', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'LB', '121', 'Lebanon', '961');
INSERT INTO `countries` VALUES ('368', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'LS', '122', 'Lesotho', '266');
INSERT INTO `countries` VALUES ('369', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'LR', '123', 'Liberia', '231');
INSERT INTO `countries` VALUES ('370', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'LY', '124', 'Libya', '218');
INSERT INTO `countries` VALUES ('371', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'LI', '125', 'Liechtenstein', '423');
INSERT INTO `countries` VALUES ('372', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'LT', '126', 'Lithuania', '370');
INSERT INTO `countries` VALUES ('373', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'LU', '127', 'Luxembourg', '352');
INSERT INTO `countries` VALUES ('374', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MO', '128', 'Macau S.A.R.', '853');
INSERT INTO `countries` VALUES ('375', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MK', '129', 'Macedonia', '389');
INSERT INTO `countries` VALUES ('376', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MG', '130', 'Madagascar', '261');
INSERT INTO `countries` VALUES ('377', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MW', '131', 'Malawi', '265');
INSERT INTO `countries` VALUES ('378', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MY', '132', 'Malaysia', '60');
INSERT INTO `countries` VALUES ('379', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MV', '133', 'Maldives', '960');
INSERT INTO `countries` VALUES ('380', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'ML', '134', 'Mali', '223');
INSERT INTO `countries` VALUES ('381', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MT', '135', 'Malta', '356');
INSERT INTO `countries` VALUES ('382', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'XM', '136', 'Man (Isle of)', '44');
INSERT INTO `countries` VALUES ('383', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MH', '137', 'Marshall Islands', '692');
INSERT INTO `countries` VALUES ('384', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MQ', '138', 'Martinique', '596');
INSERT INTO `countries` VALUES ('385', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MR', '139', 'Mauritania', '222');
INSERT INTO `countries` VALUES ('386', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MU', '140', 'Mauritius', '230');
INSERT INTO `countries` VALUES ('387', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'YT', '141', 'Mayotte', '269');
INSERT INTO `countries` VALUES ('388', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MX', '142', 'Mexico', '52');
INSERT INTO `countries` VALUES ('389', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'FM', '143', 'Micronesia', '691');
INSERT INTO `countries` VALUES ('390', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MD', '144', 'Moldova', '373');
INSERT INTO `countries` VALUES ('391', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MC', '145', 'Monaco', '377');
INSERT INTO `countries` VALUES ('392', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MN', '146', 'Mongolia', '976');
INSERT INTO `countries` VALUES ('393', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MS', '147', 'Montserrat', '1664');
INSERT INTO `countries` VALUES ('394', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MA', '148', 'Morocco', '212');
INSERT INTO `countries` VALUES ('395', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MZ', '149', 'Mozambique', '258');
INSERT INTO `countries` VALUES ('396', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MM', '150', 'Myanmar', '95');
INSERT INTO `countries` VALUES ('397', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NA', '151', 'Namibia', '264');
INSERT INTO `countries` VALUES ('398', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NR', '152', 'Nauru', '674');
INSERT INTO `countries` VALUES ('399', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NP', '153', 'Nepal', '977');
INSERT INTO `countries` VALUES ('400', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AN', '154', 'Netherlands Antilles', '599');
INSERT INTO `countries` VALUES ('401', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NL', '155', 'Netherlands The', '31');
INSERT INTO `countries` VALUES ('402', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NC', '156', 'New Caledonia', '687');
INSERT INTO `countries` VALUES ('403', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NZ', '157', 'New Zealand', '64');
INSERT INTO `countries` VALUES ('404', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NI', '158', 'Nicaragua', '505');
INSERT INTO `countries` VALUES ('405', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NE', '159', 'Niger', '227');
INSERT INTO `countries` VALUES ('406', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NG', '160', 'Nigeria', '234');
INSERT INTO `countries` VALUES ('407', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NU', '161', 'Niue', '683');
INSERT INTO `countries` VALUES ('408', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NF', '162', 'Norfolk Island', '672');
INSERT INTO `countries` VALUES ('409', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'MP', '163', 'Northern Mariana Islands', '1670');
INSERT INTO `countries` VALUES ('410', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'NO', '164', 'Norway', '47');
INSERT INTO `countries` VALUES ('411', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'OM', '165', 'Oman', '968');
INSERT INTO `countries` VALUES ('412', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PK', '166', 'Pakistan', '92');
INSERT INTO `countries` VALUES ('413', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PW', '167', 'Palau', '680');
INSERT INTO `countries` VALUES ('414', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PS', '168', 'Palestinian Territory Occupied', '970');
INSERT INTO `countries` VALUES ('415', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PA', '169', 'Panama', '507');
INSERT INTO `countries` VALUES ('416', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PG', '170', 'Papua new Guinea', '675');
INSERT INTO `countries` VALUES ('417', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PY', '171', 'Paraguay', '595');
INSERT INTO `countries` VALUES ('418', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PE', '172', 'Peru', '51');
INSERT INTO `countries` VALUES ('419', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PH', '173', 'Philippines', '63');
INSERT INTO `countries` VALUES ('420', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PN', '174', 'Pitcairn Island', '0');
INSERT INTO `countries` VALUES ('421', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PL', '175', 'Poland', '48');
INSERT INTO `countries` VALUES ('422', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PT', '176', 'Portugal', '351');
INSERT INTO `countries` VALUES ('423', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PR', '177', 'Puerto Rico', '1787');
INSERT INTO `countries` VALUES ('424', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'QA', '178', 'Qatar', '974');
INSERT INTO `countries` VALUES ('425', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'RE', '179', 'Reunion', '262');
INSERT INTO `countries` VALUES ('426', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'RO', '180', 'Romania', '40');
INSERT INTO `countries` VALUES ('427', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'RU', '181', 'Russia', '70');
INSERT INTO `countries` VALUES ('428', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'RW', '182', 'Rwanda', '250');
INSERT INTO `countries` VALUES ('429', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SH', '183', 'Saint Helena', '290');
INSERT INTO `countries` VALUES ('430', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'KN', '184', 'Saint Kitts And Nevis', '1869');
INSERT INTO `countries` VALUES ('431', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'LC', '185', 'Saint Lucia', '1758');
INSERT INTO `countries` VALUES ('432', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'PM', '186', 'Saint Pierre and Miquelon', '508');
INSERT INTO `countries` VALUES ('433', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'VC', '187', 'Saint Vincent And The Grenadines', '1784');
INSERT INTO `countries` VALUES ('434', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'WS', '188', 'Samoa', '684');
INSERT INTO `countries` VALUES ('435', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SM', '189', 'San Marino', '378');
INSERT INTO `countries` VALUES ('436', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'ST', '190', 'Sao Tome and Principe', '239');
INSERT INTO `countries` VALUES ('437', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SA', '191', 'Saudi Arabia', '966');
INSERT INTO `countries` VALUES ('438', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SN', '192', 'Senegal', '221');
INSERT INTO `countries` VALUES ('439', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'RS', '193', 'Serbia', '381');
INSERT INTO `countries` VALUES ('440', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SC', '194', 'Seychelles', '248');
INSERT INTO `countries` VALUES ('441', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SL', '195', 'Sierra Leone', '232');
INSERT INTO `countries` VALUES ('442', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SG', '196', 'Singapore', '65');
INSERT INTO `countries` VALUES ('443', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SK', '197', 'Slovakia', '421');
INSERT INTO `countries` VALUES ('444', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SI', '198', 'Slovenia', '386');
INSERT INTO `countries` VALUES ('445', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'XG', '199', 'Smaller Territories of the UK', '44');
INSERT INTO `countries` VALUES ('446', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SB', '200', 'Solomon Islands', '677');
INSERT INTO `countries` VALUES ('447', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SO', '201', 'Somalia', '252');
INSERT INTO `countries` VALUES ('448', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'ZA', '202', 'South Africa', '27');
INSERT INTO `countries` VALUES ('449', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GS', '203', 'South Georgia', '0');
INSERT INTO `countries` VALUES ('450', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SS', '204', 'South Sudan', '211');
INSERT INTO `countries` VALUES ('451', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'ES', '205', 'Spain', '34');
INSERT INTO `countries` VALUES ('452', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'LK', '206', 'Sri Lanka', '94');
INSERT INTO `countries` VALUES ('453', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SD', '207', 'Sudan', '249');
INSERT INTO `countries` VALUES ('454', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SR', '208', 'Suricountry_name', '597');
INSERT INTO `countries` VALUES ('455', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SJ', '209', 'Svalbard And Jan Mayen Islands', '47');
INSERT INTO `countries` VALUES ('456', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SZ', '210', 'Swaziland', '268');
INSERT INTO `countries` VALUES ('457', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SE', '211', 'Sweden', '46');
INSERT INTO `countries` VALUES ('458', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'CH', '212', 'Switzerland', '41');
INSERT INTO `countries` VALUES ('459', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'SY', '213', 'Syria', '963');
INSERT INTO `countries` VALUES ('460', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TW', '214', 'Taiwan', '886');
INSERT INTO `countries` VALUES ('461', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TJ', '215', 'Tajikistan', '992');
INSERT INTO `countries` VALUES ('462', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TZ', '216', 'Tanzania', '255');
INSERT INTO `countries` VALUES ('463', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TH', '217', 'Thailand', '66');
INSERT INTO `countries` VALUES ('464', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TG', '218', 'Togo', '228');
INSERT INTO `countries` VALUES ('465', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TK', '219', 'Tokelau', '690');
INSERT INTO `countries` VALUES ('466', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TO', '220', 'Tonga', '676');
INSERT INTO `countries` VALUES ('467', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TT', '221', 'Trincountry_idad And Tobago', '1868');
INSERT INTO `countries` VALUES ('468', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TN', '222', 'Tunisia', '216');
INSERT INTO `countries` VALUES ('469', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TR', '223', 'Turkey', '90');
INSERT INTO `countries` VALUES ('470', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TM', '224', 'Turkmenistan', '7370');
INSERT INTO `countries` VALUES ('471', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TC', '225', 'Turks And Caicos Islands', '1649');
INSERT INTO `countries` VALUES ('472', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'TV', '226', 'Tuvalu', '688');
INSERT INTO `countries` VALUES ('473', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'UG', '227', 'Uganda', '256');
INSERT INTO `countries` VALUES ('474', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'UA', '228', 'Ukraine', '380');
INSERT INTO `countries` VALUES ('475', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'AE', '229', 'United Arab Emirates', '971');
INSERT INTO `countries` VALUES ('476', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'GB', '230', 'United Kingdom', '44');
INSERT INTO `countries` VALUES ('477', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'US', '231', 'United States', '1');
INSERT INTO `countries` VALUES ('478', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'UM', '232', 'United States Minor Outlying Islands', '1');
INSERT INTO `countries` VALUES ('479', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'UY', '233', 'Uruguay', '598');
INSERT INTO `countries` VALUES ('480', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'UZ', '234', 'Uzbekistan', '998');
INSERT INTO `countries` VALUES ('481', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'VU', '235', 'Vanuatu', '678');
INSERT INTO `countries` VALUES ('482', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'VA', '236', 'Vatican City State (Holy See)', '39');
INSERT INTO `countries` VALUES ('483', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'VE', '237', 'Venezuela', '58');
INSERT INTO `countries` VALUES ('484', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'VN', '238', 'Vietnam', '84');
INSERT INTO `countries` VALUES ('485', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'VG', '239', 'Virgin Islands (British)', '1284');
INSERT INTO `countries` VALUES ('486', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'VI', '240', 'Virgin Islands (US)', '1340');
INSERT INTO `countries` VALUES ('487', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'WF', '241', 'Wallis And Futuna Islands', '681');
INSERT INTO `countries` VALUES ('488', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'EH', '242', 'Western Sahara', '212');
INSERT INTO `countries` VALUES ('489', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'YE', '243', 'Yemen', '967');
INSERT INTO `countries` VALUES ('490', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'YU', '244', 'Yugoslavia', '38');
INSERT INTO `countries` VALUES ('491', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'ZM', '245', 'Zambia', '260');
INSERT INTO `countries` VALUES ('492', '2022-05-07 23:01:11', '2022-05-07 23:01:11', 'ZW', '246', 'Zimbabwe', '26');

-- ----------------------------
-- Table structure for faculties
-- ----------------------------
DROP TABLE IF EXISTS `faculties`;
CREATE TABLE `faculties` (
  `FacultyID` int(11) NOT NULL AUTO_INCREMENT,
  `AreaOfStudy` int(11) NOT NULL,
  `FacultyName` varchar(1000) NOT NULL,
  `FStatus` int(11) NOT NULL,
  `FacultyDate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`FacultyID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of faculties
-- ----------------------------
INSERT INTO `faculties` VALUES ('1', '1', 'School of Cyber Security and Digital Forensics', '1', '2022-05-10 12:47:38');
INSERT INTO `faculties` VALUES ('2', '2', 'School of Homeland Security and National Security Studies', '1', '2022-05-10 12:57:32');
INSERT INTO `faculties` VALUES ('3', '3', 'School of Forensic Psychology', '1', '2022-05-10 12:57:42');
INSERT INTO `faculties` VALUES ('4', '3', 'School of Forencic Investigations and Criminology', '1', '2022-05-10 12:50:58');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for file_up_loads
-- ----------------------------
DROP TABLE IF EXISTS `file_up_loads`;
CREATE TABLE `file_up_loads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Filepath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of file_up_loads
-- ----------------------------
INSERT INTO `file_up_loads` VALUES ('1', '2022-05-07 06:23:22', '2022-05-07 06:23:22', 'India Certificate.jpg', 'public/uploads/N2Ei0RQxwpn795RCQ70inSVYO2QIS4RrA0yzWmKl.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('2', '2022-05-07 06:26:11', '2022-05-07 06:26:11', 'India Certificate.jpg', 'public/uploads//jKwdHsWABL9EGKr1tUzGx6whDiFTL9BBiIyGVvEC.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('3', '2022-05-07 06:29:54', '2022-05-07 06:29:54', 'India Certificate.jpg', 'public/uploads/cXXWgKgIpEUJv159NZAt6sMnz9yJ5G1z5EwPuZOV.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('4', '2022-05-07 06:34:09', '2022-05-07 06:34:09', 'India Certificate.jpg', 'public/uploads/BCs1yY7dsCRKgoFAjv0yTWNJ5Ubn4FYl22sErdzb.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('5', '2022-05-07 06:37:24', '2022-05-07 06:37:24', 'India Certificate.jpg', 'public/files/ILd1ulTagbnonTRBXICR6zQokgOCF45z6mcV8sWZ.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('6', '2022-05-07 07:23:36', '2022-05-07 07:23:36', '8.jpg', 'public/uploads/Yhuwx1l6o5B7onJX8LwbztoCdhtKXbSlzOKO8OxO.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('7', '2022-05-07 07:24:49', '2022-05-07 07:24:49', 'DegreeParwa.jpg', 'public/uploads/Bzo6whJypKefXlDH05ZB1fYraDf1TyFEEj0HrhcD.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('8', '2022-05-07 07:25:16', '2022-05-07 07:25:16', '3.jpg', 'public/uploads/D8QE9AmcB2zxqG7RYlCQrM7Mta6VzPtCzuRlYrLa.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('9', '2022-05-07 07:26:01', '2022-05-07 07:26:01', '3.jpg', 'public/files/rmxqTlI2U2NuILLO6ffgmpilQnwxCF3BV3e7GB9H.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('10', '2022-05-07 07:26:46', '2022-05-07 07:26:46', '4.jpg', 'public/files/IdWU9JKNTXgNoDevi3cun6zxzW2MD9pvi5xr80Iv.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('11', '2022-05-07 07:27:46', '2022-05-07 07:27:46', '5.jpg', 'public/uploads/9t3MdMNmfpthYJuVgP831XrhymTPJ1h4mRoUraAo.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('12', '2022-05-07 13:20:14', '2022-05-07 13:20:14', 'Passport Photo.JPG', 'public/uploads/xERne43nBUoq0hrmooY7cMbL1INtTK3Nr0dOR2jF.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('13', '2022-05-07 13:41:43', '2022-05-07 13:41:43', 'Passport Photo.JPG', 'public/uploads/WUNOxPW2KODHyoHAEsACgmJTdt39wrGXPK6By8CU.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('14', '2022-05-07 19:07:40', '2022-05-07 19:07:40', 'Passport Photo.JPG', 'public/uploads/iRJ4u83ubthJgDLFpQvl8DF0GKhVFrldmRQuQOnq.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('15', '2022-05-09 06:13:05', '2022-05-09 06:13:05', '8.jpg', 'public/uploads/uPdlks9xkjtP0Nfr4iV8hom5Fz4Kqqqx0akZ9s05.jpg', '0');
INSERT INTO `file_up_loads` VALUES ('16', '2022-05-09 09:21:00', '2022-05-09 09:21:00', '8.jpg', 'public/uploads/km6EEJkUhF1S4DzO6eu85dYd6PjKj8dTtYNhYVaB.jpg', '0');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('2', '2022_05_04_043534_create_students_table', '2');
INSERT INTO `migrations` VALUES ('3', '2022_05_04_154707_create_contacts_table', '3');
INSERT INTO `migrations` VALUES ('4', '2014_10_12_000000_create_users_table', '4');
INSERT INTO `migrations` VALUES ('5', '2014_10_12_100000_create_password_resets_table', '4');
INSERT INTO `migrations` VALUES ('6', '2019_08_19_000000_create_failed_jobs_table', '4');
INSERT INTO `migrations` VALUES ('7', '2022_05_06_160638_create_students_table', '5');
INSERT INTO `migrations` VALUES ('8', '2022_05_06_162255_create_students_table', '6');
INSERT INTO `migrations` VALUES ('9', '2022_05_06_164805_create_students_table', '7');
INSERT INTO `migrations` VALUES ('10', '2022_05_06_171423_create_students_table', '8');
INSERT INTO `migrations` VALUES ('11', '2022_05_06_185033_create_file_up_loads_table', '9');
INSERT INTO `migrations` VALUES ('12', '2022_05_07_124056_create_country_state_city_tables', '10');
INSERT INTO `migrations` VALUES ('13', '2022_05_07_132309_create_country_state_city_tables', '11');
INSERT INTO `migrations` VALUES ('14', '2022_05_07_170951_create_countries_table', '12');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for programmes
-- ----------------------------
DROP TABLE IF EXISTS `programmes`;
CREATE TABLE `programmes` (
  `ProgID` int(11) NOT NULL AUTO_INCREMENT,
  `ProgFacultyID` int(11) NOT NULL,
  `ProgrammeName` varchar(1000) NOT NULL,
  `ProgStatus` int(11) NOT NULL,
  `ProDate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ProgID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of programmes
-- ----------------------------
INSERT INTO `programmes` VALUES ('1', '1', 'MSC In Digital Forensics and Information Security', '1', '2022-05-10 12:51:27');
INSERT INTO `programmes` VALUES ('2', '2', 'MSc in Police and Security Studies', '1', '2022-05-10 12:53:10');
INSERT INTO `programmes` VALUES ('3', '1', 'Msc in Cyber Security', '1', '2022-05-10 12:53:36');
INSERT INTO `programmes` VALUES ('4', '3', 'Msc in Clinical Psychology', '1', '2022-05-10 12:53:55');
INSERT INTO `programmes` VALUES ('5', '4', 'Msc in Criminology', '1', '2022-05-10 12:54:11');
INSERT INTO `programmes` VALUES ('6', '2', 'Msc Homeland Security', '1', '2022-05-10 12:55:17');

-- ----------------------------
-- Table structure for staffusers
-- ----------------------------
DROP TABLE IF EXISTS `staffusers`;
CREATE TABLE `staffusers` (
  `Suser_id` int(11) NOT NULL AUTO_INCREMENT,
  `SName` varchar(1000) NOT NULL,
  `Surname` varchar(1000) NOT NULL,
  `SDesignation` varchar(1000) NOT NULL,
  `Susername` varchar(1000) NOT NULL,
  `Spassword` varchar(1000) NOT NULL,
  `Saccess_id` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Sdate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`Suser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of staffusers
-- ----------------------------
INSERT INTO `staffusers` VALUES ('1', 'Elson', 'Makuvaza', 'Supervisor', 'sam', 'sam', '1', '1', '2022-05-08 13:07:17');
INSERT INTO `staffusers` VALUES ('2', 'Alfred', 'Yusef', 'Network Manager', 'sure', 'sure', '4', '1', '2022-05-08 13:10:36');
INSERT INTO `staffusers` VALUES ('6', 'Alish', 'Makhed', 'Network Analyst', 'sac', 'sac', '3', '1', '2022-05-08 13:19:42');
INSERT INTO `staffusers` VALUES ('7', 'Susan', 'Hamish', 'Clerk', 'soc', 'soc', '2', '1', '2022-05-08 13:16:33');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `S_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_Location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', '2022-05-06 17:40:09', '2022-05-06 17:40:09', 'test', 'testing', 'Female', 'Harare', '2022-05-26', 'six six six');
INSERT INTO `students` VALUES ('2', '2022-05-06 17:52:36', '2022-05-06 17:52:36', 'test', 'testing', 'Female', 'Harare', '2022-05-26', 'six six six');
INSERT INTO `students` VALUES ('3', '2022-05-06 17:54:32', '2022-05-06 17:54:32', 'test', 'testing', 'Female', 'Harare', '2022-05-26', 'six six six');
INSERT INTO `students` VALUES ('4', '2022-05-06 18:01:56', '2022-05-06 18:01:56', 'test', 'testing', 'Female', 'Harare', '2022-05-26', 'six six six');
INSERT INTO `students` VALUES ('5', '2022-05-06 18:02:51', '2022-05-06 18:02:51', 'test', 'testing', 'Female', 'Harare', '2022-05-26', 'six six six');
INSERT INTO `students` VALUES ('6', '2022-05-06 18:03:19', '2022-05-06 18:03:19', 'test', 'testing', 'Female', 'Harare', '2022-05-26', 'six six six');
INSERT INTO `students` VALUES ('7', '2022-05-06 18:04:31', '2022-05-06 18:04:31', 'res', 'rex', 'Female', 'zimbabwe', '1987-05-31', 'wecdf');
INSERT INTO `students` VALUES ('8', '2022-05-06 18:05:18', '2022-05-06 18:05:18', 'res', 'rex', 'Female', 'zimbabwe', '1987-05-31', 'wecdf');
INSERT INTO `students` VALUES ('9', '2022-05-06 18:10:55', '2022-05-06 18:10:55', 'res', 'rex', 'Female', 'zimbabwe', '1987-05-31', 'wecdf');
INSERT INTO `students` VALUES ('10', '2022-05-06 18:12:11', '2022-05-06 18:12:11', 'res', 'rex', 'Female', 'zimbabwe', '1987-05-31', 'wecdf');
INSERT INTO `students` VALUES ('11', '2022-05-06 18:15:01', '2022-05-06 18:15:01', 'sdfsf', 'ewfew', 'Male', 'wf', '1987-05-24', 'sdfwef');
INSERT INTO `students` VALUES ('12', '2022-05-06 18:22:06', '2022-05-06 18:22:06', 'Alfred', 'Machika', 'Male', 'Zambia', '1980-05-24', 'Sector 9');
INSERT INTO `students` VALUES ('13', '2022-05-06 18:23:51', '2022-05-06 18:23:51', 'Alfred', 'Machika', 'Male', 'Zambia', '1980-05-24', 'Sector 9');
INSERT INTO `students` VALUES ('14', '2022-05-06 18:25:11', '2022-05-06 18:25:11', 'tests', 'tests', 'Female', 'test', '2001-10-13', 'tests');
INSERT INTO `students` VALUES ('15', '2022-05-06 18:30:15', '2022-05-06 18:30:15', 'tests', 'tests', 'Female', 'test', '2001-10-13', 'tests');
INSERT INTO `students` VALUES ('16', '2022-05-06 18:30:57', '2022-05-06 18:30:57', 'tests', 'tests', 'Female', 'test', '2001-10-13', 'tests');
INSERT INTO `students` VALUES ('17', '2022-05-09 06:12:54', '2022-05-09 06:12:54', 'Alfred', 'Machado', 'Male', 'Zimbabwe', '1987-05-25', 'toko');
INSERT INTO `students` VALUES ('18', '2022-05-09 09:20:52', '2022-05-09 09:20:52', 'sfres', 'ewrew', 'Female', 'sdfds', '1980-05-28', 'dsfret');

-- ----------------------------
-- Table structure for suserlevel
-- ----------------------------
DROP TABLE IF EXISTS `suserlevel`;
CREATE TABLE `suserlevel` (
  `Saccess_id` int(11) NOT NULL AUTO_INCREMENT,
  `Level_name` varchar(1000) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `Status` int(11) NOT NULL,
  `Ldate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`Saccess_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of suserlevel
-- ----------------------------
INSERT INTO `suserlevel` VALUES ('1', 'System Administrator', 'Administrator', '1', '2022-05-08 13:20:09');
INSERT INTO `suserlevel` VALUES ('2', 'Student Records Users', 'Student Records Flow Officers', '1', '2022-05-08 13:19:03');
INSERT INTO `suserlevel` VALUES ('3', 'Admissions users', 'Admissions flow officers', '1', '2022-05-08 13:17:42');
INSERT INTO `suserlevel` VALUES ('4', 'Network Management', 'Network Administrator', '1', '2022-05-08 13:09:35');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'tunga', 'tunga@gmail.com', null, '$2y$10$gKg51roQCKEUa/QZ8xo1SeAj5DEkSoNag57IB9pMFzjNjTw3ddXda', null, '2022-05-06 12:39:47', '2022-05-06 12:39:47');
INSERT INTO `users` VALUES ('2', 'sam', 'sam@gmail.com', null, '$2y$10$Bu06ni5kIfpdquhXubzVgOJvxpmWRO4YdbhDzOYiHjeTkz3YjbSoy', null, '2022-05-06 12:57:18', '2022-05-06 12:57:18');
INSERT INTO `users` VALUES ('3', 'Manu', 'manu@gmail.com', null, '$2y$10$A1b0QAeJEY/DZEt.V5pUluqAqU5Haqjy/9ixev.fxpkmW0seDYgKW', null, '2022-05-08 05:42:20', '2022-05-08 05:42:20');
