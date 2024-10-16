/*
 Navicat Premium Dump SQL

 Source Server         : MYSQLI Docker Localhost
 Source Server Type    : MySQL
 Source Server Version : 80400 (8.4.0)
 Source Host           : localhost:3306
 Source Schema         : testbook

 Target Server Type    : MySQL
 Target Server Version : 80400 (8.4.0)
 File Encoding         : 65001

 Date: 16/10/2024 16:45:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for authors
-- ----------------------------
DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authors
-- ----------------------------
INSERT INTO `authors` VALUES (1, 'Jacques Towne DVM', 'Dooley');
INSERT INTO `authors` VALUES (2, 'Nigel Heaney', 'Hodkiewicz');
INSERT INTO `authors` VALUES (3, 'Lewis Kassulke', 'Stamm');
INSERT INTO `authors` VALUES (4, 'Prof. Paula Hartmann', 'Shanahan');
INSERT INTO `authors` VALUES (5, 'Hulda Gaylord', 'Schumm');
INSERT INTO `authors` VALUES (6, 'Eudora Hackett', 'Stanton');
INSERT INTO `authors` VALUES (7, 'Dr. Nicolas Swaniawski Sr.', 'Champlin');
INSERT INTO `authors` VALUES (8, 'Cole Mills Jr.', 'Goyette');
INSERT INTO `authors` VALUES (9, 'Prof. Rosalinda Weber', 'Pouros');
INSERT INTO `authors` VALUES (10, 'Prof. Amanda Connelly', 'Lindgren');
INSERT INTO `authors` VALUES (11, 'Macey Osinski', 'Gleichner');
INSERT INTO `authors` VALUES (12, 'Wyman Cassin', 'Beatty');
INSERT INTO `authors` VALUES (13, 'Miss Marisol Cummerata III', 'Herzog');
INSERT INTO `authors` VALUES (14, 'Elisha Gerlach MD', 'Daugherty');
INSERT INTO `authors` VALUES (15, 'Melany Gibson', 'Lubowitz');
INSERT INTO `authors` VALUES (19, 'regey', 'resta');
INSERT INTO `authors` VALUES (20, 'regey', 'resta');
INSERT INTO `authors` VALUES (21, 'regey', 'resta');
INSERT INTO `authors` VALUES (22, 'regey', 'resta');

-- ----------------------------
-- Table structure for book_author
-- ----------------------------
DROP TABLE IF EXISTS `book_author`;
CREATE TABLE `book_author`  (
  `book_id` bigint UNSIGNED NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_author
-- ----------------------------
INSERT INTO `book_author` VALUES (5, 22);

-- ----------------------------
-- Table structure for book_contents
-- ----------------------------
DROP TABLE IF EXISTS `book_contents`;
CREATE TABLE `book_contents`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `book_id` bigint UNSIGNED NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `book_contents_book_id_foreign`(`book_id` ASC) USING BTREE,
  CONSTRAINT `book_contents_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_contents
-- ----------------------------
INSERT INTO `book_contents` VALUES (1, 5, 'test', 'test', '2');
INSERT INTO `book_contents` VALUES (2, 5, 'Sequi.', 'Ea culpa porro id pariatur.', '15');
INSERT INTO `book_contents` VALUES (3, 7, 'Et.', 'Eum vero voluptas eaque labore.', '90');
INSERT INTO `book_contents` VALUES (4, 8, 'Quo.', 'Rerum voluptas quae quis incidunt perferendis impedit.', '46');
INSERT INTO `book_contents` VALUES (5, 9, 'Eos rem.', 'Illum alias quo ratione doloribus explicabo.', '82');
INSERT INTO `book_contents` VALUES (6, 10, 'Amet commodi.', 'Sint consequuntur deleniti inventore numquam eos ex.', '7');
INSERT INTO `book_contents` VALUES (7, 11, 'Excepturi.', 'Aut temporibus explicabo ut enim.', '29');
INSERT INTO `book_contents` VALUES (8, 12, 'Harum qui.', 'Rerum eius vel sit necessitatibus tempora debitis.', '66');
INSERT INTO `book_contents` VALUES (9, 13, 'Eos impedit.', 'Hic quia asperiores hic.', '27');
INSERT INTO `book_contents` VALUES (10, 14, 'Molestiae.', 'Sed qui corporis qui consequuntur qui delectus.', '18');
INSERT INTO `book_contents` VALUES (11, 15, 'Eligendi officia.', 'Et nesciunt occaecati quis.', '39');
INSERT INTO `book_contents` VALUES (12, 16, 'Ab esse.', 'Nam ut dolor aut est vero dolor.', '55');
INSERT INTO `book_contents` VALUES (13, 17, 'Aut quibusdam.', 'Quo occaecati ipsam sunt aspernatur voluptatem.', '81');
INSERT INTO `book_contents` VALUES (14, 18, 'Non officia.', 'Alias numquam repellat voluptatem.', '71');
INSERT INTO `book_contents` VALUES (15, 19, 'Esse accusamus.', 'At ipsa aut error.', '3');
INSERT INTO `book_contents` VALUES (16, 20, 'Vero.', 'Quam maxime facere et amet.', '17');
INSERT INTO `book_contents` VALUES (17, 21, 'Aut.', 'Eos quasi quis illo consequatur cum molestiae.', '79');
INSERT INTO `book_contents` VALUES (18, 22, 'Laboriosam et.', 'Dolor fugiat nihil ea.', '14');
INSERT INTO `book_contents` VALUES (19, 23, 'Natus molestiae.', 'Vel vel tempore modi doloribus omnis.', '52');
INSERT INTO `book_contents` VALUES (20, 24, 'Est et.', 'Est cupiditate officia molestias quos voluptate possimus.', '85');
INSERT INTO `book_contents` VALUES (21, 25, 'Soluta.', 'Rerum voluptatem aut nihil.', '58');
INSERT INTO `book_contents` VALUES (22, 26, 'Adipisci.', 'Voluptatibus ratione sit rerum ut aut.', '99');
INSERT INTO `book_contents` VALUES (23, 27, 'Quis.', 'Sunt dolorum optio tempore temporibus.', '92');
INSERT INTO `book_contents` VALUES (24, 28, 'Nemo.', 'Cum sed neque optio vero culpa.', '54');
INSERT INTO `book_contents` VALUES (25, 29, 'Quod quos.', 'Sunt laborum et nulla ut.', '82');
INSERT INTO `book_contents` VALUES (26, 30, 'Sunt.', 'Tempore a voluptas repudiandae aut.', '78');
INSERT INTO `book_contents` VALUES (27, 31, 'Qui.', 'Illo ut tempora et.', '84');
INSERT INTO `book_contents` VALUES (28, 32, 'Nesciunt reprehenderit.', 'Quia cum labore ut eligendi ad nostrum.', '93');
INSERT INTO `book_contents` VALUES (29, 33, 'Quaerat.', 'Est est et cum.', '71');
INSERT INTO `book_contents` VALUES (30, 34, 'Quis sint.', 'Dolores labore sint qui et atque.', '14');
INSERT INTO `book_contents` VALUES (31, 35, 'Aperiam.', 'Suscipit delectus voluptatem sunt.', '16');
INSERT INTO `book_contents` VALUES (32, 36, 'Et.', 'Quo blanditiis sed ut minima quas ut.', '39');
INSERT INTO `book_contents` VALUES (33, 37, 'Nisi.', 'Consequatur voluptatem ea aliquam.', '52');
INSERT INTO `book_contents` VALUES (34, 38, 'Necessitatibus.', 'Aut asperiores amet asperiores atque.', '12');
INSERT INTO `book_contents` VALUES (35, 39, 'Ut fugit.', 'Enim eveniet dignissimos aut officia eligendi.', '11');
INSERT INTO `book_contents` VALUES (36, 40, 'Qui.', 'Eius cumque officiis vero iusto ipsa.', '31');
INSERT INTO `book_contents` VALUES (37, 41, 'Sapiente.', 'Corrupti labore corporis exercitationem omnis repudiandae delectus.', '36');
INSERT INTO `book_contents` VALUES (38, 42, 'Recusandae.', 'Reprehenderit eius cumque doloremque eum.', '98');
INSERT INTO `book_contents` VALUES (39, 43, 'Sit.', 'Est sunt reiciendis ullam quia soluta.', '99');
INSERT INTO `book_contents` VALUES (40, 44, 'Molestias placeat.', 'Velit est voluptatem adipisci qui.', '93');
INSERT INTO `book_contents` VALUES (41, 45, 'Molestiae.', 'Ratione rem tenetur a accusamus error aliquid libero.', '72');
INSERT INTO `book_contents` VALUES (42, 46, 'Est quasi.', 'Ipsa natus voluptas eveniet.', '96');
INSERT INTO `book_contents` VALUES (43, 47, 'Vitae ullam.', 'Aliquam unde soluta id est ullam.', '23');
INSERT INTO `book_contents` VALUES (44, 48, 'Corrupti.', 'Est doloremque odio voluptatum.', '59');
INSERT INTO `book_contents` VALUES (45, 49, 'Qui et.', 'Saepe molestias quisquam eum dicta sunt sunt.', '21');
INSERT INTO `book_contents` VALUES (46, 50, 'Cumque.', 'Dolores nihil eum enim alias libero.', '15');
INSERT INTO `book_contents` VALUES (47, 51, 'Repudiandae.', 'Dolores maxime nesciunt laudantium quos aperiam.', '30');

-- ----------------------------
-- Table structure for book_reviews
-- ----------------------------
DROP TABLE IF EXISTS `book_reviews`;
CREATE TABLE `book_reviews`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `book_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `review` tinyint UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `book_reviews_book_id_foreign`(`book_id` ASC) USING BTREE,
  INDEX `book_reviews_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `book_reviews_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `book_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 187 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_reviews
-- ----------------------------
INSERT INTO `book_reviews` VALUES (3, 5, 6, 5, 'Sit sapiente a a unde tempore. Ratione voluptatem rerum quia ad animi culpa nobis qui. Perferendis sint deserunt quibusdam natus voluptas et delectus consectetur.');
INSERT INTO `book_reviews` VALUES (4, 5, 6, 4, 'Consequuntur et assumenda quod nam quia esse animi. Qui autem qui explicabo. Eos maxime a culpa numquam dolor. Omnis reprehenderit quasi sequi commodi.');
INSERT INTO `book_reviews` VALUES (5, 5, 6, 2, 'Ut dicta quia quia maiores. Qui explicabo aut in sed et suscipit. Qui maxime expedita sunt illum. Voluptatem ea in asperiores maiores dolorem porro.');
INSERT INTO `book_reviews` VALUES (6, 5, 4, 2, 'Praesentium quod dolor inventore quasi velit est libero. Est quas iusto ducimus officiis explicabo excepturi dolores iure. Ut totam blanditiis aliquam voluptates eum debitis vero.');
INSERT INTO `book_reviews` VALUES (7, 7, 5, 5, 'Earum provident sed nostrum amet totam doloribus. Architecto eligendi quod minus. Quia culpa nisi quod quisquam est iste. Omnis tenetur vel dolorem ducimus eius praesentium ipsa dicta.');
INSERT INTO `book_reviews` VALUES (8, 7, 4, 2, 'Id et et ratione dolore non praesentium inventore. Facilis eum nesciunt eaque repellendus dolor. Dolor quibusdam quam sint quaerat. Rerum reprehenderit maxime tempore maiores.');
INSERT INTO `book_reviews` VALUES (9, 7, 6, 6, 'Nam sed ut id est voluptas dolorum qui. Maiores qui eveniet rerum cum odio et laboriosam ullam. Nobis consequatur et reprehenderit et.');
INSERT INTO `book_reviews` VALUES (10, 7, 4, 2, 'Nihil odit ea quia necessitatibus molestiae ut soluta. Provident esse quam et ea id reprehenderit. Praesentium eos blanditiis similique sunt atque repellendus nam.');
INSERT INTO `book_reviews` VALUES (11, 8, 7, 1, 'Sed voluptatem ducimus iure voluptatem eius a qui. Velit quidem consequatur cumque quas ratione saepe dolorem. Est veniam corporis rerum. Aut unde facilis molestiae iusto.');
INSERT INTO `book_reviews` VALUES (12, 8, 7, 6, 'Rem praesentium nesciunt animi ea. Repellat minus sapiente necessitatibus cum. Corrupti non sed eveniet neque. Omnis esse in et ab eum.');
INSERT INTO `book_reviews` VALUES (13, 8, 6, 5, 'Voluptatibus reprehenderit quis ut qui. Vel voluptatem tempora eos eaque voluptas. Iusto voluptas optio enim consequatur. Quis molestiae quas qui in asperiores.');
INSERT INTO `book_reviews` VALUES (14, 8, 5, 7, 'Repudiandae eum repellendus quas perspiciatis iusto. Tempore modi minima dolor facilis quia. Ad sit magnam sapiente dolorem et.');
INSERT INTO `book_reviews` VALUES (15, 9, 5, 2, 'Et odio velit sed reprehenderit quisquam. Illo in quo corrupti aut quis. Inventore omnis consequatur ut eligendi modi facilis dolor maxime. Voluptas unde sequi beatae non suscipit ad.');
INSERT INTO `book_reviews` VALUES (16, 9, 5, 6, 'Rem esse et blanditiis minus ut sit est. Facilis facilis voluptatem autem aut laudantium consequuntur. Esse ad iure laboriosam mollitia sed natus voluptatem nostrum.');
INSERT INTO `book_reviews` VALUES (17, 9, 8, 6, 'Autem cum ut nemo quod tempora sed. Inventore voluptatem temporibus iusto atque voluptatem. Facere et consequuntur rem possimus nihil quod quia repudiandae. Autem sit natus sequi sunt ut.');
INSERT INTO `book_reviews` VALUES (18, 9, 5, 9, 'Animi qui illum ut earum est incidunt. Quia et soluta et sit aperiam. Illum maiores vero alias eveniet. Enim possimus sit magni facilis recusandae fugit saepe.');
INSERT INTO `book_reviews` VALUES (19, 10, 6, 8, 'Aut dolores et reiciendis vel delectus. Nihil laboriosam et modi consequatur dolore. Cumque nisi reiciendis impedit quaerat.');
INSERT INTO `book_reviews` VALUES (20, 10, 4, 7, 'Voluptatum nobis a id optio amet. Nobis voluptates non quidem optio autem. Sunt commodi odit ut omnis porro.');
INSERT INTO `book_reviews` VALUES (21, 10, 6, 8, 'Sunt quae occaecati et exercitationem delectus aut. Totam reprehenderit eos quasi impedit est impedit. Voluptas ut ut ipsa amet.');
INSERT INTO `book_reviews` VALUES (22, 10, 8, 10, 'Qui labore eveniet corporis mollitia perspiciatis esse. Vel sint vitae quaerat laudantium nihil dolor.');
INSERT INTO `book_reviews` VALUES (23, 11, 8, 3, 'At tempore tenetur corporis cumque quae. Inventore ab facere quo ipsam incidunt est. Et deserunt rerum eveniet.');
INSERT INTO `book_reviews` VALUES (24, 11, 7, 10, 'Atque fugiat et provident mollitia eius. Iste ea nostrum occaecati nemo sed. Omnis esse omnis consectetur libero praesentium. Enim voluptatibus sapiente dolore nisi maiores.');
INSERT INTO `book_reviews` VALUES (25, 11, 5, 6, 'Libero et a tenetur assumenda est dolorem. Et excepturi illum tempora facere. Voluptas omnis est consequatur mollitia ut. Quia qui quos eum consequuntur sed non voluptatem.');
INSERT INTO `book_reviews` VALUES (26, 11, 7, 1, 'Voluptatum sunt nobis ut rerum ipsam. Sed repellat molestiae eveniet porro nulla dolorum. Non vel dolore optio quia aut. Nobis et ut nisi.');
INSERT INTO `book_reviews` VALUES (27, 12, 4, 1, 'In temporibus molestiae sint nisi voluptas. Laboriosam minus saepe iure quia tenetur et id. Quibusdam minus sunt tempora et nihil quod et.');
INSERT INTO `book_reviews` VALUES (28, 12, 6, 1, 'Esse sunt accusantium hic labore. Est quasi commodi modi error. Tenetur explicabo maxime nobis quibusdam est non. Placeat et quidem deleniti.');
INSERT INTO `book_reviews` VALUES (29, 12, 6, 3, 'In neque repellat vitae unde. Nulla id omnis accusamus quo suscipit et. Aut tempora eos voluptatum neque odio ut. Facilis qui quibusdam rem error ipsam.');
INSERT INTO `book_reviews` VALUES (30, 12, 7, 7, 'Dolor quam voluptatem suscipit rerum porro sit mollitia. Unde dignissimos aut aliquid fuga aut nulla aut.');
INSERT INTO `book_reviews` VALUES (31, 13, 5, 7, 'Laborum praesentium et aliquam omnis quia non. Rerum aut ea dolorum quaerat rerum et voluptatem dolor. Cupiditate alias ex magni illum consequatur quisquam et. Reprehenderit ea et qui quis magni.');
INSERT INTO `book_reviews` VALUES (32, 13, 5, 9, 'A qui iusto qui. Qui magni numquam nostrum. Quos delectus quos rem. Nulla ut in tenetur dolor ut. Nostrum voluptatum omnis vero sed numquam atque explicabo.');
INSERT INTO `book_reviews` VALUES (33, 13, 6, 1, 'Vero maxime officia mollitia. Non voluptas repudiandae asperiores nisi vel vitae. Maiores alias enim voluptatem animi aut quam deserunt. Molestiae omnis impedit dolorum blanditiis.');
INSERT INTO `book_reviews` VALUES (34, 13, 5, 1, 'Alias doloremque ipsum libero odit necessitatibus. Sint voluptatem a non corrupti voluptatum. Repellat nisi ipsa porro sed. Dolor molestiae eos consequatur voluptatem ratione aut.');
INSERT INTO `book_reviews` VALUES (35, 14, 4, 6, 'Ea voluptas et occaecati. Tempora ipsa rerum molestias consequatur aut dolor. Rem molestiae ex dolorem hic qui.');
INSERT INTO `book_reviews` VALUES (36, 14, 7, 1, 'Esse dolor enim corrupti quia. Et rerum dolor debitis quis inventore fuga. Similique enim aut adipisci.');
INSERT INTO `book_reviews` VALUES (37, 14, 4, 8, 'Enim et quos quia facere. Eligendi error dolorem et eaque. Eum quis est vel reprehenderit neque aut voluptatem. Dicta quam odio dolor tempora. Pariatur quia est voluptatibus incidunt nisi.');
INSERT INTO `book_reviews` VALUES (38, 14, 4, 7, 'Sequi saepe velit hic quis. Sunt ut iure est voluptatem. Sint nemo aut doloribus impedit. Architecto magnam eum magni nostrum.');
INSERT INTO `book_reviews` VALUES (39, 15, 8, 3, 'Sit qui aut sapiente molestias voluptatibus ut rerum unde. Non omnis aliquam placeat dignissimos laudantium odit. Est placeat omnis dolorem repellendus natus pariatur sunt.');
INSERT INTO `book_reviews` VALUES (40, 15, 6, 4, 'Voluptas in aut deleniti sed quaerat. Ipsa porro beatae cumque error ut suscipit quis aut. Quia eum dignissimos nisi magnam et beatae. Soluta eius voluptatem aut ut eum.');
INSERT INTO `book_reviews` VALUES (41, 15, 7, 3, 'Eum id autem atque alias sed consequatur ratione. Ea magni odit officia quas maiores. Ipsum distinctio dolorem beatae velit. Consequatur minus consequuntur qui excepturi et quos neque.');
INSERT INTO `book_reviews` VALUES (42, 15, 4, 2, 'Id vel aliquid architecto aut quia ab praesentium. Sit rem facere quas quas quia rerum dolorem. Repudiandae aliquam tempore qui cupiditate dolorum iusto.');
INSERT INTO `book_reviews` VALUES (43, 16, 5, 4, 'Consectetur voluptas autem voluptas. Vel quia vero nihil quibusdam error. Exercitationem id ullam non dolor.');
INSERT INTO `book_reviews` VALUES (44, 16, 7, 1, 'Eaque nesciunt nisi recusandae aut reprehenderit laborum. Rerum laudantium vitae qui unde pariatur. Dolores minus labore pariatur dolorem recusandae.');
INSERT INTO `book_reviews` VALUES (45, 16, 4, 10, 'Quo autem quibusdam et. Quo dolorem facilis non commodi. Corporis accusamus quidem et ut aut. Et aut qui eos ipsam qui.');
INSERT INTO `book_reviews` VALUES (46, 16, 6, 5, 'Odio est consequatur dolorem quis voluptas deleniti. Esse nihil quia velit et non alias. Consequatur ex eius incidunt laboriosam ipsum ipsam. Sit debitis minus et non aut quasi voluptatem.');
INSERT INTO `book_reviews` VALUES (47, 17, 7, 4, 'Officia odio deleniti iusto. Rerum quasi illo nulla velit perferendis excepturi laborum. Possimus placeat ut blanditiis porro eos corporis velit. Consectetur ipsum non laudantium sint sit.');
INSERT INTO `book_reviews` VALUES (48, 17, 4, 6, 'Enim officia necessitatibus consectetur vero. Debitis qui mollitia quae culpa quia. Ullam aliquam qui optio et maxime praesentium. Earum repellat rerum consequatur corporis dolorem ab nam aut.');
INSERT INTO `book_reviews` VALUES (49, 17, 6, 9, 'Sit qui saepe eius autem vitae ea totam. Error sint ad non saepe ipsa fuga et.');
INSERT INTO `book_reviews` VALUES (50, 17, 8, 7, 'Ratione suscipit aut vel corrupti soluta. Quam officiis impedit fuga qui aut. Similique animi ut nihil exercitationem.');
INSERT INTO `book_reviews` VALUES (51, 18, 7, 1, 'Eligendi molestiae rem natus eos aut beatae. Officia qui provident mollitia itaque. Assumenda veritatis est aut eum suscipit qui aspernatur asperiores.');
INSERT INTO `book_reviews` VALUES (52, 18, 4, 9, 'Laboriosam modi consequatur et rem repellat doloribus. Fuga odit qui quia molestiae praesentium voluptas. Labore rerum inventore impedit modi. Ab ea autem possimus ullam molestias.');
INSERT INTO `book_reviews` VALUES (53, 18, 5, 7, 'Temporibus velit minima molestiae quo aut facere ea. Ut possimus beatae alias ad earum. Eaque sit sit qui quia voluptas. Culpa corrupti suscipit dolor id dolorem velit omnis.');
INSERT INTO `book_reviews` VALUES (54, 18, 5, 4, 'Dolor nostrum dignissimos sit non. Neque et atque et modi ea et aut porro. Perferendis doloremque optio quasi aut. Cumque voluptas doloremque maxime enim.');
INSERT INTO `book_reviews` VALUES (55, 19, 8, 5, 'Non optio minima accusamus. Consectetur deserunt voluptatem ut velit pariatur. Ut beatae enim eveniet.');
INSERT INTO `book_reviews` VALUES (56, 19, 6, 10, 'Libero a sunt ullam alias. Assumenda quidem optio ex harum explicabo dolorem ad.');
INSERT INTO `book_reviews` VALUES (57, 19, 5, 5, 'Iste ab eos harum occaecati dolor eum hic suscipit. Qui voluptatem reprehenderit et aut dolores perspiciatis. Quasi ab in omnis dicta eaque esse.');
INSERT INTO `book_reviews` VALUES (58, 19, 4, 7, 'Accusantium dolor ea ea. Vero alias nemo tenetur quae non et nostrum. A magnam voluptas quod asperiores saepe.');
INSERT INTO `book_reviews` VALUES (59, 20, 5, 8, 'Placeat asperiores ipsam facere autem fugiat. Aut velit facere enim alias sit non tempore. Omnis dolores nemo aut et. Dolorem ea suscipit sed aut quia officia est dolor.');
INSERT INTO `book_reviews` VALUES (60, 20, 6, 6, 'At fugiat rerum sed voluptatem. Laudantium beatae ipsam ut doloremque. Aliquam nisi ad quo. Dolor ipsum autem ab exercitationem.');
INSERT INTO `book_reviews` VALUES (61, 20, 7, 4, 'Ducimus labore veritatis autem earum at modi ea. Fugit quibusdam neque rem aut architecto et. Placeat dolore sequi distinctio ut harum. Cumque quia sit aliquid possimus.');
INSERT INTO `book_reviews` VALUES (62, 20, 8, 3, 'Qui earum necessitatibus officiis minus deserunt voluptatem. Et nobis ut explicabo commodi.');
INSERT INTO `book_reviews` VALUES (63, 21, 4, 3, 'Sit sit aspernatur nemo dolore ut laboriosam in beatae. Facilis necessitatibus libero et totam eum incidunt. Ea dolore non ea numquam. Consequatur aliquam ut temporibus itaque.');
INSERT INTO `book_reviews` VALUES (64, 21, 8, 3, 'Quos saepe ipsum ut mollitia et. Recusandae et dolores qui est rem dolore aut eveniet. Doloremque quia atque cum non unde dolorem sit fugiat. Molestiae iste voluptates id tempore dolores.');
INSERT INTO `book_reviews` VALUES (65, 21, 4, 1, 'Suscipit nesciunt velit modi ut vitae. Velit aut incidunt et minima ullam. Non quae quo velit et. Ratione et quaerat ipsa a. Est rerum sit dolor id est ut fuga. Aut vitae fugit fugiat fugit nostrum.');
INSERT INTO `book_reviews` VALUES (66, 21, 8, 7, 'Velit et modi asperiores omnis iure. Iusto dolor incidunt aut aspernatur. Dolorem soluta exercitationem non perferendis dolores quae qui. Sit similique quae odio.');
INSERT INTO `book_reviews` VALUES (67, 22, 5, 5, 'Enim ab ut aut repellat. Rerum velit recusandae magnam qui saepe cupiditate. Assumenda rerum occaecati fugiat tenetur consequuntur aut ipsa. Ratione eaque non veniam sequi inventore officiis iure.');
INSERT INTO `book_reviews` VALUES (68, 22, 4, 3, 'Placeat adipisci architecto distinctio. Occaecati qui et ut impedit et. Dolorem ad magnam ullam sint voluptas recusandae provident. Aut possimus ratione perferendis.');
INSERT INTO `book_reviews` VALUES (69, 22, 6, 8, 'In voluptate fugiat id blanditiis. Quo est quae iusto aut. Facilis quia sapiente cumque et tenetur nihil. Vel ea odio consequatur ut cum laudantium nostrum.');
INSERT INTO `book_reviews` VALUES (70, 22, 5, 6, 'Autem illo delectus molestiae quia. Qui pariatur et aut omnis.');
INSERT INTO `book_reviews` VALUES (71, 23, 7, 10, 'Aperiam magni dolor aut sed reprehenderit. Quis doloremque neque cumque ea non. Qui est error inventore illo velit. Doloremque qui voluptates a voluptatibus.');
INSERT INTO `book_reviews` VALUES (72, 23, 7, 6, 'Est nostrum maxime nostrum est. Minima excepturi ex consequuntur doloribus aut. Et quaerat unde quae nobis rerum id labore. Enim maiores est ut quam.');
INSERT INTO `book_reviews` VALUES (73, 23, 5, 4, 'Aperiam optio debitis et perspiciatis. Delectus accusamus quas autem totam nisi harum inventore. Est ut et omnis non veniam. Voluptatem rem rerum repudiandae ipsum consequuntur velit.');
INSERT INTO `book_reviews` VALUES (74, 23, 6, 1, 'Architecto sit in atque vero qui dicta vel. Voluptatem nesciunt iusto hic sunt velit quia officiis. Ut minima eum sequi id earum ut possimus.');
INSERT INTO `book_reviews` VALUES (75, 24, 6, 2, 'Dignissimos impedit vero quia culpa repudiandae est sed. Quas quia nihil perspiciatis et temporibus quas. Ea voluptatem est minima eligendi impedit.');
INSERT INTO `book_reviews` VALUES (76, 24, 6, 9, 'Officia mollitia qui vel illum. Praesentium eligendi officia nulla similique laborum itaque. Quo facilis accusamus et quia dolorem deserunt.');
INSERT INTO `book_reviews` VALUES (77, 24, 6, 6, 'Quis ut autem iusto. Ipsam in facilis dignissimos quod commodi corporis reprehenderit. Dolor et eos soluta.');
INSERT INTO `book_reviews` VALUES (78, 24, 8, 10, 'Qui ut inventore et dicta sit. Dolor qui laboriosam blanditiis eum mollitia pariatur.');
INSERT INTO `book_reviews` VALUES (79, 25, 4, 3, 'Magnam ea cumque corporis velit. Ea voluptates dolorum nemo iusto vel quis consequatur. Itaque dolor nobis autem sit. Non officiis sed est ex similique enim culpa ullam.');
INSERT INTO `book_reviews` VALUES (80, 25, 5, 8, 'Id id est animi assumenda qui. Consequatur aut quidem vel beatae. Esse ratione consequatur fugiat corrupti qui iure sint. Sunt quasi quo expedita distinctio.');
INSERT INTO `book_reviews` VALUES (81, 25, 6, 6, 'Ut accusantium et ut voluptatem nam. Minus sint architecto dignissimos harum. Facere accusamus voluptatum quo quia. Id nesciunt quae saepe qui excepturi.');
INSERT INTO `book_reviews` VALUES (82, 25, 6, 9, 'Accusamus mollitia voluptatem illo inventore. Voluptatem delectus molestias enim sit. Ex molestiae et consequatur labore sint ad commodi.');
INSERT INTO `book_reviews` VALUES (83, 26, 7, 5, 'Aspernatur expedita hic sint reiciendis odit. Et debitis consequuntur dolorem ad. Sunt perferendis rerum dignissimos illum.');
INSERT INTO `book_reviews` VALUES (84, 26, 6, 8, 'Qui quos nesciunt rerum sed. Quo non voluptatem vel quisquam eveniet ut sit. Accusantium vero officia consequuntur.');
INSERT INTO `book_reviews` VALUES (85, 26, 8, 1, 'Perferendis eos voluptates sed eum aperiam. Consequatur voluptas explicabo aut cupiditate eaque porro et. Sit molestias et vel deleniti repellendus aut sed.');
INSERT INTO `book_reviews` VALUES (86, 26, 4, 7, 'Temporibus aliquam voluptas occaecati consequatur sit quis. Commodi at veritatis nisi porro. Vel et blanditiis voluptate et rerum laborum dignissimos. Aut omnis et quia exercitationem libero qui.');
INSERT INTO `book_reviews` VALUES (87, 27, 8, 7, 'Rerum repudiandae atque illo cum et. Delectus consequatur occaecati rerum odit impedit nisi. Atque ut deserunt sint officia dolorem nesciunt.');
INSERT INTO `book_reviews` VALUES (88, 27, 6, 9, 'Magnam id et maxime delectus ut reiciendis magni. Ullam repellat unde distinctio similique. Qui hic praesentium perferendis ut cumque molestiae modi nostrum. At aliquid atque sit et laudantium ab.');
INSERT INTO `book_reviews` VALUES (89, 27, 6, 4, 'Fuga nulla adipisci natus. Eum ipsum accusamus numquam et. Voluptas neque omnis aperiam soluta pariatur et quibusdam. Modi vero facere ratione sint suscipit quis perferendis consequatur.');
INSERT INTO `book_reviews` VALUES (90, 27, 4, 2, 'Voluptatem voluptas sint reprehenderit cumque. Sed quod quia totam saepe et aut quae. Accusamus voluptas molestias illum dolorum qui atque. Ad ea tempora eaque omnis ut eaque.');
INSERT INTO `book_reviews` VALUES (91, 28, 4, 6, 'Voluptatem voluptas qui autem hic voluptas non. Quibusdam perspiciatis consectetur sint et tempore. Molestias et nesciunt commodi et. Adipisci et ea repellat ut natus aut.');
INSERT INTO `book_reviews` VALUES (92, 28, 6, 4, 'Est inventore saepe aperiam non consequatur officia nemo. Corporis similique voluptatem nam occaecati nam. Odio voluptas quia doloremque quia et vero assumenda et.');
INSERT INTO `book_reviews` VALUES (93, 28, 7, 2, 'Est eos magni minima repellendus voluptate ipsam aut. Et autem magnam quibusdam fuga dolores tempora. Facilis ea hic odit ut.');
INSERT INTO `book_reviews` VALUES (94, 28, 6, 8, 'Eius debitis ut dolorem officia qui et sequi sint. Error ullam molestias et ipsum dolorum. Libero optio necessitatibus soluta sit rerum. Quia velit error eaque eaque.');
INSERT INTO `book_reviews` VALUES (95, 29, 4, 1, 'Corporis ab quia voluptates ut illo voluptas quia. Ipsam numquam velit provident eos. Beatae nihil sunt aut corporis est esse. Voluptate adipisci consequuntur sit praesentium.');
INSERT INTO `book_reviews` VALUES (96, 29, 4, 10, 'Voluptatem necessitatibus possimus placeat rem consequatur aut. Laudantium ipsam velit veritatis magnam officia. Cumque sequi reprehenderit tempora odio voluptatem. Incidunt qui eaque accusantium.');
INSERT INTO `book_reviews` VALUES (97, 29, 4, 5, 'Omnis id adipisci sint sit voluptatem necessitatibus tenetur veritatis. Non natus vitae tempora molestiae maiores. Error occaecati omnis ad aliquam.');
INSERT INTO `book_reviews` VALUES (98, 29, 5, 3, 'Hic placeat dicta magnam ex non porro. Neque ullam neque nesciunt ut in. Fugit est exercitationem qui architecto aspernatur aut.');
INSERT INTO `book_reviews` VALUES (99, 30, 8, 1, 'Perferendis explicabo est id optio consectetur. Rerum vel omnis et perspiciatis quidem iure. Ut illum deleniti voluptas asperiores neque. Qui a sint eum et pariatur illum maiores.');
INSERT INTO `book_reviews` VALUES (100, 30, 7, 7, 'Voluptatem nobis harum totam sunt consequuntur repudiandae. Blanditiis culpa est quos. Pariatur rem quo omnis at. Et animi optio enim dignissimos vel voluptas est. Ex ut iusto ut incidunt non.');
INSERT INTO `book_reviews` VALUES (101, 30, 5, 5, 'Qui voluptatum dolores expedita facere nostrum et doloribus. Sint quos aut debitis reiciendis. Quam deleniti dolorem voluptate ea sapiente et. Labore aut corporis atque aut quia eligendi.');
INSERT INTO `book_reviews` VALUES (102, 30, 8, 9, 'Consequuntur alias est ipsum at non et quia. Dolor autem consectetur qui cum. Consequatur ex dolor autem quas.');
INSERT INTO `book_reviews` VALUES (103, 31, 4, 10, 'Non officia consequuntur culpa. Fugiat enim nesciunt nihil reiciendis. Et nam eligendi est inventore eos facilis et.');
INSERT INTO `book_reviews` VALUES (104, 31, 8, 7, 'Iure velit est non ut amet. Est et ad dolor quo. Illo sed ut pariatur dolores.');
INSERT INTO `book_reviews` VALUES (105, 31, 4, 2, 'Maiores velit officiis tenetur officiis. Voluptas quibusdam eos consequatur iure animi doloribus sunt. Animi omnis ex dolorem qui et labore accusantium.');
INSERT INTO `book_reviews` VALUES (106, 31, 4, 10, 'Culpa et voluptate perspiciatis minus exercitationem. Quae omnis optio consequatur sed impedit. Et quae natus rem nostrum odio sit eaque.');
INSERT INTO `book_reviews` VALUES (107, 32, 4, 2, 'Pariatur qui ex incidunt est autem dolorem non quia. Error inventore aliquid neque officiis qui architecto. Temporibus iste veritatis voluptatum vero est.');
INSERT INTO `book_reviews` VALUES (108, 32, 6, 5, 'Numquam occaecati voluptas est occaecati necessitatibus fugit. Aliquid molestiae nihil quam vero expedita. Dolorum laudantium qui est atque atque possimus. Libero hic quia molestias recusandae.');
INSERT INTO `book_reviews` VALUES (109, 32, 5, 7, 'Qui quidem id facilis eum natus asperiores magnam. Molestiae ut et consequatur qui doloribus at. Eaque iure modi voluptas sint nihil perspiciatis.');
INSERT INTO `book_reviews` VALUES (110, 32, 6, 4, 'Omnis sequi sed nihil excepturi. Excepturi et exercitationem aliquid ratione ipsa. Repellat sed laboriosam iure voluptates molestiae sit.');
INSERT INTO `book_reviews` VALUES (111, 33, 7, 1, 'Consequatur est aliquid dicta explicabo. Sit vel laboriosam quis libero. Praesentium ullam corporis in molestiae corporis minus dolorem tempore. Rerum facere voluptate praesentium eligendi.');
INSERT INTO `book_reviews` VALUES (112, 33, 7, 8, 'Quia numquam iste facere facere dolor quas placeat. Incidunt praesentium modi voluptas autem minima eaque amet. Autem distinctio ut porro ipsam. Voluptatem est debitis est et et dolores magnam.');
INSERT INTO `book_reviews` VALUES (113, 33, 8, 4, 'Deleniti architecto incidunt ratione quia quo. Quod mollitia non aliquid blanditiis. Cumque ipsam iusto non veniam molestiae quam quis blanditiis.');
INSERT INTO `book_reviews` VALUES (114, 33, 6, 5, 'Voluptas et velit consequatur voluptas odit. Sapiente debitis qui officiis. Deserunt sapiente iste ab illo deleniti. Eligendi deleniti natus molestias eum.');
INSERT INTO `book_reviews` VALUES (115, 34, 5, 6, 'Qui quam id et autem esse. Vero a quis ipsam repellendus ut dolore eveniet laborum. Adipisci quos deserunt aut maiores repellendus ad repellat.');
INSERT INTO `book_reviews` VALUES (116, 34, 8, 7, 'Blanditiis non ab et tempora voluptas harum cumque. Ea voluptatibus animi deserunt at harum ut culpa. Distinctio beatae quo distinctio rerum quia qui voluptates.');
INSERT INTO `book_reviews` VALUES (117, 34, 7, 2, 'Ex quis impedit ex voluptatum sit necessitatibus architecto. Repellat molestias dicta impedit et explicabo ipsum. Eveniet ipsa quia sed incidunt cumque facere.');
INSERT INTO `book_reviews` VALUES (118, 34, 8, 1, 'Accusantium modi beatae ullam repudiandae. Necessitatibus minus harum ut in eum. Sunt neque accusantium consequatur dolores.');
INSERT INTO `book_reviews` VALUES (119, 35, 7, 8, 'Consequuntur aut sunt culpa distinctio voluptatum asperiores rerum. Eius et et eius error. Est ipsum vel saepe vitae fugit est. Laborum unde dolorum est ipsa.');
INSERT INTO `book_reviews` VALUES (120, 35, 7, 1, 'Pariatur officia tenetur rerum facere id id hic. Deleniti dolorem maxime itaque aut autem sequi.');
INSERT INTO `book_reviews` VALUES (121, 35, 6, 2, 'Et itaque quo quo qui ut a est. Voluptas et distinctio nesciunt beatae et quaerat iste. Fugit quo totam et omnis. Facilis maiores animi rerum dolor. Esse animi nihil dolorem est dolores.');
INSERT INTO `book_reviews` VALUES (122, 35, 5, 10, 'Consequatur pariatur molestias autem nobis quas omnis. Aut dicta odit fugit ut voluptatibus consectetur aut. Tempore aut quae eligendi qui.');
INSERT INTO `book_reviews` VALUES (123, 36, 6, 8, 'Vero aspernatur nesciunt aut veniam. Dignissimos rem est tempore consectetur blanditiis voluptas. Sed quos voluptatum aut eum.');
INSERT INTO `book_reviews` VALUES (124, 36, 6, 4, 'Excepturi magnam vero enim reprehenderit nihil rerum et. Architecto eos corrupti exercitationem est quia ea praesentium quas. Velit explicabo nihil ut qui.');
INSERT INTO `book_reviews` VALUES (125, 36, 6, 2, 'Mollitia eum alias quia a cumque facere natus. Culpa sit et consequuntur. Perspiciatis tenetur aut laudantium est. Facilis repudiandae culpa at at.');
INSERT INTO `book_reviews` VALUES (126, 36, 7, 4, 'Et temporibus corporis error quia. Qui nesciunt tenetur voluptatem nemo molestiae.');
INSERT INTO `book_reviews` VALUES (127, 37, 6, 2, 'Eum consequatur cupiditate voluptas. Odit similique ex vel quo ut. Qui culpa ut numquam illo incidunt tempora quos qui.');
INSERT INTO `book_reviews` VALUES (128, 37, 7, 8, 'At libero facere error neque necessitatibus consequuntur iusto. Aut recusandae aut asperiores provident veritatis. Ipsam et pariatur modi quam.');
INSERT INTO `book_reviews` VALUES (129, 37, 7, 6, 'Numquam cupiditate ut qui dolorum. Architecto laudantium eius aut non sed. Earum illum dolor nulla. Placeat et saepe ex sapiente omnis.');
INSERT INTO `book_reviews` VALUES (130, 37, 7, 1, 'Ut omnis voluptatem rerum velit in blanditiis. Consequatur consequatur rerum consectetur est quisquam ipsum dolor. Debitis voluptatum ducimus in quo itaque odit.');
INSERT INTO `book_reviews` VALUES (131, 38, 7, 5, 'Et atque sit odio provident ut molestiae. Ratione inventore nostrum omnis exercitationem. Quae eos molestiae enim quae repellat.');
INSERT INTO `book_reviews` VALUES (132, 38, 8, 8, 'Tempora autem pariatur doloribus eveniet provident. Labore qui voluptas sit sint. Repudiandae ullam tenetur aspernatur incidunt numquam. Nulla eos ipsum consequatur sapiente.');
INSERT INTO `book_reviews` VALUES (133, 38, 5, 2, 'Doloremque et reiciendis aut id perspiciatis voluptatum eius. Quia consectetur natus modi dicta facere a atque assumenda. Ipsum nisi minus illum adipisci qui nihil facilis.');
INSERT INTO `book_reviews` VALUES (134, 38, 8, 6, 'Ex modi velit cum laborum. Magni nemo quidem quia unde ea. Harum maxime natus laborum voluptas voluptates.');
INSERT INTO `book_reviews` VALUES (135, 39, 4, 8, 'Consequuntur ut sunt eum explicabo nihil et sunt. Eum consequatur placeat et. Numquam possimus accusamus necessitatibus. Accusantium architecto molestiae voluptas quae amet cum.');
INSERT INTO `book_reviews` VALUES (136, 39, 4, 8, 'Ipsa ipsum et id et quaerat inventore. Voluptas eaque ipsum id ut. Nemo dolorem architecto ut quo quos veniam accusamus.');
INSERT INTO `book_reviews` VALUES (137, 39, 6, 9, 'Quia itaque earum voluptates aut aut. Ut assumenda et beatae sunt maxime. Est veniam eos voluptas sed eos. Nostrum sit minus qui omnis repellendus et quas.');
INSERT INTO `book_reviews` VALUES (138, 39, 6, 9, 'Consequatur voluptas temporibus et beatae dolore asperiores ut. Asperiores saepe neque officia aut excepturi praesentium ad. Vel illum nobis voluptatum sapiente.');
INSERT INTO `book_reviews` VALUES (139, 40, 7, 6, 'Voluptatem corrupti sed ducimus nemo. Maxime cumque qui id labore ad deserunt similique. Culpa id sint ipsum ducimus ipsa ea. Doloremque unde numquam quia error autem eveniet error.');
INSERT INTO `book_reviews` VALUES (140, 40, 8, 3, 'Ratione qui quibusdam laborum dignissimos. Voluptatem sapiente consequatur sunt dolor veniam. Possimus cumque voluptatum in saepe. Et harum nulla similique deserunt sed est est.');
INSERT INTO `book_reviews` VALUES (141, 40, 6, 9, 'Autem aliquam et in assumenda animi quia et magnam. Vero quae placeat similique soluta eveniet.');
INSERT INTO `book_reviews` VALUES (142, 40, 5, 10, 'Voluptatem et voluptatem laudantium ipsam doloribus voluptatibus. Esse ipsam ipsum fugiat ad ratione. Tempore sunt sed et eveniet quae et amet deserunt.');
INSERT INTO `book_reviews` VALUES (143, 41, 8, 4, 'Dolorem voluptatum voluptatem minima voluptate cupiditate et eaque. Accusamus minus quidem eos. Nihil praesentium cum ut optio nobis. Voluptates odio harum ut quo voluptate.');
INSERT INTO `book_reviews` VALUES (144, 41, 6, 7, 'Numquam illum aut cupiditate molestiae quos incidunt nisi. Ea repellat corporis harum illum at quam eum. Quam et itaque soluta iure sunt et dolorum qui. Quisquam dolorem eum est neque neque.');
INSERT INTO `book_reviews` VALUES (145, 41, 6, 6, 'Voluptatem eos voluptatem dolorem eum aut. Reiciendis eaque ut nam sed. Consequuntur quas quasi sit blanditiis numquam.');
INSERT INTO `book_reviews` VALUES (146, 41, 5, 3, 'Quis porro distinctio voluptate sit. Quo accusamus corporis ab rem nesciunt autem suscipit. Voluptatibus dignissimos quae perspiciatis est vel.');
INSERT INTO `book_reviews` VALUES (147, 42, 8, 4, 'Aut velit officia totam qui sed occaecati vero. Ducimus est sed aut laborum dignissimos molestiae occaecati.');
INSERT INTO `book_reviews` VALUES (148, 42, 8, 2, 'Commodi non consequatur facere ab. Aliquam cupiditate voluptatum debitis illo dolores necessitatibus.');
INSERT INTO `book_reviews` VALUES (149, 42, 4, 1, 'Aliquam ex illo atque quia quis ut officiis. Reprehenderit unde dolorem quia suscipit est quibusdam. Dolores ea aut distinctio ut repudiandae atque. Suscipit amet aut quos nostrum dignissimos sit.');
INSERT INTO `book_reviews` VALUES (150, 42, 5, 1, 'Est autem quaerat vel illo veritatis. Nobis laborum culpa enim optio fuga ipsa. Quis delectus ipsum laudantium officia blanditiis culpa. Necessitatibus consequatur quis minima perspiciatis.');
INSERT INTO `book_reviews` VALUES (151, 43, 7, 10, 'Provident aut ullam sed modi quasi. Corporis nulla eius omnis et. Sint repellendus quisquam aut doloremque. In architecto consequatur eos itaque aut optio.');
INSERT INTO `book_reviews` VALUES (152, 43, 5, 4, 'Id consequuntur enim et tempora adipisci et. Quis enim eum dignissimos ut tenetur. Dolor suscipit omnis velit quod.');
INSERT INTO `book_reviews` VALUES (153, 43, 7, 2, 'Porro nostrum enim ab velit et. Ut doloribus laborum animi unde. Omnis alias dicta porro consequatur repellat. Quod ex aperiam doloremque beatae.');
INSERT INTO `book_reviews` VALUES (154, 43, 4, 8, 'Quibusdam velit vel qui consequatur aut veniam architecto. Praesentium ut qui aut nam vel odio aut. Assumenda magnam libero cum maiores. Ipsam est et et.');
INSERT INTO `book_reviews` VALUES (155, 44, 8, 10, 'In animi saepe quia inventore. Quidem voluptatem at nesciunt sit non. Est ut rerum nisi dolore. Vel facere inventore dolor omnis. Incidunt ut id soluta minus est ut veniam et.');
INSERT INTO `book_reviews` VALUES (156, 44, 8, 1, 'Assumenda et atque ex eligendi. Mollitia voluptatem ut nesciunt inventore. Porro minus nesciunt dolorem voluptatem distinctio voluptatem rerum.');
INSERT INTO `book_reviews` VALUES (157, 44, 8, 2, 'Aut magni eligendi ipsam facilis veritatis. Eos consequuntur facilis vero suscipit. Ut eaque pariatur vitae enim illo. Nihil repudiandae minus autem.');
INSERT INTO `book_reviews` VALUES (158, 44, 8, 2, 'Deserunt et qui et modi quo. Ratione consequuntur quia eos aspernatur doloremque qui. Culpa harum pariatur eaque repellendus.');
INSERT INTO `book_reviews` VALUES (159, 45, 5, 2, 'Molestias a tempora harum ut. Quam est repudiandae ab. Exercitationem ut dolorem qui soluta aut architecto consequuntur.');
INSERT INTO `book_reviews` VALUES (160, 45, 5, 9, 'Quasi recusandae ut porro. Voluptas maxime mollitia commodi molestias cumque accusamus quae. Aliquid ipsam esse reiciendis ea.');
INSERT INTO `book_reviews` VALUES (161, 45, 5, 8, 'Cupiditate reprehenderit veritatis quas magnam voluptas. Quam aut sit voluptas omnis quis a occaecati. Accusamus consequatur provident recusandae aliquam sed voluptas eius deleniti.');
INSERT INTO `book_reviews` VALUES (162, 45, 6, 5, 'Odio quia dolores quia et. Unde vel iusto tenetur quae. Quod soluta magni eos est. Perferendis quo ad sed et amet in nihil. Repellat nihil vel est facilis.');
INSERT INTO `book_reviews` VALUES (163, 46, 5, 8, 'Aut facere libero iste possimus quasi. Quo nam vitae sapiente molestiae. Ea a voluptas officia et id. Blanditiis amet distinctio et placeat.');
INSERT INTO `book_reviews` VALUES (164, 46, 8, 8, 'Molestias ea adipisci itaque error dolores hic mollitia. Ullam repellendus beatae delectus minima fugiat earum culpa neque. Alias harum corrupti sit sequi neque est laboriosam.');
INSERT INTO `book_reviews` VALUES (165, 46, 6, 8, 'Dolor perferendis iusto quia veniam sit. Tempore et harum accusamus impedit quidem. Facilis enim nihil numquam quis rerum voluptatem. Animi voluptatem ad in molestiae.');
INSERT INTO `book_reviews` VALUES (166, 46, 7, 7, 'In earum voluptatem deleniti sed a nam necessitatibus. Ut enim quos tempore odit. Enim nesciunt voluptate reiciendis corrupti quibusdam itaque sint ut.');
INSERT INTO `book_reviews` VALUES (167, 47, 5, 10, 'Non vel est est non. Maxime vero itaque nihil alias nesciunt. Et amet quia provident. Harum rerum cumque quia unde aut aut commodi. Non et repellat et ad.');
INSERT INTO `book_reviews` VALUES (168, 47, 5, 1, 'Porro ipsum et velit id. Exercitationem voluptatem numquam accusantium minima id. Autem tempore et est. Quo explicabo tempora cupiditate rerum alias iusto.');
INSERT INTO `book_reviews` VALUES (169, 47, 7, 5, 'Quis aperiam fuga quia magni natus adipisci magni. Tempore cupiditate ea odio voluptatum nostrum dolores quia. Ex deserunt officia dignissimos error doloribus iste. Est nihil adipisci velit ut.');
INSERT INTO `book_reviews` VALUES (170, 47, 6, 1, 'A dolore aperiam quam dolorem ut. Ipsum quod ex qui est non laudantium voluptatem. Consequatur voluptatem ratione consequuntur dicta. Nulla nihil voluptas asperiores et.');
INSERT INTO `book_reviews` VALUES (171, 48, 6, 2, 'Aperiam eius est atque fugiat autem recusandae. Odio perspiciatis at ut modi enim dolor. Voluptatem sint ullam dolores qui rerum.');
INSERT INTO `book_reviews` VALUES (172, 48, 4, 5, 'Aut voluptatibus illum optio corrupti placeat. Ea tenetur occaecati sit exercitationem aut et quasi. Magnam eum laudantium nisi incidunt culpa.');
INSERT INTO `book_reviews` VALUES (173, 48, 4, 10, 'Consequuntur consequatur numquam ut illum vel cupiditate et. Rerum ut nisi ipsum omnis voluptatum vel. Et consequatur sunt voluptas omnis accusantium.');
INSERT INTO `book_reviews` VALUES (174, 48, 6, 6, 'Fuga fugit pariatur sint. Nisi alias quo architecto est. Ut dolorem culpa molestiae ab aut quos tempore. Eum eum cumque est debitis rerum voluptates.');
INSERT INTO `book_reviews` VALUES (175, 49, 7, 8, 'Occaecati expedita enim tempore cumque ad libero repellat dolores. Perferendis quia facere est unde minima vel voluptatem. Quidem a eum voluptas corporis placeat et quia.');
INSERT INTO `book_reviews` VALUES (176, 49, 8, 9, 'Ea eum et soluta rerum libero. Fugiat ipsa quia odio reiciendis et deserunt exercitationem fuga. Iusto recusandae iure iure et. Veritatis quae ipsa quibusdam dicta doloremque sed sunt.');
INSERT INTO `book_reviews` VALUES (177, 49, 6, 4, 'Illo et voluptates rerum quis laudantium. Et amet quidem qui rerum et cupiditate. Eos corporis hic unde minus eos.');
INSERT INTO `book_reviews` VALUES (178, 49, 5, 3, 'Rerum consequatur culpa excepturi dolores voluptates tenetur natus. Molestiae sunt velit molestiae tempore accusamus asperiores eum aut. Deserunt architecto nisi omnis.');
INSERT INTO `book_reviews` VALUES (179, 50, 5, 2, 'Omnis reiciendis voluptas ut nihil aut et eaque. Odit at eum perspiciatis. Temporibus aliquam totam voluptatum exercitationem. Cumque repudiandae distinctio adipisci enim repudiandae occaecati.');
INSERT INTO `book_reviews` VALUES (180, 50, 8, 1, 'Rem totam dolor magni. Fugit officiis temporibus voluptas iste inventore.');
INSERT INTO `book_reviews` VALUES (181, 50, 7, 5, 'A eos placeat omnis consequatur quis. Veniam aspernatur quidem rerum ut. Vel enim officiis voluptas aut aliquid ut excepturi. Repellendus et minus enim sint et asperiores.');
INSERT INTO `book_reviews` VALUES (182, 50, 7, 6, 'Ad rerum voluptas voluptas vitae. Debitis corporis itaque eos quas enim ipsum. Praesentium sit magni itaque quo dolorum ipsum. Et reprehenderit enim ut quis esse dolores.');
INSERT INTO `book_reviews` VALUES (183, 51, 4, 3, 'Maxime vitae et dolor odio optio ut. Possimus dolores autem autem similique officiis. Minima quisquam animi rerum et ea minus earum.');
INSERT INTO `book_reviews` VALUES (184, 51, 5, 10, 'Aspernatur cum animi dignissimos consectetur voluptate ut nisi consequatur. Ullam et molestiae possimus omnis perferendis.');
INSERT INTO `book_reviews` VALUES (185, 51, 4, 4, 'Commodi nobis accusamus exercitationem id ad. Et accusamus assumenda sit mollitia nihil. Autem et quos sequi dolore cumque. Suscipit blanditiis praesentium nemo perspiciatis minus.');
INSERT INTO `book_reviews` VALUES (186, 51, 4, 10, 'Iusto eveniet laudantium occaecati tenetur a. Vel dignissimos et at maxime veniam. Perferendis rerum occaecati voluptatum consequuntur occaecati iusto alias.');

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(12, 2) NOT NULL,
  `published_year` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `books_isbn_unique`(`isbn` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (5, '230192412', 'test', 'etst', 20002.00, 2002);
INSERT INTO `books` VALUES (7, '9783722946306', 'Totam excepturi eum et est aliquam maxime.', 'Hic doloremque quas itaque accusantium unde earum et. Est ut maiores omnis amet est reprehenderit. Nesciunt expedita sit aperiam animi.', 20.00, 1969);
INSERT INTO `books` VALUES (8, '9797289812776', 'Dolores delectus sit illum velit asperiores sed est.', 'Blanditiis laborum mollitia et. Repellat maiores aut odit suscipit dolorem fugiat minima. Velit sit nulla sed veniam. Neque aperiam eum sunt laboriosam qui.', 14.00, 2012);
INSERT INTO `books` VALUES (9, '9798741834350', 'Voluptas laboriosam libero beatae optio eum quis.', 'Earum quos earum placeat modi autem libero. Voluptatibus quam odio quis et amet. Dolor dignissimos rerum placeat doloremque aut perferendis sit. Ut quibusdam alias natus qui.', 21.00, 1955);
INSERT INTO `books` VALUES (10, '9783461881869', 'Voluptates quo et magni sed.', 'Animi nostrum et tenetur. Exercitationem fugiat et atque voluptas delectus. Unde quis ut unde sint. Ipsam quisquam quis rerum qui adipisci fugit deserunt illum.', 22.00, 2019);
INSERT INTO `books` VALUES (11, '9787654183235', 'Reprehenderit et hic blanditiis et odio praesentium omnis.', 'Autem et molestiae aut dignissimos itaque dolorem exercitationem. Et quisquam rerum et est voluptatibus. Omnis aut quam officiis quam voluptatum aliquam. Ab voluptas sunt quos dolores.', 14.00, 2017);
INSERT INTO `books` VALUES (12, '9781263298656', 'Natus modi sint dolor quasi impedit enim sed.', 'Molestiae eius ea delectus sit recusandae quos. Omnis facere dolorem quis esse laborum et culpa. Enim rerum libero repudiandae enim. Ut eligendi nesciunt in ea placeat voluptas neque.', 9.00, 1961);
INSERT INTO `books` VALUES (13, '9794407277233', 'Ut ea ducimus dicta placeat repellat a maiores.', 'Nesciunt natus temporibus qui velit. Et in quaerat voluptatum provident. Eligendi rerum eligendi eos officia fuga et animi. Ab nobis cumque deserunt accusamus tenetur.', 8.00, 2012);
INSERT INTO `books` VALUES (14, '9795804084127', 'Sapiente autem quibusdam aut temporibus vero sit.', 'Consectetur sit in et asperiores voluptates sit. Nemo porro molestiae eligendi doloremque minus dolorum. Non ab quia consectetur.', 13.00, 1924);
INSERT INTO `books` VALUES (15, '9795140262524', 'Incidunt nulla deserunt fuga ut minus.', 'Voluptates eligendi est voluptatem sint esse. Non neque labore repellat sapiente est adipisci eos. Ut aut saepe officia placeat distinctio vero. Beatae molestias quibusdam voluptatem.', 6.00, 1919);
INSERT INTO `books` VALUES (16, '9796053007790', 'Tempora sint ut quisquam corrupti.', 'Voluptatibus aliquid qui beatae laboriosam ab. Iste voluptatem repellendus excepturi voluptas nobis cum et. Quod assumenda et vel quia veniam.', 6.00, 1986);
INSERT INTO `books` VALUES (17, '9783908788645', 'Pariatur harum non qui error.', 'Et rem quo magni consequatur ad. Molestiae rem magnam odit pariatur. Deleniti reprehenderit fugiat rerum et.', 6.00, 2011);
INSERT INTO `books` VALUES (18, '9798377424819', 'Eius ad quidem amet deserunt sit.', 'Perferendis vel rerum qui laboriosam assumenda repellendus possimus. Sunt officia vel nesciunt. Sapiente qui necessitatibus et nihil.', 18.00, 1978);
INSERT INTO `books` VALUES (19, '9787735035149', 'Nesciunt est suscipit incidunt enim distinctio officia accusamus et.', 'Tempore eveniet eveniet et qui. Accusantium nihil unde illo asperiores harum ipsa tempore. Libero ex itaque qui ea dolore. Id nihil molestias praesentium dignissimos amet ullam rerum.', 11.00, 1955);
INSERT INTO `books` VALUES (20, '9788618963627', 'Dolores distinctio cumque laborum modi.', 'Eligendi quia nisi doloremque et in consequatur sit. Quia nostrum autem assumenda. Quia quis sed aut quasi cum quis voluptas. Deserunt nemo animi vitae est.', 24.00, 1932);
INSERT INTO `books` VALUES (21, '9782870046135', 'Cum sed consequatur id quae debitis ut nihil.', 'Laboriosam blanditiis nemo non rerum numquam et. Libero voluptates architecto aliquam numquam tempore vitae. Fugiat itaque quas deleniti.', 23.00, 1968);
INSERT INTO `books` VALUES (22, '9783787953288', 'Et repellendus aspernatur et et.', 'Ab magni sit iste occaecati neque. Blanditiis fugit ut est et iusto. Qui labore aliquam quam suscipit nostrum omnis non.', 16.00, 1931);
INSERT INTO `books` VALUES (23, '9796969744574', 'Sunt earum corrupti maiores eum cumque ut perferendis.', 'Ut sed necessitatibus qui voluptatem expedita illum. Vero illo dolor aut. Delectus dolor cum pariatur doloribus ut dolores. Qui excepturi accusamus illo ut impedit.', 14.00, 1947);
INSERT INTO `books` VALUES (24, '9781869787899', 'Ad voluptatibus nulla fugit dolorem.', 'Totam perspiciatis cum consequatur blanditiis. Assumenda dolor et quos eos et facilis repellendus. Laborum aut placeat accusamus ad eum sequi non.', 21.00, 1983);
INSERT INTO `books` VALUES (25, '9789330870965', 'Illum et fugiat omnis.', 'Omnis enim necessitatibus et laborum natus deleniti non. Doloremque laboriosam adipisci qui omnis ad cupiditate id aliquid. Consequatur ut tempora expedita qui totam possimus modi.', 20.00, 2008);
INSERT INTO `books` VALUES (26, '9782976365550', 'Nemo voluptates consequuntur est error voluptas incidunt.', 'Autem quam consequuntur iusto consectetur consequatur. Modi error id excepturi voluptas maxime. Ut rerum delectus rerum dignissimos corrupti.', 18.00, 1950);
INSERT INTO `books` VALUES (27, '9784562718733', 'Velit nihil eos omnis ad facilis.', 'Eos non dolor sed at. Animi et corporis asperiores architecto enim sit aut. Enim reiciendis sit adipisci molestiae rerum. Ullam necessitatibus aut consequatur illum ad consequatur debitis.', 21.00, 1936);
INSERT INTO `books` VALUES (28, '9795897409098', 'Vel autem eveniet quo aliquid tempore est et aut.', 'Consequatur eveniet labore qui saepe reprehenderit. Itaque nihil ea aliquid. Nam et doloremque adipisci magni aut. Beatae porro quasi ipsa at ducimus.', 20.00, 1903);
INSERT INTO `books` VALUES (29, '9797998322603', 'Dolor nostrum et quasi itaque tempore voluptatem.', 'Cumque rerum consequuntur doloremque et doloribus exercitationem. Fugiat consequatur assumenda quia reprehenderit. Culpa fugiat voluptatibus dolorum dolorem ad. Ut repellat voluptatem facilis.', 21.00, 2013);
INSERT INTO `books` VALUES (30, '9791878055308', 'Illo occaecati quidem est doloremque ad rerum aut.', 'Possimus mollitia eos ut voluptatibus sit illum. Enim dolor sit hic necessitatibus omnis. Maiores facilis et qui ratione consequatur voluptatem velit. Aut nam adipisci et cumque beatae dolore.', 8.00, 1937);
INSERT INTO `books` VALUES (31, '9783680259159', 'Aperiam error eum porro placeat voluptatibus.', 'Occaecati ratione tempore at sed temporibus molestiae quod. Illo in provident incidunt est consequatur.', 17.00, 1921);
INSERT INTO `books` VALUES (32, '9799964072901', 'Exercitationem id nemo molestiae error dolor.', 'Minus amet illo aliquid vel a dicta eaque. Voluptatem blanditiis magnam id beatae corporis accusantium. Sint aliquid voluptatum totam est autem. Labore blanditiis ut hic cupiditate.', 10.00, 1948);
INSERT INTO `books` VALUES (33, '9796564081524', 'Ad mollitia esse veniam.', 'Veritatis facere excepturi omnis et est quidem aperiam. Ad impedit similique sequi. Illo asperiores blanditiis illo laboriosam veniam dolore. Quisquam doloremque possimus qui quia non.', 17.00, 1943);
INSERT INTO `books` VALUES (34, '9787701959011', 'Sint consequatur beatae inventore sed aut fuga voluptas.', 'Laudantium est maiores repellendus veniam. Ea sit animi vero ex eum. Ut id quibusdam consequatur reprehenderit et earum. Placeat soluta voluptate minima doloribus nam consequatur qui similique.', 25.00, 1925);
INSERT INTO `books` VALUES (35, '9792555996136', 'Error nemo qui magni velit quas adipisci ipsum.', 'Voluptatem impedit et consequatur nemo totam. Nemo sit beatae ab ut magnam est vel maiores. Et adipisci qui magnam dolorum voluptas maxime. Hic unde et suscipit et veniam.', 24.00, 1966);
INSERT INTO `books` VALUES (36, '9787092656100', 'Temporibus nostrum quisquam ea quos.', 'Enim illum culpa voluptates. Minima magnam quam molestias est sit. Quaerat quam minus ducimus voluptates.', 12.00, 1910);
INSERT INTO `books` VALUES (37, '9797233241652', 'Adipisci itaque voluptas earum voluptatem ducimus eveniet sunt.', 'Et harum esse ipsa culpa deserunt similique deserunt. Ab omnis modi iure ut earum et.', 5.00, 2014);
INSERT INTO `books` VALUES (38, '9784220702821', 'Omnis eum sed expedita id non.', 'Consequatur rem ratione minima tenetur. Reiciendis quia ea aut sunt. Quidem consequatur facere iusto ex facilis ratione quis est.', 24.00, 1953);
INSERT INTO `books` VALUES (39, '9785872440819', 'Sunt fugiat ullam quia praesentium id.', 'Et labore ut eius veritatis et dolor dolorem. Voluptates distinctio harum voluptatem rem qui eos. Autem vel sunt quaerat debitis. Incidunt id ut totam ad ducimus.', 18.00, 1953);
INSERT INTO `books` VALUES (40, '9792145049303', 'Et aut aut aut officia et fugiat eos.', 'Voluptas et ab provident commodi quae placeat tempore. Optio omnis nemo consequatur voluptatem. Atque quis amet illum quibusdam cupiditate excepturi ad. Hic consequatur suscipit est magni occaecati.', 19.00, 1911);
INSERT INTO `books` VALUES (41, '9791070498156', 'Laudantium laborum doloremque modi optio distinctio nesciunt doloremque.', 'Tempore culpa saepe quia quibusdam. Voluptate qui nostrum dolorem repellendus. Enim quidem maiores natus blanditiis. Beatae maxime qui facere voluptatem omnis impedit asperiores.', 10.00, 1995);
INSERT INTO `books` VALUES (42, '9799187517555', 'Dignissimos aut qui dolor dolorum voluptatibus iure.', 'Animi qui nihil delectus omnis autem itaque id. Eius magni odio cumque sequi minus ab nobis. Sit iusto architecto ut ab qui.', 20.00, 1953);
INSERT INTO `books` VALUES (43, '9794927659625', 'Deleniti aut sit et vitae exercitationem.', 'Et non provident est qui sunt. Ut dicta quos consequuntur beatae quis. Aperiam hic adipisci beatae enim a.', 19.00, 2001);
INSERT INTO `books` VALUES (44, '9788823032484', 'Consequatur incidunt ipsum molestiae omnis assumenda ea.', 'Sed et voluptas officia. Et nihil quia neque quisquam. Id repellat amet quia aliquid eos dolores omnis.', 16.00, 1994);
INSERT INTO `books` VALUES (45, '9781771331401', 'Sunt incidunt suscipit commodi iusto consequuntur aut.', 'Nobis incidunt occaecati nemo similique cupiditate in quidem. Vero nesciunt voluptatum quis quo illo. Cumque eveniet quisquam et eum maiores et qui.', 19.00, 1968);
INSERT INTO `books` VALUES (46, '9790931722157', 'Aut similique distinctio eaque aut reprehenderit iure ullam.', 'Aspernatur qui rerum consequuntur voluptate voluptatem. Dolores fuga aperiam ducimus suscipit vitae ab autem. Vel laudantium soluta quia omnis.', 15.00, 1961);
INSERT INTO `books` VALUES (47, '9795069196900', 'Culpa veniam quod est veritatis provident aut.', 'Modi non aspernatur rerum optio. Quis aut quo sed dolorem cupiditate minus. Et quae ipsa sequi neque labore. Doloribus vel et amet minima labore quae a.', 18.00, 1992);
INSERT INTO `books` VALUES (48, '9782156912352', 'Modi officia ea iure in.', 'Repellendus ab omnis cum ullam. Repellat ex sed nam pariatur blanditiis. Eligendi qui dicta quia optio aperiam.', 10.00, 2005);
INSERT INTO `books` VALUES (49, '9785085105574', 'Iusto hic vitae ipsam eos incidunt.', 'Id quam neque ut quia. Voluptatibus omnis ipsa omnis magnam ad. Saepe et ut facilis harum quia ipsa.', 17.00, 1949);
INSERT INTO `books` VALUES (50, '9784506862317', 'Facilis totam fugiat enim et facere.', 'Doloremque occaecati blanditiis asperiores. Ut molestiae non aut qui rerum. Harum ut modi optio ipsum impedit doloribus. Molestias error eum sed.', 17.00, 1949);
INSERT INTO `books` VALUES (51, '9797597943438', 'Et sed sint non harum dolores qui id nulla.', 'Atque molestiae ut nulla provident. Mollitia sunt error beatae nemo et dolor aut non. Enim distinctio sunt hic alias eveniet rerum. Sunt voluptas perspiciatis sit.', 6.00, 1913);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2021_05_07_122558_create_books_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (3, 'admin', 'admin@gmail.com', NULL, '$2y$10$mJdoj.Nvr1D6y7jd70GuYOlOZQ9BKld2nw2hbOdnATIMcyMWGRp2C', 'Api-key-DzmBY2lpeKsQmDEnCScjmWgZ7nzyFOY3Y1xSrX0CO1RAB80W8a9gRGoyak2uF0oswxz4rlaqBYvKmMr1', 1, NULL, '2024-10-16 08:26:54', '2024-10-16 08:26:54');
INSERT INTO `users` VALUES (4, 'Jayne Goodwin', 'metz.katlyn@example.net', '2024-10-16 09:14:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HMdU35rnGbicsyqky5F0malBjLecWnYliiOgr8FkrcsPcPDINT5fJC2cyERj', 0, 'rpTzlzTiRy', '2024-10-16 09:14:46', '2024-10-16 09:14:46');
INSERT INTO `users` VALUES (5, 'Britney Harris', 'etha.kessler@example.com', '2024-10-16 09:14:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SRrKGJgpPm6sdIOS31BFsjjaeN55wpnEtUrUYKwewUbMd2ZoletD1Xqf9Iv7', 0, 'rpCHCMxxX6', '2024-10-16 09:14:46', '2024-10-16 09:14:46');
INSERT INTO `users` VALUES (6, 'Miss Amira Heller Jr.', 'chowell@example.com', '2024-10-16 09:14:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BfsQhvGYYHxfezE2DE8zYQRV6wSv6T5wzHDDz7kYS2r2JEBjP7MFCkneVusp', 0, 'phWW6UBORw', '2024-10-16 09:14:46', '2024-10-16 09:14:46');
INSERT INTO `users` VALUES (7, 'Mark Bartell', 'fstark@example.com', '2024-10-16 09:14:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bhF9u4Sgwt4gJnpRiq02HLjpS1mkT37LVL5qQZOt4huGfHUGK69dIj7fi4RG', 0, 'DID0K5U9XR', '2024-10-16 09:14:46', '2024-10-16 09:14:46');
INSERT INTO `users` VALUES (8, 'Alexa Renner', 'lola98@example.org', '2024-10-16 09:14:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RpMAgZivJQ1kEtXDtAAUyT00PnAQaE9BT6i0BXEZvWyF7Da3oqgn0npqLpJ8', 0, 'xdmnG7zzoE', '2024-10-16 09:14:46', '2024-10-16 09:14:46');
INSERT INTO `users` VALUES (9, 'Mr. Archibald Pfannerstill', 'treva51@example.org', '2024-10-16 09:14:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RXlv3GRqQcFwNk6pFY2OhwP4ejNjgGCu32kmxzrFvl3sBQkb9Dk0AHi92cur', 1, 'odUvYIvUXs', '2024-10-16 09:14:47', '2024-10-16 09:14:47');

SET FOREIGN_KEY_CHECKS = 1;
