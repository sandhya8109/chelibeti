-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 08:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chelibeti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'e64b78fc3bc91bcbc7dc232ba8ec59e0');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `user_id` int(11) NOT NULL,
  `startdate` int(11) NOT NULL,
  `last_date` int(11) NOT NULL,
  `symptoms` varchar(50) NOT NULL,
  `mood` varchar(50) NOT NULL,
  `other` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menstrual_cycle_tracker`
--

CREATE TABLE `menstrual_cycle_tracker` (
  `user_id` int(11) NOT NULL,
  `prev_period_date` date NOT NULL,
  `cycle_length` int(11) NOT NULL,
  `period_length` int(11) NOT NULL,
  `next_period_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menstrual_cycle_tracker`
--

INSERT INTO `menstrual_cycle_tracker` (`user_id`, `prev_period_date`, `cycle_length`, `period_length`, `next_period_date`) VALUES
(15, '2023-04-18', 12, 13, '2023-06-04'),
(19, '2023-04-12', 12, 15, '2023-06-04'),
(22, '2023-04-04', 16, 20, '2023-06-04'),
(26, '2023-04-13', 12, 15, '2023-06-04'),
(31, '2023-03-28', 12, 14, '2023-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `pads`
--

CREATE TABLE `pads` (
  `location` varchar(50) NOT NULL,
  `available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pads`
--

INSERT INTO `pads` (`location`, `available`) VALUES
('school', 1),
('home', 1),
('other', 1),
('sadobato', 1),
('Durbarmarg', 1),
('Lakeside', 1),
('ratnapark', 1),
('Lekhnath', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pads_request`
--

CREATE TABLE `pads_request` (
  `user_id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `admin_id` int(100) NOT NULL,
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`admin_id`, `id`, `title`, `content`, `category`, `image`, `date`, `status`) VALUES
(0, 4, 'tes1', 'test 2', 'Period Products', 'sandyrimal07 (1).png', '2023-03-09', 'active'),
(0, 5, 'heram ahi', 'bfjewhgiusdh fijneiu', 'Maternal Health', '333723822_914713873181102_5032835613601259740_n.jpg', '2023-03-09', 'active'),
(0, 6, 'nhvhg', ' jbv hg', 'Maternal Health', '', '2023-03-09', 'active'),
(0, 7, 'test1', 'adkjffjhdfh', 'Period Products', 'd1168b71d6d55497561ffbe55e06258a8e2b80da8d2d3593f288863fcd163bb5f066753117b0e225b681af4de3101315556f', '2023-03-10', 'active'),
(0, 8, 'jehbf', 'ifjbv', 'Period Products', '', '2023-04-16', 'inactive'),
(0, 9, 'jehbf', 'ifjbv', 'Period Products', '', '2023-04-16', 'inactive'),
(0, 10, 'draft', 'fuy', 'Diseases in Women', '', '2023-04-16', 'inactive'),
(0, 11, 'hello', 'hello', 'Aging in Women', '4365524.png', '2023-04-16', 'active'),
(0, 12, 'publish', 'jvbdjh', 'Period Products', '', '2023-04-16', 'active'),
(1, 13, 'hello', 'hello', 'Menstrual Health', '99462_sport_512x512.png', '2023-04-16', 'active'),
(1, 14, 'hello2', 'l xa', 'Menstrual Health', 'download.jpeg', '2023-04-16', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$RSc2aUXYhXw1S/g0GbKmAeDVjQntNsqeFtw6WP4q9IRY6VN9Tv4by', 'frontpagenewsofficial@gmail.com', 1, '2020-03-27 17:51:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Menstrual Health', 'Everything related to the menstrual cycle, such as the length of the cycle, the amount of bleeding, and the symptoms that occur during menstruation.', '2023-03-06 10:28:09', '2023-03-31 18:41:07', 1),
(3, 'Reproductive Health', 'Related the female reproductive system, such as contraception, fertility, and sexual health.', '2023-03-06 10:35:09', '2023-04-14 11:11:55', 1),
(5, 'Menopause', 'Refers to the stage in a woman\'s life when menstruation stops, and includes issues related to hormone replacement therapy, hot flashes, and osteoporosis.', '2023-03-14 05:32:58', '2023-04-14 05:33:41', 1),
(6, 'Trending', 'Trending', '2023-03-22 15:46:09', '2023-04-29 23:00:00', 1),
(7, 'Hormonal Health', 'Includes the hormonal changes that occur during menstruation, as well as hormonal disorders', '2023-03-22 15:46:22', '2023-04-05 18:15:00', 1),
(8, 'Pelvic Health', 'Includes conditions that affect the pelvis', '2023-03-24 08:17:43', '2023-04-24 08:17:43', 1),
(9, 'General Health', 'Includes other health issues that may affect women', '2023-12-24 08:21:12', '2023-03-31 18:41:07', 1),
(10, 'Nutrition and Fitness', 'This category includes information related to the role of diet and exercise in promoting women\'s health, as well as specific nutritional needs during pregnancy and menopause.', '2022-02-24 10:10:23', '2023-03-31 18:41:07', 1),
(12, 'Pregnancy Care', 'Related to pre and post-pregnancy care for women as well as during pregnancy care', '2021-12-24 10:51:11', NULL, 1),
(13, 'Sexual Health', 'Includes information related to sexual activity, such as sexual function, sexually transmitted infections, and sexual education.', '2023-03-24 10:53:33', '2023-04-14 11:11:55', 1),
(15, 'Health Policy and Advocacy', 'This category includes information related to public health policies that affect women\'s health, as well as advocacy efforts aimed at improving women\'s access to healthcare.', '2023-01-07 13:22:30', '2023-02-07 13:22:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(10, '10', 'Kabita', 'kabita@gmail.com', 'iusadhfuasdiufhjsvjhaskdjfhjhsdkjc hjgsdjvh', '2023-04-29 12:39:34', 1),
(11, '10', 'Sandhya Rimal', 'sandyrimal07@gmail.com', 'posting test comment on the page', '2023-04-29 17:04:10', 1),
(12, '24', 'VInita ', 'vinita@gmail.com', 'hjdasjd sjdhjsd sjbdjcha', '2023-04-29 17:17:39', 1),
(13, '24', 'Saroj', 'saroj@gmail.com', 'hello hello', '2023-04-29 17:19:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tenetur, dolor\r\n odio? Deleniti provident iste, ipsam voluptatum ullam sunt? Pariatur \r\nporro enim quis ullam hic commodi beatae sint similique voluptate minus</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, illo porro? Reprehenderit laboriosam ad rerum beatae esse ipsam itaque nesciunt consequuntur id, saepe voluptatem facilis ullam architecto necessitatibus dicta voluptatum sapiente alias sequi quo accusantium, mollitia minus porro. Maiores, magnam distinctio ea a vel consectetur voluptatum excepturi consequuntur recusandae officiis aperiam veritatis animi eaque id sit temporibus accusamus consequatur assumenda totam incidunt unde reprehenderit quae? Asperiores ad iure recusandae vitae unde praesentium dicta sunt voluptatum at perferendis, accusamus fugit temporibus. Dignissimos veritatis explicabo sint tenetur voluptatibus ullam ea doloremque quos sapiente optio, eligendi corrupti? Nulla, perspiciatis! Atque alias corrupti nemo!<br></p>', '2018-06-30 18:01:03', '2022-09-23 09:58:37'),
(2, 'contactus', 'Contact Details', '<p><b>Address : </b>Your location<br></p><p><b>Email - </b>mail@gmail.com<br></p> ', '2018-06-30 18:01:36', '2022-09-23 09:59:23'),
(3, 'terms', 'Terms & Conditions', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, illo porro? Reprehenderit laboriosam ad rerum beatae esse ipsam itaque nesciunt consequuntur id, saepe voluptatem facilis ullam architecto necessitatibus dicta voluptatum sapiente alias sequi quo accusantium, mollitia minus porro. Maiores, magnam distinctio ea a vel consectetur voluptatum excepturi consequuntur recusandae officiis aperiam veritatis animi eaque id sit temporibus accusamus consequatur assumenda totam incidunt unde reprehenderit quae? Asperiores ad iure recusandae vitae unde praesentium dicta sunt voluptatum at perferendis, accusamus fugit temporibus. Dignissimos veritatis explicabo sint tenetur voluptatibus ullam ea doloremque quos sapiente optio, eligendi corrupti? Nulla, perspiciatis! Atque alias corrupti nemo!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, illo porro? Reprehenderit laboriosam ad rerum beatae esse ipsam itaque nesciunt consequuntur id, saepe voluptatem facilis ullam architecto necessitatibus dicta voluptatum sapiente alias sequi quo accusantium, mollitia minus porro. Maiores, magnam distinctio ea a vel consectetur voluptatum excepturi consequuntur recusandae officiis aperiam veritatis animi eaque id sit temporibus accusamus consequatur assumenda totam incidunt unde reprehenderit quae? Asperiores ad iure recusandae vitae unde praesentium dicta sunt voluptatum at perferendis, accusamus fugit temporibus. Dignissimos veritatis explicabo sint tenetur voluptatibus ullam ea doloremque quos sapiente optio, eligendi corrupti? Nulla, perspiciatis! Atque alias corrupti nemo!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, illo porro? Reprehenderit laboriosam ad rerum beatae esse ipsam itaque nesciunt consequuntur id, saepe voluptatem facilis ullam architecto necessitatibus dicta voluptatum sapiente alias sequi quo accusantium, mollitia minus porro. Maiores, magnam distinctio ea a vel consectetur voluptatum excepturi consequuntur recusandae officiis aperiam veritatis animi eaque id sit temporibus accusamus consequatur assumenda totam incidunt unde reprehenderit quae? Asperiores ad iure recusandae vitae unde praesentium dicta sunt voluptatum at perferendis, accusamus fugit temporibus. Dignissimos veritatis explicabo sint tenetur voluptatibus ullam ea doloremque quos sapiente optio, eligendi corrupti? Nulla, perspiciatis! Atque alias corrupti nemo!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, illo porro? Reprehenderit laboriosam ad rerum beatae esse ipsam itaque nesciunt consequuntur id, saepe voluptatem facilis ullam architecto necessitatibus dicta voluptatum sapiente alias sequi quo accusantium, mollitia minus porro. Maiores, magnam distinctio ea a vel consectetur voluptatum excepturi consequuntur recusandae officiis aperiam veritatis animi eaque id sit temporibus accusamus consequatur assumenda totam incidunt unde reprehenderit quae? Asperiores ad iure recusandae vitae unde praesentium dicta sunt voluptatum at perferendis, accusamus fugit temporibus. Dignissimos veritatis explicabo sint tenetur voluptatibus ullam ea doloremque quos sapiente optio, eligendi corrupti? Nulla, perspiciatis! Atque alias corrupti nemo!<br></p>', '2018-06-30 17:01:36', '2022-09-23 10:00:01'),
(4, 'Privacypolicy', 'Privacy policy', '<p><b>Comments Policy </b> <br>\r\n  Comments and reviews of the products on this site are encouraged and \r\nwe welcome all kinds of thoughts, supportive, dissenting, critical or \r\notherwise. There are however a few conditions and rules governing \r\ncomments on this website which you can read about in our comments \r\npolicy.\r\n  You are advised to solicit the opinions of professionals, other \r\nsources and authorities before committing to any decisions made as a \r\nresult of exposure to any of the material presented by FrontPage.\r\n  If you feel that something is missing you can feel free to read our \r\nprivacy policy or contact us directly.\r\n   <br></p>', '2022-01-07 12:28:36', '2022-01-07 12:37:30'),
(5, 'advertise', 'Advertise with Us', '<p><font face=\"Arial\">We are here to help you successfully reach our unique audience. we offer a wide ranging commercial portfolio; from sponsored content to targeted banner ads and much more. </font></p><p><font face=\"Arial\"><b>FOR WEB ADVERT:<br></b>contact Us<br></font></p><h2><span style=\"background-color: inherit;\"><font color=\"#003163\"><b><font face=\"Arial\">WHY YOU SHOULD ADVERTISE WITH US</font></b></font></span></h2><ul><li><font face=\"Arial\">No 1 publisher by audience on the web.<br></font></li><li><font face=\"Arial\">Our readers are highly engaged</font><b><font face=\"Arial\">.</font></b></li><li><font face=\"Arial\">While making reports or payments, </font><font face=\"Arial\">Our clients are treated with respect and honesty. </font></li><li><font face=\"Arial\">we have over 19m+ readers worldwide.<br></font></li></ul><p><span style=\"background-color: inherit;\"><font face=\"Arial\" color=\"#003163\"><b>ON SUBMISSION OF ADS</b></font></span></p><p><font face=\"Arial\">Image Banner ads must be in JPG,JPEG, PNG, GIF format; </font><font face=\"Arial\">Video ads must be in</font><font face=\"Arial\"> MP4, GIF format. Ads should be submitted via e-mail in the ordered pixel dimensions.</font></p><p><span style=\"background-color: inherit;\"><font face=\"Arial\" color=\"#003163\"><b>NOTE</b></font></span></p><p><font face=\"Arial\">Ads to be published should should be submitted for approval before payments are made.<font color=\"#003163\"><br></font></font></p><br><p>\r\n</p><br>\r\n<div style=\"box-shadow: 0px 0px 10px grey ; padding: 20px\">\r\n<h4><font face=\"Arial\"><font color=\"#003163\"><span style=\"background-color: inherit;\"><b>WANT TO ADVERTISE WITH US?</b></span></font></font><font face=\"Verdana\"><b><font face=\"Helvetica\"><br></font></b></font></h4><p><font face=\"Tahoma\">Email Us Now!<br></font></p><p align=\"left\"><b><font face=\"Tahoma\">You can e-mail us at<br></font></b>Mail<a href=\"mailto:frontpagenewsofficial@gmail.com\" target=\"_blank\">@gmail.com</a><font face=\"Tahoma\"><br></font></p>\r\n</div>', '2022-01-07 14:40:36', '2022-09-23 10:01:49'),
(6, 'Writeforus', 'Write For Us', '<p>Sharing your thoughts, successes and failures, and discussing current issues, challenges and opportunities is a great way to strengthen our community.</p><p>We aim to publish engaging and accessible content that is useful for the development community;Our team work hard on publishing the latest articles, we simply cant keep up with everything that happens, which is why we would love for you to contribute to the community.</p><p><br></p><h3><font face=\"Helvetica\">Topics</font><br></h3><p>Contribute your article on our website on writing on different topics like food, lifestyle, education, News and so on. All submissions must be unique (i.e. not found elsewhere on the internet). Acceptable Submissions may include, but not limited to, the following :</p><ul><li>Articles</li><ul><li>News &amp; media<br></li><li>Sports</li><li>Entertainment</li><li>biographies</li><li>Beauty</li><li>Law</li><li>Electronic</li><li>Real estate</li><li>Arts</li><li>Business</li><li>health</li><li>Hobbies</li><li>Animals &amp; pets<br></li><li>food</li><li>finance</li><li>family</li><li>lifestyle</li><li>cryptocurrency</li><li>travel</li><li>Technology<br></li></ul><li>News release</li><li>opinion pieces</li><li>Multimedia(Videos, etc).</li><li>your story<br></li></ul><h3><font face=\"Verdana\"><b><font face=\"Helvetica\">If you are interested in writing for us, please read the following guidelines:</font> </b></font></h3><p>We only accept the guest post which has fully compiled with the following guidelines and they should all be put into consideration.</p><ul><li><font face=\"Tahoma\">Your heading must be unique and attractive.</font></li><li><font face=\"Tahoma\">Use plain English, Your content should be error free.</font></li><li><font face=\"Tahoma\">Add unique images with high definition (HD) quality.</font></li><li><font face=\"Tahoma\">The article must be between 500 - 2000 words and should be free from copyright infringement.<br></font></li><li><font face=\"Tahoma\">The article must be in microsoft word format or plaintext file format(Do no send a zip file).</font></li><li><font face=\"Tahoma\">Once your article get published on our website, avoid publishing it on any other website.</font></li><li><font face=\"Tahoma\">We will not accept articles with any affiliate links; links attached to the post must be relevant to the content.<br></font></li><li><font face=\"Tahoma\">After submission of your content, we would review your content and determine whether its a potential fit as duplicate or copied contents will not be accepted.</font></li><li><font face=\"Tahoma\">We do not accept irrelevant topics.</font></li><li><font face=\"Tahoma\">Use of bullets and numbered list are more inviting than a big pile of text.</font></li><li><font face=\"Tahoma\">Use sub-headings to break up text.<br></font></li></ul><p><font face=\"Tahoma\"><br></font></p><h3><font face=\"Verdana\"><b><font face=\"Helvetica\">Article format</font></b></font></h3><ol><li><font face=\"Tahoma\">Title</font></li><li><font face=\"Tahoma\">Unique heading</font></li><li><font face=\"Tahoma\">&nbsp;Unique image </font></li></ol><p><font face=\"Tahoma\"><br></font></p>\r\n<div style=\"box-shadow: 0px 0px 10px grey ; padding: 10px;border-radius:5px\">\r\n<h3><font face=\"Verdana\"><b><font face=\"Helvetica\">Submitting of article for a guest post<br></font></b></font></h3><p><font face=\"Tahoma\">All submissions and contribution should be done via e-mail in other to be considered.</font></p><p><font face=\"Tahoma\">Please include the following in the email before submission:</font></p><ul><li><font face=\"Tahoma\">Your full name</font></li></ul><p><font face=\"Tahoma\">we would love You to share your thought with our audience.</font></p><p align=\"left\"><b><font face=\"Tahoma\">You can e-mail us at<br></font></b><a href=\"mailto:frontpagenewsofficial@gmail.com\" target=\"_blank\">mail@gmail.com</a><font face=\"Tahoma\"><br></font></p>\r\n</div>', '2018-06-30 17:01:36', '2022-09-23 10:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(7, 'Ovarian cysts', 6, 0, 'The female reproductive system is subject to several health problems including endometriosis, PCOS, STDs, and even cancers. This is why it is extremely crucial for women to maintain their reproductive health amongst others. One of the most overlooked or missed reproductive conditions are ovarian cysts. While it is common, it can be asymptomatic, which is why there is a greater chance of delayed diagnosis and treatment. So let us first understand the different types of ovarian cysts.\r\n\r\n', '2021-12-29 18:49:23', '2023-04-29 12:28:38', 1, 'Ovarian-cysts', '2103e70ca3c649f97778dfd702a99308.jpg'),
(10, 'Healthy Eating and Diet tips for women ', 10, 0, 'As women, many of us are frequently prone to neglecting our own dietary needs. You may feel that you’re too busy to eat well or used to putting the needs of your family before your own. Or perhaps you’re trying to stick to an extreme diet that leaves you short on vital nutrients and feeling cranky, hungry, and low on energy. While what works best for one woman may not always be the best choice for another, the important thing is to build your diet around your vital nutritional needs. Whether you’re looking to improve your energy and mood, combat stress or PMS, boost fertility, enjoy a healthy pregnancy, or ease the symptoms of menopause, these nutrition tips can help you to stay healthy, active, and vibrant throughout your ever-changing life.', '2021-12-29 19:08:56', '2023-04-29 12:32:42', 1, 'Healthy-Eating-and-Diet-tips-for-women-', 'cb95d1e9ec4a8c9d189e699536783727.jpg'),
(11, 'Hormonal Impact on Women Health', 7, 0, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea quibusdam ullam vero sint neque odit quae error nulla rem quas doloremque, voluptate cumque reprehenderit consequuntur necessitatibus eveniet iure? Asperiores saepe ullam modi fugit ipsam neque at magni, accusamus sit perspiciatis totam debitis optio corrupti quia quam nisi, dolores aut fuga aperiam sed dolorem distinctio ipsa! Facere nesciunt dolor sunt doloremque officia. Libero vel est similique magnam quidem inventore laboriosam ea sit obcaecati expedita molestiae laborum dignissimos sequi, autem vero optio deserunt doloremque reprehenderit aperiam, fugiat laudantium aspernatur? Quam, fuga, natus aperiam, officia ipsa ab molestiae earum blanditiis minima eligendi quaerat sapiente soluta ex sequi necessitatibus totam laudantium repudiandae eaque! Autem mollitia ut voluptatibus illo eveniet reiciendis ea aspernatur, iste sunt eos pariatur recusandae consectetur incidunt delectus cupiditate inventore? </p><p>Quos consequatur vero quibusdam omnis eum delectus. Corrupti eum, ipsum blanditiis beatae pariatur dolor laudantium dolorem ad, expedita perferendis voluptatum distinctio tenetur accusamus nobis in dolore possimus veritatis eos dolorum magnam totam eveniet minima consequuntur vero! Nostrum, odio quod aliquam ut cumque dignissimos, voluptates minima sed tempore quam voluptas similique quisquam. Autem quisquam eaque consequatur voluptatem dignissimos doloribus earum, illum cum vel odit soluta laboriosam quo atque deleniti delectus quas quibusdam? Voluptatem.<br></p>', '2021-12-29 19:10:36', '2023-04-29 17:32:20', 1, 'Hormonal-Impact-on-Women-Health', 'c0254f66455e10e9753060c5eb6dba24.jpg'),
(12, 'PCOS in women', 6, 0, '<p>PCOS is a very common hormone problem for women of childbearing age. Women with PCOS may not ovulate, have high levels of androgens, and have many small cysts on the ovaries. PCOS can cause missed or irregular menstrual periods, excess hair growth, acne, infertility, and weight gain.doloremque officia. Libero vel est similique magnam quidem inventore laboriosam ea sit obcaecati expedita molestiae laborum dignissimos sequi, autem vero optio deserunt doloremque reprehenderit aperiam, fugiat laudantium aspernatur? Quam, fuga, natus aperiam, officia ipsa ab molestiae earum blanditiis minima eligendi quaerat sapiente soluta ex sequi necessitatibus totam laudantium repudiandae eaque! Autem mollitia ut voluptatibus illo eveniet reiciendis ea </p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea quibusdam ullam vero sint neque odit quae error nulla rem quas doloremque, voluptate cumque reprehenderit consequuntur necessitatibus eveniet iure? Asperiores saepe ullam modi fugit ipsam neque at magni, accusamus sit perspiciatis totam debitis optio corrupti quia quam nisi, dolores aut fuga aperiam sed dolorem distinctio ipsa! Facere nesciunt dolor sunt doloremque officia. Libero vel est similique magnam quidem inventore laboriosam ea sit obcaecati expedita molestiae laborum dignissimos sequi, autem vero optio deserunt doloremque reprehenderit aperiam, fugiat laudantium aspernatur? Quam, fuga, natus aperiam, officia ipsa ab molestiae earum blanditiis minima eligendi quaerat sapiente soluta ex sequi necessitatibus totam laudantium repudiandae eaque! Autem mollitia ut voluptatibus illo eveniet reiciendis ea aspernatur, iste sunt eos pariatur recusandae consectetur incidunt delectus cupiditate inventore? Quos consequatur vero quibusdam omnis eum delectus. Corrupti eum, ipsum blanditiis beatae pariatur dolor laudantium dolorem ad, expedita perferendis voluptatum distinctio tenetur accusamus nobis in dolore possimus veritatis eos dolorum magnam totam eveniet minima consequuntur vero! Nostrum, odio quod aliquam ut cumque dignissimos, voluptates minima sed tempore quam voluptas similique </p><p>quisquam. Autem quisquam eaque consequatur voluptatem dignissimos doloribus earum, illum cum vel odit soluta laboriosam quo atque deleniti delectus quas quibusdam? Voluptatem.aspernatur, iste sunt eos pariatur recusandae consectetur incidunt delectus cupiditate inventore? Quos consequatur vero quibusdam omnis eum delectus. Corrupti eum, ipsum blanditiis beatae pariatur dolor laudantium dolorem ad, expedita perferendis voluptatum distinctio tenetur accusamus nobis in dolore possimus veritatis eos dolorum magnam totam eveniet minima consequuntur vero! Nostrum, odio quod aliquam ut cumque dignissimos, voluptates minima sed tempore quam voluptas similique quisquam. Autem quisquam eaque consequatur voluptatem dignissimos doloribus earum, illum cum vel odit soluta laboriosam quo atque deleniti delectus quas quibusdam? Voluptatem.<br></p>', '2021-12-29 19:11:44', '2023-04-29 17:40:16', 1, 'PCOS-in-women', '0a9766852fa201791cdf18ba9295caa8.jpg'),
(13, 'Common Pelvic Floor Issues', 8, 0, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea quibusdam ullam vero sint neque odit quae error nulla rem quas doloremque, voluptate cumque reprehenderit consequuntur necessitatibus eveniet iure? Asperiores saepe ullam modi fugit ipsam neque at magni, accusamus sit perspiciatis totam debitis optio corrupti quia quam nisi, dolores aut fuga aperiam sed dolorem distinctio ipsa! Facere nesciunt dolor sunt doloremque officia. Libero vel est similique magnam quidem inventore laboriosam ea sit obcaecati expedita molestiae laborum dignissimos sequi, autem vero optio deserunt doloremque reprehenderit aperiam, fugiat laudantium aspernatur? Quam, fuga, natus aperiam, officia ipsa ab molestiae earum blanditiis minima eligendi quaerat sapiente soluta ex sequi necessitatibus totam laudantium repudiandae eaque! Autem mollitia ut voluptatibus illo eveniet reiciendis ea </p><p>aspernatur, iste sunt eos pariatur recusandae consectetur incidunt delectus cupiditate inventore? Quos consequatur vero quibusdam omnis eum delectus. Corrupti eum, ipsum blanditiis beatae pariatur dolor laudantium dolorem ad, expedita perferendis voluptatum distinctio tenetur accusamus nobis in dolore possimus veritatis eos dolorum magnam totam eveniet minima consequuntur vero! Nostrum, odio quod aliquam ut cumque dignissimos, voluptates minima sed tempore quam voluptas similique quisquam. Autem quisquam eaque consequatur voluptatem dignissimos doloribus earum, illum cum vel odit soluta laboriosam quo atque deleniti delectus quas quibusdam? Voluptatem.<span class=\"d2edcug0 hpfvmrgz qv66sw1b c1et5uql lr9zc1uh a8c37x1j keod5gw0 nxhoafnm aigsh9s9 fe6kdd0r mau55g9w c8b282yb d3f4x2em iv3no6db jq4qci2q a3bd9o3v b1v8xokw oo9gr5id hzawbc8m\" dir=\"auto\"></span></p><br><p></p>', '2021-12-29 10:19:50', '2023-04-29 17:38:40', 1, 'Common-Pelvic-Floor-Issues', 'e570caa0a68b31a57954f15ee0a509a7.jpg'),
(24, 'Women and Menstruation', 2, 0, 'Menstruation is the monthly shedding of the lining of your uterus. Menstruation is also known by the terms menses, menstrual period, menstrual cycle or period. Menstruation is driven by hormones. Hormones are chemical messengers in your body. Your pituitary gland (in your brain) and your ovaries (part of your reproductive system) make and release certain hormones at certain times during your menstrual cycle', '2023-04-29 12:04:15', '2023-04-29 12:04:48', 1, 'Women-and-Menstruation', '31d8e0c40d69b277a83add3ecefe55f3.png'),
(25, 'Pre-post Pregnancy care', 12, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent luctus, est in volutpat fermentum, nisi turpis euismod ligula, ac finibus tellus magna eu neque. Suspendisse augue magna, porttitor nec tincidunt et, pretium vel odio. Nam euismod massa vitae velit consectetur, eget pulvinar tortor vestibulum. Fusce sollicitudin sapien ut nunc sodales, vel ornare felis fermentum. Aenean nec euismod mauris, sed imperdiet tellus. Phasellus a euismod sem. Duis quis mi sed nulla convallis varius eu nec lectus. Quisque aliquet, mauris ac mattis finibus, ipsum nisl bibendum augue, non aliquam est quam scelerisque lectus. Praesent fringilla, augue ornare molestie mollis, ipsum eros elementum elit, et accumsan justo libero id quam. Praesent nec neque congue elit commodo faucibus. Nulla id maximus ipsum, ut euismod enim. Nam nec iaculis turpis. Vestibulum sodales nunc quis fringilla rhoncus. Aenean efficitur dolor ac pretium mollis. Donec mattis risus nec pretium rutrum. Donec sodales nisi quis mauris vehicula, a tincidunt purus lacinia.', '2023-04-29 17:48:31', '2023-04-30 07:16:14', 1, 'Pre-post-Pregnancy-care', 'b67dd4fe69ed31598e376024d0e0219c.jpg'),
(26, 'Women advocacy in Health', 15, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent luctus, est in volutpat fermentum, nisi turpis euismod ligula, ac finibus tellus magna eu neque. Suspendisse augue magna, porttitor nec tincidunt et, pretium vel odio. Nam euismod massa vitae velit consectetur, eget pulvinar tortor vestibulum. Fusce sollicitudin sapien ut nunc sodales, vel ornare felis fermentum. Aenean nec euismod mauris, sed imperdiet tellus. Phasellus a euismod sem. Duis quis mi sed nulla convallis varius eu nec lectus. Quisque aliquet, mauris ac mattis finibus, ipsum nisl bibendum augue, non aliquam est quam scelerisque lectus. Praesent fringilla, augue ornare molestie mollis, ipsum eros elementum elit, et accumsan justo libero id quam. Praesent nec neque congue elit commodo faucibus. Nulla id maximus ipsum, ut euismod enim. Nam nec iaculis turpis. Vestibulum sodales nunc quis fringilla rhoncus. Aenean efficitur dolor ac pretium mollis. Donec mattis risus nec pretium rutrum. Donec sodales nisi quis mauris vehicula, a tincidunt purus lacinia.', '2023-04-29 17:49:13', '2023-04-30 07:10:57', 1, 'Women-advocacy-in-Health', '6d57afd1c6ce9fb04a13bec6259b99bd.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Music', 'music', '2018-06-22 15:45:38', '0000-00-00 00:00:00', 1),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2018-06-30 09:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Football', 'Football', '2018-06-30 09:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Gist', 'Gist', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'National', 'National', '2018-06-30 19:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'International', 'International', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'India', 'India', '2018-06-30 19:08:42', '0000-00-00 00:00:00', 1),
(10, 5, 'fashion', 'fashion', '2021-12-24 09:56:23', NULL, 1),
(11, 5, 'Celebrities ', 'Celebrities', '2021-12-24 09:57:38', NULL, 1),
(12, 3, 'boxing', 'boxing', '2021-12-24 09:58:22', NULL, 1),
(13, 3, 'Tennis', 'Tennis', '2021-12-24 09:59:14', NULL, 1),
(16, 2, 'Election', 'Election', '2021-12-24 10:00:39', NULL, 1),
(18, 8, 'Bitcoin', 'Bitcoin', '2021-12-24 10:05:25', NULL, 1),
(19, 8, 'Coin prices', 'Coin prices', '2021-12-24 10:05:49', NULL, 1),
(20, 8, 'coin chart', 'coin charts', '2021-12-24 10:06:16', NULL, 1),
(21, 7, 'economy', 'Economy', '2021-12-24 10:07:15', NULL, 1),
(22, 7, 'Technology', 'technology', '2021-12-24 10:07:46', NULL, 1),
(23, 7, 'money', 'money', '2021-12-24 10:08:28', NULL, 1),
(25, 5, 'TV show', 'TV show', '2021-12-24 10:09:00', NULL, 1),
(26, 10, 'US', 'United state of America', '2021-12-24 10:11:10', NULL, 1),
(27, 10, 'Africa', 'African news', '2021-12-24 10:11:37', NULL, 1),
(28, 10, 'Asia', 'Asia', '2021-12-24 10:11:50', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `location` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `contactno`, `location`, `posting_date`, `code`) VALUES
(10, 'saroj', 'basyal', 'sarojbasyal9@gmail.com', 'Saroj123', '9876543210', 'pokhara', '2023-05-02 05:32:41', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menstrual_cycle_tracker`
--
ALTER TABLE `menstrual_cycle_tracker`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menstrual_cycle_tracker`
--
ALTER TABLE `menstrual_cycle_tracker`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
