CREATE DATABASE  IF NOT EXISTS `nazox` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nazox`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: nazox
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `author_name` varchar(255) NOT NULL,
  `book_id` int NOT NULL,
  PRIMARY KEY (`author_name`,`book_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES ('Raymond Murphy',1),('Amanda French',2),('Pauline Cullen',2),('Vanessa Jakeman',2),('Diana Lea',3),('Jennifer Bradbery',3),('Dale Carnegie',4),('Dale Carnegie',5),('Dale Carnegie',6),('David J Liebermany',7),('David J Pollay',8),('David J Schwartz',9),('Joost Elffers',10),('Robert Greene',10),('Tony buổi sáng',11),('Tony buổi sáng',12),('Nguyễn Nhật Ánh',13),('Nguyễn Nhật Ánh',14),('Nguyễn Nhật Ánh',15),('Robert T Kiyosaki',16),('Robert T Kiyosaki',17),('Robert T Kiyosaki',18),('Jim Collins',19),('Jim Collins',20),('Eckhart Tolle',21),('Napoleon Hill',22),('Mary Buffett',23),('Sean Seah',23),('Trác Nhã',24),('William B Irvine',25),('Kishimi Ichiro',26),('Koga Fumitake',26),('Lê Văn Nghĩa',27),('Khotudien',28),('Nam Cao',29),('Dave Trott',30),('Wendell Odom',31),('Wendell Odom',32),('Bradley Edgeworth',33),('David Hucaby',33),('Jason Gooley',33),('Ramiro Garza Rios',33),('Silvia Hagen',34),('Andreas C. Müller',35),('Sarah Guido',35),('Ken Gray',36),('Thomas Nadeau D.',36),('Gosho Aoyama',37),('Gosho Aoyama',38),('Gosho Aoyama',39),('Gosho Aoyama',40),('Gosho Aoyama',41),('Fujiko F Fujio',42),('Fujiko F Fujio',43),('Fujiko F Fujio',44),('Vũ Trọng Phụng',45),('Vũ Trọng Phụng',46),('Nam Cao',47);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL,
  `ISBN` varchar(25) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `publisher` varchar(255) DEFAULT NULL,
  `number_of_pages` int DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `price` int DEFAULT '0',
  `origin_price` int GENERATED ALWAYS AS (((`price` * 120) / 100)) VIRTUAL,
  `quantity_in_stock` int DEFAULT '0',
  `release_year` year DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `view_times` int DEFAULT '0',
  `sold` int DEFAULT '0',
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`book_id`, `ISBN`, `title`, `description`, `publisher`, `number_of_pages`, `language`, `price`, `quantity_in_stock`, `release_year`, `is_deleted`, `view_times`, `sold`) VALUES (1,'9780521011273','English Grammar in Use Book','The world\'s best-selling grammar series for learners of English. English Grammar in Use Fourth edition is an updated version of the world\'s best-selling grammar title. It has a fresh, appealing new design and clear layout, with revised and updated examples, but retains all the key features of clarity and accessibility that have made the book popular with millions of learners and teachers around the world. This \'with answers\' version is ideal for self-study. An online version, book without answers, and book with answers and CD-ROM are available separately.','Cambridge University',370,'English',169000,5,2017,0,96,0),(2,'9783125352025','The Official Cambridge Guide to IELTS Student\'s Book','The Official Cambridge Guide to IELTS is THE definitive guide to IELTS. It contains all you need to succeed in the exam. Skill-building exercises cover all of the question types in the exam for both the General Training and Academic Modules. Our research into real IELTS candidates\' exam answers - and the mistakes they make, helps you avoid the same ones! Eight official practice tests and a focus on test-taking strategy help you maximise your score. The DVD-ROM includes videos of the Speaking test, and all the listening material, including the tests, as MP3 files. IELTS is jointly managed by the British Council, IDP: IELTS Australia and Cambridge English Language Assessment','Cambridge University',402,'English',364000,9,2014,0,7,5),(3,'9780194799003','Oxford Advanced Learner\'s Dictionary','The Oxford Advanced Learner\'s Dictionary is the world\'s bestselling advanced level dictionary for learners of English. Now in its 10th edition, the Oxford Advanced Learner\'s Dictionary, or OALD, is your complete guide to learning English vocabulary with definitions that learners can understand, example sentences showing language in use, and the new Oxford 3000 (TM) and Oxford 5000 (TM) word lists providing core vocabulary that every student needs to learn.','Oxford University Press',1796,'English',437000,10,2020,0,1,3),(4,'9781451612578','Đắc Nhân Tâm','Đắc nhân tâm của Dale Carnegie là quyển sách của mọi thời đại và một hiện tượng đáng kinh ngạc trong ngành xuất bản Hoa Kỳ. Trong suốt nhiều thập kỷ tiếp theo và cho đến tận bây giờ, tác phẩm này vẫn chiếm vị trí số một trong danh mục sách bán chạy nhất và trở thành một sự kiện có một không hai trong lịch sử ngành xuất bản thế giới và được đánh giá là một quyển sách có tầm ảnh hưởng nhất mọi thời đại.','First News',219,'Vietnamese',58000,10,2011,0,12,10),(5,'9780671733353','Quẳng Gánh Lo Đi Và Vui Sống','Bất kỳ ai đang sống đều sẽ có những lo lắng thường trực về học hành, công việc, những hoá đơn, chuyện nhà cửa,… Cuộc sống không dễ dàng giải thoát bạn khỏi căng thẳng, ngược lại, nếu quá lo lắng, bạn có thể mắc bệnh trầm cảm. Quẳng Gánh Lo Đi Và Vui Sống khuyên bạn hãy khóa chặt dĩ vãng và tương lai lại để sống trong cái phòng kín mít của ngày hôm nay. Mọi vấn đề đều có thể được giải quyết, chỉ cần bạn bình tĩnh và xác định đúng hành động cần làm vào đúng thời điểm.','First News',183,'Vietnamese',58000,10,1990,0,38,2),(6,'9781945186486','Nghệ thuật nói trước công chúng','Giao tiếp là nghệ thuật có ảnh hưởng lớn đến hàng triệu cá nhân trong xã hội từ những diễn giả, chính trị gia, nhà quản lý đến học sinh, sinh viên hay nhân viên bán hàng… Nghệ thuật nói trước công chúng là một tác phẩm xuất sắc về giao tiếp, chinh phục công chúng của Dale Carnegie – tác giả cuốn Đắc nhân tâm nổi tiếng. Những phương pháp giao tiếp, diễn thuyết có giá trị thực tiễn trong tác phẩm sẽ mang lại cho bạn mối quan hệ bạn bè, khách hàng tốt hơn trong công việc và cuộc sống.','First News',512,'Vietnamese',68000,7,2018,0,5,5),(7,'9780978631307','Đọc Vị Bất Kỳ Ai','Bạn băn khoăn không biết người ngồi đối diện đang nghĩ gì? Họ có đang nói dối bạn không? Đối tác đang ngồi đối diện với bạn trên bàn đàm phán đang nghĩ gì và nói gì tiếp theo? ĐỌC người khác là một trong những công cụ quan trọng, có giá trị nhất, giúp ích cho bạn trong mọi khía cạnh của cuộc sống. ĐỌC VỊ người khác để: Hãy chiếm thế thượng phong trong việc chủ động nhận biết điều cần tìm kiếm - ở bất kỳ ai bằng cách “thâm nhập vào suy nghĩ” của người khác.','NXB Lao động',204,'Vietnamese',63000,10,2007,0,0,4),(8,'9781402788758','Bài Học Diệu Kỳ Từ Chiếc Xe Rác','Cam kết nói không với \"xe rác\" khiến cho hạnh phúc và phép lịch sự trở thành hiện thực. Điều này hỗ trợ điều kia trong một vòng tròn khép kín. \"Có những người giống như “chiếc xe rác” vậy: họ chứa trong mình đầy “rác rưởi” - sự thất vọng, tức giận và chán nản. Và tất nhiên, họ phải tìm chỗ để trút bỏ mớ rác rưởi đó. Nếu thấy họ trút lên bạn thì bạn đừng đón nhận. Hãy mỉm cười, vẫy chào, chúc họ vui, rồi tiếp tục công việc của mình. Cứ tin tôi đi, rồi bạn sẽ thấy hạnh phúc hơn.”','First News',208,'Vietnamese',73000,10,2020,0,1,8),(9,'9780671646783','The Magic Of Thinking BIG','ET YOUR GOALS HIGH...THEN EXCEED THEM! Millions of people throughout the world have improved their lives using The Magic of Thinking Big. Dr. David J. Schwartz, long regarded as one of the foremost experts on motivation, will help you sell better, manage better, earn more money, and -- most important of all -- find greater happiness and peace of mind.','Penguin Books',380,'English',73000,10,1987,0,44,4),(10,'9780140280197','The 48 Laws of Power','Amoral, cunning, ruthless, and instructive, \"The 48 Laws of Power \"is the definitive manual for anyone interested in gaining, observing, or defending against ultimate control. In the book that \"People \"magazine proclaimed \"beguiling\" and \"fascinating,\" Robert Greene and Joost Elffers have distilled three thousand years of the history of power into 48 essential laws by drawing from the philosophies of Machiavelli, Sun Tzu, and Carl Von Clausewitz and also from the lives of figures ranging from Henry Kissinger to P.T. Barnum.','Penguin Books',476,'English',370000,10,2000,0,0,9),(11,'9786041097797','Cà Phê Cùng Tony','Có đôi khi vào những tháng năm bắt đầu vào đời, giữa vô vàn ngả rẽ và lời khuyên, khi rất nhiều dự định mà thiếu đôi phần định hướng, thì CẢM HỨNG là điều quan trọng để bạn trẻ bắt đầu bước chân đầu tiên trên con đường theo đuổi giấc mơ của mình. Cà Phê Cùng Tony là tập hợp những bài viết của tác giả Tony Buổi Sáng. Đúng như tên gọi, mỗi bài nhẹ nhàng như một tách cà phê, mà bạn trẻ có thể nhận ra một chút gì của chính mình hay bạn bè mình trong đó: Từ chuyện lớn như định vị bản thân giữa bạn bè quốc tế, cho đến chuyện nhỏ như nên chú ý những phép tắc xã giao thông thường.','NXB Trẻ',268,'Vietnamese',63000,10,2017,0,3,7),(12,'9786041076945','Trên Đường Băng','Xuất phát từ cái tâm trong sáng của người đi trước dày dặn kinh nghiệm, kiến thức, Tony Buổi Sáng mang đến đọc giả những bài viết hài ước, tinh tế, sinh động và đầy thiết thực. Cuốn Trên Đường Băng với những bài viết về thái độ với sự học và kiến thức nói chung, cách ứng phó với những trắc trở thử thách khi đi làm, cách sống hào sảng nghĩa tình văn minh… truyền cảm hứng cho các bạn trẻ sống hết mình, trọn vẹn từng phút giây và sẵn sàng cho hành trang cuộc sống.','NXB Trẻ',308,'Vietnamese',68000,9,2017,0,9,2),(13,'9786041082008','Hạ Đỏ','Kể về mối tình đầu trong sáng của một cậu học trò dành cho một cô gái quê 16 tuổi trong dịp về quê nghỉ hè, và những việc làm cao đẹp của cậu cho em bé quê chân chất chịu nhiều thiệt thòi ở nông thôn. Chuyện nhiều hình ảnh, dễ thương và trong sáng… vẫn không thiếu những “pha” thú vị cho ta những tiếng cười sảng khoái.','NXB Trẻ',184,'Vietnamese',49000,10,2018,0,3,1),(14,'9786041082080','Thiên Thần Nhỏ Của Tôi ','Khi dọn về ngôi nhà mới, Kha có một cô bạn nghèo sống trong ngõ hẻm gần đó. Khu vườn và ngôi biệt thự mà cha mẹ Kha được cấp không ngờ là nơi quen thuộc của Hồng Hoa, cứ như cô ấy đã gắn bó với nó từ lâu rồi. Vì thế, dù bị chủ nhà mới ngăn cấm, cô vẫn lén lút tìm vào khu vườn, để rồi gặp phải tai nạn... Và…','NXB Trẻ',132,'Vietnamese',41000,10,2019,0,4,2),(15,'9786041083408','Quán Gò Đi Lên','Chuyện diễn ra ở quán Đo Đo, quán ăn do tác giả sáng lập để nhớ quê nhà, nơi có chợ Đo Đo – chỗ Quán Gò đi lên ấy. Bởi thế, trong câu truyện tràn ngập những nỗi nhớ, nhớ món ăn, nhớ giọng nói, nhớ thói quen, nhớ kỉ niệm… Dẫu là câu chuyện ngập tràn nỗi nhớ, vẫn nghe trong đó những tiếng cười rất vui.','NXB Trẻ',252,'Vietnamese',64000,10,2016,0,2,1),(16,'8934974158271','Dạy Con Làm Giàu - Tập 1','Người giàu không làm việc vì tiền. Họ bắt tiền làm việc cho họ. Chấp nhận thất bại là bước đầu của thành công? Quyền lực của sự lựa chọn! Những bài học không có trong nhà trường. Hãy bắt đầu từ hôm nay “để không có tiền vẫn tạo ra tiền”….','First News',195,'Vietnamese',55000,10,2018,0,0,1),(17,'8934974158272','Dạy Con Làm Giàu - Tập 2','Người giàu không làm việc vì tiền. Họ bắt tiền làm việc cho họ. Chấp nhận thất bại là bước đầu của thành công? Quyền lực của sự lựa chọn! Những bài học không có trong nhà trường. Hãy bắt đầu từ hôm nay “để không có tiền vẫn tạo ra tiền”….','NXB Trẻ',208,'Vietnamese',62000,10,2018,0,3,9),(18,'8934974158273','Dạy Con Làm Giàu - Tập 3','Người giàu không làm việc vì tiền. Họ bắt tiền làm việc cho họ. Chấp nhận thất bại là bước đầu của thành công? Quyền lực của sự lựa chọn! Những bài học không có trong nhà trường. Hãy bắt đầu từ hôm nay “để không có tiền vẫn tạo ra tiền”….','NXB Trẻ',150,'Vietnamese',53000,10,2018,0,2,10),(19,'9780060516406','Build to Last','Drawing upon a six-year research project at the Stanford University Graduate School of Business, James C. Collins and Jerry I. Porras took eighteen truly exceptional and long-lasting companies and studied each in direct comparison to one of its top competitors.','HarperBusiness Essentials',368,'English',110000,10,2002,0,0,8),(20,'9780066620992','Good to Great','The Challenge:Built to Last, the defining management study of the nineties, showed how great companies triumph over time and how long-term sustained performance can be engineered into the DNA of an enterprise from the verybeginning. ','HarperBusiness Essentials',484,'English',200000,10,2001,0,0,2),(21,'B002361MLA','The Power of Now: A Guide to Spiritual Enlightenment','To make the journey into the Now we will need to leave our analytical mind and its false created self, the ego, behind. From the very first page of Eckhart Tolle\'s extraordinary book, we move rapidly into a significantly higher altitude where we breathe a lighter air. We become connected to the indestructible essence of our Being, “The eternal, ever present One Life beyond the myriad forms of life that are subject to birth and death.” Although the journey is challenging, Eckhart Tolle uses simple language and an easy question and answer format to guide us.','New World Library',258,'English',110000,10,2010,0,8,0),(22,'9780449214923','Nghĩ Giàu & Làm Giàu','Think and Grow Rich - Nghĩ giàu và làm giàu là một trong những cuốn sách bán chạy nhất mọi thời đại. Đã hơn 60 triệu bản được phát hành với gần trăm ngôn ngữ trên toàn thế giới và được công nhận là cuốn sách tạo ra nhiều triệu phú, một cuốn sách truyền cảm hứng thành công nhiều hơn bất cứ cuốn sách kinh doanh nào trong lịch sử.','First News',400,'Vietnamese',75000,10,1987,0,0,0),(23,'8936066687430','7 Phương Pháp Đầu Tư Warren Buffet','Warren Buffett là chuyên gia đầu tư và là một trong những doanh nhân giàu có, được kính trọng nhất thế giới. Với 12 năm học hỏi trực tiếp các chiến lược và thói quen đầu tư của Warren Buffett, Marry Buffett, cùng với Sean Sear, đã viết nên một cuốn sách hướng dẫn hoàn chỉnh dành cho những nhà đầu tư mới muốn học theo cách đầu tư thành công của Warren Buffett.','NXB Công Thương',300,'Vietnamese',111000,10,2019,0,3,0),(24,'8936067599558','Khéo Ăn Nói Sẽ Có Được Thiên Hạ','Trong xã hội thông tin hiện đại, sự im lặng không còn là vàng nữa, nếu không biết cách giao tiếp thì dù là vàng cũng sẽ bị chôn vùi. Trong cuộc đời một con người, từ xin việc đến thăng tiến, từ tình yêu đến hôn nhân, từ tiếp thị cho đến đàm phán, từ xã giao đến làm việc... không thể không cần đến kĩ năng và khả năng giao tiếp. Khéo ăn khéo nói thì đi đâu, làm gì cũng gặp thuận lợi. Không khéo ăn nói, bốn bề đều là trở ngại, khó khăn. Trong thời đại thông tin và liên lạc phát triển nhanh chóng, tin tức được cập nhật liên tục, các công cụ thông tin và kĩ thuật truyền thông được ứng dụng rộng rãi như ngày nay thì việc khéo ăn nói đã trở thành “cái tài số một thiên hạ”. ','NXB Văn Học',406,'Vietnamese',66000,10,2018,0,0,0),(25,'8935280905597','Chủ Nghĩa Khắc Kỷ - Phong Cách Sống Bản Lĩnh Và Bình Thản','Bạn mong muốn điều gì từ cuộc sống này? Có thể câu trả lời của bạn là muốn có một người bạn đời biết quan tâm, một công việc tốt và một ngôi nhà đẹp, nhưng chúng thực ra chỉ là một số thứ bạn muốn có trong cuộc sống. Khi hỏi bạn mong muốn điều gì từ cuộc sống này, tôi đang hỏi theo nghĩa rộng nhất. Tôi không hỏi về những mục tiêu mà bạn đề ra khi thực hiện các hoạt động hằng ngày, mà tôi đang hỏi về mục tiêu lớn lao trong cuộc sống của bạn. Nói cách khác, trong số những thứ bạn có thể theo đuổi trong cuộc sống, thứ nào bạn tin là có giá trị nhất?','NXB Công Thương',370,'Vietnamese',100000,10,2020,0,0,0),(26,'8935235215283','Dám Bị Ghét','\"TẠI SAO BẠN CỨ PHẢI SỐNG THEO KHUÔN MẪU NGƯỜI KHÁC ĐẶT RA?\r\nDưới hình thức một cuộc đối thoại giữa Chàng thanh niên và Triết gia, cuốn sách trình bày một cách sinh động và hấp dẫn những nét chính trong tư tưởng của nhà tâm lý học Alfred Adler, người được mệnh danh là một trong “ba người khổng lồ của tâm lý học hiện đại”, sánh ngang với Freud và Jung. Khác với Freud cho rằng quá khứ và hoàn cảnh là động lực làm nên con người ta của hiện tại, Adler chủ trương “cuộc đời ta là do ta lựa chọn”, và tâm lý học Adler được gọi là “tâm lý học của lòng can đảm”.\"','NXB Lao Động',333,'Vietnamese',77000,10,2018,0,1,0),(27,'8934974166283','Sài Gòn - Chuyện Xưa Mà Chưa Cũ','Cùng với \"Sài Gòn khâu lại mảnh thời gian\", tác phẩm này viết về một Sài Gòn xưa qua những mảnh hồi ức vô cùng sống động của tác giả Lê Văn Nghĩa. Đó là một Sài Gòn lạ lẫm với những hàng cây cao su, Sài Gòn rực rỡ ánh đèn màu của các rạp cải lương, Sài Gòn sôi động với các ban nhạc trẻ, Sài Gòn với bến tắm ngựa và những con đường ghi đậm dấu tích một thuở, Sài Gòn bỡ ngỡ trong những luồng văn hóa mới, Sài Gòn ấm áp tình người thuở tao loạn... Chắc chắn những ai yêu Sài Gòn - TP. Hồ Chí Minh sẽ vô cùng yêu thích cuốn sách tìm về dấu xưa đầy duyên dáng này.','NXB Trẻ',422,'Vietnamese',120000,9,2020,0,2,0),(28,'8935325000980','Từ Điển Tiếng “Em” - Tái Bản 2021','Bạn sẽ bất ngờ, khi cầm cuốn “từ điển” xinh xinh này trên tay.  Và sẽ còn ngạc nhiên hơn nữa, khi bắt đầu đọc từng trang sách…  Dĩ nhiên là vì “Từ điển tiếng “Em” không phải là một cuốn từ điển thông thường rồi!  Nói đến “từ điển”, xưa nay chúng ta đều nghĩ về một bộ sách đồ sộ, giải thích ý nghĩa, cách dùng, dịch, cách phát âm, và thường kèm theo các ví dụ về cách sử dụng từ đó.  Tuy nhiên, với cuốn sách “Từ điển tiếng “em”, các bạn sẽ hết sức bất ngờ với những định nghĩa mới, bắt trend, sáng tạo, thông minh và vô cùng hài hước.','NXB Phụ Nữ Việt Nam',280,'Vietnamese',46000,10,2021,0,0,0),(29,'8935095623945','Chí Phèo','Chí Phèo là một truyện ngắn nổi tiếng của nhà văn Nam Cao viết vào tháng 2 năm 1941. Chí Phèo là một tác phẩm xuất sắc, thể hiện nghệ thuật viết truyện độc đáo của Nam Cao, đồng thời là một tấn bi kịch của một người nông dân nghèo bị tha hóa trong xã hội. Hiện nay, truyện đã được đưa vào sách giáo khoa Ngữ Văn 11, tập 1. Chí Phèo cũng là tên nhân vật chính của truyện.','NXB Văn Học',206,'Vietnamese',38000,10,2017,0,0,0),(30,'9781447287056','One Plus One Equals Three','Up your game with this masterclass in creative thinking. Combining Dave Trott\'s distinctive, almost Zen-like storytelling, humour and practical advice, One Plus One Equals Three is a collection of provocative anecdotes and thought experiments designed to light a fire under your own creative ambitions.','Pan MacMillan',240,'English',183000,10,2016,0,0,0),(31,'9780135792735','CCNA 200-301 Official Cert Guide, Volume 1','Students trust the best-selling Official Cert Guide series from Cisco Press to help them learn, prepare, and practice for exam success. The Cert Guide series is built with the objective of providing assessment, review, and practice to help ensure students are fully prepared for their certification exam.','Cisco Express',848,'English',820000,9,2019,0,14,0),(32,'9781587147135','CCNA 200-301 Official Cert Guide, Volume 2','CCNA 200-301 Official Cert Guide enables students to succeed on the exam the first time and is the only self-study resource approved by Cisco. Best-selling author and expert instructor Wendell Odom shares preparation hints and test-taking tips, helping students identify areas of weakness and improve both conceptual knowledge and hands-on skills.','Cisco Express',624,'English',820000,9,2019,0,2,0),(33,'9781587147111','CCNP and CCIE Enterprise Core ENCOR 350-401','CCNP Enterprise Core ENCOR 300-401 Official Cert Guide is a comprehensive self-study tool for preparing for the new ENCOR exam. Complete coverage of all exam topics as posted on the exam topic blueprint ensures students will arrive at a thorough understanding of what they need to master to succeed on the exam. The book follows a logical organization of the ENCOR exam objectives. Material is presented in a concise manner, focusing on increasing readers\' retention and recall of exam topics. Readers will organize their exam preparation through the use of the consistent features in these chapters.','Cisco Express',1024,'English',1000000,10,2020,0,0,0),(34,'9780596001254','IPv6 Essentials','IPv6, the next generation Internet Protocol, has been in the works since the early 90s when the rapid growth of the Internet threatened to exhaust existing IP addresses. Drawing on 20 years--operational experience with the existing protocol (IPv4), the new protocol offers scalability, increased security features, real-time traffic support, and auto-configuration so that even a novice user can connect a machine to the Internet. ','O’Reilly Media',360,'English',146000,10,2002,0,0,0),(35,'9781449342302','Network Programmability and Automation','Like sysadmins before them, network engineers are finding that they cannot do their work manually anymore. As the field faces new protocols, technologies, delivery models, and a pressing need for businesses to be more agile and flexible, network automation is becoming essential. This practical guide shows network engineers how to use a range of technologies and tools—including Linux, Python, JSON, and XML—to automate their systems through code.','O’Reilly Media',392,'English',832000,10,2013,0,2,0),(36,'9781306811644','SDN: Software Defined Networks','Explore the emerging definitions, protocols, and standards for SDN software-defined, software-driven, programmable networks with this comprehensive guide. Two senior network engineers show you what’s required for building networks that use software for bi-directional communication between applications and the underlying network infrastructure.','O’Reilly Media',384,'English',1000000,10,2013,0,0,0),(37,'8935244814538','Thám Tử Lừng Danh Conan - Tập 12','Tớ là Edogawa Conan. Nhưng có một điều các bạn nên biết, thực chất tớ là Kudo Shinichi, thám tử học sinh cấp 3. Phải mất công lắm mới tìm thấy bọn người áo đen đã biến mình trở thành cậu bé cấp 1, vậy mà... Không hiểu sao, lần này tớ linh cảm có chuyện không hay sắp xảy ra...','NXB Kim Đồng',180,'Vietnamese',19000,7,2019,0,19,0),(38,'8935244814682','Thám Tử Lừng Danh Conan - Tập 27','Sau khi trở lại thành Conan và xóa tan mọi nghi ngờ của Ran, Shinichi tiếp tục hành trình cùng bác thám tử gà mờ Mori và đội thám tử nhí lớp 1B! Nhưng lần này, nghi phạm lớn nhất của vụ án mạng lại chính là bác Mori?? Nhờ cô Eri - người vợ đang sống li thân mà Bác ấy mới thoát tội! Cô giáo mới của Ran, Jodie Santemilion là một người nước ngoài. Bề ngoài thì có vẻ vui tính, hiền hậu nhưng khuôn mặt thật dưới lớp mặt nạ đó là...!? Cùng với cô Jodie chưa rõ thân phận, một cụ án lại xảy ra...','NXB Kim Đồng',180,'Vietnamese',19000,10,2019,0,1,0),(39,'8935244814774','Thám Tử Lừng Danh Conan - Tập 36','Conan và bọn Ran lên một hòn đảo ở phía nam để tham dự cuộc đấu trí giữa Mori Kogoro và Hattori Heiji. Ở đó xảy ra án mạng cùng những dòng chữ bí ẩn?! Sau đó, Conan lại gặp nguy hiểm khi bị cuốn vào một vụ đánh bom liên tiếp?! Cuốn sách đầy suy luận cũng như hành động!!','NXB Kim Đồng',180,'Vietnamese',19000,10,2019,0,1,0),(40,'8935244814859','Thám Tử Lừng Danh Conan - Tập 44','Ông bác của Sonoko, Suzuki Jirokichi đã đăng tin trên báo để thách thức siêu đạo chích Kid đến ăn trộm Big Jewel, \"Kì tích của biển cả\". Siêu trộm Kid chấp nhận lời thách thức và xuất hiện một cách ngoạn mục bất chấp sự bảo vệ nghiêm ngặt. Conan và Kid, thật là một cuộc đối đầu của trí tuệ. Ai sẽ là người chiến thắng đây!?','NXB Kim Đồng',180,'Vietnamese',19000,10,2019,0,1,0),(41,'8935244814972','Thám Tử Lừng Danh Conan - Tập 56','\"Một vụ giết người xảy ra ở ngôi nhà sâu trong núi, nơi nhóm thám tử nhí nghỉ lại qua đêm. Liệu đây có phải kế hoạch của bà già sống trong ngôi nhà đó, hay là...? Bên cạnh đó, những vụ lừa đảo của cậu học sinh chuyển trưởng đầy bí ẩn, Hondo Eisuke cũng dần được Conan đưa ra ánh sáng!\"','NXB Kim Đồng',180,'Vietnamese',19000,10,2020,0,1,0),(42,'8935244813739','Doraemon - Tập 10','Những câu chuyện về chú mèo máy thông minh Doraemon và nhóm bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa chúng ta bước vào thế giới hồn nhiên, trong sáng đầy ắp tiếng cười với một kho bảo bối kì diệu - những bảo bối biến ước mơ của chúng ta thành sự thật. Nhưng trên tất cả Doraemon là hiện thân của tình bạn cao đẹp, của niềm khát khao vương tới những tầm cao.','NXB Kim Đồng',192,'Vietnamese',16000,7,2019,0,2,0),(43,'8935244813784','Doraemon - Tập 15','Những câu chuyện về chú mèo máy thông minh Doraemon và nhóm bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa chúng ta bước vào thế giới hồn nhiên, trong sáng đầy ắp tiếng cười với một kho bảo bối kì diệu - những bảo bối biến ước mơ của chúng ta thành sự thật. Nhưng trên tất cả Doraemon là hiện thân của tình bạn cao đẹp, của niềm khát khao vương tới những tầm cao.','NXB Kim Đồng',192,'Vietnamese',16000,9,2019,0,2,0),(44,'8935244813791','Doraemon - Tập 16','Những câu chuyện về chú mèo máy thông minh Doraemon và nhóm bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa chúng ta bước vào thế giới hồn nhiên, trong sáng đầy ắp tiếng cười với một kho bảo bối kì diệu - những bảo bối biến ước mơ của chúng ta thành sự thật. Nhưng trên tất cả Doraemon là hiện thân của tình bạn cao đẹp, của niềm khát khao vương tới những tầm cao.','NXB Kim Đồng',192,'Vietnamese',16000,9,2019,0,2,0),(45,'8935236414777','Làm Đĩ','Làm đĩ là một trong số những cuốn sách gây ra nhiều cuộc tranh luận trong hơn suốt nửa thế kỷ qua. Từ Nhất Linh, Thái Phỉ, Hoài Thanh trước đây đã có khá nhiều bài đăng trên các báo Tân văn, Tương lai, Ngày nay, Hà Nội báo... phê phán quan niệm văn chương của Vũ Trọng Phụng xung quanh tiểu thuyết Làm đĩ của ông; cho đến Hoàng Văn Hoan sau này, khi Vũ Trọng Phụng đã mất gần 25 năm, còn cố tình tìm mọi lời lẽ sặc mùi chính trị phê phán Làm đĩ là một cuốn sách dâm uế và có hại cho sự giáo hóa đạo đức và luân lý đối với thế hệ trẻ Việt Nam.','NXB Văn Học',264,'Vietnamese',72000,8,2018,0,2,0),(46,'8935236418508','Số Đỏ','Văn học Việt Nam thời xưa có nhiều tác phẩm có giá trị to lớn về mặt nhân văn và nghệ thuật, đã được công nhận và chứng thực qua thời gian. Bộ sách Việt Nam danh tác bao gồm loạt tác phẩm đi cùng năm tháng như: Số đỏ (Vũ Trọng Phụng), Việc làng (Ngô Tất Tố), Gió đầu mùa, Hà Nội băm sáu phố phường (Thạch Lam), Miếng ngon Hà Nội (Vũ Bằng), Vang bóng một thời (Nguyễn Tuân). Hy vọng bộ sách sau khi tái bản sẽ giúp đông đảo tầng lớp độc giả thêm hiểu, tự hào và nâng niu kho tàng văn học nước nhà.','NXB Văn Học',243,'Vietnamese',52000,8,2018,0,2,0),(47,'8935236418959','Đời Thừa','Trong mảng sáng tác về đề tài tiểu tư sản của Nam Cao , truyện ngắn \" Đời Thừa \" có một vị trí đặc biệt . \" Đời Thừa \" đã ghi lại chân thật hình ảnh buồn thảm của người tri thức tiểu tư sản nghèo , nhà văn Nam Cao đã phác hoạ rõ nét hình ảnh vừa bi vừa hài của lớp người này trở nên đầy ám ảnh . Giá trị của \" Đời Thừa \" không phải chỉ ở chỗ đã miêu tả chân thật cuộc sống nghèo khổ , bế tắc của người  trí thức tiểu tư sản nghèo , đã viết về người tiểu tư sản không phải với ngòi bút vuốt ve , thi vị hoá , mà còn vạch ra cả những thói xấu của họ v.v....','NXB Văn Học',222,'Vietnamese',52000,6,2018,0,3,0);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `customer_username` varchar(255) NOT NULL,
  `book_id` int NOT NULL,
  `book_quantity` int DEFAULT '1',
  `total_cost` int DEFAULT NULL,
  PRIMARY KEY (`customer_username`,`book_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES ('eded147a-582b-4328-bf6a-4b2855865e26',4,1,58000),('user01',35,1,832000);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_of_book`
--

DROP TABLE IF EXISTS `categories_of_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_of_book` (
  `category` enum('English learning','Self-help','Business','Short stories','Long story','Information Technology','Manga') NOT NULL,
  `book_id` int NOT NULL,
  PRIMARY KEY (`category`,`book_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `categories_of_book_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_of_book`
--

LOCK TABLES `categories_of_book` WRITE;
/*!40000 ALTER TABLE `categories_of_book` DISABLE KEYS */;
INSERT INTO `categories_of_book` VALUES ('English learning',1),('English learning',2),('English learning',3),('Self-help',4),('Self-help',5),('Business',6),('Self-help',7),('Self-help',8),('Business',9),('Business',10),('Short stories',11),('Short stories',12),('Long story',13),('Long story',14),('Long story',15),('Business',16),('Business',17),('Business',18),('Business',19),('Business',20),('Self-help',21),('Business',21),('Business',22),('Business',23),('Self-help',24),('Self-help',25),('Self-help',26),('Short stories',27),('Short stories',28),('Short stories',29),('Business',30),('Information Technology',31),('Information Technology',32),('Information Technology',33),('Information Technology',34),('Information Technology',35),('Information Technology',36),('Manga',37),('Manga',38),('Manga',39),('Manga',40),('Manga',41),('Manga',42),('Manga',43),('Manga',44),('Long story',45),('Long story',46),('Long story',47);
/*!40000 ALTER TABLE `categories_of_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `img_url` varchar(255) NOT NULL,
  `book_id` int DEFAULT NULL,
  `img_order` int DEFAULT NULL,
  PRIMARY KEY (`img_url`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES ('/images/products_images/01_A.jpg',1,1),('/images/products_images/01_B.jpg',1,2),('/images/products_images/01_C.jpg',1,3),('/images/products_images/01_D.jpg',1,4),('/images/products_images/02_A.jpg',2,1),('/images/products_images/02_B.jpg',2,2),('/images/products_images/02_C.jpg',2,3),('/images/products_images/02_D.jpg',2,4),('/images/products_images/03_A.jpg',3,1),('/images/products_images/03_B.jpg',3,2),('/images/products_images/03_C.jpg',3,3),('/images/products_images/03_D.jpg',3,4),('/images/products_images/04_A.jpg',4,1),('/images/products_images/04_B.jpg',4,2),('/images/products_images/04_C.jpg',4,3),('/images/products_images/04_D.jpg',4,4),('/images/products_images/05_A.jpg',5,1),('/images/products_images/05_B.jpg',5,2),('/images/products_images/05_C.jpg',5,3),('/images/products_images/05_D.jpg',5,4),('/images/products_images/06_A.jpg',6,1),('/images/products_images/06_B.jpg',6,2),('/images/products_images/06_C.jpg',6,3),('/images/products_images/06_D.jpg',6,4),('/images/products_images/07_A.jpg',7,1),('/images/products_images/07_B.jpg',7,2),('/images/products_images/07_C.jpg',7,3),('/images/products_images/07_D.jpg',7,4),('/images/products_images/08_A.jpg',8,1),('/images/products_images/08_B.jpg',8,2),('/images/products_images/08_C.jpg',8,3),('/images/products_images/08_D.jpg',8,4),('/images/products_images/09_A.jpg',9,1),('/images/products_images/09_B.jpg',9,2),('/images/products_images/09_C.jpg',9,3),('/images/products_images/09_D.jpg',9,4),('/images/products_images/10_A.jpg',10,1),('/images/products_images/10_B.jpg',10,2),('/images/products_images/10_C.jpg',10,3),('/images/products_images/10_D.jpg',10,4),('/images/products_images/11_A.jpg',11,1),('/images/products_images/11_B.jpg',11,2),('/images/products_images/11_C.jpg',11,3),('/images/products_images/11_D.jpg',11,4),('/images/products_images/12_A.jpg',12,1),('/images/products_images/12_B.jpg',12,2),('/images/products_images/12_C.jpg',12,3),('/images/products_images/12_D.jpg',12,4),('/images/products_images/13_A.jpg',13,1),('/images/products_images/13_B.jpg',13,2),('/images/products_images/13_C.jpg',13,3),('/images/products_images/13_D.jpg',13,4),('/images/products_images/14_A.jpg',14,1),('/images/products_images/14_B.jpg',14,2),('/images/products_images/14_C.jpg',14,3),('/images/products_images/14_D.jpg',14,4),('/images/products_images/15_A.jpg',15,1),('/images/products_images/15_B.jpg',15,2),('/images/products_images/15_C.jpg',15,3),('/images/products_images/15_D.jpg',15,4),('/images/products_images/16_A.jpg',16,1),('/images/products_images/16_B.jpg',16,2),('/images/products_images/16_C.jpg',16,3),('/images/products_images/16_D.jpg',16,4),('/images/products_images/17_A.jpg',17,1),('/images/products_images/17_B.jpg',17,2),('/images/products_images/17_C.jpg',17,3),('/images/products_images/17_D.jpg',17,4),('/images/products_images/18_A.jpg',18,1),('/images/products_images/18_B.jpg',18,2),('/images/products_images/18_C.jpg',18,3),('/images/products_images/18_D.jpg',18,4),('/images/products_images/19_A.jpg',19,1),('/images/products_images/19_B.jpg',19,2),('/images/products_images/19_C.jpg',19,3),('/images/products_images/19_D.jpg',19,4),('/images/products_images/20_A.jpg',20,1),('/images/products_images/20_B.jpg',20,2),('/images/products_images/20_C.jpg',20,3),('/images/products_images/20_D.jpg',20,4),('/images/products_images/21_1638151602328.jpg',21,1),('/images/products_images/21_1638151602329.jpg',21,2),('/images/products_images/21_1638151602332.jpg',21,3),('/images/products_images/21_1638151602335.jpg',21,4),('/images/products_images/22_1638238615390.jpg',22,1),('/images/products_images/22_1638238615393.jpg',22,2),('/images/products_images/22_1638238615395.jpg',22,3),('/images/products_images/22_1638238615396.jpg',22,4),('/images/products_images/23_1638239239676.jpg',23,1),('/images/products_images/23_1638239239677.jpg',23,2),('/images/products_images/23_1638239239678.jpg',23,3),('/images/products_images/23_1638240625655.jpg',23,4),('/images/products_images/24_1638241467303.jpg',24,1),('/images/products_images/24_1638241467304.jpg',24,2),('/images/products_images/24_1638241467309.jpg',24,3),('/images/products_images/24_1638241467310.jpg',24,4),('/images/products_images/25_1638241869648.jpg',25,1),('/images/products_images/25_1638241869650.jpg',25,2),('/images/products_images/25_1638241869651.jpg',25,3),('/images/products_images/25_1638241869652.jpg',25,4),('/images/products_images/26_1638242119438.jpg',26,1),('/images/products_images/26_1638242119439.jpg',26,2),('/images/products_images/26_1638242119442.jpg',26,3),('/images/products_images/26_1638242119443.jpg',26,4),('/images/products_images/27_1638243275643.jpg',27,1),('/images/products_images/27_1638243275648.jpg',27,2),('/images/products_images/27_1638243275650.jpg',27,3),('/images/products_images/27_1638243275651.jpg',27,4),('/images/products_images/28_1638243667673.jpg',28,1),('/images/products_images/28_1638243667675.jpg',28,2),('/images/products_images/28_1638243667677.jpg',28,3),('/images/products_images/28_1638243667679.jpg',28,4),('/images/products_images/29_1638244571266.jpg',29,1),('/images/products_images/29_1638244571267.jpg',29,2),('/images/products_images/29_1638244571273.jpg',29,3),('/images/products_images/29_1638244571274.jpg',29,4),('/images/products_images/30_1638245152406.jpg',30,1),('/images/products_images/30_1638245152409.jpg',30,2),('/images/products_images/30_1638245152415.jpg',30,3),('/images/products_images/30_1638245152416.jpg',30,4),('/images/products_images/31_1638245262302.jpg',31,1),('/images/products_images/31_1638245262304.jpg',31,2),('/images/products_images/31_1638245262305.jpg',31,3),('/images/products_images/31_1638245262310.jpg',31,4),('/images/products_images/32_1638245457375.jpg',32,1),('/images/products_images/32_1638245457379.jpg',32,2),('/images/products_images/32_1638245457381.jpg',32,3),('/images/products_images/32_1638245457382.jpg',32,4),('/images/products_images/33_1638245697255.jpg',33,1),('/images/products_images/33_1638245697258.jpg',33,2),('/images/products_images/33_1638245697259.jpg',33,3),('/images/products_images/33_1638245697260.jpg',33,4),('/images/products_images/34_1638246481518.jpg',34,1),('/images/products_images/34_1638246481519.jpg',34,2),('/images/products_images/34_1638246481522.jpg',34,3),('/images/products_images/34_1638246481523.jpg',34,4),('/images/products_images/35_1638246566755.jpg',35,1),('/images/products_images/35_1638246566757.jpg',35,2),('/images/products_images/35_1638246566758.jpg',35,3),('/images/products_images/35_1638246566759.jpg',35,4),('/images/products_images/36_1638249104590.jpg',36,1),('/images/products_images/36_1638249104594.jpg',36,2),('/images/products_images/36_1638249104596.jpg',36,3),('/images/products_images/36_1638249104597.jpg',36,4),('/images/products_images/37_1638249329414.jpg',37,1),('/images/products_images/37_1638249329419.jpg',37,2),('/images/products_images/37_1638249329420.jpg',37,3),('/images/products_images/37_1638249329423.jpg',37,4),('/images/products_images/38_1638249393924.jpg',38,1),('/images/products_images/38_1638249393926.jpg',38,2),('/images/products_images/38_1638249393927.jpg',38,3),('/images/products_images/38_1638249393929.jpg',38,4),('/images/products_images/39_1638249516388.jpg',39,1),('/images/products_images/39_1638249516391.jpg',39,2),('/images/products_images/39_1638249516392.jpg',39,3),('/images/products_images/39_1638249516393.jpg',39,4),('/images/products_images/40_1638249657683.jpg',40,1),('/images/products_images/40_1638249657685.jpg',40,2),('/images/products_images/40_1638249657686.jpg',40,3),('/images/products_images/40_1638249657689.jpg',40,4),('/images/products_images/41_1638408470481.jpg',41,1),('/images/products_images/41_1638408470485.jpg',41,2),('/images/products_images/41_1638408470489.jpg',41,3),('/images/products_images/41_1638408470494.jpg',41,4),('/images/products_images/42_1638408539342.jpg',42,1),('/images/products_images/42_1638408539346.jpg',42,2),('/images/products_images/42_1638408539347.jpg',42,3),('/images/products_images/42_1638408539350.jpg',42,4),('/images/products_images/43_1638408613636.jpg',43,1),('/images/products_images/43_1638408613639.jpg',43,2),('/images/products_images/43_1638408613640.jpg',43,3),('/images/products_images/43_1638408613641.jpg',43,4),('/images/products_images/44_1638408717635.jpg',44,1),('/images/products_images/44_1638408717637.jpg',44,2),('/images/products_images/44_1638408717639.jpg',44,3),('/images/products_images/44_1638408717641.jpg',44,4),('/images/products_images/45_1638408782384.jpg',45,1),('/images/products_images/45_1638408782388.jpg',45,2),('/images/products_images/45_1638408782390.jpg',45,3),('/images/products_images/45_1638408782391.jpg',45,4),('/images/products_images/46_1638408853691.jpg',46,1),('/images/products_images/46_1638408853695.jpg',46,2),('/images/products_images/46_1638408853698.jpg',46,3),('/images/products_images/46_1638408853699.jpg',46,4),('/images/products_images/47_1638408919963.jpg',47,1),('/images/products_images/47_1638408919967.jpg',47,2),('/images/products_images/47_1638408919970.jpg',47,3),('/images/products_images/47_1638408919971.jpg',47,4);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_id` int NOT NULL,
  `book_id` int NOT NULL,
  `items_quantity` int DEFAULT '1',
  PRIMARY KEY (`order_id`,`book_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (46895,1,1),(46895,2,2),(46895,7,3),(90373,6,3),(90374,6,6),(90375,1,5),(90375,2,1),(90375,37,3),(90375,47,4),(90376,31,1),(90376,32,1),(90377,45,2),(90377,46,2),(90378,42,3),(90379,43,1),(90379,44,1),(90380,12,1),(90380,27,1);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_username` varchar(255) NOT NULL,
  `total_cost` int DEFAULT '0',
  `shipping_fee` int DEFAULT '25',
  `final_cost` int GENERATED ALWAYS AS ((`total_cost` + `shipping_fee`)) VIRTUAL,
  `delivery_status` enum('Packed','In transit','Chargeback','Success') DEFAULT 'Packed',
  `payment_method` enum('COD') DEFAULT NULL,
  `receiver_name` varchar(40) NOT NULL,
  `customer_phone_number` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `expected_arriving_time` datetime DEFAULT ((now() + interval 7 day)),
  PRIMARY KEY (`order_id`),
  KEY `customer_username` (`customer_username`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`order_id`, `customer_username`, `total_cost`, `shipping_fee`, `delivery_status`, `payment_method`, `receiver_name`, `customer_phone_number`, `customer_address`, `order_date`, `expected_arriving_time`) VALUES (46895,'user03',95000,16000,'Success','COD','Nguyen Van A','542162212','8343 Nichols St, Fort Campbell, Kentucky(KY), 42223','2021-12-09 14:56:03','2021-12-16 14:56:03'),(90373,'user02',68000,23000,'In transit','COD','Nguyen Van Long','0935084909','411, Thoi Thuan, Thot Not, CanTho','2022-01-16 07:26:22','2022-01-23 07:26:22'),(90374,'user02',408000,26000,'Success','COD','Nguyen Van Long','0935084909','411, Thoi Thuan, Thot Not, CanTho','2022-01-16 07:28:49','2022-01-23 07:28:49'),(90375,'user01',1038000,33000,'Chargeback','COD','Nguyen Van Long','0935084909','411, Thoi Thuan, Thot Not, CanTho','2022-01-17 03:31:42','2022-01-24 03:31:42'),(90376,'user01',1640000,22000,'Packed','COD','Tran Van Bay','568432971','289/QL.1A/KP3/LX, TĐ/HCM','2022-01-17 03:33:39','2022-01-24 03:33:39'),(90377,'user04',124000,24000,'Packed','COD','Tran Thi Be Tu','987654321','890, KP8, Long Xuyen, An Giang','2022-01-17 03:36:06','2022-01-24 03:36:06'),(90378,'user05',48000,23000,'In transit','COD','Ngo Van Thoi','32146987','987, Khu pho 10, Moc Hoa, Long An','2022-01-17 03:38:33','2022-01-24 03:38:33'),(90379,'user05',32000,22000,'Packed','COD','Ngo Van Thoi','32146987','987, Khu pho 10, Moc Hoa, Long An','2022-01-17 03:39:03','2022-01-24 03:39:03'),(90380,'user05',188000,22000,'In transit','COD','Cu Thanh Tan','987653','289/QL.1A/KP3/LX, TĐ/HCM','2022-01-17 03:40:20','2022-01-24 03:40:20');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `customer_username` varchar(255) NOT NULL,
  `book_id` int NOT NULL,
  `review_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` text,
  `rating` enum('1_star','2_star','3_star','4_star','5_star') DEFAULT NULL,
  PRIMARY KEY (`customer_username`,`book_id`,`review_date`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('gaquyen',2,'2021-12-07 10:21:15','Cuốn sách này mình nghĩ là khá hay và rất phù hợp cho các bạn tự học ielts có trình độ từ 5.5. Good luck.','5_star'),('hang',2,'2021-12-07 10:21:15','Được nhiều người giới thiệu sách này rát hay nên mình quyết định sẽ mua sách này. Nó rất phù hợp cho những bạn tự học tại nhà','5_star'),('hoangvo',9,'2021-12-07 09:18:41','Sách rất hay, thay đổi cách nhìn sẽ thay đổi cuộc sống','4_star'),('huyenminh',4,'2021-12-07 10:25:29','Có thể nói đây là cuốn self-helf hay nhất mà mình từng đọc. Nó đã giúp mình nhận ra rất nhiều điều. Còn về chất lượng, sách rất tốt và đẹp','5_star'),('minhthai',9,'2021-12-07 09:18:41','Sách giao đúng hạn, đóng gói cẩn thận. Nội dung bổ ích nhưng lối viết không quá hấp dẫn','5_star'),('nguyen',2,'2021-12-07 10:21:15','Sách tốt nhưng cần một kiến thức đủ để hiểu. .................................................................','4_star'),('nguyenthailinh',1,'2021-12-07 10:14:11','English Grammar in use là bộ sách self-study cực kỳ nổi tiếng, được ưa thích bởi các học sinh ESL ( English second language ) ở trình độ B1-B2 Bản thân em là muốn tự học để ôn thi cấp III và IELTS nên đã mua trọn bộ cả ba quyển ( Essential Grammar in use, English Grammar in Use và Advanced Grammar in use) cùng với bộ sách từ vựng của nó.','5_star'),('nguyenthamngochoa',2,'2021-12-07 10:21:15','Chất lượng sách rất cao, nội dung của sách cũng rất hay và bổ ích. Ở mỗi unit, sách đều cho người đọc những mẹo vặt khi làm bài. Nói chung là tuyệt vời ở cả nội dung lẫn hình thức','5_star'),('nguyenthinga',9,'2021-12-07 09:18:41','Trước hết về nội dung đây là cuốn sách gây ấn tượng, đặc sắc,ý nghĩa dành cho mọi lứa tuổi muốn thay đổi tư duy ,suy nghĩ cũng như hành động của mỗi người để tiến tới thành công trong cuộc sống.Sách giúp ta sống tự tin hạnh phúc hơn,táo bạo đạt được đạt được ước mơ mình mong muốn những thành tựu to lớn, kiếm được nhiều tiền, có nhiều bạn và được mọi người tôn trọng,yêu mến,ngưỡng mộ. ','3_star'),('nhankha2000',1,'2021-12-04 04:04:50','So cool! This book is super great!','4_star'),('nhunguyen',1,'2021-12-07 10:14:11','Mình đã ngần ngại mua khi đọc cmt có người bảo fahasa giao hàng lâu nên mình đã lặn lội đến nhà sách tìm mua như hết hàng. Sau mình quyết định đặt luôn. Không chỉ rẻ hơn nhiều và có lẽ là giá tốt nhất mà còn SHIP siêu nhanh. Tối khuya mình đặt mà sáng đã giao cho mình rồi. Đóng gói rất gọn gàng và kỹ lưỡng. Mình rất thích và siêu hài lòng vì lần đâu tiên đặt sách ở đây.','4_star'),('oanh',1,'2021-12-07 10:14:11','Bao giờ sách mới về vậy bạn, đợi lâu thật luôn, đang đợi hành về để đặt combo luôn,nhưng sao chưa thấy sách về, mong sao nhanh nhanh xíu','2_star'),('phongvan',9,'2021-12-07 09:18:41','Cuốn sách này như một công cụ hữu ích khi nó tiết lộ những đức tính, phẩm chất của người thành công qua đó giúp chúng ta có cuộc sống tự tin hơn, giàu có hơn, hạnh phúc hơn, đạt được những thành tựu to lớn hơn, kiếm được nhiều tiền, có nhiều bạn và được mọi người tôn trọng. Và chúng ta cũng sẽ hiểu rằng tư duy táo bạo trong \'\'Dám nghĩ lớn\'\' sẽ mang lại những điều kỳ diệu lớn lao.','5_star'),('quynhnga',4,'2021-12-07 10:25:29','Trong sách nói: “Tại sao phải đánh giá lại 1 tác phẩm mà sự thành công và nổi tiếng của nó đã được minh chứng qua thực tiễn của mọi thời đại?” Vì vậy tôi sẽ không đi đánh giá tác phẩm nữa, mà chỉ nói đến những gì học được sau khi đọc được hơn 1 nửa cuốn. Tôi chỉ muốn nói rằng đây chính là cuốn sách hay và ý nghĩa nhất của mọi thời đại cho đến tận bây giờ. ','3_star'),('sinh',1,'2021-12-07 10:14:11','Đây là một quyển sách rất tuyệt vời. Nói qua về cấu trúc cuốn sách. Đối tượng phù hợp với người học trình độ trung cấp ( đã nắm cơ bản ngữ pháp), không phù hợp với người mới học trình độ sơ cấp, đoạn này các bạn cân nhắc kỹ nha.-Cấu trúc của sách gồm 145 bài học, mỗi bài gồm 2 trang sách đối diện nhau.','4_star'),('thangtran',2,'2021-12-07 10:21:15','Sách này rất hữu dụng cho những bạn đang chuẩn bị cho kỳ thi ielts. Sách này do cô giáo mình giới thiệu','5_star'),('trangnguyen',2,'2021-12-07 10:21:15','Sau một quá trình tìm kiếm, mình nhận thấy quyển sách này phù hợp cho người đang cần các tips để luyện IELTS từ cơ bản.','5_star'),('trangnguyen',9,'2021-12-07 09:18:41','Nhiều người luôn than vãn rằng Lý do họ không thành công trong cuộc sống trong công việc hay trong các mối quan hệ là bởi vì họ không thông minh hay Tải tính cách quá khép kín vậy đâu là lý do thực sự Câu trả lời là tất cả đều do suy nghĩ của bạn đang giết bạn những suy nghĩ vụn vặt và nông cạn do cách trình bày cũng như lối tư duy nổi lối mòn','4_star'),('tungduy',2,'2021-12-07 10:21:15','Sách có nội dung phong phú và phú hợp với các bạn có trình độ từ B2, tức là khoảng Ielts 5.5 trở lên.','5_star'),('vuthuhuong',1,'2021-12-07 10:14:11','Hmmm, hơi thất vọng xíu vì mới đầu mình nghĩ đây là bản có màu , xong nhận thì mới biết đây là bản k màu. Nhưng là lỗi do mình không tìm hiểu kĩ thôi, chứ sách vẫn xịn, nội dung hay, đáng đồng tiền bát gạo nhé.','3_star');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password_hashed` varchar(255) NOT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `verify_email` tinyint(1) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL,
  `role` enum('Customer','Admin') DEFAULT 'Customer',
  `active` tinyint(1) DEFAULT '1',
  `phone_number` varchar(255) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `password_hashed` (`password_hashed`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','$2a$10$eOjXbH/nvb5X7KMklbn0aOcPlKHHN4CI6jKB9UfpIhbMsFhNaQIZe','/images/users/admin_1639022276030.jpg','Ngô Nhân Khả','nnk2000@gmail.com',1,'Thới Thuận, Thốt Nốt, Cần Thơ','Admin',1,'036xxxx135'),('user01','$2a$10$DN/Sa/GRgt6Cu/POlki4zOnj9hzi37GNxEsGU1QGSS.pR.ZmNgmM.','/images/users/avatar-1.jpg','The user 01','bob@gmail.com',1,'96 North Road, GUILDFORD, GU36 5AE, Britain','Customer',1,'312567111'),('user02','$2a$10$qzhB9DdOdfVbiPdoCte8PuexnGBVORvmlKPGzSmlURG/XM5C7CUOa','/images/users/avatar-2.jpg','The user 02','john@gmail.com',1,'540 Pulaski Circle Elmont, NY 11003, USA','Customer',1,'987654321'),('user03','$2a$10$Qh70op/7LIyAPFPuFDRBCuwYIaXfRUKolr9jvj892uuwL.FJ/HjH2','/images/users/avatar-3.jpg','The user 03','davinci@gmail.com',1,'Vinci, Tuscan, Arno, Italia','Customer',1,'985632147'),('user04','$2a$10$3ezpCAldcwsSUJwJBunNwubNkxzouiemNqahooS3jM547q1sGeXh2','/images/users/avatar-4.jpg','The user 04','tony@gmail.com',1,'96 North Road, GUILDFORD, GU36 5AE, Britain','Customer',1,'036xxxx131'),('user05','$2a$10$4l6pRDJyMCXutmbkhGWnZu0oW38oDmGwwtF6L7x0F1EndNkV5nIBy','/images/users/avatar-5.jpg','The user 05','hulk@gmail.com',1,'Malibu, California, US','Customer',1,'312567111'),('user06','$2a$10$cWjrTfyh5OrRYoKOuDTXC.HRM4RIkH3RXlCh6/S.Q1Thn/j6XrVBq','/images/users/avatar-6.jpg','The user 06','thor@gmail.com',1,'540 Pulaski Circle Elmont, NY 11003, USA','Customer',1,'55139116299'),('user07','$2a$10$RLSoEo38M7ai2gbZi0xZoer/eVJl/tdtFlIrk.nsZ0QogLAFb9iB6','/images/users/avatar-7.jpg','The user 07','test@gmail.com',1,'Vinci, Tuscan, Arno, Italia','Customer',1,'44139116299'),('har','$2b$10$hcb/GyfRRLwQeXLqe4m6XuzrPrAG21Lgw6nlhT.tQxAkXx3SNzG6S','/images/users/har_1642536584372.png','har123','zek60608@zwoho.com',1,'1111111111111111111111','Customer',1,'88888888');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'nazox'
--

--
-- Dumping routines for database 'nazox'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17 10:55:06
