-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 08, 2021 at 08:22 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mealplanner`
--
CREATE DATABASE IF NOT EXISTS `mealplanner` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mealplanner`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210906153429', '2021-09-06 15:34:35', 48);

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prep_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cooking_steps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `name`, `description`, `image`, `ingredients`, `prep_time`, `calories`, `url`, `cooking_steps`, `type`) VALUES
(1, 'test', 'tets', 'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_960_720.jpg', 'jhdgasjhdsga', '23', '323', 'www.food.com', 'this and that', 'Low Carb'),
(2, 'Esquites', 'Mexican Street Corn Salad', 'https://cookieandkate.com/images/2021/05/esquites-recipe-2-768x1157.jpg', 'Unsalted butter\r\n3 cups corn kernels \r\n¼ cup mayonnaise\r\n1 medium finely chopped jalapeño\r\n1 tablespoon lime juice\r\n1 teaspoon chili powder\r\n¼ cup finely chopped cilantro', '20 min', '150 kcal per portion', 'https://cookieandkate.com/esquites-recipe/#tasty-recipes-38678-jump-target', '[value-9]', 'Vegetarian'),
(3, 'Zucchini Noodles', 'Fresh, raw zucchini noodles tossed with basil pesto and cherry tomatoes', 'https://cookieandkate.com/images/2016/06/zucchini-pesto-noodles-recipe-1-1-550x757.jpg', '3 large zucchini\r\nSalt\r\n1 pint cherry tomatoes\r\n1 cup fresh pesto      \r\nFresh basil leaves, for garnishing', '20 min', '180 per portion', 'https://cookieandkate.com/zucchini-noodles-with-pesto-recipe/', '[value-9]', 'Low-carb'),
(4, 'Shakshuka', ' Poached eggs in a hearty, spiced tomato and pepper sauce, topped with a tangy feta cheese and fresh cilantro or parsley.', 'https://cookieandkate.com/images/2019/02/best-shakshuka-recipe-3-768x1154.jpg', '\r\n1 large red bell pepper\r\n2 tablespoons tomato paste\r\n1 teaspoon ground cumin\r\n½ teaspoon smoked paprika\r\n1 large can crushed tomatoes\r\n2 tablespoons chopped fresh cilantro \r\n5 to 6 large eggs\r\n½ cup crumbled feta\r\nCrusty bread or pita', '35 min', '280 per portion', 'https://cookieandkate.com/foolproof-shakshuka-recipe/', '[value-9]', 'Low-carb'),
(5, 'Spicy Black Bean Soup', 'This healthy black bean soup recipe is easy to make with canned beans. It’s incredibly flavorful and delicious.', 'https://cookieandkate.com/images/2016/02/spicy-black-bean-soup-recipe-4-768x1154.jpg', '1 large carrot\r\n6 garlic cloves\r\n4 ½ teaspoons ground cumin\r\n½ teaspoon red pepper flakes \r\n4 cans  black beans, rinsed and drained\r\n4 cups low-sodium vegetable broth\r\n¼ cup chopped fresh cilantro', '55 min', '350 kcal per portion', 'https://cookieandkate.com/spicy-vegan-black-bean-soup/', '[value-9]', 'Vegan'),
(6, 'Cauliflower with yogurt', 'Cumin seed roasted caulifower', 'https://i1.wp.com/farm7.static.flickr.com/6174/6261628374_0027ec9256_z.jpg?w=640', '2 tablespoons olive oil\r\n1 large head cauliflower\r\n1 teaspoon whole cumin seeds\r\n1/2 teaspoon kosher salt,\r\n1/2 teaspoon freshly ground black pepper\r\nPlain yogurt \r\n1/4 cup crumbled feta', '45 min', '140 kcal per portion', 'https://smittenkitchen.com/2011/10/cumin-seed-roasted-cauliflower-with-yogurt/', '[value-9]', 'Vegetarian'),
(7, 'Healthy Pumpkin Muffins', 'Made with whole wheat flour and oats and real maple syrup', 'https://cookieandkate.com/images/2014/10/pumpkin-muffin-recipe-768x1154.jpg', 'Melted coconut oil \r\n½ cup maple syrup or honey\r\nFlax eggs\r\n1 cup pumpkin purée\r\n¼ cup almond milk \r\n2 teaspoons pumpkin spice blend\r\n1 ¾ cups whole wheat flour\r\n⅓ cup old-fashioned oats', '33 min', '165kcal per portion', 'https://cookieandkate.com/healthy-maple-pumpkin-muffins/', '[value-9]', 'Vegan'),
(8, 'Dark Chocolate Zucchini Brownies', 'Decadent zucchini brownies made with whole wheat and dark chocolate chips.', 'https://cookieandkate.com/images/2011/09/zucchini-brownies-11-550x368.jpg', '2 cups zucchini\r\n½ cup melted coconut oil\r\n½ cup honey\r\n2 eggs\r\n1 cup whole wheat pastry flour\r\n¾ cup whole spelt flour \r\n½ cup unsweetened cocoa powder\r\n½ teaspoon salt\r\n1 ½ teaspoon baking powder\r\n ', '45 min', '205 cal per portion', 'https://cookieandkate.com/healthy-zucchini-brownies-recipe/', '[value-9]', 'Dairy-free'),
(9, 'Bun Cha', 'Hanoi dish, made by serving grilled marinated pork over rice noodles with herbs, fresh or pickled veggie and a dipping sauce of fish sauce', 'https://images.squarespace-cdn.com/content/v1/5916c81cf7e0ab8d478806df/1625539107371-Z9R2RPNNXKJ36MVC6AOL/P6166020+copy.jpg?format=750w', 'Rice vermicelli noodles\r\nJulienne cut cucumber and carrot\r\nFresh mint, cilantro and basil leaves\r\nMeatballs\r\nDipping sauce (nuoc cham)', '1h 20min', '450 cal', 'https://www.rachaelhartleynutrition.com/blog/bun-cha-recipe', '[value-9]', 'Dairy-free'),
(10, 'Guacamole', ' Authentic guacamole recipe', 'https://cookieandkate.com/images/2017/04/best-guacamole-recipe-550x757.jpg', 'Avocado\r\nOnion\r\nCilantro\r\nJalapeño\r\nLime\r\nSalt, and optional ground coriander', '15 min', '150 cal', 'https://cookieandkate.com/best-guacamole-recipe/', '[value-9]', 'Vegan'),
(11, 'Colorful Veggie Sesame Noodles', ' Replace some of the noodles with tons of crisp raw veggies, plus add tiny sesame seeds', 'https://cookieandkate.com/images/2011/07/sesame-noodles-in-bowls-550x824.jpg', 'Spaghetti noodles of choice\r\nRaw sesame seeds\r\n⅓ cup reduced sodium tamari\r\n¼ cup toasted sesame oil\r\nLime juice \r\nFresh ginger\r\n4 cups thinly sliced red cabbage, carrots and bell peppers\r\n1 bunch green onions and cilantro', '35 min', '210 cal', 'https://cookieandkate.com/veggie-sesame-noodles-recipe/', '[value-9]', 'Vegan'),
(12, 'Pineapple Mint Popsicles', 'They’re made with just two ingredients: pineapple and mint!', 'https://cookieandkate.com/images/2020/06/pineapple-popsicle-recipe-550x824.jpg', '1 pound frozen pineapple chunks\r\n1 tablespoon lightly packed fresh mint leaves, to taste', '5 min', '105 cal', 'https://cookieandkate.com/pineapple-mint-popsicles-recipe/', '[value-9]', 'Vegan'),
(13, 'Fig and coconut slices', 'These fig slices are a food miracle because they are raw, vegan, dairy-free, refined sugar-free and gluten-free', 'https://d3c699y7ogacoe.cloudfront.net/wp-content/uploads/2021/08/Header23-620x375.jpg', '150 g	walnuts and almonds\r\n120 g	dates\r\nDessicated coconut\r\n30 ml	almond nut butter\r\nCoconut cream layer\r\n250 ml	cashew nuts \r\n45 g dessicated coconut\r\n2 tbsp	maple syrup\r\nFigs', '45 min', '180 cal', 'https://www.food24.com/recipe/fig-and-coconut-slices/', '[value-9]', 'Vegan'),
(14, 'Pimento Cheese Soufflé', 'Transforms perky pimento cheese into a fluffy soufflé', 'https://images.food52.com/534OIGpgO0D_RYxyPW8h0sEGgU8=/660x440/filters:format(webp)/a7dd0373-597a-4909-b6bd-fec5b8f93ada--2021-0611_pimento-cheese-souffle_3x2julia-gartland_285.jpg', '2 ts unsalted butter\r\n2ts all-purpose flour\r\n1 cup whole milk\r\n2 cups mild cheddar, coarsely grated \r\n1/4 cup drained and finely chopped pimentos\r\n1/4 cup thinly sliced chives\r\n4 large egg yolks\r\n4 large egg whites', '20 min', '240 cal', 'https://food52.com/recipes/86373-pimento-cheese-souffle-recipe', '[value-9]', 'Low-carb'),
(15, 'Quick Pickled Apples\r\n', 'This particular pickle would be lovely alongside a serving of unctuous pork, or even on a pulled pork sandwich', 'https://images.food52.com/SWEsPc6LFh8dp0YRSQoksEkRArY=/660x440/filters:format(webp)/821ac86f-15c0-4516-be68-c51a7622d409--2013-0916_WC_quick-pickled-apples-011.jpg', ' 1cup water\r\n1 cup white wine or champagne vinegar\r\n1/2 cup maple syrup, plus additional if desired \r\n1 1/2 teaspoons pickling spice\r\n1/2 teaspoon kosher salt\r\n2 large-ish Pink Lady apples\r\n2 to 3 star anise pods', '10 min', '30 cal', 'https://food52.com/recipes/16743-quick-pickled-apples', '[value-9]', 'Vegan'),
(16, 'Meatloaf', 'Moist flavorful loaf -- no bells and whistles, just a plain ole meatloaf.', 'https://images.food52.com/9fAjkQ4PhtV9C3R_MNzwpkYtx9M=/660x440/filters:format(webp)/e33e39fb-e7d5-47d8-a6a0-656592690198--2014-1007_classic-meatloaf-025.jpg', 'Celery and carrot\r\n1/2 small onion \r\n1/2 cup parsley \r\n1 small bell \r\n6 mushrooms\r\n1 pound 80% ground beef\r\n1 pound ground pork\r\n1 1/4 cups fresh bread crumbs\r\n2 large eggs lightly beaten', '1h 10 min', '260 cal', 'https://food52.com/recipes/14924-meatloaf-plain-and-simple', '[value-9]', 'Low-carb'),
(17, 'Cucumber Salad', 'Thai-Inspired Cucumber Salad', 'https://images.food52.com/SjljPrxP8G1qMRZ2tIZCzOli-b8=/660x440/filters:format(webp)/7ae5360d-b91b-425d-bbfe-d644abd53769--2016-0419_thai-cucumber-salad_james-ransom-024.jpg', '1 large cucumber\r\n1 cup dry-roasted peanuts\r\nThai hot chile oil\r\nSea salt\r\n1/2 cup silken tofu\r\n1/2 cup coconut milk\r\n4 teaspoons minced lemongrass\r\n1 tablespoon lime juice\r\n1/2 teaspoon sugar\r\n2 tablespoons chopped mint\r\none Serrano pepper chopped', '50 min', '40 cal', 'https://food52.com/recipes/5055-it-s-hot-to-be-cool-thai-inspired-cucumber-salad', '[value-9]', 'Vegan'),
(18, 'Creamy Polenta with Sautéed Apples & Mushrooms', 'Super-comforting polenta gets a dose of autumn via a sauce of mushrooms, apples, and apple brandy.', 'https://images.food52.com/fUglhuNvejylS7I-YDhiAZv7mbU=/660x440/filters:format(webp)/1989b168-9a67-4594-99c8-b5adefbe4223--2015-1020_creamy-polenta-with-sauteed-apples-mushrooms-calvados_james-ransom-028.jpg', '1 1/2 cups polenta\r\n1 1/2 cups vegetable broth\r\n2 tablespoons butter\r\nFor the sauce\r\n2 small Gala apples \r\n8 shiitake mushrooms\r\n2 small shallots \r\n2 cups vegetablebroth\r\n1/2 cup heavy cream\r\n1 to 2 tablespoons flour', '50 min', '210 cal', 'https://food52.com/recipes/24210-creamy-polenta-with-sauteed-apples-mushrooms-calvados', '[value-9]', 'Gluten-free'),
(19, 'French \"Peasant\" Beets', 'Caramelized slices of yellow and red beets and Swiss chard,', 'https://images.food52.com/8BnQr-dlYKx-l8v1U7te3uob3JE=/660x440/filters:format(webp)/6c4da84e-fd2f-47aa-acbc-bca1161526ca--SS030210F611.JPG', '4 Beets with greens\r\n1 bunch Swiss chard\r\n3 tablespoons butter\r\n1 shallot\r\n2 tablespoons white wine\r\n1/2 pound Bucheron Cheese\r\n1 loaf', '30 min', '80 cal', 'https://food52.com/recipes/3302-french-peasant-beets', '[value-9]', 'Vegetarian'),
(20, 'Spicy Oven-Roasted Okra\r\n', 'desc', 'https://images.food52.com/cKg_AczHvHTDiyIWZPqllKt-U-Y=/660x440/filters:format(webp)/aacb1dd5-d06b-4707-a925-610768212b1e--2015-0720_spicy-oven-roasted-okra_mark-weinberg_417.jpg', '1 pound fresh okra, rinsed and dried thoroughly\r\n1/2 teaspoon salt\r\n1/4 teaspoon freshly ground black pepper\r\n1/2 teaspoon red pepper flakes (or 1 full teaspoon for the bold)\r\n1/4 cup olive oil', '20 min', '60 cal', 'https://food52.com/recipes/23374-spicy-oven-roasted-okra', '[value-9]', 'Gluten-free');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `user_name`, `user_image`) VALUES
(2, 'eas@gmail.com', '[]', '$2y$13$Y4ebfGwaU2ocI4gbpPPhheKtXekcEm1bgMMAwDPD056zY9019Ucvy', 'Eas', 'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_960_720.jpg'),
(3, 'test1@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$iubX2f5R7u3Y9FNI45d/7Q$11v3M9DhvjiNnhuewsuSVKWiIQwKA/nj7+P5FGhvsy8', 'test1', 'https://cdn.pixabay.com/photo/2021/06/22/14/55/girl-6356393__340.jpg'),
(4, 'test1@mail.com', '[]', '$2y$13$pJZYXhObQ6odGKn3cyd0z./RI1dZxkdleMOyZU8tZXeSB2ScpOAO2', 'test1', 'https://cdn.pixabay.com/photo/2021/06/22/14/55/girl-6356393__340.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
