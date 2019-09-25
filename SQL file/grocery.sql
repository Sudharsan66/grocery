-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2019 at 06:53 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'admin', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Fruits & Vegatables', '', '2019-09-24 06:28:23', '24-09-2019 11:59:56 AM'),
(3, 'Eggs & Meat', '', '2019-09-24 06:30:04', '24-09-2019 12:00:39 PM'),
(4, 'Dairy products', '', '2019-09-24 06:31:27', NULL),
(5, 'Others', '', '2019-09-24 06:31:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
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
  `quantity` varchar(250) NOT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `quantity`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'Apple', 'Apple', 120, 150, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Green apples have a pleasing light-green coloured skin with a sweet and sour taste. They contain more fiber, less carbohydrates and sugar than red apples. Premium apples are handpicked by our experts to give you the best quality apples</span><br>', 'apple1.png', 'apple2.png', 'apple3.png', 0, '1kg', 'In Stock', '2019-09-24 06:41:36', NULL),
(2, 1, 1, 'Tomato', 'Tomato', 22, 27, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Local tomatoes are partly sour and partly sweet and contain many seeds inside which are edible. The red colour present in tomatoes is due to lycopene, an anti-oxidant.&nbsp;</span><br>', 'tomato1.png', 'tomato2.png', 'tomato3.png', 0, '1kg', 'In Stock', '2019-09-24 06:46:07', NULL),
(3, 1, 2, 'Potato', 'Potato', 15, 18, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\"><b>Potatoes have rich and smooth texture filling, reasonable in calories, non-fattening, and are nutrient dense, which means you obtain many nutrients for the amount of calories they have. It is a superior supply of carbohydrates, dietary fiber and numerous minerals like potassium, copper, iron and magnesium. It is also rich in phytochemical antioxidants like flavonoids, other B vitamins including folate.&nbsp;</b></span><br>', 'potato1.png', 'potato2.png', 'potato3.png', 0, '1kg', 'In Stock', '2019-09-24 07:17:25', NULL),
(4, 1, 2, 'Ladies Finger', 'Vegetable', 25, 22, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\"><b>Ladies finger is a green vegetable with a tip at the end and a lighter green head, which is inedibe and to be thrown away. It tastes mild and slightly grassy.</b>&nbsp;</span><br>', 'ldf1.png', 'ldf1.png', 'ldf1.png', 0, '1kg', 'In Stock', '2019-09-24 07:19:55', NULL),
(5, 3, 5, 'Chicken Boneless', 'meat', 189, 209, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\"><b>&nbsp;Boneless Chicken Breast is not only tasty and good for health but also it is packed with nutrition which makes it all the more desired. The small boneless chunks take less time to cook and can be used in both Indian and Continental dishes. Depending on your choice of food, you can prepare the gravy or sauce and simply cook the chicken in it.</b></span><br>', 'chicken.png', 'chicken.png', 'chicken.png', 0, '500g', 'In Stock', '2019-09-24 07:23:03', NULL),
(6, 3, 5, 'Chicken - Curry Cut Without Skin', 'meat', 220, 260, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\"><b>Chicken is healthier without the fatty skin. Fresho skinless chicken pieces provides immense value for restaurants, catering, outdoor grilling and family meals, as it has no extra hormones or steroids and it is effortless to cook.</b></span><br>', 'chicken2.png', 'chicken2.png', 'chicken2.png', 0, '1 kg', 'In Stock', '2019-09-24 07:25:14', NULL),
(7, 3, 3, 'Eggs', 'Eggs - Table Tray, 30 pcs', 176, 218, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\"><b>Eggs are used for a variety of dishes and purposes. An egg is a preferred form of breakfast. One can pick up a tray of eggs collected from the best farm yards to start the day with a healthy ingredient.</b></span><br>', 'eggs2.png', 'eggs2.png', 'eggs2.png', 0, '30pieces', 'In Stock', '2019-09-24 07:29:31', NULL),
(8, 3, 6, 'Mutton - Seekh Kebab', 'Mutton', 400, 450, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\"><b>Mutton Seekh Kebab are made from FreshMutton Meat with Fresh Vegetable which gives you best taste.</b></span><br>', 'mutton1.png', 'mutton2.png', 'mutton3.png', 0, '1 kg', 'In Stock', '2019-09-24 07:37:23', NULL),
(9, 3, 16, 'Chicken - Whole Leg', 'chicken', 295, 275, ' also includes a few exclusive features, which are: it provides India\'s first certified Antibiotic Free chicken, they contain no hormones, residues, or growth promoters and all chicken pieces are freshly machine cut, juicy and tender.', 'chicken3.png', 'chicken3.png', 'chicken3.png', 0, '3 pieces', 'In Stock', '2019-09-24 07:42:21', NULL),
(10, 3, 7, 'Dry Fish Nathili, 80 g', 'Fish', 80, 95, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">The oldest traditional way of preserving fish is drying, and is still considered one of the most effective preservation methods.</span><br>', 'fish1.png', 'fish2.png', 'fish3.png', 0, '80g', 'In Stock', '2019-09-24 07:45:43', NULL),
(11, 4, 9, 'Toned Milk, 1 L ', 'Milk', 62, 66, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Cow milk is UHT processed milk with Min.3.% fat and Min. 8.5% SNF. Suitable for all generation.</span><br>', 'milk1.png', 'milk2.png', 'milk3.png', 0, '1/2 ltrs', 'In Stock', '2019-09-24 07:49:24', NULL),
(12, 4, 9, 'Toned Milk, 500 ml', 'Milk', 25, 28, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Cow milk is UHT processed milk with Min.3.% fat and Min. 8.5% SNF. Suitable for all generation.</span><br>', 'milk1.png', 'milk2.png', 'milk3.png', 0, '1 ltr', 'In Stock', '2019-09-24 07:51:13', NULL),
(13, 4, 10, ' Curd - Farm Fresh, 2x500 g Multi Pack', 'Curd', 70, 75, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">urd Farm Fresh is a rich supply of calcium and proteins. Prepared from better quality pasteurized toned milk to provide you the right width and texture. The live and active bacterial culture included in Curd hells digestion and lets you live a strong active life.</span><br>', 'curd1.png', 'curd1.png', 'curd1.png', 0, '1 ltr', 'In Stock', '2019-09-24 07:53:12', NULL),
(14, 4, 11, 'Masti Buttermilk - Spice, 180 ml ', 'bmilk', 10, 12, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Masti Spice Buttermilk is a natural milk-based drink which will refresh you immediately on a hot summer afternoon. The slightly sour liquid spiced up with various Indian spices is a healthy alternative to sodas and cold drinks during summers.</span><br>', 'bmilk1.png', 'bmilk2.png', 'bmilk3.png', 0, '1/2 litres', 'In Stock', '2019-09-24 07:55:37', NULL),
(15, 4, 12, 'Malai Paneer,', 'Paneer', 126, 140, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Equivalent to Cream Cottage cheese.</span><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Most convenient form of paneer.</span><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Rich in Proteins.</span><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Pure and Hygienic.</span><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Having high fat and low moisture compared to loose paneer available in market. Paneer having smooth: uniform texture and softness</span><br>', 'paneer1.png', 'paneer1.png', 'paneer1.png', 0, '500g', 'In Stock', '2019-09-24 08:08:50', NULL),
(16, 5, 17, 'Channa Dal', 'channa', 120, 150, '<br><div><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Channa Dal is a ready supply of proteins for a balanced diet containing little or no meat. It is nutty flavor and sweet, this dal is amongst the most famous dal in India. Channa Dal contains a mild sweet taste when cooked and is rich nutritious.&nbsp;</span><br></div>', 'dal1.png', 'dal2.png', 'dal3.png', 0, '1kg', 'In Stock', '2019-09-24 13:15:30', NULL),
(17, 5, 17, 'Masoor Dal', 'Dal', 100, 130, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Masoor Dal is one of the most well-known Indian lentils. This dal is with no skin and red in color. This dal is supple and cooks very speedily with a nice, earthy taste It has a dietary fiber, vitamin B1, Folate and minerals all with almost no fat.</span><br>', 'mdal1.png', 'mdal2.png', 'mdal3.jpg', 0, '1kg', 'In Stock', '2019-09-24 13:22:22', NULL),
(18, 5, 13, 'Sunflower Refined Oil', 'oil', 92, 113, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Fortune Sunflower Oil is a light, healthy and nutritious cooking oil. Being rich in vitamins and consisting mainly of polyunsaturated fatty acids, it makes food easy to digest.</span><br>', 'oil1.png', 'oil2.png', 'oil3.png', 0, '1L', 'In Stock', '2019-09-24 13:27:02', NULL),
(19, 5, 13, 'Coconut - Oil', 'coconut oil', 188, 218, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">The People Once Experienced The Difference Vouch For The Quality It Stands For. And The Excellent Words From Their Mouth Spread Unstopped Like The Fragrance Of Pure Coconut Oil.</span><br>', 'cocooil1.png', 'cocooil1.png', 'cocooil1.png', 0, '1L', 'In Stock', '2019-09-24 13:29:35', NULL),
(20, 5, 14, 'Rice - Raw, Sona Masoori', 'Rice', 1318, 1625, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Sona Masoori Rice is in aromatic rice that is lightweight and low in starch most often used in dishes such as biryani, sweet pongal, idlis and fried rice. It is fat-free and a superior resource or carbohydrates. It has a good dietary value containing protein and carbohydrates.&nbsp;</span><br>', 'rice1.png', 'rice1.png', 'rice1.png', 0, '25kg', 'In Stock', '2019-09-24 13:34:05', NULL),
(21, 5, 14, 'Ponni Boiled Rice - Super Premium', 'Rice', 625, 745, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Tamil Ponny raw rice is clean and pure. The main feature of this rice is that it withstands extended shelf life. It relishes in aroma, given that a high nutrition value to anyones diet. It can be attributed for its low glycemic index which assists in the control of diabetes, obesity &amp; cholesterol. It is cleaned and packed at our hygienic facilities</span><br>', 'rice2.png', 'rice2.png', 'rice2.png', 0, '10kg', 'In Stock', '2019-09-24 13:36:12', NULL),
(22, 5, 15, 'Sakthi Masala - Chicken', 'Sakthi', 49, 53, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Sakthi Chicken Masala Ingredients: Coriander, Chilli, Garlic, Salt, Garlic, Ginger, Cinnamon, Cumin, Clove, Turmeric, Refined groundnut oil.</span><br>', 'masala1.png', 'masala1.png', 'masala1.png', 0, '100g', 'In Stock', '2019-09-24 14:01:16', NULL),
(23, 5, 15, ' Garam Masala', 'Tata Sampann ', 25, 41, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Made of select varieties of Naturally Rich ingredients and with the formulation of Chef Sanjeev Kapoor, Tata Sampann masalas add mouthwatering taste to your food.</span><br>', 'masala2.png', 'masal3.jpg', 'masala4.jpg', 0, '100g', 'In Stock', '2019-09-24 14:22:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Fruits', '2019-09-24 06:31:52', NULL),
(2, 1, 'Vegetables', '2019-09-24 06:31:58', NULL),
(3, 3, 'chicken eggs', '2019-09-24 06:32:12', NULL),
(5, 3, 'chicken', '2019-09-24 06:32:39', NULL),
(6, 3, 'Mutton', '2019-09-24 06:32:46', NULL),
(7, 3, 'Fish', '2019-09-24 06:32:50', NULL),
(9, 4, 'Milk', '2019-09-24 06:33:34', NULL),
(10, 4, 'Curd', '2019-09-24 06:33:41', NULL),
(11, 4, 'Buttermilk', '2019-09-24 06:33:51', NULL),
(12, 4, 'Panneer', '2019-09-24 06:33:59', NULL),
(13, 5, 'Edible Oil', '2019-09-24 06:35:09', '24-09-2019 12:05:19 PM'),
(14, 5, 'Rice products', '2019-09-24 06:35:39', NULL),
(15, 5, 'Masala & Spices', '2019-09-24 06:36:32', NULL),
(16, 3, 'chicken leg', '2019-09-24 07:39:46', NULL),
(17, 5, 'Dals & Pulses', '2019-09-24 08:10:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'demo@gmail.com', 0x3a3a3100000000000000000000000000, '2019-09-25 04:16:43', '25-09-2019 09:48:13 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
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
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'demo', 'demo@gmail.com', 123456789, 'fe01ce2a7fbac8fafaed7c982a04e229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 04:18:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;


