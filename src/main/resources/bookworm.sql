-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advert`
--

DROP TABLE IF EXISTS `advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advert` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `count` int DEFAULT NULL,
  `creation_date_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `expiration_date_time` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advert`
--

LOCK TABLES `advert` WRITE;
/*!40000 ALTER TABLE `advert` DISABLE KEYS */;
INSERT INTO `advert` VALUES (1,NULL,NULL,'banner1',NULL,'https://d2p7wwv96gt4xt.cloudfront.net/S/banners/banners_2022_pick_of_the_month-desktop.jpg','banner1','banner.com'),(2,NULL,NULL,'banner2',NULL,'https://d2p7wwv96gt4xt.cloudfront.net/S/banners/banners_trailblazing_women-desktop.png','banner2','banner2.com'),(3,NULL,NULL,'banner3',NULL,'https://www.jdandj.com/uploads/8/0/0/8/80083458/book-promotional-poster_orig.jpg','banner3','banner3.com');
/*!40000 ALTER TABLE `advert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `points` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9c4t9576xotgiqoyc8ck5nnwe` (`user_id`),
  CONSTRAINT `FK9c4t9576xotgiqoyc8ck5nnwe` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (1,0,1),(2,0,4),(3,0,5),(4,0,101),(5,0,102);
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `buyer_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhq4crqbokwfsq6hkvhacw2j7v` (`buyer_id`),
  KEY `FKjcyd5wv4igqnw413rgxbfu4nv` (`product_id`),
  CONSTRAINT `FKhq4crqbokwfsq6hkvhacw2j7v` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`id`),
  CONSTRAINT `FKjcyd5wv4igqnw413rgxbfu4nv` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (1,1,1,1),(2,1,1,2),(3,1,1,3);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'V??n H???c','V??n H???c'),(2,'Kinh T???','Kinh T???'),(3,'K??? N??ng S???ng','T??m L??'),(4,'Nu??i D???y Con','Nu??i D???y Con'),(5,'S??ch H???c Ngo???i Ng???','S??ch H???c Ngo???i Ng???'),(6,'Ti???u S??? H???i K??','Ti???u S??? H???i K??'),(7,'S??ch Thi???u Nhi','S??ch Thi???u Nhi'),(8,'S??ch Hay','S??ch Hay'),(9,'S??ch N???u ??n','S??ch N???u ??n'),(10,'K??? N??ng s???ng','K??? N??ng S???ng'),(11,'S???c Kh???e M???i Ng??y','S???c Kh???e M???i Ng??y');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `following`
--

DROP TABLE IF EXISTS `following`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `following` (
  `buyer_id` bigint NOT NULL,
  `seller_id` bigint NOT NULL,
  KEY `FKdjo212e40lysqhab3y97ox2qg` (`seller_id`),
  KEY `FKb10hd9lv51br4uknw9870un4s` (`buyer_id`),
  CONSTRAINT `FKb10hd9lv51br4uknw9870un4s` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`id`),
  CONSTRAINT `FKdjo212e40lysqhab3y97ox2qg` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `following`
--

LOCK TABLES `following` WRITE;
/*!40000 ALTER TABLE `following` DISABLE KEYS */;
INSERT INTO `following` VALUES (1,1),(2,1),(3,1),(5,1);
/*!40000 ALTER TABLE `following` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `ID` bigint NOT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `READ` tinyint(1) DEFAULT NULL,
  `RECEIVED_DATE` timestamp NULL DEFAULT NULL,
  `USER_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKb3y6etti1cfougkdr0qiiemgv` (`USER_ID`),
  CONSTRAINT `FKb3y6etti1cfougkdr0qiiemgv` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'From Phoenix shop: New product added',0,'2022-03-26 12:43:54',1),(2,'From Phoenix shop: New product added',0,'2022-03-26 12:43:54',1);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `delivered_date` datetime DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `rating` int NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `review_date` datetime DEFAULT NULL,
  `review_status` varchar(255) DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`),
  KEY `FK551losx9j75ss5d6bfsqvijna` (`product_id`),
  CONSTRAINT `FK551losx9j75ss5d6bfsqvijna` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKt4dc2r9nbvbujrljv3e23iibt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,NULL,'ORDERED',1,4,'Nice books','2022-03-26 19:42:05','APPROVED',NULL,1,8),(2,NULL,'ORDERED',1,4,'well donee','2022-03-26 19:42:05','PENDING',NULL,1,9),(3,NULL,'ORDERED',1,4,'sick one!','2022-03-26 19:42:05','PENDING',NULL,1,10),(4,NULL,'DELIVERED',1,1,'Too opinionate!','2022-03-26 19:42:05','APPROVED',NULL,2,8),(5,NULL,'DELIVERED',1,3,'It does not look like the photo','2022-03-26 19:42:05','APPROVED',NULL,3,8),(6,NULL,'ORDERED',1,0,NULL,NULL,'PENDING',NULL,5,10);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `billing_address` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `ordered_date` datetime DEFAULT NULL,
  `payment_info` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_amount` decimal(19,2) DEFAULT NULL,
  `using_points` bit(1) DEFAULT NULL,
  `buyer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8bfdq6yuliu59tbo7go78xt51` (`buyer_id`),
  CONSTRAINT `FK8bfdq6yuliu59tbo7go78xt51` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'1000 N 4th St, Fairfield, IA',NULL,'2022-03-26 19:42:04','Paid by the card number XXXX XXXX XXXX 1234','DEBIT CARD','1000 N 4th St, Fairfield, IA','NEW',64.97,_binary '\0',1),(2,'1000 N 4th St, Fairfield, IA',NULL,'2022-03-26 19:42:04','Paid by the card number XXXX XXXX XXXX 2345','CREDIT CARD','1000 N 4th St, Fairfield, IA','COMPLETED',19.99,_binary '\0',2),(3,'1000 N 4th St, Fairfield, IA',NULL,'2022-03-26 19:42:04','Paid by the card number XXXX XXXX XXXX 3456','CREDIT CARD','1000 N 4th St, Fairfield, IA','COMPLETED',19.99,_binary '\0',3),(4,'','2022-03-26 22:14:56','2022-03-26 22:14:47','','CREDIT CARD','','CANCELED',0.00,_binary '\0',2),(5,'sdgsdg',NULL,'2022-03-27 00:51:01','Paid by the card number XXXX XXXX XXXX gsdg','DEBIT CARD','sgvdgsd','NEW',19.99,_binary '\0',5);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `available` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(19,2) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  KEY `FKesd6fy52tk7esoo2gcls4lfe3` (`seller_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKesd6fy52tk7esoo2gcls4lfe3` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,100,'Thi??n ti???u thuy???t c?? s???c ???nh h?????ng s??u r???ng c???a Colleen McCullough v??? nh???ng gi???c m??, nh???ng tr??n tr???, nh???ng ??am m?? th???m k??n, v?? m???i t??nh b??? ng??n c???m ??? n?????c ??c xa x??i ???? m?? ho???c ?????c gi??? kh???p th??? gi???i. ????y l?? bi??n ni??n s??? ba th??? h??? d??ng h??? Cleary, nh???ng ng?????','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_195509_1_44279.jpg','Nh???ng Con Chim ???n M??nh Ch??? Ch???t (T??i B???n 2020)',34.99,1,1),(2,100,'Ng?????i ????n ??ng Mang T??n OveNg?????i ????n ??ng mang t??n Ove n??m nay n??m m????i ch??n tu???i. ??ng l?? ki???u ng?????i hay ch??? th???ng m???t nh???ng k??? m?? ??ng kh??ng ??a nh?? th??? h??? l?? b???n ??n tr???m v?? ng??n tr??? c???a ??ng l?? c??y ????n pin c???a c???nh s??t. Ove tin t???t c??? nh???ng ng?????i ??? n??i ??ng s','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/n/g/nguoidanongmangtanove.jpg','Ng?????i ????n ??ng Mang T??n Ove',34.99,1,1),(3,100,'Nh???ng c??u chuy???n nh??? x???y ra ??? m???t ng??i l??ng nh???: chuy???n ng?????i, chuy???n c??c, chuy???n ma, chuy???n c??ng ch??a v?? ho??ng t??? , r???i chuy???n ????i ??n, ch??y nh??, l???t l???i,... B???i c???nh l?? tr?????ng h???c, nh?? trong x??m, b??i tha ma. D???n chuy???n l?? c???u b?? 15 tu???i t??n Thi???u. Thi???u ','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2199.jpg','T??i Th???y Hoa V??ng Tr??n C??? Xanh (B???n In M???i - 2018)',39.99,1,1),(4,100,'Tr??ch \"C??y Chu???i Non ??i Gi??y Xanh\"\n\"Kh??c v???i m??a thu r??n r??n, bao gi??? m??a h?? c??ng v??? v???i nh???ng b?????c ch??n r???n r??ng. C??y ph?????ng tr?????c s??n tr?????ng t??i v?? c??y ph?????ng tr?????c s??n ch??a Gi??c Nguy??n thi nhau n??? ????? th???m m???y h??m nay. Tr??n nh???ng ng???n c??y cao hai b??n b???','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_229129.jpg','C??y Chu???i Non ??i Gi??y Xanh (B??a M???m)',79.99,1,1),(5,100,'C?? ????i khi v??o nh???ng th??ng n??m b???t ?????u v??o ?????i, gi???a v?? v??n ng??? r??? v?? l???i khuy??n, khi r???t nhi???u d??? ?????nh m?? thi???u ????i ph???n ?????nh h?????ng, th?? C???M H???NG l?? ??i???u quan tr???ng ????? b???n tr??? b???t ?????u b?????c ch??n ?????u ti??n tr??n con ???????ng theo ??u???i gi???c m?? c???a m??nh. C?? Ph?? C','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/u/n/untitled-9_19.jpg','C?? Ph?? C??ng Tony (T??i B???n 2017)',17.99,1,1),(6,100,'Th??? gi???i ng???m ???????c ph???n ??nh trong ti???u thuy???t B??? gi?? l?? s??? g???p g??? gi???a m???t b??n l?? ?? ch?? c????ng c?????ng v?? n???n t???ng gia t???c ch???t ch??? theo truy???n th???ng mafia x??? Sicily v???i m???t b??n l?? x?? h???i M??? nh???p nh???ng ??en tr???ng, m???nh ?????t m??u m??? cho nh???ng c?? h???i l??m ??n b???t c','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/8/9/8936071673381.jpg','B??? Gi?? (????ng A)',59.99,1,1),(7,100,'C??u chuy???n ch???y qua 8 ph???n v???i 64 ch????ng s??ch nh??? ?????y ???p l??ng th????ng y??u, t??nh l????ng thi???n, t??nh th??n b???n b??, l??ng d??ng c???m v?? bao dung, ????nh b???t s??? ??c ?????c v?? c??? m???i th??i x???u.','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/6/0/600ra-bo-suoi---bm_1.jpg','Ra B??? Su???i Ng???m Hoa K??n H???ng - T???ng K??m Bookmark B???i Hai M???t',29.99,1,1),(8,100,'Chen vai th??ch c??nh ????? c?? m???t ch??? b??m tr??n xe bu??t gi??? ??i l??m, nh??ch t???ng xentim??t b??nh xe tr??n ???????ng l??c tan s???, quay cu???ng v???i thi c??? v?? ti???n ????? c??ng vi???c, lu b?? v?????ng m???c trong nh???ng m???i quan h??? c??? th??n l???n s????? b???n c?? lu??n c???m th???y th??? gian xung quanh ','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/b/u/buoc_cham_lai_giua_the_gian_voi_va.u335.d20160817.t102115.612356.jpg','B?????c Ch???m L???i Gi???a Th??? Gian V???i V?? (T??i B???n 2018)',19.99,1,1),(9,100,'Hai s??? ph???n??? kh??ng ch??? ????n thu???n l?? m???t cu???n ti???u thuy???t, ????y c?? th??? xem l?? \"th??nh kinh\" cho nh???ng ng?????i ?????c v?? suy ng???m, nh???ng ai kh??ng d??? d??i, kh??ng ch???p nh???n l???i m??n.','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_179484.jpg','Hai S??? Ph???n - B??a C???ng',24.99,1,1),(10,100,'???L??m Gi??u T??? Ch???ng Kho??n??? l?? cu???n s??ch kinh ??i???n m?? m???i nh?? ?????u t?? n??n ?????c, k??? t??? khi ???????c ph??t h??nh l???n ?????u ti??n v??o n??m 1988 s??ch ???? b??n ???????c 2 tri???u b???n v?? ???????c d???ch ra nhi???u th??? ti???ng tr??n th??? gi???i.','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/400x400/9df78eab33525d08d6e5fb8d27136e95/t/i/tieu-thuyet-chuyen-the---thanh-guom-diet-quy---khoi-dau-cua-dinh-menh.jpg','B??? S??ch L??m Gi??u T??? Ch???ng Kho??n (How To Make Money In Stock) Phi??n B???n M???i ',55.00,2,1),(11,100,'Tanjiro V?? Nezuko - Kh???i ?????u C???a ?????nh M???nh','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/bo_sach_lam_giau_tu_chung_khoan_how_to_make_money_in_stock_phien_ban_moi_huong_dan_thuc_hanh_canslim_cho_nguoi_moi_bat_dau_bo_2_cuon/2021_05_14_14_13_53_1-390x510.jpg','B??? S??ch L??m Gi??u T??? Ch???ng Kho??n (How To Make Money In Stock) Phi??n B???n M???i ',55.00,2,1),(12,100,'Cu???n s??ch s??? gi??p b???n tr??? n??n gi??u c??, l??m gi??u cho cu???c s???ng c???a b???n tr??n t???t c??? c??c ph????ng di???n c???a cu???c s???ng ch??? kh??ng ch??? v??? t??i ch??nh v?? v???t ch???t.','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_195509_1_39473.jpg','13 Nguy??n T???c Ngh?? Gi??u L??m Gi??u - Think And Grow Rich (T??i B???n 2020)',55.00,2,1),(13,100,'B???n c?? bao gi??? th???t ra nh???ng c??u d?? bi???t l?? kh??ng n??n n??i nh??  ???C??n l??? m??? ?????n bao gi??? n???a h??????? hay ???Ch???ng ???????c c??i tr?? tr???ng g??, ????a ????y xem n??o!?????? nh??ng v???n l??? l???i kh??ng?','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_182756.jpg','90% Tr??? Th??ng Minh Nh??? C??ch Tr?? Chuy???n ????ng ?????n C???a Cha M??? (T??i B???n 2019)',55.00,4,1),(14,100,'Ng??? ph??p v?? t??? v???ng l?? hai m???ng kh??ng th??? thi???u trong qu?? tr??nh h???c ngo???i ng??? n??i chung v?? h???c ti???ng Anh n??i ri??ng. Hai ph???m tr?? n??y s??? g??p ph???n gi??p ch??ng ta ?????t ???????c s??? th??nh th???o v??? ng??n ng???. N???u nh?? ng??? ph??p c?? c??c quy t???c, c?? c???u tr??c ????? tu??n theo th','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/h/h/hh-30-chu-de-tu-vung-tieng-anh_1.jpg','30 Ch??? ????? T??? V???ng Ti???ng Anh (T???p 1)',55.00,5,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6rgw0e6tb24n93c27njlv0wcl` (`user_id`),
  CONSTRAINT `FK6rgw0e6tb24n93c27njlv0wcl` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'The Phoenix shop offers hottest and quality books at the best price','Phoenix','/img/shop/1.jpg','APPROVED',2),(2,'O\'reilly offers hottest and quality books at the best price','O\'reilly','/img/shop/2.jpg','PENDING',6),(3,'White Wolf offers hottest and quality books at the best price','White Wolf','/img/shop/3.jpg','PENDING',7);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'1000 N 4th St, Fairfield, IA','/img/avatar/buyer.jpg','buyer@shopping.com','First','Buyer','$2a$10$4lj/4VCrepo0K9mExaiqoezLGoWI7Lwb5Tjrk905jihpW6l5gRV7O','123-456-7890','2022-03-26','BUYER'),(2,'1000 N 4th St, Fairfield, IA','/img/avatar/seller.png','seller@shopping.com','First','Seller','$2a$10$4lj/4VCrepo0K9mExaiqoezLGoWI7Lwb5Tjrk905jihpW6l5gRV7O','123-456-7890','2022-03-26','SELLER'),(3,'1000 N 4th St, Fairfield, IA','/img/avatar/admin.png','admin8c@shopping.com','Shopping','Admin','$2a$10$4lj/4VCrepo0K9mExaiqoezLGoWI7Lwb5Tjrk905jihpW6l5gRV7O','000-000-0000','2022-03-26','ADMIN'),(4,'1000 N 4th St, Fairfield, IA','/img/avatar/buyer.jpg','iamloin@king.com','Second','Buyer','$2a$10$4lj/4VCrepo0K9mExaiqoezLGoWI7Lwb5Tjrk905jihpW6l5gRV7O','123-456-7890','2022-03-26','BUYER'),(5,'1000 N 4th St, Fairfield, IA','/img/avatar/buyer.jpg','buyer3@shopping.com','Third','Buyer','$2a$10$b.9CsDYMBdFIMB5ja.lg0.3/OHFiv5kMn7yR.FKCZY3JScMRPvE.G','123-456-7890','2022-03-26','BUYER'),(6,'1000 N 4th St, Fairfield, IA','/img/avatar/seller.png','seller2@shopping.com','Second','Seller','$2a$10$13wR9hYkIwBP0WIT525/XO23UfTvtjUKjbHCLlwAzYNzF3IkBlZRy','123-456-7890','2022-03-26','SELLER'),(7,'1000 N 4th St, Fairfield, IA','/img/avatar/seller.png','seller3@shopping.com','Second','Seller','$2a$10$13wR9hYkIwBP0WIT525/XO23UfTvtjUKjbHCLlwAzYNzF3IkBlZRy','123-456-7890','2022-03-26','SELLER'),(101,'asvasv','/img/avatar/buyer.jpg','thisis@gmail.com','sdgsdgsdg','sdgsdg','$2a$10$4lj/4VCrepo0K9mExaiqoezLGoWI7Lwb5Tjrk905jihpW6l5gRV7O','1561','2022-03-26','BUYER'),(102,'1','/img/avatar/buyer.jpg','buy@me','ddos','ssdfsdf john','$2a$10$if6U1flU31Q.EwpBdmJgW.cvytVHgijphz2QBfx/dnzBP0iU9ro.6','s','2022-03-27','BUYER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-28 11:01:58
