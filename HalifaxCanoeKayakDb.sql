-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 16, 2023 at 01:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HalifaxCanoeKayakDb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adventure`
--

CREATE TABLE `adventure` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `duration` int(3) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adventure`
--

INSERT INTO `adventure` (`id`, `heading`, `date`, `duration`, `summary`, `avatar`) VALUES
(8, 'Down the Steviake river', '2023-05-10', 2, 'As I embarked on my journey down the Steviake River, I found myself engulfed in a world of serenity and natural beauty. The river, adorned with gentle ripples and sparkling sunlight, whispered tales of its timeless existence as it flowed through the heart of the enchanting landscape.\r\n\r\nThank you Halifax Canoe and Kayak for this adventure!!', 'uploads/1684111849IMG_4198.jpeg'),
(9, 'Long Lake Adventure', '2023-05-09', 2, 'Halifax Canoe and Kayak\'s dedication to providing top-quality equipment ensures that your adventure is comfortable and safe. From their well-maintained canoes and kayaks to their expertly fitted gear, they prioritize your comfort and security, allowing you to focus on the beauty and excitement of the surroundings.\r\n\r\nTheir knowledgeable and friendly staff are eager to share their expertise and love for Long Lake. Whether you are a novice or an experienced paddler, Halifax Canoe and Kayak caters to all skill levels. They offer guided tours, personalized instruction, and helpful tips to enhance your experience and make the most of your time on the lake.\r\n\r\nLong Lake\'s picturesque shoreline, dotted with lush forests and breathtaking vistas, becomes your playground under the guidance of Halifax Canoe and Kayak. They know the best routes and hidden gems, ensuring that every stroke of the paddle leads you to new discoveries and unforgettable moments.\r\n\r\nHalifax Canoe and Kayak\'s commitment to environmental stewardship is commendable. They actively promote responsible and sustainable practices, encouraging participants to respect the lake\'s ecosystem and leave no trace behind. By partnering with them, you become part of a community dedicated to preserving the natural beauty of Long Lake for generations to come.\r\n\r\nThanks to Halifax Canoe and Kayak, your Long Lake adventure becomes a seamless and extraordinary experience. Whether you seek solitude, connection with nature, or simply a thrilling outdoor activity, they provide the means to unlock the full potential of this stunning destination.', 'uploads/1684112140IMG_4192.jpeg'),
(10, 'Prospect Bay Fishing', '2023-04-04', 2, 'Prospect Bay Fishing on Kayaks. Thank you Halifax Canoe and Kayak for this Adventure!\r\n\r\nA special shout-out goes to Halifax Canoe and Kayak for providing the perfect platform for this remarkable fishing adventure in Prospect Bay. Their dedication to delivering exceptional kayaking experiences and their commitment to customer satisfaction make them the go-to outfitter for all water enthusiasts.\r\n\r\nWith their top-quality kayaks, expert guidance, and extensive knowledge of the area, Halifax Canoe and Kayak ensures that every angler\'s journey on Prospect Bay is safe, enjoyable, and unforgettable. Their friendly and experienced staff equips you with all the necessary gear, including comfortable kayaks, reliable fishing equipment, and safety essentials, allowing you to focus solely on the thrill of the fishing experience.\r\n\r\nThe team at Halifax Canoe and Kayak understands the unique charm and natural beauty of Prospect Bay, and they are eager to share it with fellow adventurers. Their passion for kayaking and fishing is infectious, creating an atmosphere of excitement and camaraderie among all participants.', 'uploads/1684112403IMG_3084.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `lstname` varchar(200) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lstname`, `username`, `email`, `password`, `avatar`) VALUES
(20, 'Andrii', 'Yatsiuk', 'horizont', 'thenmymail@gmail.com', 'eb32c7ff875c1ec1d2625a2dadb5ff7f', 'avfolder/1684068792E077906F-9A67-46F4-9975-F445EDD6BFC3_1_105_c.jpeg'),
(21, 'John', 'Durling', 'BigJohn', 'bigjohn@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'avfolder/1684187339IMG_2956.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adventure`
--
ALTER TABLE `adventure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adventure`
--
ALTER TABLE `adventure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
