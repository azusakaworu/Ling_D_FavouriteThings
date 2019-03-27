-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 27, 2019 at 02:31 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `favethings`
--

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

DROP TABLE IF EXISTS `hero`;
CREATE TABLE IF NOT EXISTS `hero` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `bio` text,
  `home` varchar(20) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `avatar` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`id`, `name`, `bio`, `home`, `age`, `avatar`) VALUES
(1, 'Thor', 'tempBorn 1500 years ago to Odin and Frigga, the king and queen of fabled Asgard, Thor grew into a mighty warrior and protector of his home and people. Thought to be rash and even reckless by his father, Thor nevertheless looked forward to the day of his ascension to the throne. But, his adoptive brother Loki schemed in private to ensure that day never arrived. He manipulated Thor into attacking the Frost Giants, legendary adversaries of the Asgardians and Loki’s people, and Odin—hoping to teach his son humility—divested Thor of his magic hammer Mjolnir and banished him to Midgard, the realm also known as Earth.', 'Asgard', '1500', 'thor.png'),
(2, 'Captain Marvel', 'Carol Danvers is a human being who grew up on Earth. Carol was born an ordinary person with no superhuman powers. Ater a freak accident caused her body to briefly merge with that of Kree soldier Mar-Vell, she transformed into something more.', 'Earth', '30', 'carol.jpg'),
(3, 'Spider Man', 'In Forest Hills, Queens, New York, Midtown High School student Peter Benjamin Parker is a science-whiz orphan living with his Uncle Ben and Aunt May. As depicted in Amazing Fantasy #15 (August 1962), he is bitten by a radioactive spider (erroneously classified as an insect in the panel) at a science exhibit and \"acquires the agility and proportionate strength of an arachnid\". Along with heightened athletic abilities, Parker gains the ability to adhere to walls and ceilings. Through his native knack for science, he develops a gadget that lets him fire adhesive webbing of his own design through small, wrist-mounted barrels. Initially seeking to capitalize on his new abilities, Parker dons a costume and, as \"Spider-Man\", becomes a novelty television star. However, \"He blithely ignores the chance to stop a fleeing thief, [and] his indifference ironically catches up with him when the same criminal later robs and kills his Uncle Ben.\" Spider-Man tracks and subdues the killer and learns, in the story\'s next-to-last caption, \"With great power there must also come—great responsibility!\"', 'Earth', '17', 'peter.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fave`
--

DROP TABLE IF EXISTS `tbl_fave`;
CREATE TABLE IF NOT EXISTS `tbl_fave` (
  `fave_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fave_title` varchar(20) NOT NULL,
  `fave_img` varchar(200) NOT NULL,
  `fave_des` text NOT NULL,
  `fave_auth` varchar(20) NOT NULL,
  `fave_year` varchar(10) NOT NULL,
  PRIMARY KEY (`fave_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_fave`
--

INSERT INTO `tbl_fave` (`fave_id`, `fave_title`, `fave_img`, `fave_des`, `fave_auth`, `fave_year`) VALUES
(1, 'Naruto Manga', 'img1.jpg', 'Twelve years ago, in a world populated by powerful ninja, a legendary beast known as the Nine-Tailed Fox attacked the village of Konohagakure, taking hundreds of lives. To save the city, the village\'s leader, the Fourth Hokage, sacrificed his life to seal the Fox into a newborn child. That child became Naruto Uzumaki, a hyperactive and optimistic but emotionally torn boy who has been abused and neglected by the very village that he lives in. Vowing to gain their respect, Naruto sets off on a journey to become the Hokage himself, and joins a ninja team alongside his new friends - the taciturn Sasuke, the kind-hearted Sakura, and the mysterious leader Kakashi. But things are not all that they seem, as Naruto will have to fight threats to the village, a group that wishes to exploit the Nine-Tails, and even his own teammates\' wavering loyalties in an epic tale of war, growth, and love.', 'Masashi Kishimoto', '1997'),
(2, 'Haikyu!!', 'img2.jpg', 'Thanks to his short height, Hinata struggles to find his role on the team, even with his superior jumping power. Surprisingly, Kageyama has his own problems that only Hinata can help with, and learning to work together appears to be the only way for the team to be successful. Based on Haruichi Furudate\'s popular shounen manga of the same name, Haikyuu!! is an exhilarating and emotional sports comedy following two determined athletes as they attempt to patch a heated rivalry in order to make their high school volleyball team the best in Japan.', 'Shueisha', '2012'),
(3, 'Your Name', 'img3.jpg', 'One day, Taki, as Mitsuha, accompanies her grandmother and sister to leave the ritual alcohol kuchikamizake, made by Mitsuha, as an offering at the shrine on a mountaintop outside the town. The shrine is believed to represent the body of the village guardian god who rules human experiences and connections. Mitsuha\'s latest note tells Taki about a comet expected to pass Earth on the day of her town festival.', 'Makoto Shinkai', '2016');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
