-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 09, 2021 at 08:44 PM
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
('DoctrineMigrations\\Version20210906153429', NULL, NULL),
('DoctrineMigrations\\Version20210909180508', '2021-09-09 18:05:36', 120);

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
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `name`, `description`, `image`, `ingredients`, `prep_time`, `calories`, `url`, `type`) VALUES
(1, 'Lemon Focaccia\r\n', 'A gorgeous, tart, salty, sweet, and addictive flatbread.', 'https://images.food52.com/Fe-Q7G0IcpBfntGFOlJ3ZkgoLFA=/660x440/filters:format(webp)/b38f2584-b44b-437c-acf1-a800d97132d2--foccaccia.jpg', '1 cup water\r\n1 teaspoon active dry yeast\r\n1 tablespoon coarse salt, divided\r\n3 tablespoons sugar\r\n1/4 cup olive oil\r\n10 ounces  flour\r\n1 large meyer lemon washed and sliced as thinly as possible\r\n2 teaspoons fresh rosemary needles', '3 hours', '323', 'https://food52.com/recipes/16573-meyer-lemon-focaccia', 'vegan'),
(2, 'Esquites', 'Mexican Street Corn Salad', 'https://cookieandkate.com/images/2021/05/esquites-recipe-2-768x1157.jpg', 'Unsalted butter\r\n3 cups corn kernels \r\n¼ cup mayonnaise\r\n1 medium finely chopped jalapeño\r\n1 tablespoon lime juice\r\n1 teaspoon chili powder\r\n¼ cup finely chopped cilantro', '20 min', '150 kcal per portion', 'https://cookieandkate.com/esquites-recipe/#tasty-recipes-38678-jump-target', 'Vegetarian'),
(3, 'Zucchini Noodles', 'Fresh, raw zucchini noodles tossed with basil pesto and cherry tomatoes', 'https://cookieandkate.com/images/2016/06/zucchini-pesto-noodles-recipe-1-1-550x757.jpg', '3 large zucchini\r\nSalt\r\n1 pint cherry tomatoes\r\n1 cup fresh pesto      \r\nFresh basil leaves, for garnishing', '20 min', '180 per portion', 'https://cookieandkate.com/zucchini-noodles-with-pesto-recipe/', 'lowcarb'),
(4, 'Shakshuka', ' Poached eggs in a hearty, spiced tomato and pepper sauce, topped with a tangy feta cheese and fresh cilantro or parsley.', 'https://cookieandkate.com/images/2019/02/best-shakshuka-recipe-3-768x1154.jpg', '\r\n1 large red bell pepper\r\n2 tablespoons tomato paste\r\n1 teaspoon ground cumin\r\n½ teaspoon smoked paprika\r\n1 large can crushed tomatoes\r\n2 tablespoons chopped fresh cilantro \r\n5 to 6 large eggs\r\n½ cup crumbled feta\r\nCrusty bread or pita', '35 min', '280 per portion', 'https://cookieandkate.com/foolproof-shakshuka-recipe/', 'lowcarb'),
(5, 'Spicy Black Bean Soup', 'This healthy black bean soup recipe is easy to make with canned beans. It’s incredibly flavorful and delicious.', 'https://cookieandkate.com/images/2016/02/spicy-black-bean-soup-recipe-4-768x1154.jpg', '1 large carrot\r\n6 garlic cloves\r\n4 ½ teaspoons ground cumin\r\n½ teaspoon red pepper flakes \r\n4 cans  black beans, rinsed and drained\r\n4 cups low-sodium vegetable broth\r\n¼ cup chopped fresh cilantro', '55 min', '350 kcal per portion', 'https://cookieandkate.com/spicy-vegan-black-bean-soup/', 'Vegan'),
(6, 'Cauliflower with yogurt', 'Cumin seed roasted caulifower', 'https://i1.wp.com/farm7.static.flickr.com/6174/6261628374_0027ec9256_z.jpg?w=640', '2 tablespoons olive oil\r\n1 large head cauliflower\r\n1 teaspoon whole cumin seeds\r\n1/2 teaspoon kosher salt,\r\n1/2 teaspoon freshly ground black pepper\r\nPlain yogurt \r\n1/4 cup crumbled feta', '45 min', '140 kcal per portion', 'https://smittenkitchen.com/2011/10/cumin-seed-roasted-cauliflower-with-yogurt/', 'Vegetarian'),
(7, 'Healthy Pumpkin Muffins', 'Made with whole wheat flour and oats and real maple syrup', 'https://cookieandkate.com/images/2014/10/pumpkin-muffin-recipe-768x1154.jpg', 'Melted coconut oil \r\n½ cup maple syrup \r\nFlax eggs\r\n1 cup pumpkin purée\r\n¼ cup almond milk \r\n2 teaspoons pumpkin spice blend\r\n1 ¾ cups whole wheat flour\r\n⅓ cup old-fashioned oats', '33 min', '165kcal per portion', 'https://cookieandkate.com/healthy-maple-pumpkin-muffins/', 'Vegan'),
(8, 'Dark Chocolate Zucchini Brownies', 'Decadent zucchini brownies made with whole wheat and dark chocolate chips.', 'https://cookieandkate.com/images/2011/09/zucchini-brownies-11-550x368.jpg', '2 cups zucchini\r\n½ cup melted coconut oil\r\n½ cup honey\r\n2 eggs\r\n1 cup whole wheat pastry flour\r\n¾ cup whole spelt flour \r\n½ cup unsweetened cocoa powder\r\n½ teaspoon salt\r\n1 ½ teaspoon baking powder\r\n ', '45 min', '205 cal per portion', 'https://cookieandkate.com/healthy-zucchini-brownies-recipe/', 'dairyfree'),
(9, 'Bun Cha', 'Hanoi dish, made by serving grilled marinated pork over rice noodles with herbs, fresh or pickled veggie and a dipping sauce of fish sauce', 'https://images.squarespace-cdn.com/content/v1/5916c81cf7e0ab8d478806df/1625539107371-Z9R2RPNNXKJ36MVC6AOL/P6166020+copy.jpg?format=750w', 'Rice vermicelli noodles\r\nJulienne cut cucumber and carrot\r\nFresh mint, cilantro and basil leaves\r\nMeatballs\r\nDipping sauce (nuoc cham)', '1h 20min', '450 cal', 'https://www.rachaelhartleynutrition.com/blog/bun-cha-recipe', 'Dairy-free'),
(10, 'Guacamole', ' Authentic guacamole recipe', 'https://cookieandkate.com/images/2017/04/best-guacamole-recipe-550x757.jpg', 'Avocado\r\nOnion\r\nCilantro\r\nJalapeño\r\nLime\r\nSalt, and optional ground coriander', '15 min', '150 cal', 'https://cookieandkate.com/best-guacamole-recipe/', 'Vegan'),
(11, 'Colorful Veggie Sesame Noodles', ' Replace some of the noodles with tons of crisp raw veggies, plus add tiny sesame seeds', 'https://cookieandkate.com/images/2011/07/sesame-noodles-in-bowls-550x824.jpg', 'Spaghetti noodles of choice\r\nRaw sesame seeds\r\n⅓ cup reduced sodium tamari\r\n¼ cup toasted sesame oil\r\nLime juice \r\nFresh ginger\r\n4 cups thinly sliced red cabbage, carrots and bell peppers\r\n1 bunch green onions and cilantro', '35 min', '210 cal', 'https://cookieandkate.com/veggie-sesame-noodles-recipe/', 'Vegan'),
(12, 'Pineapple Mint Popsicles', 'They’re made with just two ingredients: pineapple and mint!', 'https://cookieandkate.com/images/2020/06/pineapple-popsicle-recipe-550x824.jpg', '1 pound frozen pineapple chunks\r\n1 tablespoon lightly packed fresh mint leaves, to taste', '5 min', '105 cal', 'https://cookieandkate.com/pineapple-mint-popsicles-recipe/', 'Vegan'),
(13, 'Fig and coconut slices', 'These fig slices are a food miracle because they are raw, vegan, dairy-free, refined sugar-free and gluten-free', 'https://d3c699y7ogacoe.cloudfront.net/wp-content/uploads/2021/08/Header23-620x375.jpg', '150 g	walnuts and almonds\r\n120 g	dates\r\nDessicated coconut\r\n30 ml	almond nut butter\r\nCoconut cream layer\r\n250 ml	cashew nuts \r\n45 g dessicated coconut\r\n2 tbsp	maple syrup\r\nFigs', '45 min', '180 cal', 'https://www.food24.com/recipe/fig-and-coconut-slices/', 'Vegan'),
(14, 'Pimento Cheese Soufflé', 'Transforms perky pimento cheese into a fluffy soufflé', 'https://images.food52.com/534OIGpgO0D_RYxyPW8h0sEGgU8=/660x440/filters:format(webp)/a7dd0373-597a-4909-b6bd-fec5b8f93ada--2021-0611_pimento-cheese-souffle_3x2julia-gartland_285.jpg', '2 ts unsalted butter\r\n2ts all-purpose flour\r\n1 cup whole milk\r\n2 cups mild cheddar, coarsely grated \r\n1/4 cup drained and finely chopped pimentos\r\n1/4 cup thinly sliced chives\r\n4 large egg yolks\r\n4 large egg whites', '20 min', '240 cal', 'https://food52.com/recipes/86373-pimento-cheese-souffle-recipe', 'lowcarb'),
(15, 'Quick Pickled Apples\r\n', 'This particular pickle would be lovely alongside a serving of unctuous pork, or even on a pulled pork sandwich', 'https://images.food52.com/SWEsPc6LFh8dp0YRSQoksEkRArY=/660x440/filters:format(webp)/821ac86f-15c0-4516-be68-c51a7622d409--2013-0916_WC_quick-pickled-apples-011.jpg', ' 1cup water\r\n1 cup white wine or champagne vinegar\r\n1/2 cup maple syrup, plus additional if desired \r\n1 1/2 teaspoons pickling spice\r\n1/2 teaspoon kosher salt\r\n2 large-ish Pink Lady apples\r\n2 to 3 star anise pods', '10 min', '30 cal', 'https://food52.com/recipes/16743-quick-pickled-apples', 'Vegan'),
(16, 'Meatloaf', 'Moist flavorful loaf -- no bells and whistles, just a plain ole meatloaf.', 'https://images.food52.com/9fAjkQ4PhtV9C3R_MNzwpkYtx9M=/660x440/filters:format(webp)/e33e39fb-e7d5-47d8-a6a0-656592690198--2014-1007_classic-meatloaf-025.jpg', 'Celery and carrot\r\n1/2 small onion \r\n1/2 cup parsley \r\n1 small bell \r\n6 mushrooms\r\n1 pound 80% ground beef\r\n1 pound ground pork\r\n1 1/4 cups fresh bread crumbs\r\n2 large eggs lightly beaten', '1h 10 min', '260 cal', 'https://food52.com/recipes/14924-meatloaf-plain-and-simple', 'lowcarb'),
(17, 'Cucumber Salad', 'Thai-Inspired Cucumber Salad', 'https://images.food52.com/SjljPrxP8G1qMRZ2tIZCzOli-b8=/660x440/filters:format(webp)/7ae5360d-b91b-425d-bbfe-d644abd53769--2016-0419_thai-cucumber-salad_james-ransom-024.jpg', '1 large cucumber\r\n1 cup dry-roasted peanuts\r\nThai hot chile oil\r\nSea salt\r\n1/2 cup silken tofu\r\n1/2 cup coconut milk\r\n4 teaspoons minced lemongrass\r\n1 tablespoon lime juice\r\n1/2 teaspoon sugar\r\n2 tablespoons chopped mint\r\none Serrano pepper chopped', '50 min', '40 cal', 'https://food52.com/recipes/5055-it-s-hot-to-be-cool-thai-inspired-cucumber-salad', 'Vegan'),
(18, 'Creamy Polenta with Sautéed Apples & Mushrooms', 'Super-comforting polenta gets a dose of autumn via a sauce of mushrooms, apples, and apple brandy.', 'https://images.food52.com/fUglhuNvejylS7I-YDhiAZv7mbU=/660x440/filters:format(webp)/1989b168-9a67-4594-99c8-b5adefbe4223--2015-1020_creamy-polenta-with-sauteed-apples-mushrooms-calvados_james-ransom-028.jpg', '1 1/2 cups polenta\r\n1 1/2 cups vegetable broth\r\n2 tablespoons butter\r\nFor the sauce\r\n2 small Gala apples \r\n8 shiitake mushrooms\r\n2 small shallots \r\n2 cups vegetablebroth\r\n1/2 cup heavy cream\r\n1 to 2 tablespoons flour', '50 min', '210 cal', 'https://food52.com/recipes/24210-creamy-polenta-with-sauteed-apples-mushrooms-calvados', 'glutenfree'),
(19, 'French \"Peasant\" Beets', 'Caramelized slices of yellow and red beets and Swiss chard,', 'https://images.food52.com/8BnQr-dlYKx-l8v1U7te3uob3JE=/660x440/filters:format(webp)/6c4da84e-fd2f-47aa-acbc-bca1161526ca--SS030210F611.JPG', '4 Beets with greens\r\n1 bunch Swiss chard\r\n3 tablespoons butter\r\n1 shallot\r\n2 tablespoons white wine\r\n1/2 pound Bucheron Cheese\r\n1 loaf', '30 min', '80 cal', 'https://food52.com/recipes/3302-french-peasant-beets', 'Vegetarian'),
(20, 'Spicy Oven-Roasted Okra\r\n', 'desc', 'https://images.food52.com/cKg_AczHvHTDiyIWZPqllKt-U-Y=/660x440/filters:format(webp)/aacb1dd5-d06b-4707-a925-610768212b1e--2015-0720_spicy-oven-roasted-okra_mark-weinberg_417.jpg', '1 pound fresh okra, rinsed and dried thoroughly\r\n1/2 teaspoon salt\r\n1/4 teaspoon freshly ground black pepper\r\n1/2 teaspoon red pepper flakes (or 1 full teaspoon for the bold)\r\n1/4 cup olive oil', '20 min', '60 cal', 'https://food52.com/recipes/23374-spicy-oven-roasted-okra', 'glutenfree'),
(21, 'Mint-Pistachio Pesto', 'A stunningly simple pesto as you have never seen it before with mint, pistachio, and lime', 'https://images.food52.com/SSJrkI8JXRHQXalAAYjQbuOlRZY=/660x440/filters:format(webp)/6f5b6599-cccc-43bf-84de-839dff601717--food52_07-17-12-2359.jpeg', '1 cup mint leaves\r\n1/3 cup roasted, salted, shelled pistachios\r\n1 small clove garlic, peeled\r\n1/4 teaspoon salt\r\n1/4 cup extra virgin olive oil\r\njuice of 1/4 lime', '15 min', '80 cal per 100g', 'https://food52.com/recipes/18134-mint-pistachio-pesto', 'dairyfree'),
(22, 'Pommes Aligot\r\n', 'desc', 'https://images.food52.com/a6sE9Uo3sRpMKrKff50Ja47XXZ4=/660x440/filters:format(webp)/d28447c4-d607-479c-974b-e7bbdc7900c0--2019-1022_pommes-aligot_3x2_rocky-luten_013.jpg', '4 medium potatoes\r\n4 tablespoons butter\r\n3/4 cup heavy cream\r\n1/2 cup Comté cheese\r\n1/2 cup Emmental cheese', '40 min', '180 cal', 'https://food52.com/recipes/82018-pommes-aligot', 'vegetarian'),
(23, 'Roasted Tomato Jam\r\n', 'Roasting jam delivered on its promises!', 'https://images.food52.com/OuuDCw8sGC8mX5RhHaLoxc0krS4=/660x440/filters:format(webp)/a4f5d625-4906-4e11-b1d4-4195a2ba0a56--2013-0819_finalist_roasted-tomato-jam-293.jpg', '2 cups sugar\r\n3 pounds ripe beefsteak tomatoes, cored and thinly sliced (1/4 inch)\r\nLarge pinch salt\r\nGrated zest of 1 lemon\r\nJuice of 1 lemon\r\n1 cinnamon stick\r\n1/2 teaspoon fennel seeds, lightly crushed\r\n2 dried red chiles', '20 min', '25 cal per tbsp', 'https://food52.com/recipes/23676-roasted-tomato-jam', 'dairyfree'),
(24, 'Halloumi Salad', 'Middle Eastern meze spread', 'https://images.food52.com/8eKBLeNwCJVS-Y1DvU3ttiKo08A=/660x440/filters:format(webp)/2a5aa3d5-86f1-4fc2-b773-dd0b3b759c91--2021-0406_my-big-fat-halloumi-salad_3x2_julia-gartland_182.jpg', '1 small eggplant \r\n1/3 cup cooked and drained chickpeas\r\n3 ounces Halloumi\r\n1 cup arugula\r\n1/2 small head radicchio \r\n1/3 cup parsley leaves\r\n1/4 cup almonds\r\n3 medjool dates\r\n1 tangerine,', '25 min', '200 cal', 'https://food52.com/recipes/85602-halloumi-eggplant-chickpea-salad-recipe', 'vegetarian'),
(25, 'Sholeh Zard', 'Saffron-Infused Rice Pudding', 'https://images.food52.com/-pnus09QdPREdzOjA1IjTRMzzzQ=/660x440/filters:format(webp)/20c386e2-ae07-44c7-ae06-06e95747f962--2016-0307_persian-new-year-saffron-infused-rice-pudding_james-ransom-050.jpg', '1/2 cup basmati rice\r\n1 1/2 teaspoons saffron strands \r\n4 cups water\r\n1/2 cup sugar \r\n1 cup hot water\r\n4 tablespoons unsalted butter\r\n1/4 cup rose water \r\n3 cardamom pods\r\n1 cinnamon stick\r\n1/4 cup almonds', '45 min', '150 cal', 'https://food52.com/recipes/2302-saffron-infused-rice-pudding-sholeh-zard-in-the-persian-manner', 'vegetarian'),
(26, 'Buckwheat Porridge\r\n', 'This recipe has all of the satisfaction and comfort of hot cereal, sans heat, which makes it perfect for summer.', 'https://images.food52.com/iXqSjrp7bpulns6ZMaFk3qzVTl8=/660x440/filters:format(webp)/752bcbd7-48b8-4eec-9969-218c941d11a4--recipe3.jpg', '2 cups raw buckwheat groats, soaked overnight, drained, and rinsed\r\n1 cup almond milk\r\n1/4 cup maple syrup\r\n1 teaspoon cinnamon\r\n1 teaspoon vanilla extract\r\n1 tablespoon ground flax meal\r\n1 pinch sea salt\r\n1/3 cup shredded, unsweetened coconut', 'time', 'cal', 'url', 'type'),
(27, 'Potato Chip Tortilla Española', 'Skip the traditional steps of a making a tortilla. Instead, grab your favorite thin and crispy potato chips and a few eggs. ', 'https://images.food52.com/dw_7Z0ETtXZ22XospgETiBWCUOs=/660x440/filters:format(webp)/fe96495f-e9cc-4351-8fe5-a6b7cdd92984--2019-1022_ferran-adria-potato-chip-spanish-tortilla_3x2_rocky-luten_025.jpg', '4 ounces potato chips \r\n2 ounces thinly sliced serrano ham or prosciutto\r\n1/4 cup finely chopped canned piquillo peppers or pimentos \r\n8 eggs, lightly beaten\r\nSalt and freshly ground black pepper\r\n2 tablespoons olive oil', '15 min', '300', 'https://food52.com/recipes/82201-tortilla-espanola-with-potato-chips-recipe', 'glutenfree'),
(28, 'Breakfast Bars\r\n', 'These Breakfast Bars come together in minutes and bake for an hour. ', 'https://images.food52.com/BIpMdFK_ydiUN-70lF2OVbi21-o=/660x440/filters:format(webp)/d495653d-19a9-4af3-9927-675948b9ecf7--IMG_4596.JPG', '1 can of caramel condensed milk \r\n250 grams rolled oats\r\n75 grams shredded coconut\r\n100 grams dried berry mix\r\n125 grams mixed seeds (pumpkin, sunflower, linseed, sesame)\r\n100 grams flaked almonds', '1h30min', '210 cal', 'https://food52.com/recipes/27234-breakfast-bars', 'lowcarb'),
(29, 'Waffles', 'Simple fluffy waffles!', 'https://images.food52.com/X9KDm_TYQQkSByydCDhwPJliLY4=/660x440/filters:format(webp)/e716f38d-2eb4-49ba-834b-b62839c8887e--wflbkf3.jpg', '250 grams / 2 cups plain flour\r\n10 grams / 2 teaspoons baking powder\r\n1 pinch salt\r\n350 milliliters / 1⅓ cups milk\r\n80 grams / ¾ stick butter, melted\r\n4 eggs, separated\r\n50 grams / ¼ cup sugar', '20 min', '210 cal', 'https://food52.com/recipes/35684-waffles-for-breakfast', 'vegetarian'),
(30, 'Banana Flapjacks', 'Healthy, totally gluten-free and vegan pancakes.', 'https://images.food52.com/BTFo-s_2luIZ0gHrBoyKQbaIX_g=/660x440/filters:format(webp)/e0f3a763-21c9-4fe2-aaab-9804186926c3--Mp5C_jJjrUO3cCeqzJtpz6qWtI9vUOWvnygiatJhXg8.jpeg', '1 banana, peeled and roughly chopped\r\n1/2 cup almond milk\r\n1/4 cup all-purpose gluten-free flour\r\n1/4 cup almond flour \r\n1 teaspoon baking powder\r\n1 pinch salt\r\n1 tablespoon coconut oil\r\n1 splash maple syrup for serving', '30 min', '100 cal', 'https://food52.com/recipes/21162-gluten-free-banana-flapjacks', 'glutenfree');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `user_fk_id` int(11) NOT NULL,
  `meal_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meal_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `user_fk_id`, `meal_name`, `meal_time`, `day`) VALUES
(1, 7, 'Lemon Focaccia\r\n', 'Lunch', 'wednesday'),
(2, 7, 'Lemon Focaccia\r\n', 'dinner', 'thursday');

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
(2, 'eas@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$Y4ebfGwaU2ocI4gbpPPhheKtXekcEm1bgMMAwDPD056zY9019Ucvy', 'Eas', 'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_960_720.jpg'),
(5, 'fred@gmail.com', '[\"ROLE_BLOCKED\"]', '$2y$13$MQ1ZlkcIVroty0YppNu/1uMsvXcz/HHo97sgJbp/smNVRqf0V2PHa', 'Fred', 'http://fred'),
(6, 'bob@gmail.com', '[]', '$2y$13$eHLvNTv.Q/3MxzxpNq0v..uemCkDt8BFglX0yY4yCRlRaCrhuXSdS', 'Bob', 'http://Bob'),
(7, 'pouyan@mail.com', '[]', '$2y$13$P/qlDuAJvmc.bqacwPt6d.BD4bzeUgzbqzP5BHmSDZd.rfteaRrou', 'pouyan', 'https://cdn.pixabay.com/photo/2015/12/01/15/43/black-1072366_960_720.jpg');

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
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
