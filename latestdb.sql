/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - pest_detection
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pest_detection` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `pest_detection`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `cart` */

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `complaint_desc` varchar(100) DEFAULT NULL,
  `complaint_reply` varchar(100) DEFAULT NULL,
  `complaint_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `complaint` */

/*Table structure for table `crops` */

DROP TABLE IF EXISTS `crops`;

CREATE TABLE `crops` (
  `crop_id` int(11) NOT NULL AUTO_INCREMENT,
  `crop` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`crop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `crops` */

insert  into `crops`(`crop_id`,`crop`) values 
(1,'Rice'),
(2,'Maize (corn)'),
(3,'Millet'),
(4,'Cotton');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `hname` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `customer` */

insert  into `customer`(`customer_id`,`login_id`,`fname`,`lname`,`hname`,`place`,`pincode`,`phone`,`email`) values 
(1,2,'anand','balan','abcd','abcd','1234','0000000000','abcd@gmail.com'),
(2,3,'alex','joy','qqqqqqqqq','eeee','1111','7777777777','qwe@gmail.com'),
(3,4,'juby','rose','klklk','tvla','688004','7897897890','hjhjh@gmail.com');

/*Table structure for table `enquiry` */

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `farmer_id` int(11) DEFAULT NULL,
  `enquiry_desc` varchar(100) DEFAULT NULL,
  `enquiry_reply` varchar(100) DEFAULT NULL,
  `enquiry_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `enquiry` */

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(100) DEFAULT NULL,
  `event_desc` varchar(100) DEFAULT NULL,
  `event_date` varchar(100) DEFAULT NULL,
  `event_venue` varchar(100) DEFAULT NULL,
  `event_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `event` */

/*Table structure for table `farmer` */

DROP TABLE IF EXISTS `farmer`;

CREATE TABLE `farmer` (
  `farmer_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `hname` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`farmer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `farmer` */

insert  into `farmer`(`farmer_id`,`login_id`,`fname`,`lname`,`hname`,`place`,`pincode`,`phone`,`gender`,`dob`,`email`) values 
(1,5,'anand','balan','qqqqqqqqq','eeee','1111','7777777777','male','2000-03-12','anandbalan123@gmail.com'),
(2,6,'aravind','balan','abcdef','pppp','11143','3333334444','male','2000-05-12','anandbalan123@gmail.com');

/*Table structure for table `farmingtype` */

DROP TABLE IF EXISTS `farmingtype`;

CREATE TABLE `farmingtype` (
  `farmingtype_id` int(11) NOT NULL AUTO_INCREMENT,
  `farmingtype_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`farmingtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `farmingtype` */

insert  into `farmingtype`(`farmingtype_id`,`farmingtype_name`) values 
(1,'Shifting cultivation');

/*Table structure for table `harmfull` */

DROP TABLE IF EXISTS `harmfull`;

CREATE TABLE `harmfull` (
  `harmfull_id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_id` int(11) DEFAULT NULL,
  `pest_id` int(11) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`harmfull_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `harmfull` */

insert  into `harmfull`(`harmfull_id`,`crop_id`,`pest_id`,`details`) values 
(1,1,1,'aphids are actually pests that infest rice crops, causing damage and yield loss. They are small, soft-bodied insects that feed on the juices of rice plants, leading to stunting and chlorosis.'),
(2,2,1,'Aphids are a type of insect pest that feeds on maize (corn) plants, specifically on the leaves and ears. They are a common problem in maize production, causing damage by removing plant sap, introducing diseases, and altering plant growth.'),
(3,4,1,'aphids (Aphis gossypii) are a pest species that infests cotton crops,Aphids are a type of sap-sucking insect that can cause damage to cotton plants by sucking sap, secreting honeydew, and transmitting plant viruses.'),
(4,1,4,'Yes, grasshoppers are considered pests in rice crops.both adult and nymph grasshoppers are nocturnal and feed on rice foliage at night, hiding at the base of the plant during the day. Under favorable conditions, adult grasshoppers can swarm and migrate, causing significant damage to the crop.');

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `farmer_id` int(11) DEFAULT NULL,
  `farmingtype_id` int(11) DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `item_image` varchar(100) DEFAULT NULL,
  `stock` varchar(100) DEFAULT NULL,
  `meassuring_unit` varchar(100) DEFAULT NULL,
  `costper_unit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `item` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`usertype`) values 
(1,'admin','admin','admin'),
(2,'anand','anand','customer'),
(3,'alex','alex','customer'),
(4,'jubyjksn@gmail.com','asdf','customer'),
(5,'anandbalan','anand','farmer'),
(6,'aravind','aravind','pending');

/*Table structure for table `orderdetails` */

DROP TABLE IF EXISTS `orderdetails`;

CREATE TABLE `orderdetails` (
  `orderdetails_id` int(11) NOT NULL AUTO_INCREMENT,
  `ordermaster_id` int(11) DEFAULT NULL,
  `item_id` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `total_amount` varchar(100) DEFAULT NULL,
  `orderdetails_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orderdetails_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `orderdetails` */

/*Table structure for table `ordermaster` */

DROP TABLE IF EXISTS `ordermaster`;

CREATE TABLE `ordermaster` (
  `ordermaster_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `totalamount` varchar(100) DEFAULT NULL,
  `order_date` varchar(100) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ordermaster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `ordermaster` */

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `ordermaster_id` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `payment_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `payment` */

/*Table structure for table `pest` */

DROP TABLE IF EXISTS `pest`;

CREATE TABLE `pest` (
  `pest_id` int(11) NOT NULL AUTO_INCREMENT,
  `pest` varchar(100) DEFAULT NULL,
  `details` varchar(10000) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`pest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pest` */

insert  into `pest`(`pest_id`,`pest`,`details`,`image`) values 
(1,'Aphids','Aphids are small sap-sucking insects and members of the superfamily Aphidoidea. Common names include greenfly and blackfly,[a] although individuals within a species can vary widely in color. The group includes the fluffy white woolly aphids. A typical life cycle involves flightless females giving live birth to female nymphs—who may also be already pregnant, an adaptation scientists call telescoping generations—without the involvement of males. Maturing rapidly, females breed profusely so that the number of these insects multiplies quickly. Winged females may develop later in the season, allowing the insects to colonize new plants. In temperate regions, a phase of sexual reproduction occurs in the autumn, with the insects often overwintering as eggs.','static/uploads/d1342ad8-ba28-4ccb-bd8b-27d1fe7bd48ejpg_1 - Copy.jpg'),
(3,'Armyworm','The fall armyworm is a species in the order Lepidoptera and one of the species of the fall armyworm moths distinguished by their larval life stage. The term \"armyworm\" can refer to several species, often describing the large-scale invasive behavior of the species\' larval stage. It is regarded as a pest and can damage and destroy a wide variety of crops, which causes large economic damage.','static/uploads/07ba4bb7-944a-4fe9-9167-b994edbe9dd4jpg_0 - Copy (4).jpg'),
(4,'Grasshopper','Grasshoppers are typically ground-dwelling insects with powerful hind legs which allow them to escape from threats by leaping vigorously. Their front legs are shorter and used for grasping food. As hemimetabolous insects, they do not undergo complete metamorphosis; they hatch from an egg into a nymph or \"hopper\" which undergoes five moults, becoming more similar to the adult insect at each developmental stage.The grasshopper hears through the tympanal organ which can be found in the first segment of the abdomen attached to the thorax; while its sense of vision is in the compound eyes, the change in light intensity is perceived in the simple eyes (ocelli). At high population densities and under certain environmental conditions, some grasshopper species can change colour and behavior and form swarms. Under these circumstances, they are known as locusts.','static/uploads/e646ee5f-5ab2-4b3d-b074-1a07ed2018adjpg_3 - Copy (2).jpg');

/*Table structure for table `pesticide` */

DROP TABLE IF EXISTS `pesticide`;

CREATE TABLE `pesticide` (
  `pesticide_id` int(11) NOT NULL AUTO_INCREMENT,
  `harmfull_id` int(11) DEFAULT NULL,
  `pesticide` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`pesticide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pesticide` */

insert  into `pesticide`(`pesticide_id`,`harmfull_id`,`pesticide`,`amount`,`image`) values 
(1,4,'Nolo bait(4.5kg)','2000','static/4b6f71de-d105-4c5d-9b5d-4f0f429256denolobait.webp'),
(2,1,'Garden Safe Brand Neem Oil Extract Concentrate, Insect Pesticide for Organic Gardening(1l)','1000','static/517a3f89-7fca-40a0-b951-779d10dc0887811sOBdyg7L._AC_SX679_.jpg');

/*Table structure for table `porderdetails` */

DROP TABLE IF EXISTS `porderdetails`;

CREATE TABLE `porderdetails` (
  `porderdetails_id` int(11) NOT NULL AUTO_INCREMENT,
  `pordermaster_id` int(11) DEFAULT NULL,
  `pesticide_id` int(11) DEFAULT NULL,
  `pquantity` varchar(100) DEFAULT NULL,
  `p_total` varchar(100) DEFAULT NULL,
  `pstatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`porderdetails_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `porderdetails` */

/*Table structure for table `pordermaster` */

DROP TABLE IF EXISTS `pordermaster`;

CREATE TABLE `pordermaster` (
  `pordermaster_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(100) DEFAULT NULL,
  `p_date` varchar(100) DEFAULT NULL,
  `p_amount` varchar(100) DEFAULT NULL,
  `p_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pordermaster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `pordermaster` */

/*Table structure for table `traning` */

DROP TABLE IF EXISTS `traning`;

CREATE TABLE `traning` (
  `traning_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `video_link` varchar(2000) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`traning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `traning` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
