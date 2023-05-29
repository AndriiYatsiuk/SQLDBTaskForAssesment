-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 29 2023 г., 03:53
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.0.28

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
(31, 'Andrii', 'Yatsiuk', 'everest', 'everest@gmail.com', 'eb32c7ff875c1ec1d2625a2dadb5ff7f', 'avfolder/1685196340E077906F-9A67-46F4-9975-F445EDD6BFC3_1_105_c.jpeg'),
(32, 'Illia', 'Holliday', 'mickey', 'hollidayillia@gmail.com', '6e5820c3fe5a58b8ec0be46fd7aa74f8', 'avfolder/1685322595IMG_0053.jpeg');

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
(15, 'Long Lake Adventure', '2023-04-04', 2, 'Halifax Canoe and Kayak\'s dedication to providing top-quality equipment ensures that your adventure is comfortable and safe. From their well-maintained canoes and kayaks to their expertly fitted gear, they prioritize your comfort and security, allowing you to focus on the beauty and excitement of the surroundings. Their knowledgeable and friendly staff are eager to share their expertise and love for Long Lake. Whether you are a novice or an experienced paddler, Halifax Canoe and Kayak caters to all skill levels. They offer guided tours, personalized instruction, and helpful tips to enhance your experience and make the most of your time on the lake. Long Lake\'s picturesque shoreline, dotted with lush forests and breathtaking vistas, becomes your playground under the guidance of Halifax Canoe and Kayak. They know the best routes and hidden gems, ensuring that every stroke of the paddle leads you to new discoveries and unforgettable moments. Halifax Canoe and Kayak\'s commitment to environmental stewardship is commendable. They actively promote responsible and sustainable practices, encouraging participants to respect the lake\'s ecosystem and leave no trace behind. By partnering with them, you become part of a community dedicated to preserving the natural beauty of Long Lake for generations to come. Thanks to Halifax Canoe and Kayak, your Long Lake adventure becomes a seamless and extraordinary experience. Whether you seek solitude, connection with nature, or simply a thrilling outdoor activity, they provide the means to unlock the full potential of this stunning destination.', 'uploads/1685197046IMG_4255.jpeg'),
(16, 'Down the Steviake river', '2023-03-10', 2, 'As I embarked on my journey down the Steviake River, I found myself engulfed in a world of serenity and natural beauty. The river, adorned with gentle ripples and sparkling sunlight, whispered tales of its timeless existence as it flowed through the heart of the enchanting landscape. Thank you Halifax Canoe and Kayak for this adventure!!\r\n', 'uploads/1685197171IMG_4198.jpeg'),
(17, 'Prospect Bay Fishing', '2022-09-07', 3, 'Prospect Bay Fishing on Kayaks. Thank you Halifax Canoe and Kayak for this Adventure! A special shout-out goes to Halifax Canoe and Kayak for providing the perfect platform for this remarkable fishing adventure in Prospect Bay. Their dedication to delivering exceptional kayaking experiences and their commitment to customer satisfaction make them the go-to outfitter for all water enthusiasts. With their top-quality kayaks, expert guidance, and extensive knowledge of the area, Halifax Canoe and Kayak ensures that every angler\'s journey on Prospect Bay is safe, enjoyable, and unforgettable. Their friendly and experienced staff equips you with all the necessary gear, including comfortable kayaks, reliable fishing equipment, and safety essentials, allowing you to focus solely on the thrill of the fishing experience. The team at Halifax Canoe and Kayak understands the unique charm and natural beauty of Prospect Bay, and they are eager to share it with fellow adventurers. Their passion for kayaking and fishing is infectious, creating an atmosphere of excitement and camaraderie among all participants.', 'uploads/1685197246IMG_3082.jpeg'),
(18, 'Trip onto New-Brunswick', '2022-06-16', 3, 'I was at New-Brunswick on kayaks with my parents, I liked it.', 'uploads/1685322318IMG_1656.jpeg');

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
(5, 'Grand Lake Sydney Nova Scotia', '2023-07-20', 3, 'Discover the Thrills of Big Lake Halifax with Halifax Canoe and Kayak! Calling all adventure enthusiasts! Get ready for an exhilarating experience on the pristine waters of Big Lake Halifax! Join us, Halifax Canoe and Kayak, for a thrilling adventure that will ignite your passion for the great outdoors. Embark on a Journey: With our expert guides, embark on an unforgettable journey through the breathtaking landscapes of Big Lake Halifax. Paddle your way through serene waters, surrounded by stunning vistas and untouched nature. Whether you\'re a seasoned paddler or a first-timer, we have the perfect adventure tailored just for you. Explore Hidden Gems: Discover hidden gems and secret coves as you navigate the twists and turns of the lake. Immerse yourself in the tranquility of the surroundings, away from the hustle and bustle of the city. Feel the rush of adrenaline as you explore secluded beaches, mysterious islands, and charming wildlife habitats. Suitable for All: Our adventure is suitable for everyone, from families looking for an unforgettable outing to groups of friends seeking an exciting day on the water. Our knowledgeable guides will provide safety instructions and basic paddling techniques, ensuring a smooth and enjoyable experience for all participants. Unleash Your Spirit of Adventure: Let your adventurous spirit soar as you paddle through the shimmering waters. Experience the thrill of gliding across the lake, feeling the cool mist on your face, and embracing the freedom of the great outdoors. Create lasting memories and forge new friendships during this extraordinary journey. Choose Your Adventure: We offer a range of options to cater to your preferences. From leisurely guided tours to adrenaline-pumping kayak races, there\'s something for everyone. You can also rent canoes or kayaks if you prefer to explore the lake at your own pace. Book Your Adventure Today! Don\'t miss out on this incredible opportunity to experience the beauty of Big Lake Halifax with Halifax Canoe and Kayak. Places are limited, so book your adventure now and be prepared for an unforgettable day on the water! Contact us at [contact information] or visit our website to secure your spot today. Join us for the adventure of a lifetime! Halifax Canoe and Kayak – where memories are made.', 'uploads/1685196122Lower-Prospect-South-Shore.jpg'),
(6, 'Big Lake Big Adventure', '2023-08-09', 4, 'Embark on an Unforgettable Adventure at Grand Lake Sydney, Nova Scotia! Calling all adventurers! Get ready to immerse yourself in the stunning beauty of Grand Lake Sydney with Halifax Canoe and Kayak. Join us for an extraordinary experience that will ignite your spirit of exploration. Discover Nature\'s Paradise: Prepare to be awe-struck as you navigate the pristine waters of Grand Lake Sydney. Delight in breathtaking sunsets and picturesque landscapes as you paddle through this natural paradise. Whether you\'re an experienced paddler or a first-timer, we have the perfect adventure tailored just for you. Explore Hidden Wonders: Unlock the secrets of Grand Lake Sydney as you venture into its hidden corners. Discover secluded beaches, charming islands, and serene wildlife habitats. Experience the thrill of encountering majestic birds and glimpsing elusive marine life. This adventure promises to awaken your senses and leave you with unforgettable memories. Suitable for All Adventurers: Our expeditions are designed to cater to all levels of experience and age groups. Whether you\'re a family seeking a fun-filled outing or a group of friends in search of exhilaration, we have a variety of options to suit your preferences. Our expert guides will ensure your safety and provide guidance every step of the way. Choose Your Journey: We offer a range of adventures to cater to your desires. From leisurely guided tours to exciting kayak races, there\'s something for everyone. If you prefer to explore at your own pace, you can also rent canoes and kayaks for a personalized experience. Book Your Adventure Today! Don\'t miss this incredible opportunity to explore the wonders of Grand Lake Sydney with Halifax Canoe and Kayak. Spaces are limited, so secure your spot now and prepare for an unforgettable day on the water! Contact us at [contact information] or visit our website to book your adventure today. Join us for an unforgettable journey at Grand Lake Sydney. Halifax Canoe and Kayak - Where adventure meets nature\'s splendor.', 'uploads/1685197318New-Orleans-City-Park-Self-Guided-Kayak-Tours.jpg'),
(7, 'Hatchet Lake Fishing', '2023-07-14', 2, '\r\n🎣 Experience the Thrill of Hetchet Lake Fishing Adventure! 🌲\r\n\r\nAttention all fishing enthusiasts! Prepare for an unforgettable adventure at Hetchet Lake, where the excitement of reeling in your dream catch awaits. Join us for an upcoming fishing expedition that will leave you hooked on the beauty of the great outdoors.\r\n\r\n🌅 Discover Pristine Wilderness: Immerse yourself in the untouched beauty of Hetchet Lake, nestled in a serene wilderness setting. Surrounded by towering trees and breathtaking landscapes, this hidden gem is a haven for anglers seeking tranquility and abundant fish species.\r\n\r\n🎣 Reel in Your Dream Catch: Cast your line into the crystal-clear waters of Hetchet Lake and feel the anticipation as you wait for the tug of a trophy fish. Whether you\'re an experienced angler or a beginner, our knowledgeable guides will provide tips and tricks to maximize your chances of landing the catch of a lifetime.\r\n\r\n🚣‍♂️ Explore Hidden Fishing Hotspots: Set sail on a fishing expedition to explore the lake\'s secret fishing hotspots. Navigate the tranquil waters by boat, surrounded by panoramic views that will take your breath away. Experience the thrill of reeling in a variety of fish species, including bass, trout, and more.\r\n\r\n🌈 Suitable for All Fishing Enthusiasts: Whether you prefer fly fishing, spin casting, or bait fishing, Hetchet Lake offers a diverse range of fishing techniques to suit your preferences. Our experienced guides will cater to your needs, ensuring an enjoyable experience for anglers of all skill levels.\r\n\r\n🌲 Reserve Your Spot Today! 🌟\r\n\r\nDon\'t miss the opportunity to join the Hetchet Lake Fishing Adventure. Limited spots are available, so secure your reservation now and get ready to embark on an extraordinary fishing journey. Contact us at [contact information] or visit our website to reserve your spot today.\r\n\r\nUnleash your inner angler and create lasting memories at Hetchet Lake Fishing Adventure. Get ready for an epic fishing experience that will leave you with stories to tell for years to come. 🎣🌲', 'uploads/1685197570kayak-fishing-guide-old-town-kayaks-big-bass-768x432.jpg'),
(8, 'Long Lake Canoeing', '2023-07-14', 2, '🛶 Embark on an Exhilarating Canoeing Adventure at Long Lake! 🌲\r\n\r\nAttention all canoeing enthusiasts! Prepare for an extraordinary adventure on the pristine waters of Long Lake. Join us for an upcoming canoeing expedition that will take you on a thrilling journey through nature\'s untouched beauty.\r\n\r\n🌄 Immerse Yourself in Nature: Experience the tranquility of Long Lake as you paddle through its calm waters, surrounded by breathtaking natural landscapes. Explore the hidden corners of this pristine wilderness, where lush forests and serene shores create a picturesque backdrop for your canoeing adventure.\r\n\r\n🛶 Glide Through Scenic Waters: Feel the rhythm of your paddle as you glide effortlessly through the crystal-clear waters of Long Lake. Let the gentle current guide you along the shoreline, allowing you to soak in the stunning vistas and connect with the peacefulness of nature.\r\n\r\n🌈 Suitable for All Skill Levels: Whether you\'re a seasoned paddler or a beginner, our experienced guides will provide instruction and support to ensure a safe and enjoyable experience for everyone. Learn new techniques, improve your skills, and embrace the thrill of navigating the water in harmony with your canoe.\r\n\r\n🌲 Encounter Wildlife: Prepare to be amazed by the wildlife that calls Long Lake home. Keep your eyes peeled for majestic bald eagles soaring overhead, graceful deer grazing at the water\'s edge, and other fascinating creatures that inhabit the surrounding forests. This is your chance to witness nature up close and personal.\r\n\r\n🌟 Reserve Your Canoeing Adventure Today! 🛶\r\n\r\nDon\'t miss out on the opportunity to join the Long Lake Canoeing Adventure. Secure your spot now and get ready to immerse yourself in the wonders of this pristine lake. Contact us at [contact information] or visit our website to reserve your canoeing adventure today.\r\n\r\nUnleash your spirit of adventure and create unforgettable memories on the Long Lake Canoeing Adventure. Get ready to paddle your way into the heart of nature and discover the beauty that awaits. 🛶🌲', 'uploads/1685197689canoe (1).jpg');

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
(31, 'Illia', 'Yatsiuk', 'bysik', 'bysik@gmail.com', 'eb32c7ff875c1ec1d2625a2dadb5ff7f', 'avfolder/1685196388IMG_4005.jpeg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `adventure`
--
ALTER TABLE `adventure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `next_adventures`
--
ALTER TABLE `next_adventures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
