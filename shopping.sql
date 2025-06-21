-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 1980 at 06:10 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'FOREIGN FURNITURES', 'BEST FOREIGN PRODUCT', '2017-01-24 19:17:37', '12-06-2022 06:10:53 AM'),
(4, 'DISCOUNT FURNITURES', 'Products', '2017-01-24 19:19:32', '12-06-2022 06:11:13 AM'),
(5, 'ALL CLASSES', ' when it comes to choosing the perfect dining table, design modern is the way to go. With dining table design, simple and stylish yet highly functional is the goal. Latest furniture materials.', '2017-01-24 19:19:54', '12-06-2022 06:13:01 AM'),
(6, 'FASHION FURNITURES', 'Fashion', '2017-02-20 19:18:52', '27-03-2022 11:29:49 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '2', 1, '2022-03-26 00:05:34', 'Debit / Credit card', NULL),
(8, 4, '21', 1, '2022-03-26 00:05:34', 'Debit / Credit card', NULL),
(9, 4, '13', 1, '2022-03-28 00:41:02', 'Debit / Credit card', NULL),
(10, 4, '12', 1, '2022-03-28 01:53:31', 'Debit / Credit card', NULL),
(11, 4, '9', 1, '2022-03-28 01:57:52', 'Debit / Credit card', NULL),
(12, 4, '6', 1, '2022-03-28 02:11:16', 'Internet Banking', NULL),
(13, 4, '18', 1, '2022-03-28 16:16:36', 'Debit / Credit card', NULL),
(14, 5, '2', 1, '2022-04-08 18:28:24', 'Debit / Credit card', NULL),
(15, 5, '12', 1, '2022-04-14 20:02:05', 'Debit / Credit card', NULL),
(16, 6, '14', 1, '2022-06-12 08:57:39', 'Debit / Credit card', NULL),
(17, 6, '23', 1, '2022-06-12 08:57:39', 'Debit / Credit card', NULL),
(18, 7, '24', 1, '2022-09-12 17:13:07', '', NULL),
(19, 7, '2', 1, '2022-09-12 17:20:36', '', NULL),
(20, 8, '24', 1, '2022-09-13 21:03:11', NULL, NULL),
(21, 7, '7', 1, '2022-09-14 16:53:00', '', NULL),
(22, 7, '14', 1, '2022-09-14 16:53:01', '', NULL),
(23, 1, '25', 1, '2022-09-17 18:16:06', 'Internet Banking', NULL),
(24, 9, '14', 1, '1980-01-04 08:23:32', 'Internet Banking', NULL),
(25, 9, '13', 1, '1980-01-04 10:11:14', 'Internet Banking', NULL),
(26, 1, '6', 1, '1980-01-04 12:48:59', NULL, NULL),
(27, 1, '25', 1, '1980-01-04 12:49:00', NULL, NULL),
(28, 1, '6', 1, '1980-01-04 12:52:00', NULL, NULL),
(29, 1, '23', 1, '1980-01-04 12:52:00', NULL, NULL),
(30, 1, '25', 1, '1980-01-04 12:52:00', NULL, NULL),
(31, 9, '12', 1, '1980-01-04 13:05:19', '', NULL),
(32, 9, '13', 1, '1980-01-05 08:04:18', 'Internet Banking', NULL),
(33, 9, '12', 1, '1980-01-05 14:14:19', '', NULL),
(34, 9, '12', 1, '1980-01-05 14:26:29', '', NULL),
(35, 9, '7', 1, '1980-01-06 05:01:19', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 22, 5, 4, 3, 'mubarak', 'my review', 'good one nice collection', '2022-04-08 18:40:46'),
(6, 24, 4, 4, 4, 'Education', 'my review', 'c xc ', '2022-06-07 10:57:03'),
(7, 7, 5, 3, 5, 'mubarak', 'awesome', 'beautiful design', '2022-09-10 22:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 5, 13, 'Klyne Slipcovered Chair', '02FURNITURE', 200000, 220000, '<h3>Overview</h3>\r\n\r\n<p>Our Klyne Chair and a Half is a compact lounge whose warm grey lines refresh the room with a casual attitude. Bigger than a chair, smaller than a loveseat and perfect for apartments and smaller home or use in conversational pairs for larger spaces. Narrow tapered arms cut a sleek profile and make for an even roomier experience. For the ultimate lounge, pull up the optional matching Klyne Ottoman and a Half. </p>\r\nDetails and Dimensions\r\n   <h5> Certified sustainable kiln-dried hardwood frame</h5>\r\n   <h5> Seat cushions are soy- or plant-based polyfoam encased in synthetic ticking</h5>\r\n    <>Tight back is filled with soy-based polyfoam and</h5>\r\n   <h5> Eight-way, hand-tied spring suspension with partially</h5>\r\n    <h5>Back cushions are fiber in synthetic ticking</h5>\r\n   <h5> Flexolator spring suspension</h5>\r\n   <h5> Benchmade</h5>\r\n    <h5>Upholstered in polyester</h5>', 'bigChair3.jpg', 'bigChair3and1.jpg', 'bigChair3and2.jpg', 100, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 5, 9, 'Harbor Bed', '02FURNITURES', 500000, 600000, '<div class="_2PF8IO" style="box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;"><ul style="box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;"><li class="_1tMfkh" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Why we love it: Budget-friendly furniture and affordable decor for every space in your home. ... </li></ul></div>', 'bigBed11and3.jpg', 'bigBed11and2.jpg', 'bigBed11and1.jpg', 0, 'In Stock', '2017-01-30 16:59:00', ''),
(6, 5, 11, ' Ankara Chair', '02FURNITURES', 120000, 130000, '<h1>Overview</h1>\r\nAn eye-catching chair designed to be seen from every angle. Gracefully curved barrel back is precision-cut of mahogany veneer over engineered wood in an intricate pattern inspired by Indonesian mosaics. Solid mahogany frame flows seamlessly from the clean, contemporary sweep of the arms to the tapered back legs that follow the downward angle of the upper framework\r\n\r\n<h2>Details and Dimensions</h2>\r\nPlantation grown solid mahogany and mahogany veneer over engineered wood.\r\nWarm java finish and clear protective lacquer.\r\nSeat cushion is soy-based polyfoam with fiber.\r\nStain-resistant cushion cover is woven polyester.\r\n Back cushions are fiber in synthetic ticking.\r\nCushion is polyfoam with fiber in downproof ticking.\r\nCane seat with synthetic web suspension.\r\n Made in USA and Indonesia.\r\n\r\n', 'bigChair7.jpg', 'bigChair7and1.jpg', 'bigChair7and3.jpg', 0, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 5, 13, 'Tess Chair Big chair ', '02FURNITURES', 135000, 150000, '<h2>Overview</h2>\r\n\r\n<p>Classic parlor style forgoes formality with contemporary proportions in a bold new hue. Tailored in a dimensional basketweave, rich texture accentuates deep purple tones from every sweeping curve. Alluring lines and refined pedigree relax into a low, loungey seat framed by a shapely back and curved track arms.</p>\r\n<h2>Details and Dimensions</h2>\r\n    Certified sustainable, kiln-dried hardwood frame\r\n    Seat cushion is soy-based polyfoam with fiber\r\n    Back cushion is soy-based polyfoam with fiber\r\n    Sinuous wire spring suspension\r\n    Back cushions are fiber in synthetic ticking\r\n    100% polyester fabric\r\n    Hardwood legs with jet stain\r\n    Made in Virginia, USA\r\n<h3>Overall Dimensions:</h3>\r\n    <li>Width: 32"</li>\r\n   <li> Depth: 33"</li>\r\n   <li> Height: 35"</li>\r\n   <li> SeatDepth: 22"</li>\r\n   <li> Height: 17"</li>\r\n', 'bigChair8.jpg', 'bigChair8and1.jpg', 'bigChair9and2.jpg', 0, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 5, 8, 'Rojo Chest', '02FURNITURES', 19500, 20000, '<h3>Overview</h3>\r\n\r\n<P>With all the warmth and rustic charm of a one-of-a-kind antique, the rich waxed patina of this red storage cabinet adds instant character to any room. Crafted of shesham and mango wood with traditional tongue-and-groove joinery, the cabinet is topped with architectural crown moulding</P>', 'bigChest3and2.jpg', 'bigChest3.jpg', 'bigChest3and3.jpg', 0, 'In Stock', '2017-02-04 04:11:54', ''),
(9, 4, 5, 'Brighton Bed', '02FURNITURES', 65000, 70000, '<h3>Overview</h3>\r\n\r\n<p>Sleek and sheltering, Pavillion makes a sophisticated sleep statement in solid mahogany and mahogany veneer with a black lacquer finish. Dramatically tapered posts support canopy rails that lend themselves to romantic draping. Platform bed designed for use with mattress; no foundation required. Mattresses and optional bunky board available (sold separately). </p>', 'bigBed1and3.jpg', 'bigBed1and2.jpg', 'bigBed1.jpg', 0, 'In Stock', '2017-02-04 04:17:03', ''),
(12, 5, 8, ' Kavari Chest', '02FURNITURES', 32000, 35000, '<h3>Overview</h3>\r\n\r\n<p>Our sleek new "antique" of richly grained acacia wood meets the modern demand for compact storage with open and closed spaces. Each piece is handcrafted with tongue-and-groove joinery and hand-finished with a two-tone distressing technique that produces a rich, glowing brown patina with undertones of black.</p>\r\n', 'bigChest2.jpg', 'bigChest2and1.jpg', 'bigChest2and3.jpg', 0, 'In Stock', '2017-02-04 04:28:17', ''),
(13, 4, 6, 'All in One Office Collection', '02FURNITURES', 670000, 700000, 'Make your living space truly feel like home with our range. From beautiful furniture to stylish home furnishings and accessories, youâ€™ll find everything you need to create a space you love spending your time in. No matter the aesthetic youâ€™re going for in your home, youâ€™ll find designs to help you achieve it, whether youâ€™re opting for Scandi minimalism, mid century chic, contemporary or classic. Thereâ€™s something here for every home.', 'bigChest12and1.jpg', 'bigChest12and1.jpg', 'bigChest12and1.jpg', 0, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'All in One Carbinet', '02FURNITURES', 195000, 200000, '<h3>Make your living space truly feel like home with our range. From beautiful furniture to stylish home furnishings and accessories, youâ€™ll find everything you need to create a space you love spending your time in. No matter the aesthetic youâ€™re going for in your home, youâ€™ll find designs to help you achieve it, whether youâ€™re opting for Scandi minimalism, mid century chic, contemporary or classic. Thereâ€™s something here for every home.&#128512; &#128516; &#128525; &#128151;</h3>', 'bigChest11and3.jpg', 'bigChest11and3.jpg', 'bigChest11and3.jpg', 0, 'In Stock', '2017-02-04 04:32:15', ''),
(17, 5, 9, 'Induscraft Solid Wood King Bed With Storage', 'Induscraft', 32566, 0, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Induscraft Solid Wood King Bed With Storage</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Nilkamal Ursa Metal Queen Bed', 'Nilkamal', 6523, 0, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">@home by Nilkamal Ursa Metal Queen Bed</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:42:27', ''),
(20, 6, 12, 'Clara Chair', '02FURNITURE', 140000, 150000, '<h2>Overview</h2>\r\n\r\nThe elegant lines of the classic library wingback unwind unexpectedly into a streamlined recliner. Even the hidden pushback mechanism conceals its relaxed side. Impeccably tailored in top-grain, full-aniline-dyed leather in luscious cherry with subtle black undertones that lend a multidimensional effect. Self-welt detail traces sleek frame from curved profile to keyhole arms. And the comfort level is anything but stuffy. Sink-in soft fiber-down blend cushion invites long reads and longer conversations', 'bigChair11.jpg', 'bigChair11and1.jpg', 'bigChair11and3.jpg', 0, 'Out of Stock', '2017-03-10 20:19:22', ''),
(21, 5, 8, 'carbinet', '02FURNITURES', 80000, 100000, 'FEEL THE BEAUTY OF OUR PRODUCT<br>', 'cabinet.jpg', 'cabinet.jpg', 'cabinet.jpg', 6000, 'In Stock', '2022-03-25 22:57:53', NULL),
(22, 6, 12, 'Grayson Chair', '02FURNITURES', 450000, 500000, '<h3>Overview<h3>\r\n\r\nOur classic Grayson chair has all the authentic provenance of the original, from its low seat to rakish, angled back that sits deep and encourages reading every single word on every single page of the Sunday Times. A handsome welted arc at the top and slightly rounded arms are very much of the period. Plush as it is, the real luxury is the sleek and silky Italian leather upholstery, dyed an elegant shade of muted aqua. Oak legs finished in weathered grey are the perfect complement. <br>\r\n<h3>Details and Dimensions<h/3>\r\n\r\n    US-sourced kiln dried hardwood<br>\r\n    Seat cushion is soy-based polyfoam wrapped in\r\n    Tight back is filled with soy-based polyfoam and\r\n    Eight-way, hand-tied spring suspension with partially<br>\r\n    Top-grain, full-aniline leather<br>\r\n    Self-welt detailing<br>\r\n    Benchmade<br>\r\n    Made in North Carolina, USA<br>\r\n', 'bigChair2.jpg', 'bigChair2and2.jpg', 'bigChair2and1.jpg', 10000, 'In Stock', '2022-04-08 18:39:30', NULL),
(23, 3, 14, 'Dawson UK bed', '02FURNITURES', 150000, 200000, 'feel the beauty of our product', 'imgBed2W300xH439.jpg', 'imgBed2W298xH439.jpg', 'imgBed2W298xH439.jpg', 10000, 'In Stock', '2022-06-07 10:45:19', NULL),
(24, 3, 14, 'Dawson Bed', '02FURNITURES', 500000, 600000, 'Details and Dimensions\r\n\r\n    Solid poplar, birch and hardwood veneer, and engineered wood\r\n\r\n    Coffee finish with protective lacquer\r\n\r\n    Adjustable for mattress and foundation or mattress only for under-bed storage\r\n\r\n    Slat system with support legs\r\n\r\n    Trundle bed accommodates our 38"x70" trundle mattress\r\n\r\n    Fully disassembles for ease of delivery and installation\r\n\r\n    Made in Vietnam\r\n\r\nOverall Dimensions:\r\n\r\n    Width: 44.5"\r\n\r\n    Depth: 81"\r\n\r\n    Height: 54.5"\r\n', 'bigBed4and2.jpg', 'bigBed4and3.jpg', 'bigBed4and1.jpg', 1000, 'In Stock', '2022-06-07 10:55:14', NULL),
(25, 3, 14, ' Steppe Bed', '02Furniture', 600000, 0, 'Details and Dimensions\r\n\r\n    Certified sustainable kiln-dried hardwood frame\r\n\r\n    Soy-based foam cushioning\r\n\r\n    Poly-cotton-acrylic blend fabric\r\n\r\n    Fabric has soil and stain protectant\r\n\r\n    Slat system with support legs\r\n\r\n    Platform bed designed for use with mattress; no foundation required\r\n\r\n    Made in Russia\r\n\r\nOverall Dimensions:\r\n\r\n    Width: 40"\r\n\r\n    Depth: 30"\r\n\r\n    Height: 70"\r\n', 'bigBed6.jpg', 'bigBed6and1.jpg', 'bigBed6and2.jpg', 10000, 'In Stock', '2022-09-17 18:06:08', NULL),
(26, 3, 14, 'Barrington Chair', '02Furniture', 400000, 0, '<h3>Details and Dimensions</h3><br>\r\n\r\n    Seat cushion is soy-based polyfoam with feather-down blend wrap in downproof ticking<br>\r\n\r\n    Back cushions are fiber in synthetic ticking<br>\r\n\r\n    Sinuous wire spring suspension<br>\r\n\r\n    Solid maple, mocha stained legs<br>\r\n\r\n    Made in Brazil<br>\r\n\r\nOverall Dimensions:<br>\r\n\r\n    Width: 40"<br>\r\n\r\n    Depth: 40.5"<br>\r\n\r\n    Height: 35.5"<br>\r\n\r\n    SeatDepth: 33.25"<br>\r\n\r\n    Height: 25"<br>\r\n', 'bigChair10.jpg', 'bigChair10and1.jpg', 'bigChair10and3.jpg', 10000, 'In Stock', '1980-01-05 14:52:13', NULL),
(27, 3, 14, 'Blake Lounge Chair', '02Furniture', 600000, 0, '<h2>Details and Dimensions</h2><br>\r\n\r\n    Solid teak<br>\r\n\r\n    Sustainable, woven mesh<br>\r\n\r\n    Top-grain, full-aniline leather<Br>\r\n\r\n    Frame has an espresso finish<br>\r\n\r\n    Eight-way, hand-tied spring suspension with partially<br>\r\n\r\n    Back cushions are fiber in synthetic ticking<br>\r\n\r\n    Made in Indonesia and USA<br>\r\n\r\n<h3>Overall Dimensions:</h3><br>\r\n\r\n    Width: 30"<br>\r\n\r\n    Depth: 30"<br>\r\n\r\n    Height: 34"<br>\r\n\r\n    SeatDepth: 21.5"<br>\r\n\r\n    Height: 5"<br>\r\n', 'bigChair6.jpg', 'bigChair6and1.jpg', 'bigChair6and2.jpg', 12000, 'In Stock', '1980-01-05 15:03:57', NULL),
(28, 3, 14, 'Steamer Chest', '02Furniture', 450000, 0, '<h2>Details and Dimensions</h2><br>\r\n\r\n    Solid shesham wood<br>\r\n\r\n    Clove lacquer finish<br>\r\n\r\n    Iron hardware with clear powdercoat finish<br>\r\n\r\n    Two adjustable shelves<br>\r\n\r\n    Made in Canada<br>\r\n\r\n<h3>Overall Dimensions:</h3><br>\r\n\r\n    Width: 44"<br>\r\n\r\n    Depth: 24"<br>\r\n\r\n    Height: 18"<br>\r\n', 'bigChest10and2.jpg', 'bigChest10and2.jpg', 'bigChest10and2.jpg', 10000, 'In Stock', '1980-01-05 15:11:39', NULL),
(29, 6, 12, 'Dash Bed', '02Furniture', 470000, 0, '<h2>Details and Dimensions</h2><br>\r\n\r\n    Solid alder and alder veneers, with low-emission engineered wood<br>\r\n\r\n    Translucent espresso/grey matte lacquer finish<br>\r\n\r\n    Polyester-rayon blend fabric panels<br>\r\n\r\n    Platform bed designed for use with mattress; no foundation required<br>\r\n\r\n    Maximum weight 800 pounds (includes weight of mattress, optional foundation, occupants)<br>\r\n\r\n    Made in Finland<br>\r\n\r\n<h3>Overall Dimensions:</h3><br>\r\n\r\n    Width: 45"<br>\r\n\r\n    Depth: 20"<br>\r\n\r\n    Height: 78.8"<br>\r\n', 'bigBed7.jpg', 'bigBed7and1.jpg', 'bigBed8.jpg', 9000, 'In Stock', '1980-01-05 15:18:28', NULL),
(30, 4, 6, 'Donegal Chair', '02Furniture', 490000, 0, '<h2>Details and Dimensions</h2>\r\n\r\n    Tight back is soy-based polyfoam and fiber<br>\r\n\r\n    Tuxedo-stained hardwood legs<br>\r\n\r\n    Upholstered in 100% polyester velvet<br>\r\n\r\n    Hardwood legs with jet stain<br>\r\n\r\n    Made in Sweden<br>\r\n\r\n<h3>Overall Dimensions:</h3><br>\r\n\r\n    Width: 33"<br>\r\n\r\n    Depth: 36.5"<br>\r\n\r\n    Height: 33.5"<Br>\r\n\r\n    SeatDepth: 15.25"<br>\r\n', 'imgChair1W300xH439.jpg', 'imgChair1W300xH439.jpg', 'imgChair1W300xH439.jpg', 10000, 'Out of Stock', '1980-01-05 15:23:11', NULL),
(31, 4, 5, ' Cubix Bed', '02Furniture', 490000, 0, '<h2>Details and Dimensions</h2><br>\r\n\r\n    Solid sustainable mango wood, mango veneer and low-emission engineered wood<br>\r\n\r\n    Clove stain with lacquer finish<br>\r\n\r\n    Slat system with support legs<br>\r\n\r\n    Platform bed designed for use with mattress; no foundation required<br>\r\n\r\n    Maximum weight capacity: 800 pounds (includes weight of mattress, optional foundation, occupants)<br>\r\n\r\n    Made in Sweden<br>\r\n\r\n<h3>Overall Dimensions:</h3>\r\n\r\n    Width: 55"<br>\r\n\r\n    Depth: 32"<Br>\r\n\r\n    Height: 79.5"<br>\r\n', 'bigBed8.jpg', 'bigBed8and1.jpg', 'bigBed8and2.jpg', 0, 'In Stock', '1980-01-05 15:33:37', NULL),
(32, 4, 3, ' Parker Spirit Chest', '02Furniture', 400000, 0, '<h3>Details and Dimensions</h3><br>\r\n\r\n    Solid birch, solid ash and ash veneer, low-emission engineered wood<br<\r\n\r\n    Black lacquer finish<br>\r\n\r\n    Brushed nickel-finish pulls<br>\r\n\r\n    Made in Columbia<br>\r\n\r\n<h3>Overall Dimensions: </h3> <br>\r\n\r\n    Width: 33"<br>\r\n\r\n    Depth: 16"<br>\r\n\r\n    Height: 36"<br>\r\n\r\n<h4>Door Overall:</h4><br>\r\n\r\n    Width: 44"<br>\r\n\r\n    Depth: 16"<br>\r\n\r\n    Height: 37<br>', 'bigChest6and1.jpg', 'bigChest6and2.jpg', 'bigChest6and3.jpg', 0, 'In Stock', '1980-01-05 15:39:13', NULL),
(33, 4, 3, 'Brown Chair', '02Furniture', 430000, 0, '<h3>Details and Dimensions<br></h3>\r\n\r\n    Eco-friendly construction<br>\r\n\r\n    Certified sustainable kiln-dried hardwood frame<br>\r\n\r\n    Seat cushion is soy-based polyfoam with fiber wrapped in feather-down blend<br>\r\n\r\n    Tight back is soy-based polyfoam<br>\r\n\r\n    Full-aniline leather<br>\r\n\r\n    Nailhead trim<br>\r\n\r\n    Made in France<br>\r\n\r\n<h3>Overall Dimensions:</h3><br>\r\n\r\n    Width: 35"<br>\r\n\r\n    Depth: 40.5"<br>\r\n\r\n    Height: 42.5"<br>\r\n\r\n    SeatDepth: 21.25"<br>\r\n', 'imgChair2W300xH439.jpg', 'imgChair2W300xH439.jpg', 'imgChair2W300xH439.jpg', 0, 'In Stock', '1980-01-05 15:47:47', NULL),
(34, 6, 12, ' Sierra Bed', '02Furniture', 640000, 0, '<h2>Details and Dimensions</h2><br>\r\n\r\n    Solid oak and oak veneer frame with water-based finish<br>\r\n\r\n    100% jute strapping<br>\r\n\r\n    Solid pine slat system with support legs<br>\r\n\r\n    Platform bed designed for use with mattress; no foundation required<br>\r\n\r\n    Maximum weight capacity: 800 pounds (includes weight of mattress, optional foundation, occupants)<br>\r\n\r\n    Made in Iran<br>\r\n\r\n<h3>Overall Dimensions:</h3><br>\r\n\r\n    Width: 40"<br>\r\n\r\n    Depth: 29"<br>\r\n\r\n    Height: 79.80"<br>\r\n', 'bigBed12.jpg', 'bigBed12and1.jpg', 'bigBed12and3.jpg', 0, 'In Stock', '1980-01-06 03:53:14', NULL),
(35, 6, 12, ' Ainsworth Chest', '02Furniture', 41000, 0, '<h2>Details and Dimensions</h2>\r\n\r\n    Solid American walnut, walnut veneer and low-emission engineered wood<br>\r\n\r\n    Natural oil and wax finish<br>\r\n\r\n    Zinc hardware with a natural steel finish<br>\r\n\r\n    Includes both wood and glass door panels<br>\r\n\r\n    Three adjustable shelves<br>\r\n\r\n    Made in USA<br>\r\n\r\n<h3>Overall Dimensions:</h3><br>\r\n\r\n    Width: 40"<br>\r\n\r\n    Depth: 17"<br>\r\n\r\n    Height: 60"<br>\r\n\r\n<h3>Door Overall:</h3><br>\r\n\r\n    Width: 34"<br>\r\n\r\n    Depth: 16"<br>\r\n\r\n    Height: 48"<br>\r\n\r\n<h3>Shelf Overall:</h3><br>\r\n\r\n    Width: 35"<br>\r\n\r\n    Depth: 42"<br>\r\n\r\n    Height: 32.5"<br>\r\n', 'bigChest2.jpg', 'bigChest2and1.jpg', 'bigChest2and2.jpg', 0, 'In Stock', '1980-01-06 04:01:29', NULL),
(36, 4, 4, 'LaSalla Bed', '02Furniture', 620000, 0, '<h2>Details and Dimensions</h2><br>\r\n\r\n    Solid maple, solid ash and engineered wood<br>\r\n\r\n    Catalyzed black satin lacquer<br>\r\n\r\n    Slat system with support leg<br>\r\n\r\n    Platform bed designed for use with mattress; no foundation required<br>\r\n\r\n    Maximum weight 800 pounds (includes weight of mattress, optional foundation, occupants)<br>\r\n\r\n    Made in USA<br>\r\n\r\n<h3>Overall Dimensions:</h3><br>\r\n\r\n    Width: 56"<br>\r\n\r\n    Depth: 42"<br>\r\n\r\n    Height: 75"<br>\r\n', 'bigBed11and3.jpg', 'bigBed11and2.jpg', 'bigBed11and1.jpg', 0, 'Out of Stock', '1980-01-06 04:25:43', NULL),
(37, 4, 4, ' Tate Bed', '02Furniture', 490000, 0, '<h3>Details and Dimensions</h3><br>\r\n\r\n    Poplar veneer and engineered wood<br>\r\n\r\n    Solid poplar posts<br>\r\n\r\n    Hand-distressed<br>\r\n\r\n    Taupe with whitewash finish<br>\r\n\r\n    Fir and poplar wood slat system with support legs<br>\r\n\r\n    Made in Italy<br>\r\n\r\n<h3>Overall Dimensions:</h3><br>\r\n\r\n    Width: 35"<br>\r\n\r\n    Depth: 40"<br>\r\n\r\n    Height: 85"<br>\r\n', 'bigBed10.jpg', 'bigBed10and1.jpg', 'bigBed10and1.jpg', 10000, 'In Stock', '1980-01-06 04:37:38', NULL),
(38, 4, 4, ' Dawson Chest', '02Furniture', 45000, 0, '<h3>Details and Dimensions</h3><br>\r\n    Solid hardwood and low-emission engineered wood<br>\r\n    White lacquer finish<br>\r\n    Brushed nickel hardware<br>\r\n    Tempered glass door panes<br>\r\n    Two adjustable shelves<br>\r\n    Made in Thailand<br>\r\n<h3>Overall Dimensions:</h3><br>\r\n    Width: 36"<br>\r\n    Depth: 15"<br>\r\n    Height: 49"<br>\r\n<h3>Door Overall:</h3><br>\r\n    Width: 33"<br>\r\n    Depth: 14"<br>\r\n    Height: 22"<br>\r\n<h3>Shelf Overall:</h3><br>\r\n    Width: 32"<br>\r\n    Depth: 12"<br>\r\n    Height: 42"<br>\r\n', 'bigChest5.jpg', 'bigChest5and1.jpg', 'bigChest5and2.jpg', 0, 'In Stock', '1980-01-06 04:50:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Furnitures', '2017-01-26 16:29:09', '26-03-2022 04:48:15 AM'),
(4, 4, 'Furnitures', '2017-01-30 16:55:48', '26-03-2022 04:48:35 AM'),
(5, 4, 'Furnitures', '2017-02-04 04:12:40', '26-03-2022 04:48:49 AM'),
(6, 4, 'Furnitures', '2017-02-04 04:13:00', '26-03-2022 04:49:06 AM'),
(7, 4, 'Carbinets', '2017-02-04 04:13:27', '26-03-2022 04:49:38 AM'),
(8, 5, 'Carbinets', '2017-02-04 04:13:54', '26-03-2022 04:17:00 AM'),
(9, 5, 'Beds', '2017-02-04 04:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 04:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Furnitures', '2017-03-10 20:12:59', '26-03-2022 04:50:07 AM'),
(13, 5, 'Chairs', '2022-03-27 17:38:42', NULL),
(14, 3, 'UK USED FURNITURES', '2022-04-08 18:37:18', '08-06-2022 10:49:58 AM'),
(15, 6, 'Brand', '1980-01-06 04:19:49', NULL),
(16, 6, 'New ', '1980-01-06 04:20:22', NULL),
(17, 6, 'Brand New Furniture', '1980-01-06 04:20:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-25 23:59:20', '26-03-2022 05:52:54 AM', 1),
(2, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-26 00:24:46', '26-03-2022 05:54:50 AM', 1),
(3, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-26 00:28:43', NULL, 1),
(4, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-27 18:41:32', NULL, 1),
(5, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-27 21:16:21', NULL, 1),
(6, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-27 21:45:46', NULL, 1),
(7, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-28 00:36:42', '28-03-2022 06:06:56 AM', 1),
(8, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-28 00:38:24', NULL, 0),
(9, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-28 00:38:39', NULL, 1),
(10, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-28 01:02:36', NULL, 1),
(11, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-28 01:25:59', NULL, 1),
(12, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-28 16:15:21', NULL, 1),
(13, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-03 03:56:07', NULL, 0),
(14, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-03 03:57:04', NULL, 1),
(15, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-03 06:47:24', NULL, 1),
(16, 'muhammad@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-08 18:23:51', NULL, 0),
(17, 'mubcee@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-08 18:25:50', NULL, 1),
(18, 'mubcee@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-14 19:44:05', NULL, 1),
(19, 'mubcee@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-14 20:01:37', NULL, 1),
(20, 'mubcee@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-21 17:10:32', '21-04-2022 10:53:48 PM', 1),
(21, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-04-21 17:24:03', NULL, 0),
(22, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-06-03 06:10:59', NULL, 0),
(23, 'muhammad@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-06-03 06:11:08', NULL, 0),
(24, 'maishanu@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-06-03 06:11:18', NULL, 0),
(25, 'mkmubcee@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-06-03 06:11:25', NULL, 0),
(26, 'mubarak@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-06-03 06:11:47', NULL, 0),
(27, 'mubcee@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-06-03 06:11:58', NULL, 0),
(28, 'muhammad@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-06-03 06:12:05', NULL, 0),
(29, '02furnitures@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-06-08 05:22:47', NULL, 1),
(30, '02furnitures@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-06-10 08:28:01', NULL, 1),
(31, '02furnitures@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-06-12 08:56:17', NULL, 1),
(32, '02furnitures@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '1980-01-06 16:11:47', NULL, 1),
(33, '', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-05 10:52:48', NULL, 0),
(34, 'mubarak@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-12 17:08:42', NULL, 0),
(35, 'mubarak@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-12 17:09:01', NULL, 0),
(36, 'mubarakkasim@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-12 17:10:22', NULL, 0),
(37, 'mubarakkasim@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-12 17:10:48', NULL, 0),
(38, 'mubarakkasim@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-12 17:11:14', NULL, 0),
(39, 'mubaarakkasim@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-12 17:12:07', NULL, 1),
(40, 'mubarak@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-13 20:56:17', NULL, 0),
(41, 'mubarak@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-13 20:56:37', NULL, 0),
(42, 'mubarak@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-13 20:57:04', NULL, 0),
(43, 'mubara@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-13 20:58:34', NULL, 1),
(44, 'mubarak@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-14 16:18:48', NULL, 0),
(45, 'mubaarakkasim@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-14 16:19:02', NULL, 1),
(46, 'maishanu@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-17 17:56:33', NULL, 0),
(47, 'mubara@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-17 17:56:59', NULL, 0),
(48, 'mubarak@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-17 17:57:49', NULL, 0),
(49, 'mubarak@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-17 17:58:13', NULL, 0),
(50, 'mubarakk@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-09-17 17:59:18', NULL, 1),
(51, 'maishanu@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-04 08:22:48', NULL, 0),
(52, 'mubarakk@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-04 08:22:54', NULL, 1),
(53, 'maishanu@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-04 10:02:20', NULL, 0),
(54, 'mubarakk@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-04 10:02:35', NULL, 1),
(55, 'admin@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-04 13:00:06', NULL, 0),
(56, 'mubarakk@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-04 13:00:18', '04-01-1980 06:49:02 PM', 1),
(57, 'mubarakk@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-04 15:53:07', NULL, 1),
(58, 'mubarakk@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-05 08:03:43', NULL, 1),
(59, 'mubarakk@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-05 14:05:11', '05-01-1980 07:43:25 PM', 1),
(60, 'mubarak@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-05 14:13:59', NULL, 0),
(61, 'mubarakk@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-05 14:14:12', NULL, 1),
(62, 'mubarakk@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '1980-01-06 05:01:12', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'mubarak ', 'mubarak@gmail.com', 906850054, 'dcd0fdaa317b10ae8b0f8db6f9d41fad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 23:58:33', NULL),
(5, 'mubarak', 'mubcee@gmail.com', 906850054, '9007a1505f9499a7e34076d415a7fcaf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-08 18:25:30', NULL),
(6, 'mubarak', '02furnitures@gmail.com', 906850054, '3917b35f95ac2cf0ec9f71224ee1d0f3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 05:22:31', NULL),
(7, 'mubarak', 'mubaarakkasim@gmail.com', 234906850, '3917b35f95ac2cf0ec9f71224ee1d0f3', 'tukur tukur', 'kauna', 'zaria', 808888, 'tukur tukur', 'kaduna', 'zaria', 808888, '2022-09-12 17:10:02', NULL),
(8, 'mubarak', 'mubara@gmail.com', 1234567890, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 20:55:55', NULL),
(9, 'mubarak', 'mubarakk@gmail.com', 2345678, '827ccb0eea8a706c4c34a16891f84e7b', 'tk', 'kaduna', 'zaria', 808888, 'tk', 'kaduna', 'zaria', 808888, '2022-09-17 17:58:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 8, '2022-03-27 21:17:04'),
(4, 9, 20, '1980-01-04 13:17:21');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
