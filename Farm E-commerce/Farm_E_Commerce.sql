
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



-- DATABASE: `Farm_E_Commerce`

-- --------------------------------------------------------
-- Table structure for table `buyerregistration`

CREATE TABLE `buyerregistration` (
  `buyer_id` int(255) NOT NULL,
  `buyer_name` varchar(30) NOT NULL,
  `buyer_phone` bigint(10) NOT NULL,
  `buyer_addr` text NOT NULL,
  `buyer_comp` varchar(100) NOT NULL,
  `buyer_license` varchar(100) NOT NULL,
  `buyer_bank` int(16) NOT NULL,
  `buyer_pan` varchar(10) NOT NULL,
  `buyer_mail` varchar(20) NOT NULL,
  `buyer_username` varchar(20) NOT NULL,
  `buyer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `buyerregistration`

INSERT INTO `buyerregistration` (`buyer_id`, `buyer_name`, `buyer_phone`, `buyer_addr`, `buyer_comp`, `buyer_license`, `buyer_bank`, `buyer_pan`, `buyer_mail`, `buyer_username`, `buyer_password`) VALUES
(15, 'Abdulahi', 08123456789, 'Dutse', 'Abd Agro Ltd', '02082000', 2147483647, '1234567890', 'abdul667@gmail.com', 'abdul_bayi', 'm8bf5+Y='),
(16, 'Andy', 0816610976, 'Dutse', 'KomziChicken', '997734', 1234566322, '9876456454', 'andyy419@gmail.com', 'andyson', 'm9HW6O8B'),
(17, 'Calista', 08158963147, 'Bwari', 'Castil Ltd', 'w3566908', 8947657983, '2436467897', 'rose21@gmail.com', 'calista47', 'nM7d+e0b41E='),
(18, 'Lolade', 09029788504, 'Dutse', 'LS farms', '03032004', 3056672189, '1234567890', 'lolade217@gmail.com', 'dlade', 'yw=='),
(19, 'Yaknan', 09081910464, 'Kubwa', 'Ash Tribe Farms', '99876433', 2147683647, '1234567890', 'yaki67@gmail.com', 'yakson007', 'y5CB'),
(20, 'Bimbo', 08082807123, 'Kubwa', 'Chisco Farms', '9987448', 3058779897, '189988774', 'bimbo257@gmail.com', '501807', 'yw==');

-- --------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table `categories`

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `categories`

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Crops'),
(2, 'Vegetables'),
(3, 'Fruits');

-- --------------------------------------------------------




-- --------------------------------------------------------
-- Table structure for table `courierregistration`

CREATE TABLE `courierregistration` (
    `courier_id` INT AUTO_INCREMENT PRIMARY KEY,
    `courier_name` VARCHAR(255) NOT NULL,
    `courier_phone` VARCHAR(20) NOT NULL,
    `courier_address` VARCHAR(255) NOT NULL,
    `courier_company` VARCHAR(255) NOT NULL,
    `courier_bank` VARCHAR(255) NOT NULL,
    `courier_mail` VARCHAR(255) NOT NULL,
    `courier_username` VARCHAR(50) NOT NULL,
    `courier_password` VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------




-- --------------------------------------------------------
-- Dumping data for table `consumer`

INSERT INTO `courierregistration` (`courier_name`, `courier_phone`, `courier_address`, `courier_company`, `courier_bank`, `courier_mail`, `courier_username`, `courier_password`) VALUES
('Chinedu Aliyu', '08012345678', '12 Lagos Street, Ikeja', 'NaijaExpress Logistics', 'First Bank', 'chinedu@example.com', 'chinedu_courier', 'password123'),
('Fatima Abdullahi', '08098765432', '27 Kano Road, Kano', 'QuickDispatch Services', 'UBA', 'fatima@example.com', 'fatima_courier', 'securepass'),
('Emeka Okonkwo', '08033221100', '5 Enugu Close, Enugu', 'SwiftDeliveries Nigeria', 'Access Bank', 'emeka@example.com', 'emeka_courier', 'deliverypass'),
('Aisha Mohammed', '08055443322', '18 Abuja Crescent, Abuja', 'SpeedyHaul Logistics', 'GTBank', 'aisha@example.com', 'aisha_courier', 'fastpass123'),
('Tunde Adeleke', '08087654321', '9 Ibadan Avenue, Ibadan', 'AceCourier Express', 'Zenith Bank', 'tunde@example.com', 'tunde_courier', 'quickaccess'),
('Ngozi Okafor', '08011223344', '15 Port Harcourt Road, Port Harcourt', 'SuperSwift Couriers', 'Stanbic IBTC', 'ngozi@example.com', 'ngozi_courier', 'speedy123');

-- --------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table `deliveries`

CREATE TABLE deliveries (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    courier_phone VARCHAR(20) NOT NULL,
    recipient_name VARCHAR(100) NOT NULL,
    delivery_address VARCHAR(255) NOT NULL,
    status ENUM('pending', 'in_transit', 'delivered') NOT NULL,
    delivery_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Dumping data for table `deliveries`

INSERT INTO deliveries (courier_phone, recipient_name, delivery_address, status)
VALUES 
    ('08012345678', 'Chinedu Okoro', '10 Lagos Street, Lagos', 'pending'),
    ('08012345678', 'Ngozi Eze', '25 Abuja Road, Abuja', 'in_transit'),
    ('08098765432', 'Fatima Abdullahi', '15 Kano Avenue, Kano', 'delivered'),
    ('08098765432', 'Yakubu Mohammed', '5 Kaduna Close, Kaduna', 'pending'),
    ('08055556666', 'Aisha Bello', '8 Port Harcourt Road, Port Harcourt', 'in_transit'),
    ('08055556666', 'Emeka Okafor', '12 Enugu Street, Enugu', 'delivered'),
    ('08011112222', 'Blessing Adekunle', '3 Ibadan Crescent, Ibadan', 'pending'),
    ('08011112222', 'Segun Adewale', '21 Ogun Lane, Abeokuta', 'in_transit'),
    ('08099998888', 'Chiamaka Nwosu', '14 Calabar Street, Calabar', 'delivered'),
    ('08099998888', 'Chukwudi Okonkwo', '6 Uyo Close, Uyo', 'pending');

-- --------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table `consumer`

CREATE TABLE `consumer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `consumer`

INSERT INTO `consumer` (`id`, `name`, `email`, `pincode`, `password`, `address`, `phone`) VALUES
(5, 'Chinelo', 'chinelo.ugo@gmail.com', '110001', 'welc0me', 'Lekki, Lagos', '08028071232'),
(6, 'Hussaini', 'hussaini.kano@gmail.com', '700001', 'password1', 'Sabon Gari, Kano', '08124435678'),
(7, 'Abdul', 'abdul.zaria@gmail.com', '800282', 'abdul123', 'Zaria, Kaduna', '08133367321'),
(8, 'Ezra', 'ezra.jos@gmail.com', '930001', 'ezzyyo', 'Rayfield, Jos', '07015802258');

-- --------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table `doctor`

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `password` varchar(10) NOT NULL,
  `clinicName` varchar(15) NOT NULL,
  `clinicAddress` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `startTime` varchar(8) NOT NULL,
  `endTime` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `doctor`

INSERT INTO `doctor` (`id`, `name`, `email`, `pincode`, `password`, `clinicName`, `clinicAddress`, `phone`, `startTime`, `endTime`) VALUES
(4, 'Chukwudi', 'chukwudi.ugo@gmail.com', '100001', 'securepass', 'Prime Health Clinic', 'Ikeja, Lagos', '08036345839', '09:00', '17:00'),
(5, 'Olusanya', 'olusanya.ade@gmail.com', '200001', 'medpass1', 'HealthPlus Clinic', 'Ibadan, Oyo', '09098162248', '08:00', '16:00'),
(6, 'Ngozi', 'ngozi.chidi@gmail.com', '300001', 'strongpass', 'Family Care Clinic', 'Onitsha, Anambra', '08055084379', '10:00', '18:00');

-- --------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table `farmerregistration`

CREATE TABLE `farmerregistration` (
  `farmer_id` int(255) NOT NULL,
  `farmer_name` varchar(255) NOT NULL,
  `farmer_phone` bigint(10) NOT NULL,
  `farmer_address` text NOT NULL,
  `farmer_state` varchar(50) NOT NULL,
  `farmer_district` varchar(50) NOT NULL,
  `farmer_pan` varchar(10) NOT NULL,
  `farmer_bank` int(16) NOT NULL,
  `farmer_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `farmerregistration`

INSERT INTO `farmerregistration` (`farmer_id`, `farmer_name`, `farmer_phone`, `farmer_address`, `farmer_state`, `farmer_district`, `farmer_pan`, `farmer_bank`, `farmer_password`) VALUES
(1, 'Abraham', 08169193101, 'Bwari', 'FCT', 'Sabon-gari', '1234567890', 2147483647, 'm8bf5+Y='),
(3, 'Onazi', 08169193102, 'Bwari', 'FCT', 'Gaba', '123ABC', 4574542572, 'nMPb4g=='),
(4, 'Rahim', 08169193103, 'Bwari', 'FCT', 'Kwuchiko', '123ABC', 211324654, 'm8bf5+Y='),
(5, 'Leonard', 08169193104, 'Bwari', 'FCT', 'Kwuchiko', '1325355', 4565745425, 'yw=='),
(6, 'Rasheed', 08169193105, 'Bwari', 'FCT', 'Kogo II', '1234567899', 2147483647, 'yw=='),
(7, 'Charles', 08169193106, 'Bwari', 'FCT', 'Gaba', '5341874510', 2147483647, 'yw=='),
(8, 'Gladina', 08169193107, 'Bwari', 'FCT', 'Gaba', '6846516843', 2147483647, 'yw=='),
(9, 'Anita', 08169193108, 'Bwari', 'FCT', 'Pweyi', '3263062', 5687861327, 'yw=='),
(10, 'Emmanuel', 08169193109, 'Kubwa', 'FCT', 'Gaba-Tokolo Rd', '2983473057', 2147483647, 'yw=='),
(11, 'Melissa', 08169193110, 'Bwari', 'FCT', 'Kwuchiko', '65416541', 45458612588, 'yw=='),
(12, 'John', 08169193111, 'Dutse', 'FCT', 'Chambas', '24685435', 25748654352, 'yw=='),
(13, 'Daniel', 08169193112, 'Dutse', 'FCT', 'Sogwari', '45674852', 3216417895, 'yw=='),
(14, 'Dozie', 08169193113, 'Kubwa', 'FCT', 'Village Market', '246856873', 2147483647, 'yw=='),
(16, 'Bankole', 08169193114, 'Bwari', 'FCT', 'Sabon-gari', '3549685416', 6546485198, 'yw=='),
(17, 'Samuel', 08169193115, 'Dutse', 'FCT', 'Sokale', '2456435', 2154423762, 'yw=='),
(18, 'Ogaba', 08169193116, 'Bwari', 'FCT', 'Jigo', '574542', 3846839985, 'yw=='),
(19, 'Ogwuche', 08169193117, 'Dutse', 'FCT', 'Sagwari', '2456843', 3468651545, 'yw=='),
(20, 'Rachel', 08169193118, 'Kubwa', 'FCT', 'Arab Road', '274635213', 2748651387, 'yw=='),
(21, 'Joanna', 08169193119, 'Bwari', 'FCT', 'Jigo', '24756215', 2456853642, 'yw=='),
(22, 'Arayi', 08169193120, 'Kubwa', 'FCT', 'F01 Layout', '2458742884', 24968554127, 'yw=='),
(23, 'Andy', 08169193121, 'Kubwa', 'FCT', 'FO1 Layout', '255451025', 5456468423, 'yw=='),
(25, 'Stanley', 08169193122, 'Kubwa', 'FCT', 'Extension 3', '54584646.', 54153645644, 'yw=='),
(26, 'Bensen', 08169193123, 'Bwari', 'FCT', 'Kogo', '2545498', 52484564383, 'yw=='),
(27, 'Richard', 08169193124, 'Dutse', 'FCT', 'Baupma', '54584636', 25468574656, 'yw=='),
(29, 'John', 08169193125, 'Byazhi', 'FCT', 'Waze', '656', 1687763415, 'yw=='),
(30, 'Timi', 08169193126, 'Byazhi', 'FCT', 'Waze', '54664851', 3056455415, 'yw=='),
(31, 'Steve', 08169193127, 'Kubwa', 'FCT', 'Village Market', '6416545', 3054646544, 'yw=='),
(32, 'Judah', 08169193128, 'Kubwa', 'FCT', '2-1', '4515214', 3544613515, 'yw=='),
(33, 'Jesse', 08169193129, 'Bwari', 'FCT', 'Piyawe', '1232122121', 3051213214, 'yw=='),
(34, 'Chidi', 08169193130, 'Dutse', 'FCT', 'Sagwari', '656861651', 5546541445, 'yw=='),
(35, 'Manali', 08169193131, 'Byazhi', 'FCT', 'Kupwara', '656861651', 2147483689, 'yw=='),
(36, 'Manya', 08169193132, 'Dutse', 'FCT', 'Baupma', '6568616510', 2147483567, 'yw=='),
(37, 'Sule', 08169193133, 'Byazhi', 'FCT', 'Waze', '6568616510', 5454654101, 'yw=='),
(38, 'Kunle', 08169193134, 'Dutse', 'FCT', 'Sagwari', '123123123', 3213213567, 'yw=='),
(39, 'Orji', 08169193135, 'Kubwa', 'FCT', 'Village Market', '121212121', 1212788964, 'yw=='),
(40, 'Divine', 08169193136, 'Kubwa', 'FCT', 'Bakori Rd', '121212', 12121187886, 'yw=='),
(41, 'Nnamdi', 08169193137, 'Dutse', 'FCT', 'Sagwari', '121218', 2147489647, 'yw=='),
(42, 'Adeyemi', 08169193138, 'Bwari', 'FCT', 'Kwuchiko', '121218', 21474836497, 'yw=='),
(43, 'Okon', 08169193139, 'Bwari', 'FCT', 'Badgam', '12131311', 2235763890, 'yw=='),
(44, 'Bassey', 08169193140, 'Bwari', 'FCT', 'Chamba', '1212222222', 2147483647, 'yw=='),
(45, 'Obi', 08169193141, 'Bwari', 'FCT', 'Jigo', '1212222222', 2147483647, 'yw=='),
(46, 'Obinna', 08169193142, 'Kubwa', 'FCT', 'Kagini', '22', 1214483647, 'yw=='),
(47, 'Chinedu', 08169193143, 'Kubwa', 'FCT', 'Kagini', '11', 1121474847, 'yw=='),
(48, 'Dauda', 08169193144, 'Bwari', 'FCT', 'Kwuchiko', '1212dw11', 2147488847, 'yw=='),
(49, 'Sambo', 08169193145, 'Dutse', 'FCT', 'Sagwari', '121211', 2229877121, 'yw=='),
(50, 'Abu', 08169193146, 'Dutse', 'FCT', 'Sokale', '12121', 3056722915, 'yw=='),
(51, 'Francais', 08169193147, 'Dutse', 'FCT', 'Baupma', '12121', 2147483621, 'yw=='),
(52, 'Abraham', 08169193148, 'Byazhi', 'FCT', 'Waze', '12121', 2221189687, 'yw=='),
(53, 'Jonas', 08169193149, 'Bwari', 'FCT', 'Kwuchiko', '12129+', 2221186775, 'yw=='),
(54, 'Ugochukwu', 08169193150, 'Byazhi', 'FCT', 'Waze', '1212222222', 2147483647, 'yw=='),
(55, 'Isaiah', 08169193151, 'Kubwa', 'FCT', 'Bakori', '1212222222', 2147483647, 'yw=='),
(56, 'King', 08169193152, 'Kubwa', 'FCT', 'Bakori', '1212222222', 2147483647, 'yw=='),
(57, 'Solomon', 08169193153, 'Dutse', 'FCT', 'Baupma', '121129', 2221954398, 'yw=='),
(58, 'Mayor', 08169193154, 'Dutse', 'FCT', 'Baupma', '12', 1921134329, 'yZE='),
(59, 'Azeez', 08169193155, 'Byazhi', 'FCT', 'Thane', '111', 2148483647, 'yw=='),
(60, 'Usman', 08169193156, 'Bwari', 'FCT', 'Pweyi', '1234', 2147783747, 'yw=='),
(61, 'Raji', 08169193157, 'Byazhi', 'FCT', 'Chandigarh', '109', 2144483647, 'yw=='),
(62, 'Victor', 08169193158, 'Byazhi', 'FCT', 'North Goa', '342', 3322481611, 'yw=='),
(63, 'Iwouha', 08169193159, 'Dutse', 'FCT', 'Baupma', '789', 9878700833, 'yw=='),
(64, 'Kelechi', 08169193160, 'Kubwa', 'FCT', 'Kagini', '191', 818, 'yw=='),
(65, 'Dele', 08169193161, 'Byazhi', 'FCT', 'Dadra & Nagar Haveli', '777', 666, 'yw=='),
(66, 'Mohammed', 08169193162, 'Kubwa', 'FCT', 'Arab Rd', '537', 361, 'yw=='),
(67, 'Uche', 08169193163, 'Bwari', 'FCT', 'Piyawe', '2014', 1014, 'yw=='),
(68, 'Efiok', 08169193164, 'Byazhi', 'FCT', 'Waze', '1024', 3014, 'yw=='),
(69, 'Anthony', 08169193165, 'Byazhi', 'FCT', 'Tawang', '2048', 1048, 'yw=='),
(70, 'Susan', 08169193166, 'Kubwa', 'FCT', 'Village Market', '4096', 5096, 'yw=='),
(71, 'Ikenna', 08169193167, 'Kubwa', 'FCT', 'Kagini', '2047', 1047, 'yw=='),
(72, 'Ashley', 08169193168, 'Bwari', 'FCT', 'Kwuchiko', '8192', 7192, 'yw=='),
(73, 'Kamaru', 08169193169, 'Byazhi', 'FCT', 'Waze', '1192', 2192, 'yw=='),
(74, 'Esan', 08169193170, 'Dutse', 'FCT', 'Mamaki', '2192', 3192, 'yw=='),
(75, 'Gladis', 08169193171, 'Dutse', 'FCT', 'Mamaki', '3192', 4192, 'yw=='),
(76, 'Gundiri', 08169193172, 'Byazhi', 'FCT', 'Madurai', '343', 433, 'yw=='),
(77, 'Helen', 08169193173, 'Dutse', 'FCT', 'Sokale', '1729', 2729, 'yw=='),
(78, 'Razak', 08169193174, 'Bwari', 'FCT', 'Gaba', '1777', 7171, 'yw=='),
(79, 'Melvin', 08169193175, 'Bwari', 'FCT', 'Gaba', '3412', 5020, 'yw=='),
(80, 'Ejeh', 08169193176, 'Kubwa', 'FCT', 'Bakori', '7129', 8100, 'yw=='),
(81, 'Uzezi', 08169193177, 'Dutse', 'FCT', 'OBJ Rd', '6654', 7896, 'yw=='),
(82, 'Tope', 08169193178, 'Bwari', 'FCT', 'Jigo', '1010', 2020, 'yw=='),
(83, 'Vivian', 08169193179, 'Bwari', 'FCT', 'Gaba', '9291', 7374, 'yw=='),
(84, 'Usman', 08169193180, 'Kubwa', 'FCT', 'Kagini', '9293', 8453, 'yw=='),
(85, 'Aisha', 08169193181, 'Kubwa', 'FCT', 'Village Market', '4545', 5454, 'yw=='),
(86, 'Lala', 08169193182, 'Kubwa', 'FCT', 'Bakori', '9999', 9998, 'yw=='),
(87, 'Rahim', 08169193183, 'Bwari', 'FCT', 'Jigo', '8818', 2818, 'yw=='),
(88, 'Suku', 08169193184, 'Dutse', 'FCT', 'Dikwa Rd', '9001', 8017, 'yw=='),
(89, 'Gabriel', 08169193185, 'Bwari', 'FCT', 'Piyawe', '5543', 2999, 'yw=='),
(90, 'Lawal', 08169193186, 'Bwari', 'FCT', 'Piyawe', '3139', 8199, 'yw=='),
(91, 'Jack', 08169193187, 'Kubwa', 'FCT', 'Arab Rd', '7777', 6666, 'yw=='),
(92, 'Babayaro', 08828071232, 'Bwari', 'FCT', 'Jigo', '1', 1, 'yw==');

-- --------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table `orders`

CREATE TABLE `orders` (
  `order_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `delivery` varchar(10) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `total` int(10) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `buyer_phonenumber` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `orders`

INSERT INTO `orders` (`order_id`, `product_id`, `qty`, `address`, `delivery`, `phonenumber`, `total`, `payment`, `buyer_phonenumber`) VALUES
(55, 23, 1, '234 Usman Street, Surulere', 'Buyer', 08169193101, 5600, 'cod', 08091234567),
(56, 28, 1, '234 Usman Street, Surulere', 'Buyer', 08169193101, 4500, 'cod', 08091234567),
(57, 31, 1, '12 Billi Street, Ikeja', 'Buyer', 08169193101, 2500, 'cod', 08091234567),
(58, 3, 2, '15 Kelvin Avenue, Yaba', 'Farmer', 08169193101, 1000, 'paytm', 08091234567),
(60, 32, 1, '7 Wole Street, Lekki', 'Buyer', 08169193101, 1000, 'cod', 08091234567);

-- --------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table `products`

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `farmer_fk` int(255) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `product_expiry` varchar(25) NOT NULL,
  `product_image` text NOT NULL,
  `product_stock` int(100) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_delivery` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `products`

INSERT INTO `products` (`product_id`, `farmer_fk`, `product_title`, `product_cat`, `product_type`, `product_expiry`, `product_image`, `product_stock`, `product_price`, `product_desc`, `product_keywords`, `product_delivery`) VALUES
(1, 1, 'Bala Potato', '2', 'Potato', '2024-04-15', 'Potato.jpg', 1000, 1200, 'Best quality product guaranteed 100 percent', 'potato, Bala Potato', 'yes'),
(3, 1, 'Ngozi Tomato', '2', 'Tomato', '2024-04-15', 'Tomato.jpg', 500, 500, 'Best quality tomato assured', 'tomato, best quality tomato, Ngozi Tomato', 'no'),
(17, 3, 'Olu Bananas', '3', 'Bananas', '2024-04-15', 'Bananas.jpg', 250, 3000, 'Best quality bananas', 'banana, Olu Bananas', 'yes'),
(18, 3, 'Ade Rice', '1', 'Rice', '2024-04-15', 'Rice.jpg', 1500, 200, 'High quality rice', 'rice, Ade Rice', 'yes'),
(19, 1, 'Eze Carrot', '2', 'Carrot', '2024-04-15', 'Carrot.jpg', 1250, 5600, 'Big, fat, juicy, best quality carrots assured', 'carrot, best carrot, Eze Carrot', 'yes'),
(21, 1, 'Chidi Maize', '1', 'Maize', '2024-04-15', 'Maize.jpg', 750, 9900, 'Seeds imported from Australia, grown with love', 'maize, best maize, Chidi Maize', 'yes'),
(22, 3, 'Ifeanyi Coconut', '1', 'Coconut', '2024-04-15', 'Coconut.jpg', 450, 1200, 'Better than others', 'coconut, best coconut, Ifeanyi Coconut', 'no'),
(23, 1, 'Bola Grapes', '3', 'Grapes', '2024-04-15', 'GreenGrapes.jpg', 4560, 5600, 'Best grapes you will ever find', 'grapes, green grapes, best grapes, Bola Grapes', 'yes'),
(24, 1, 'Chima Apples', '3', 'Apple', '2024-04-15', 'Apple.jpg', 1500, 10100, 'Best apples grown in Jos and handled with love and care', 'apples, apple, best apple, Chima Apples', 'no'),
(25, 1, 'Emeka Wheat', '1', 'Wheat', '2024-04-15', 'Wheat.jpg', 2000, 8000, 'Thin, fragrant wheat grains grown with love', 'wheat, best quality wheat, best wheat, Emeka Wheat', 'no'),
(27, 3, 'Musa Mango', '3', 'Mango', '2024-04-15', 'Mango.jpg', 2000, 20000, 'Grown with love in Benue', 'mango, best mango, Musa Mango', 'yes'),
(28, 1, 'Oge Custard Apple', '3', 'Custard Apple', '2024-04-15', 'CustardApple.jpg', 500, 4500, 'Custard apple so tasty, to die for', 'custard apple, best custard apple, Oge Custard Apple', 'yes'),
(29, 3, 'Nkechi Cabbage', '2', 'Cabbage', '2024-04-15', 'Cabbage.jpg', 1500, 5000, 'Best quality cabbage', 'cabbage, best cabbage, Nkechi Cabbage', 'yes'),
(30, 1, 'Bimpe Onion', '2', 'Onion', '2024-04-15', 'Onion.jpg', 1500, 6500, 'Grown with love', 'onion, best onion, Bimpe Onion', 'no'),
(31, 1, 'Ada Strawberry', '3', 'Strawberry', '2024-04-15', 'Strawberry.jpg', 100, 2500, 'Best strawberries all over Nigeria', 'strawberry, best strawberry, Ada Strawberry', 'yes'),
(32, 1, 'Chinwe Orange', '3', 'Orange', '2024-04-15', 'Orange.jpg', 1500, 1000, 'Best oranges grown with love in Benue', 'orange, best orange, Chinwe Orange', 'yes'),
(37, 1, 'Yusuf Sugarcane', '1', 'Sugarcane', '2024-04-25', 'Sugarcane.jpg', 1000, 5000, 'Best sugarcane', 'sugarcane, Yusuf Sugarcane', 'yes');

-- --------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table `shopkeeper`

CREATE TABLE `shopkeeper` (
  `id` int(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `password` varchar(10) NOT NULL,
  `shopName` varchar(20) NOT NULL,
  `shopAddress` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `startTime` varchar(8) NOT NULL,
  `endTime` varchar(8) NOT NULL,
  `slotInterval` int(11) NOT NULL,
  `slotUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `shopkeeper`

INSERT INTO `shopkeeper` (`id`, `name`, `email`, `pincode`, `password`, `shopName`, `shopAddress`, `phone`, `startTime`, `endTime`, `slotInterval`, `slotUser`) VALUES
(1, 'Chinwe', 'chinwe@example.com', '110001', 'yw==', 'Chinwe Stores', '14A Allen Avenue, Ikeja', '08012345678', '08:00', '18:00', 30, 5),
(3, 'Obinna', 'obinna@example.com', '234001', 'yw==', 'Obinna Supermart', '45 Awolowo Road, Ikoyi', '08087654321', '09:00', '20:00', 30, 7),
(4, 'Funmilayo', 'funmi@example.com', '234002', 'yw==', 'Funmi's Place', '3 Alakija Street, Surulere', '08033221100', '10:00', '22:00', 60, 5),
(5, 'Emeka', 'emeka@example.com', '110001', 'm8bf5+Y=', 'Emeka Ventures', '21 Ojuelegba Road, Yaba', '08055443322', '07:00', '21:00', 30, 5),
(6, 'Aisha Yusuf', 'aisha@example.com', '900211', 'yw==', 'Aisha's Emporium', '17 Kano Street, Kano', '08098765432', '09:30', '17:30', 30, 5),
(7, 'Babatunde', 'babatunde@example.com', '100001', 'm8bf5+Y=', 'Baba Tunde Stores', '29 Fagba Crescent, Agege', '08011223344', '08:00', '18:00', 30, 5);

-- --------------------------------------------------------


-- --------------------------------------------------------
-- Table structure for table `slot`

CREATE TABLE `slot` (
  `slot_id` int(255) NOT NULL,
  `shop_id` int(255) NOT NULL,
  `slot` varchar(10) NOT NULL,
  `vacancy` int(255) NOT NULL,
  `date` varchar(12) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `passcode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `slot`

INSERT INTO `slot` (`slot_id`, `shop_id`, `slot`, `vacancy`, `date`, `phonenumber`, `passcode`) VALUES
(37, 6, '12:00', 5, '05/05/2020', 08012345678, 82047),
(38, 6, '12:00', 5, '13/07/2020', 08012345678, 95127),
(39, 6, '10:30', 5, '21/04/2020', 08012345678, 40661),
(40, 6, '12:00', 5, '07/04/2020', 08012345678, 27560),
(41, 6, '10:30', 5, '22/04/2020', 08012345678, 67549);

-- --------------------------------------------------------


-- --------------------------------------------------------
-- Indexes for dumped tables

-- Indexes for table `buyerregistration`
ALTER TABLE `buyerregistration`
  ADD PRIMARY KEY (`buyer_id`),
  ADD UNIQUE KEY `buyer_username` (`buyer_username`),
  ADD UNIQUE KEY `buyer_phone` (`buyer_phone`);

-- Indexes for table `categories`
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

-- Indexes for table `consumer`
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `doctor`
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `farmerregistration`
ALTER TABLE `farmerregistration`
  ADD UNIQUE KEY `farmer_id` (`farmer_id`);

-- Indexes for table `orders`
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `phonenumber` (`phonenumber`);

-- Indexes for table `products`
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `farmer_fk` (`farmer_fk`);

-- Indexes for table `shopkeeper`
ALTER TABLE `shopkeeper`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `slot`
ALTER TABLE `slot`
  ADD PRIMARY KEY (`slot_id`),
  ADD UNIQUE KEY `passcode` (`passcode`),
  ADD KEY `slot_ibfk_1` (`shop_id`);

-- --------------------------------------------------------


-- --------------------------------------------------------
-- AUTO_INCREMENT for dumped tables

-- AUTO_INCREMENT for table `buyerregistration`
ALTER TABLE `buyerregistration`
  MODIFY `buyer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

-- AUTO_INCREMENT for table `categories`
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

-- AUTO_INCREMENT for table `consumer`
ALTER TABLE `consumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

-- AUTO_INCREMENT for table `doctor`
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

-- AUTO_INCREMENT for table `farmerregistration`
ALTER TABLE `farmerregistration`
  MODIFY `farmer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

-- AUTO_INCREMENT for table `orders`
ALTER TABLE `orders`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

-- AUTO_INCREMENT for table `products`
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

-- AUTO_INCREMENT for table `shopkeeper`
ALTER TABLE `shopkeeper`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

-- AUTO_INCREMENT for table `slot`
ALTER TABLE `slot`
  MODIFY `slot_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

-- --------------------------------------------------------


-- --------------------------------------------------------
-- Constraints for dumped tables

-- Constraints for table `slot`
ALTER TABLE `slot`
  ADD CONSTRAINT `slot_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shopkeeper` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

-- --------------------------------------------------------
