-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 18 2023 г., 05:11
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `HalifaxCanoeKayakDb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `lstname` varchar(200) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `name`, `lstname`, `username`, `email`, `password`, `avatar`) VALUES
(29, 'Andrii', 'Yatsiuk', 'everest', 'thenmymail@gmail.com', 'eb32c7ff875c1ec1d2625a2dadb5ff7f', 'avfolder/1684374457E077906F-9A67-46F4-9975-F445EDD6BFC3_1_105_c.jpeg');

-- --------------------------------------------------------

--
-- Структура таблицы `adventure`
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
-- Дамп данных таблицы `adventure`
--

INSERT INTO `adventure` (`id`, `heading`, `date`, `duration`, `summary`, `avatar`) VALUES
(8, 'Down the Steviake river', '2023-05-10', 2, 'As I embarked on my journey down the Steviake River, I found myself engulfed in a world of serenity and natural beauty. The river, adorned with gentle ripples and sparkling sunlight, whispered tales of its timeless existence as it flowed through the heart of the enchanting landscape.\r\n\r\nThank you Halifax Canoe and Kayak for this adventure!!', 'uploads/1684111849IMG_4198.jpeg'),
(9, 'Long Lake Adventure', '2023-05-09', 2, 'Halifax Canoe and Kayak\'s dedication to providing top-quality equipment ensures that your adventure is comfortable and safe. From their well-maintained canoes and kayaks to their expertly fitted gear, they prioritize your comfort and security, allowing you to focus on the beauty and excitement of the surroundings.\r\n\r\nTheir knowledgeable and friendly staff are eager to share their expertise and love for Long Lake. Whether you are a novice or an experienced paddler, Halifax Canoe and Kayak caters to all skill levels. They offer guided tours, personalized instruction, and helpful tips to enhance your experience and make the most of your time on the lake.\r\n\r\nLong Lake\'s picturesque shoreline, dotted with lush forests and breathtaking vistas, becomes your playground under the guidance of Halifax Canoe and Kayak. They know the best routes and hidden gems, ensuring that every stroke of the paddle leads you to new discoveries and unforgettable moments.\r\n\r\nHalifax Canoe and Kayak\'s commitment to environmental stewardship is commendable. They actively promote responsible and sustainable practices, encouraging participants to respect the lake\'s ecosystem and leave no trace behind. By partnering with them, you become part of a community dedicated to preserving the natural beauty of Long Lake for generations to come.\r\n\r\nThanks to Halifax Canoe and Kayak, your Long Lake adventure becomes a seamless and extraordinary experience. Whether you seek solitude, connection with nature, or simply a thrilling outdoor activity, they provide the means to unlock the full potential of this stunning destination.', 'uploads/1684112140IMG_4192.jpeg'),
(10, 'Prospect Bay Fishing', '2023-04-04', 2, 'Prospect Bay Fishing on Kayaks. Thank you Halifax Canoe and Kayak for this Adventure!\r\n\r\nA special shout-out goes to Halifax Canoe and Kayak for providing the perfect platform for this remarkable fishing adventure in Prospect Bay. Their dedication to delivering exceptional kayaking experiences and their commitment to customer satisfaction make them the go-to outfitter for all water enthusiasts.\r\n\r\nWith their top-quality kayaks, expert guidance, and extensive knowledge of the area, Halifax Canoe and Kayak ensures that every angler\'s journey on Prospect Bay is safe, enjoyable, and unforgettable. Their friendly and experienced staff equips you with all the necessary gear, including comfortable kayaks, reliable fishing equipment, and safety essentials, allowing you to focus solely on the thrill of the fishing experience.\r\n\r\nThe team at Halifax Canoe and Kayak understands the unique charm and natural beauty of Prospect Bay, and they are eager to share it with fellow adventurers. Their passion for kayaking and fishing is infectious, creating an atmosphere of excitement and camaraderie among all participants.', 'uploads/1684112403IMG_3084.jpeg');

-- --------------------------------------------------------

--
-- Структура таблицы `next_adventures`
--

CREATE TABLE `next_adventures` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `duration` int(3) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `next_adventures`
--

INSERT INTO `next_adventures` (`id`, `heading`, `date`, `duration`, `summary`, `avatar`) VALUES
(1, 'Big Lake Big Adventure', '2023-07-14', 2, '🌊 Discover the Thrills of Big Lake Halifax with Halifax Canoe and Kayak! 🚣‍♀️\r\n\r\nCalling all adventure enthusiasts! Get ready for an exhilarating experience on the pristine waters of Big Lake Halifax! Join us, Halifax Canoe and Kayak, for a thrilling adventure that will ignite your passion for the great outdoors.\r\n\r\n🌅 Embark on a Journey: With our expert guides, embark on an unforgettable journey through the breathtaking landscapes of Big Lake Halifax. Paddle your way through serene waters, surrounded by stunning vistas and untouched nature. Whether you\'re a seasoned paddler or a first-timer, we have the perfect adventure tailored just for you.\r\n\r\n🚣‍♂️ Explore Hidden Gems: Discover hidden gems and secret coves as you navigate the twists and turns of the lake. Immerse yourself in the tranquility of the surroundings, away from the hustle and bustle of the city. Feel the rush of adrenaline as you explore secluded beaches, mysterious islands, and charming wildlife habitats.\r\n\r\n🌈 Suitable for All: Our adventure is suitable for everyone, from families looking for an unforgettable outing to groups of friends seeking an exciting day on the water. Our knowledgeable guides will provide safety instructions and basic paddling techniques, ensuring a smooth and enjoyable experience for all participants.\r\n\r\n🌊 Unleash Your Spirit of Adventure: Let your adventurous spirit soar as you paddle through the shimmering waters. Experience the thrill of gliding across the lake, feeling the cool mist on your face, and embracing the freedom of the great outdoors. Create lasting memories and forge new friendships during this extraordinary journey.\r\n\r\n🏞️ Choose Your Adventure: We offer a range of options to cater to your preferences. From leisurely guided tours to adrenaline-pumping kayak races, there\'s something for everyone. You can also rent canoes or kayaks if you prefer to explore the lake at your own pace.\r\n\r\n🌟 Book Your Adventure Today! 🌟\r\n\r\nDon\'t miss out on this incredible opportunity to experience the beauty of Big Lake Halifax with Halifax Canoe and Kayak. Places are limited, so book your adventure now and be prepared for an unforgettable day on the water! Contact us at [contact information] or visit our website to secure your spot today.\r\n\r\nJoin us for the adventure of a lifetime! Halifax Canoe and Kayak – where memories are made. 🌊🚣‍♀️', 'uploads/1684377575New-Orleans-City-Park-Self-Guided-Kayak-Tours.jpg'),
(2, 'Grand Lake Sydney Nova Scotia', '2023-08-21', 3, '🌊 Embark on an Unforgettable Adventure at Grand Lake Sydney, Nova Scotia! 🚣‍♀️\r\n\r\nCalling all adventurers! Get ready to immerse yourself in the stunning beauty of Grand Lake Sydney with Halifax Canoe and Kayak. Join us for an extraordinary experience that will ignite your spirit of exploration.\r\n\r\n🌅 Discover Nature\'s Paradise: Prepare to be awe-struck as you navigate the pristine waters of Grand Lake Sydney. Delight in breathtaking sunsets and picturesque landscapes as you paddle through this natural paradise. Whether you\'re an experienced paddler or a first-timer, we have the perfect adventure tailored just for you.\r\n\r\n🚣‍♂️ Explore Hidden Wonders: Unlock the secrets of Grand Lake Sydney as you venture into its hidden corners. Discover secluded beaches, charming islands, and serene wildlife habitats. Experience the thrill of encountering majestic birds and glimpsing elusive marine life. This adventure promises to awaken your senses and leave you with unforgettable memories.\r\n\r\n🌈 Suitable for All Adventurers: Our expeditions are designed to cater to all levels of experience and age groups. Whether you\'re a family seeking a fun-filled outing or a group of friends in search of exhilaration, we have a variety of options to suit your preferences. Our expert guides will ensure your safety and provide guidance every step of the way.\r\n\r\n🌊 Choose Your Journey: We offer a range of adventures to cater to your desires. From leisurely guided tours to exciting kayak races, there\'s something for everyone. If you prefer to explore at your own pace, you can also rent canoes and kayaks for a personalized experience.\r\n\r\n🏞️ Book Your Adventure Today! 🌟\r\n\r\nDon\'t miss this incredible opportunity to explore the wonders of Grand Lake Sydney with Halifax Canoe and Kayak. Spaces are limited, so secure your spot now and prepare for an unforgettable day on the water! Contact us at [contact information] or visit our website to book your adventure today.\r\n\r\nJoin us for an unforgettable journey at Grand Lake Sydney. Halifax Canoe and Kayak - Where adventure meets nature\'s splendor. 🌊🚣‍♀️', 'uploads/1684378033Lower-Prospect-South-Shore.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `lstname`, `username`, `email`, `password`, `avatar`) VALUES
(29, 'John', 'Durling', 'BigJohn', 'bigjohn@gmail.com', 'eb32c7ff875c1ec1d2625a2dadb5ff7f', 'avfolder/1684374512IMG_2956.jpeg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adventure`
--
ALTER TABLE `adventure`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `next_adventures`
--
ALTER TABLE `next_adventures`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `adventure`
--
ALTER TABLE `adventure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `next_adventures`
--
ALTER TABLE `next_adventures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
