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

 Date: 16/10/2024 18:04:52
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
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authors
-- ----------------------------
INSERT INTO `authors` VALUES (71, 'Deonte Kutch', 'Ankunding');
INSERT INTO `authors` VALUES (72, 'Clarissa Ernser DVM', 'Nicolas');
INSERT INTO `authors` VALUES (73, 'Prof. Torrance Gutmann DDS', 'Schuster');
INSERT INTO `authors` VALUES (74, 'Miss Mona Hammes', 'Haag');
INSERT INTO `authors` VALUES (75, 'Ahmad Hettinger', 'Spencer');
INSERT INTO `authors` VALUES (76, 'Mrs. Thelma Kuhic', 'Tromp');
INSERT INTO `authors` VALUES (77, 'Reina Bechtelar DDS', 'Dach');
INSERT INTO `authors` VALUES (78, 'Prof. Ignatius Quigley IV', 'Kuhic');
INSERT INTO `authors` VALUES (79, 'Camryn Stanton', 'Schulist');
INSERT INTO `authors` VALUES (80, 'Christina Rempel', 'Schmitt');
INSERT INTO `authors` VALUES (81, 'Alfonzo Ullrich', 'Rice');
INSERT INTO `authors` VALUES (82, 'Camren Yost', 'Cassin');
INSERT INTO `authors` VALUES (83, 'Dr. Gayle Breitenberg', 'Upton');
INSERT INTO `authors` VALUES (84, 'Rick Hoeger', 'Beahan');
INSERT INTO `authors` VALUES (85, 'Dayana Torphy DDS', 'Pagac');
INSERT INTO `authors` VALUES (86, 'Prof. Cristobal Howell', 'Effertz');
INSERT INTO `authors` VALUES (87, 'Prof. Moriah Barrows V', 'Gutkowski');
INSERT INTO `authors` VALUES (88, 'Clay Hamill', 'Kuhic');
INSERT INTO `authors` VALUES (89, 'Cora Rice', 'Von');
INSERT INTO `authors` VALUES (90, 'Keely Schamberger', 'Tillman');
INSERT INTO `authors` VALUES (91, 'Rudy Mueller', 'McCullough');
INSERT INTO `authors` VALUES (92, 'Ebony Hettinger', 'Cassin');
INSERT INTO `authors` VALUES (93, 'Dr. Letha Hartmann V', 'Mosciski');
INSERT INTO `authors` VALUES (94, 'Dr. Lauretta Gorczany', 'Carter');
INSERT INTO `authors` VALUES (95, 'Savannah Toy', 'Okuneva');
INSERT INTO `authors` VALUES (96, 'Jeanette Rath I', 'Conroy');
INSERT INTO `authors` VALUES (97, 'Aisha Medhurst', 'Marquardt');
INSERT INTO `authors` VALUES (98, 'Prof. Adah Quigley I', 'Kessler');
INSERT INTO `authors` VALUES (99, 'Adriel Wilkinson III', 'Beahan');
INSERT INTO `authors` VALUES (100, 'Frederique O\'Connell', 'Luettgen');

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
INSERT INTO `book_author` VALUES (106, 71);
INSERT INTO `book_author` VALUES (107, 71);
INSERT INTO `book_author` VALUES (108, 71);
INSERT INTO `book_author` VALUES (109, 72);
INSERT INTO `book_author` VALUES (110, 72);
INSERT INTO `book_author` VALUES (111, 72);
INSERT INTO `book_author` VALUES (112, 73);
INSERT INTO `book_author` VALUES (113, 73);
INSERT INTO `book_author` VALUES (114, 73);
INSERT INTO `book_author` VALUES (115, 74);
INSERT INTO `book_author` VALUES (116, 74);
INSERT INTO `book_author` VALUES (117, 74);
INSERT INTO `book_author` VALUES (118, 75);
INSERT INTO `book_author` VALUES (119, 75);
INSERT INTO `book_author` VALUES (120, 75);
INSERT INTO `book_author` VALUES (121, 76);
INSERT INTO `book_author` VALUES (122, 76);
INSERT INTO `book_author` VALUES (123, 76);
INSERT INTO `book_author` VALUES (124, 77);
INSERT INTO `book_author` VALUES (125, 77);
INSERT INTO `book_author` VALUES (126, 77);
INSERT INTO `book_author` VALUES (127, 78);
INSERT INTO `book_author` VALUES (128, 78);
INSERT INTO `book_author` VALUES (129, 78);
INSERT INTO `book_author` VALUES (130, 79);
INSERT INTO `book_author` VALUES (131, 79);
INSERT INTO `book_author` VALUES (132, 79);
INSERT INTO `book_author` VALUES (133, 80);
INSERT INTO `book_author` VALUES (134, 80);
INSERT INTO `book_author` VALUES (135, 80);
INSERT INTO `book_author` VALUES (136, 81);
INSERT INTO `book_author` VALUES (137, 81);
INSERT INTO `book_author` VALUES (138, 81);
INSERT INTO `book_author` VALUES (139, 82);
INSERT INTO `book_author` VALUES (140, 82);
INSERT INTO `book_author` VALUES (141, 82);
INSERT INTO `book_author` VALUES (142, 83);
INSERT INTO `book_author` VALUES (143, 83);
INSERT INTO `book_author` VALUES (144, 83);
INSERT INTO `book_author` VALUES (145, 84);
INSERT INTO `book_author` VALUES (146, 84);
INSERT INTO `book_author` VALUES (147, 84);
INSERT INTO `book_author` VALUES (148, 85);
INSERT INTO `book_author` VALUES (149, 85);
INSERT INTO `book_author` VALUES (150, 85);
INSERT INTO `book_author` VALUES (151, 71);
INSERT INTO `book_author` VALUES (152, 86);
INSERT INTO `book_author` VALUES (153, 86);
INSERT INTO `book_author` VALUES (154, 86);
INSERT INTO `book_author` VALUES (155, 87);
INSERT INTO `book_author` VALUES (156, 87);
INSERT INTO `book_author` VALUES (157, 87);
INSERT INTO `book_author` VALUES (158, 88);
INSERT INTO `book_author` VALUES (159, 88);
INSERT INTO `book_author` VALUES (160, 88);
INSERT INTO `book_author` VALUES (161, 89);
INSERT INTO `book_author` VALUES (162, 89);
INSERT INTO `book_author` VALUES (163, 89);
INSERT INTO `book_author` VALUES (164, 90);
INSERT INTO `book_author` VALUES (165, 90);
INSERT INTO `book_author` VALUES (166, 90);
INSERT INTO `book_author` VALUES (167, 91);
INSERT INTO `book_author` VALUES (168, 91);
INSERT INTO `book_author` VALUES (169, 91);
INSERT INTO `book_author` VALUES (170, 92);
INSERT INTO `book_author` VALUES (171, 92);
INSERT INTO `book_author` VALUES (172, 92);
INSERT INTO `book_author` VALUES (173, 93);
INSERT INTO `book_author` VALUES (174, 93);
INSERT INTO `book_author` VALUES (175, 93);
INSERT INTO `book_author` VALUES (176, 94);
INSERT INTO `book_author` VALUES (177, 94);
INSERT INTO `book_author` VALUES (178, 94);
INSERT INTO `book_author` VALUES (179, 95);
INSERT INTO `book_author` VALUES (180, 95);
INSERT INTO `book_author` VALUES (181, 95);
INSERT INTO `book_author` VALUES (182, 96);
INSERT INTO `book_author` VALUES (183, 96);
INSERT INTO `book_author` VALUES (184, 96);
INSERT INTO `book_author` VALUES (185, 97);
INSERT INTO `book_author` VALUES (186, 97);
INSERT INTO `book_author` VALUES (187, 97);
INSERT INTO `book_author` VALUES (188, 98);
INSERT INTO `book_author` VALUES (189, 98);
INSERT INTO `book_author` VALUES (190, 98);
INSERT INTO `book_author` VALUES (191, 99);
INSERT INTO `book_author` VALUES (192, 99);
INSERT INTO `book_author` VALUES (193, 99);
INSERT INTO `book_author` VALUES (194, 100);
INSERT INTO `book_author` VALUES (195, 100);
INSERT INTO `book_author` VALUES (196, 100);

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
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_contents
-- ----------------------------
INSERT INTO `book_contents` VALUES (1, 106, 'Earum in.', 'Architecto et et illo velit.', '4');
INSERT INTO `book_contents` VALUES (2, 107, 'Perspiciatis.', 'Voluptas aut dignissimos rerum est dolores culpa.', '46');
INSERT INTO `book_contents` VALUES (3, 108, 'Dolore.', 'Nihil hic nulla facilis mollitia voluptas ut.', '49');
INSERT INTO `book_contents` VALUES (4, 109, 'Et est.', 'Expedita ipsa itaque aut eligendi repellat ducimus.', '4');
INSERT INTO `book_contents` VALUES (5, 110, 'Et provident.', 'Fuga enim adipisci sit.', '100');
INSERT INTO `book_contents` VALUES (6, 111, 'Corporis molestiae.', 'Debitis reprehenderit possimus ut.', '62');
INSERT INTO `book_contents` VALUES (7, 112, 'Vel culpa.', 'Deserunt odio temporibus assumenda vitae consequuntur incidunt.', '1');
INSERT INTO `book_contents` VALUES (8, 113, 'Illo velit.', 'Sint ut deleniti voluptatibus quod.', '94');
INSERT INTO `book_contents` VALUES (9, 114, 'Ad ut.', 'Vero eos molestias quibusdam quis non voluptas.', '47');
INSERT INTO `book_contents` VALUES (10, 115, 'In.', 'Id omnis aut tempore.', '67');
INSERT INTO `book_contents` VALUES (11, 116, 'Culpa dolores.', 'Omnis quasi sit accusantium aut omnis nobis.', '100');
INSERT INTO `book_contents` VALUES (12, 117, 'Occaecati.', 'Consequatur doloremque culpa vel exercitationem.', '30');
INSERT INTO `book_contents` VALUES (13, 118, 'Iusto reprehenderit.', 'Non eius quia enim.', '2');
INSERT INTO `book_contents` VALUES (14, 119, 'Quo.', 'Qui delectus libero aut possimus laudantium ad.', '67');
INSERT INTO `book_contents` VALUES (15, 120, 'Harum aut.', 'Incidunt consequatur qui sunt repellat est qui.', '39');
INSERT INTO `book_contents` VALUES (16, 121, 'Maxime.', 'Itaque eius harum dolor.', '49');
INSERT INTO `book_contents` VALUES (17, 122, 'Aut.', 'Quaerat fugit ea modi in libero.', '65');
INSERT INTO `book_contents` VALUES (18, 123, 'Ut vel.', 'Illum quos repudiandae est.', '54');
INSERT INTO `book_contents` VALUES (19, 124, 'Ipsum quia.', 'Velit qui consectetur officia et aperiam veritatis.', '45');
INSERT INTO `book_contents` VALUES (20, 125, 'Quo.', 'Fugiat consequatur ipsa vero sed sunt.', '91');
INSERT INTO `book_contents` VALUES (21, 126, 'Corrupti.', 'Omnis ut a quos.', '13');
INSERT INTO `book_contents` VALUES (22, 127, 'Officiis repellat.', 'Et autem maiores ut cupiditate ut tempore.', '83');
INSERT INTO `book_contents` VALUES (23, 128, 'Molestiae.', 'Nobis voluptatem est eligendi et.', '53');
INSERT INTO `book_contents` VALUES (24, 129, 'Esse commodi.', 'Ratione qui et et non rerum.', '11');
INSERT INTO `book_contents` VALUES (25, 130, 'Dignissimos.', 'Delectus temporibus fugit sit eaque assumenda illo.', '93');
INSERT INTO `book_contents` VALUES (26, 131, 'Nihil.', 'Natus quisquam eligendi illum non.', '6');
INSERT INTO `book_contents` VALUES (27, 132, 'Ut pariatur.', 'Quia a voluptas qui.', '65');
INSERT INTO `book_contents` VALUES (28, 133, 'Explicabo tempora.', 'Totam eaque quae hic labore eos.', '7');
INSERT INTO `book_contents` VALUES (29, 134, 'Harum.', 'Quo provident voluptatem consequuntur aut quia non.', '65');
INSERT INTO `book_contents` VALUES (30, 135, 'Unde.', 'Ratione et mollitia a voluptatem dicta.', '62');
INSERT INTO `book_contents` VALUES (31, 136, 'Aperiam esse.', 'Voluptate hic quaerat ut alias omnis.', '55');
INSERT INTO `book_contents` VALUES (32, 137, 'Deserunt.', 'Nihil distinctio natus aut rerum officia.', '3');
INSERT INTO `book_contents` VALUES (33, 138, 'Doloremque odit.', 'Est neque debitis sint.', '44');
INSERT INTO `book_contents` VALUES (34, 139, 'Rerum repudiandae.', 'Tempore autem enim voluptatem.', '22');
INSERT INTO `book_contents` VALUES (35, 140, 'Non eos.', 'Voluptatem eius numquam veritatis ut minus.', '79');
INSERT INTO `book_contents` VALUES (36, 141, 'Provident mollitia.', 'Deleniti nihil similique et.', '74');
INSERT INTO `book_contents` VALUES (37, 142, 'Nulla quibusdam.', 'Aut qui et adipisci.', '55');
INSERT INTO `book_contents` VALUES (38, 143, 'Et eos.', 'Iusto rem debitis qui.', '14');
INSERT INTO `book_contents` VALUES (39, 144, 'Autem.', 'Ad quisquam libero nemo et facere sit.', '100');
INSERT INTO `book_contents` VALUES (40, 145, 'Hic.', 'Facere voluptatum porro dolore labore impedit.', '52');
INSERT INTO `book_contents` VALUES (41, 146, 'Error sapiente.', 'Voluptas at occaecati rerum fuga.', '63');
INSERT INTO `book_contents` VALUES (42, 147, 'Vitae.', 'Accusantium non necessitatibus blanditiis perferendis saepe.', '94');
INSERT INTO `book_contents` VALUES (43, 148, 'Eaque.', 'Sint dolores ut ea.', '90');
INSERT INTO `book_contents` VALUES (44, 149, 'In.', 'Sint non sint ducimus nihil.', '15');
INSERT INTO `book_contents` VALUES (45, 150, 'Quia sit.', 'Quos neque magnam accusamus quo voluptas corporis.', '34');
INSERT INTO `book_contents` VALUES (46, 106, 'Quam.', 'Eos error neque error eum dolore itaque.', '20');
INSERT INTO `book_contents` VALUES (47, 107, 'Ducimus.', 'Dolorem placeat dolor eveniet.', '63');
INSERT INTO `book_contents` VALUES (48, 108, 'Minus.', 'Et libero a molestiae ab dolores.', '91');
INSERT INTO `book_contents` VALUES (49, 109, 'Non.', 'Delectus sed dicta ipsa.', '88');
INSERT INTO `book_contents` VALUES (50, 110, 'Soluta qui.', 'Voluptatibus aut molestiae et voluptatibus similique ut.', '89');
INSERT INTO `book_contents` VALUES (51, 111, 'Quis voluptas.', 'Ut et quis magni libero velit.', '56');
INSERT INTO `book_contents` VALUES (52, 112, 'Et mollitia.', 'Perspiciatis impedit laborum soluta a fugit.', '50');
INSERT INTO `book_contents` VALUES (53, 113, 'Quia.', 'Repellat molestias architecto sit et tenetur.', '61');
INSERT INTO `book_contents` VALUES (54, 114, 'Sequi dolores.', 'Voluptatum repellendus et deserunt natus.', '16');
INSERT INTO `book_contents` VALUES (55, 115, 'Est minima.', 'Velit quo nobis eveniet rem provident quas.', '92');
INSERT INTO `book_contents` VALUES (56, 116, 'Quis.', 'Aut dolor et dolor quo.', '91');
INSERT INTO `book_contents` VALUES (57, 117, 'Quasi.', 'Id minima laboriosam quis et.', '99');
INSERT INTO `book_contents` VALUES (58, 118, 'Ex.', 'Sunt quo amet omnis adipisci odio qui.', '13');
INSERT INTO `book_contents` VALUES (59, 119, 'Sit repellendus.', 'Id est necessitatibus amet.', '9');
INSERT INTO `book_contents` VALUES (60, 120, 'Hic.', 'Accusantium iusto placeat tenetur.', '22');
INSERT INTO `book_contents` VALUES (61, 121, 'Et.', 'Consequatur reprehenderit in saepe nulla aut.', '2');
INSERT INTO `book_contents` VALUES (62, 122, 'Nisi.', 'Est suscipit inventore modi et molestiae labore.', '52');
INSERT INTO `book_contents` VALUES (63, 123, 'Sapiente molestiae.', 'Dolor tempore in cum facere qui officiis.', '2');
INSERT INTO `book_contents` VALUES (64, 124, 'Eos.', 'Dolorum sapiente consequuntur neque.', '75');
INSERT INTO `book_contents` VALUES (65, 125, 'A veniam.', 'Fugit incidunt ipsam ut officia.', '4');
INSERT INTO `book_contents` VALUES (66, 126, 'Magnam porro.', 'Et sint laboriosam qui maxime.', '100');
INSERT INTO `book_contents` VALUES (67, 127, 'Magnam.', 'Ut pariatur adipisci praesentium sed illum.', '92');
INSERT INTO `book_contents` VALUES (68, 128, 'Aspernatur id.', 'Temporibus quis qui et.', '67');
INSERT INTO `book_contents` VALUES (69, 129, 'Sit.', 'Fugit reprehenderit est illo.', '64');
INSERT INTO `book_contents` VALUES (70, 130, 'Consequatur aut.', 'Aut aut quia itaque hic provident voluptate.', '2');
INSERT INTO `book_contents` VALUES (71, 131, 'Ipsa aut.', 'Molestiae non velit dolor velit provident est.', '41');
INSERT INTO `book_contents` VALUES (72, 132, 'Nostrum aspernatur.', 'Illum excepturi aperiam repellat.', '91');
INSERT INTO `book_contents` VALUES (73, 133, 'Soluta.', 'Deleniti nesciunt molestiae et in culpa.', '6');
INSERT INTO `book_contents` VALUES (74, 134, 'In et.', 'Quisquam corrupti dolorum reiciendis.', '32');
INSERT INTO `book_contents` VALUES (75, 135, 'Suscipit.', 'Voluptatem consequatur autem ut quae qui.', '11');
INSERT INTO `book_contents` VALUES (76, 136, 'A qui.', 'Sit ut omnis iste est eaque illum.', '82');
INSERT INTO `book_contents` VALUES (77, 137, 'Nihil.', 'Non et nostrum aperiam.', '46');
INSERT INTO `book_contents` VALUES (78, 138, 'Adipisci temporibus.', 'Vel architecto iure minima qui.', '55');
INSERT INTO `book_contents` VALUES (79, 139, 'Tempore.', 'Recusandae veniam non impedit.', '42');
INSERT INTO `book_contents` VALUES (80, 140, 'Id officiis.', 'Id debitis fugit quo est esse totam.', '8');
INSERT INTO `book_contents` VALUES (81, 141, 'Consectetur enim.', 'Aut qui molestias omnis sed et.', '21');
INSERT INTO `book_contents` VALUES (82, 142, 'Qui.', 'Aperiam quos molestiae distinctio eaque doloremque odio.', '21');
INSERT INTO `book_contents` VALUES (83, 143, 'Quia voluptatem.', 'Minus omnis sed fugit atque soluta explicabo.', '40');
INSERT INTO `book_contents` VALUES (84, 144, 'Est ratione.', 'Illum id deserunt cumque.', '34');
INSERT INTO `book_contents` VALUES (85, 145, 'Et.', 'Ex quam quisquam est nobis ea magnam autem.', '37');
INSERT INTO `book_contents` VALUES (86, 146, 'Incidunt.', 'Repellat voluptas porro ut.', '57');
INSERT INTO `book_contents` VALUES (87, 147, 'Soluta modi.', 'Dolores mollitia alias quos non.', '77');
INSERT INTO `book_contents` VALUES (88, 148, 'Ea.', 'Nesciunt ex placeat et et.', '49');
INSERT INTO `book_contents` VALUES (89, 149, 'Sed vel.', 'Ratione est laborum et totam.', '33');
INSERT INTO `book_contents` VALUES (90, 150, 'Laborum.', 'Optio animi omnis dolore.', '84');
INSERT INTO `book_contents` VALUES (91, 151, 'Quas.', 'Et dolor quia aut omnis ut.', '51');
INSERT INTO `book_contents` VALUES (92, 152, 'Et.', 'Dicta veritatis omnis qui soluta repudiandae beatae.', '32');
INSERT INTO `book_contents` VALUES (93, 153, 'Sint.', 'Et alias consequatur expedita.', '94');
INSERT INTO `book_contents` VALUES (94, 154, 'Fugit quia.', 'Ut molestiae voluptatem similique iure.', '40');
INSERT INTO `book_contents` VALUES (95, 155, 'Ut.', 'Consequuntur et dolores rerum dignissimos.', '87');
INSERT INTO `book_contents` VALUES (96, 156, 'Enim.', 'Corporis odit necessitatibus quia rerum nisi.', '75');
INSERT INTO `book_contents` VALUES (97, 157, 'Aut.', 'Est modi recusandae voluptatem velit libero dolores.', '90');
INSERT INTO `book_contents` VALUES (98, 158, 'Architecto fugiat.', 'Culpa maxime rerum asperiores delectus.', '25');
INSERT INTO `book_contents` VALUES (99, 159, 'Quidem sapiente.', 'Sint consequuntur qui ad aliquid.', '79');
INSERT INTO `book_contents` VALUES (100, 160, 'Earum.', 'Repudiandae et alias ut quas.', '84');
INSERT INTO `book_contents` VALUES (101, 161, 'Et.', 'Est amet sit quam ut consectetur iusto.', '65');
INSERT INTO `book_contents` VALUES (102, 162, 'Sit mollitia.', 'Et consequatur et nulla quisquam earum quidem consequatur.', '69');
INSERT INTO `book_contents` VALUES (103, 163, 'Praesentium porro.', 'Fugit qui voluptas maiores repudiandae maiores et.', '5');
INSERT INTO `book_contents` VALUES (104, 164, 'Ut porro.', 'Velit sit blanditiis incidunt pariatur.', '86');
INSERT INTO `book_contents` VALUES (105, 165, 'Doloribus sed.', 'Quia voluptatem dolorum facilis molestiae qui.', '46');
INSERT INTO `book_contents` VALUES (106, 166, 'Nostrum.', 'Earum nulla vitae voluptates sit quia.', '10');
INSERT INTO `book_contents` VALUES (107, 167, 'Culpa.', 'Eos qui voluptas et.', '4');
INSERT INTO `book_contents` VALUES (108, 168, 'Non.', 'Quis asperiores cupiditate minus quibusdam.', '35');
INSERT INTO `book_contents` VALUES (109, 169, 'Quo tempore.', 'Voluptatibus amet molestias et voluptas.', '61');
INSERT INTO `book_contents` VALUES (110, 170, 'Iure fuga.', 'Labore est cum nihil deserunt eum.', '15');
INSERT INTO `book_contents` VALUES (111, 171, 'Aut tempora.', 'Facilis a maxime magni et.', '38');
INSERT INTO `book_contents` VALUES (112, 172, 'Rerum.', 'Similique cum dolores sit nostrum.', '2');
INSERT INTO `book_contents` VALUES (113, 173, 'Fugit.', 'Sunt sit dolores ex quos.', '68');
INSERT INTO `book_contents` VALUES (114, 174, 'Inventore.', 'Dolorum dolor sit minima ut asperiores.', '91');
INSERT INTO `book_contents` VALUES (115, 175, 'Fugiat.', 'Quod nostrum fugit incidunt provident sit.', '70');
INSERT INTO `book_contents` VALUES (116, 176, 'Reprehenderit consequatur.', 'Sed molestiae dolor odit doloribus dignissimos.', '91');
INSERT INTO `book_contents` VALUES (117, 177, 'Ea.', 'Nam assumenda dignissimos eos qui nobis.', '40');
INSERT INTO `book_contents` VALUES (118, 178, 'Odio.', 'Et numquam et nisi.', '61');
INSERT INTO `book_contents` VALUES (119, 179, 'Fugiat est.', 'Quis consequatur est assumenda voluptatum voluptatem.', '61');
INSERT INTO `book_contents` VALUES (120, 180, 'Est rerum.', 'Explicabo possimus accusamus corporis error molestiae omnis.', '34');
INSERT INTO `book_contents` VALUES (121, 181, 'Doloremque repellendus.', 'Odio et ad non sit voluptatem possimus.', '80');
INSERT INTO `book_contents` VALUES (122, 182, 'Nihil quis.', 'Vero vero fugiat ut numquam aut cupiditate.', '57');
INSERT INTO `book_contents` VALUES (123, 183, 'Quae.', 'Eum et qui qui.', '46');
INSERT INTO `book_contents` VALUES (124, 184, 'Doloremque autem.', 'Dolores qui sed consequatur necessitatibus.', '1');
INSERT INTO `book_contents` VALUES (125, 185, 'Id quasi.', 'Et repellat beatae explicabo voluptas debitis.', '83');
INSERT INTO `book_contents` VALUES (126, 186, 'Voluptates dolores.', 'Provident est adipisci blanditiis nisi molestiae error.', '95');
INSERT INTO `book_contents` VALUES (127, 187, 'Ut.', 'Repudiandae et totam quasi maxime eligendi.', '61');
INSERT INTO `book_contents` VALUES (128, 188, 'Dolorem rerum.', 'Ipsum modi iste tempora nisi.', '28');
INSERT INTO `book_contents` VALUES (129, 189, 'Ullam.', 'Officiis necessitatibus quas tempora cum tempore.', '22');
INSERT INTO `book_contents` VALUES (130, 190, 'Veritatis doloribus.', 'Adipisci dolorum placeat doloribus.', '24');
INSERT INTO `book_contents` VALUES (131, 191, 'Minus.', 'Rerum qui soluta repellat eos doloribus sed.', '58');
INSERT INTO `book_contents` VALUES (132, 192, 'Dolorem.', 'Inventore nisi a ab nihil placeat animi reiciendis.', '44');
INSERT INTO `book_contents` VALUES (133, 193, 'Et.', 'Consequatur quia ut exercitationem nostrum iste.', '91');
INSERT INTO `book_contents` VALUES (134, 194, 'Aut.', 'Nesciunt voluptates in non aperiam ratione aspernatur.', '88');
INSERT INTO `book_contents` VALUES (135, 195, 'Qui laboriosam.', 'Eaque ipsa et odio.', '29');
INSERT INTO `book_contents` VALUES (136, 196, 'Ad ipsum.', 'Cumque ex cupiditate fugiat rem alias quisquam.', '32');

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
) ENGINE = InnoDB AUTO_INCREMENT = 580 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_reviews
-- ----------------------------
INSERT INTO `book_reviews` VALUES (36, 106, 75, 1, 'Sunt voluptate aut amet illum nihil excepturi asperiores. Modi recusandae facilis nisi aut. Praesentium et dignissimos quo sit et neque est. Reiciendis quam nobis optio odit vero.');
INSERT INTO `book_reviews` VALUES (37, 106, 76, 2, 'Rerum deleniti totam dolorem eius nihil aut quasi. Esse illum repellendus recusandae laboriosam sint ea. Dolores fuga dolorum dolorum ut est non.');
INSERT INTO `book_reviews` VALUES (38, 106, 76, 5, 'Qui vero aut sed ut dicta voluptatem neque. Corporis non sit eius accusamus veniam dolore. Veritatis eum dolor dolores ipsam tempora.');
INSERT INTO `book_reviews` VALUES (39, 106, 76, 7, 'Vitae maiores illum quo est nostrum sunt. Voluptatem unde ut et est rerum qui. Illum dignissimos repudiandae incidunt ducimus iure repellendus.');
INSERT INTO `book_reviews` VALUES (40, 107, 76, 7, 'Commodi non sit consequuntur voluptas harum dolor. Quam non sed itaque. Dolorem enim fugiat ab ducimus consequatur aliquam laborum.');
INSERT INTO `book_reviews` VALUES (41, 107, 77, 9, 'Qui est labore autem eligendi laboriosam velit. Ad itaque accusantium modi omnis voluptas sit voluptatem. Numquam eaque et assumenda ducimus saepe aut voluptatibus.');
INSERT INTO `book_reviews` VALUES (42, 107, 77, 10, 'Modi atque sit nemo ducimus dolorem dolores. Perferendis culpa qui unde recusandae explicabo rerum. Perspiciatis minima molestiae est suscipit saepe eligendi excepturi.');
INSERT INTO `book_reviews` VALUES (43, 107, 78, 1, 'Ad velit sapiente fugiat sint doloremque deserunt ut voluptatibus. Sint molestiae consectetur sunt et dolor facilis non. Sunt ea id minima doloremque non perspiciatis ut amet.');
INSERT INTO `book_reviews` VALUES (44, 108, 76, 2, 'Dolorem repellendus omnis delectus consequatur tempora. Doloremque deserunt et voluptatibus molestiae voluptas architecto laboriosam.');
INSERT INTO `book_reviews` VALUES (45, 108, 79, 7, 'Consectetur adipisci neque quis dicta. Nulla praesentium non esse fugiat inventore accusamus sed. Veniam consequatur adipisci possimus ex.');
INSERT INTO `book_reviews` VALUES (46, 108, 77, 2, 'Minima enim consequatur provident eos placeat qui magni. Repudiandae in quasi enim facere. Repellendus sint quae illo eos odit soluta velit.');
INSERT INTO `book_reviews` VALUES (47, 108, 77, 1, 'Et consequatur corporis nisi. Optio molestias et non velit. Totam inventore vitae ad et repudiandae ut. Corrupti rerum quaerat voluptatem est nisi.');
INSERT INTO `book_reviews` VALUES (48, 109, 77, 4, 'Ut facere officiis aliquam nesciunt dicta sit. Quaerat sit quos possimus magnam sequi qui.');
INSERT INTO `book_reviews` VALUES (49, 109, 76, 3, 'Facere architecto vitae quas beatae ducimus. Et vero qui at harum saepe aperiam. Doloribus voluptate ea quis esse vitae.');
INSERT INTO `book_reviews` VALUES (50, 109, 78, 7, 'Atque laboriosam enim omnis officiis. Quia occaecati dolorum recusandae voluptatem. Et quia quasi temporibus culpa dolores vero.');
INSERT INTO `book_reviews` VALUES (51, 109, 76, 3, 'Nihil voluptas omnis consequatur omnis ex cum. Officiis quod aut dolorem. Qui autem nihil quia vero. Enim ut aut rem.');
INSERT INTO `book_reviews` VALUES (52, 110, 79, 1, 'Eius non eum excepturi dolor. Soluta consequatur et itaque ut. Nostrum porro hic quos eum voluptas ut. Consequatur iste vel labore dolorum consequuntur.');
INSERT INTO `book_reviews` VALUES (53, 110, 78, 10, 'Sed dolorem ea dignissimos ut consequatur magnam rerum. Aut nam ullam quia delectus est in deleniti rerum. Facere doloribus enim vitae ut eum. Animi aut suscipit nihil.');
INSERT INTO `book_reviews` VALUES (54, 110, 75, 4, 'Doloremque sed quibusdam quis cupiditate. Modi dolores voluptatem voluptatum. Quia et quia tenetur qui quis dolorem consequatur quaerat.');
INSERT INTO `book_reviews` VALUES (55, 110, 78, 3, 'Culpa magni possimus fuga autem consectetur. Sit enim voluptatibus qui ut. Ullam nobis voluptatibus fugiat asperiores quia dolorem.');
INSERT INTO `book_reviews` VALUES (56, 111, 75, 7, 'Fugit consequuntur ut et sequi necessitatibus sint. Vel et ad aut unde sed sint vel. Ex dolorem non consequatur sed mollitia minima ut. Et perferendis debitis aliquid molestiae id et.');
INSERT INTO `book_reviews` VALUES (57, 111, 79, 4, 'Quas ullam ut sed reprehenderit. Est accusantium omnis sunt omnis id quia temporibus. Consequatur dolores nemo omnis qui voluptatem. Exercitationem iusto doloremque facilis.');
INSERT INTO `book_reviews` VALUES (58, 111, 76, 3, 'Impedit quis quas ipsum repellendus consequatur. Vel excepturi et eius quia ad porro delectus non. Quaerat dolorem reprehenderit corporis exercitationem culpa.');
INSERT INTO `book_reviews` VALUES (59, 111, 79, 8, 'Similique atque nam vitae rem. Natus sunt tempora quo modi quas exercitationem. Ut corporis illo corrupti animi. Occaecati similique id commodi ipsam repudiandae voluptas eligendi.');
INSERT INTO `book_reviews` VALUES (60, 112, 79, 3, 'Rerum laboriosam nesciunt et aut. Delectus facilis ipsa nulla recusandae illo consequatur. Alias sit perspiciatis nobis qui non. Quis aut blanditiis totam aut. Corrupti et optio accusamus est.');
INSERT INTO `book_reviews` VALUES (61, 112, 79, 1, 'Occaecati ut nihil et ut laudantium eos. Aliquid non quia aliquam amet nisi. Eum et cumque ipsam fuga.');
INSERT INTO `book_reviews` VALUES (62, 112, 79, 7, 'Consequatur sit esse iure. Voluptates temporibus praesentium voluptatibus. Molestiae beatae enim sit eos ducimus iure. Ipsa qui commodi in.');
INSERT INTO `book_reviews` VALUES (63, 112, 75, 5, 'Ipsa sed quasi enim nihil porro maxime. Eum neque eos sed aperiam corporis aperiam facere. Totam adipisci incidunt ut aperiam provident totam asperiores.');
INSERT INTO `book_reviews` VALUES (64, 113, 76, 7, 'Officiis adipisci unde aut accusamus iusto. Tenetur ducimus similique quibusdam aut ut sed. Voluptate aliquid sint atque saepe facere blanditiis.');
INSERT INTO `book_reviews` VALUES (65, 113, 78, 10, 'Odio asperiores fuga nihil soluta. Fuga quia unde incidunt sed voluptatum tempore ad. Numquam architecto quod exercitationem officiis. Nulla quia repudiandae vel sed labore.');
INSERT INTO `book_reviews` VALUES (66, 113, 79, 4, 'Quis quis molestiae ad atque qui cumque. Laborum tempora aliquid asperiores aut nostrum. Nulla possimus optio in facere modi. Expedita beatae velit maxime nesciunt eveniet nam quis.');
INSERT INTO `book_reviews` VALUES (67, 113, 75, 3, 'Beatae sint nihil consequatur. Sapiente dolore sequi tempore eos. Eius ducimus dolorem fugit magnam velit vel.');
INSERT INTO `book_reviews` VALUES (68, 114, 78, 9, 'Facilis commodi sit fugiat deleniti rerum iusto non eum. Nisi voluptates occaecati pariatur explicabo dolor. Iusto accusamus vel quia eius atque corrupti.');
INSERT INTO `book_reviews` VALUES (69, 114, 76, 8, 'Dolores corrupti voluptatum nemo doloribus id. Reprehenderit maiores earum alias animi. Culpa quasi voluptatum at quo rem ut ut.');
INSERT INTO `book_reviews` VALUES (70, 114, 77, 9, 'Reprehenderit voluptas dolorum delectus vel. Tempora sit repellat id eum ad hic quo harum. Laboriosam incidunt iusto ut debitis quaerat sequi distinctio. Eum in ea voluptates sunt aut id rerum.');
INSERT INTO `book_reviews` VALUES (71, 114, 77, 5, 'Dolorem nisi veritatis dolor illum. Nam quas quod voluptatem qui voluptatem qui eum. Quia esse rem repellendus voluptate in.');
INSERT INTO `book_reviews` VALUES (72, 115, 78, 2, 'Vitae et dolor tempora repellendus corrupti. Beatae necessitatibus odio tempore quibusdam. Eum iusto cumque id id.');
INSERT INTO `book_reviews` VALUES (73, 115, 78, 9, 'Et ut enim sunt nihil. Optio possimus veniam nam eaque est.');
INSERT INTO `book_reviews` VALUES (74, 115, 79, 4, 'Consequatur minus autem maiores. Odio reiciendis beatae quidem suscipit nihil excepturi. Provident autem numquam fugit ut velit est. Ea et odit dolores repudiandae dolorum.');
INSERT INTO `book_reviews` VALUES (75, 115, 75, 8, 'Quas voluptatem quia consequatur ullam repellendus sunt. Omnis perspiciatis et ipsam molestiae eos voluptate quos. Ab rerum omnis ex sit corrupti.');
INSERT INTO `book_reviews` VALUES (76, 116, 77, 2, 'Nihil qui quia est occaecati. Dolores in corporis exercitationem accusamus quia. Ex et minus adipisci. Qui ex cupiditate beatae ratione labore et. Perferendis rem a sed deleniti.');
INSERT INTO `book_reviews` VALUES (77, 116, 78, 3, 'Consectetur quidem adipisci recusandae. Molestiae molestiae nihil in saepe. Aspernatur alias id earum doloremque. Nulla qui et expedita molestiae minima molestiae.');
INSERT INTO `book_reviews` VALUES (78, 116, 76, 6, 'Quis perspiciatis consectetur ex nam exercitationem omnis. Nulla unde ducimus deleniti voluptates. Quos vel delectus molestiae ut corrupti praesentium voluptates. Sed et et ut numquam ut.');
INSERT INTO `book_reviews` VALUES (79, 116, 79, 2, 'Doloribus atque autem unde. Aut debitis quibusdam aperiam aliquid quia quibusdam. Harum voluptates molestiae est dolor illo esse. Ut ex sed natus et doloremque nisi.');
INSERT INTO `book_reviews` VALUES (80, 117, 79, 5, 'Eum saepe iste velit. Odit fugiat alias sed. Modi in sed eum iste. Dolores eum omnis vitae expedita voluptatem.');
INSERT INTO `book_reviews` VALUES (81, 117, 76, 5, 'Quia aperiam eaque qui aut repudiandae consequatur maxime. Quod et dolores impedit distinctio voluptas. Odit eveniet iure quis vel sed praesentium. Amet cumque sed quam nihil molestiae qui.');
INSERT INTO `book_reviews` VALUES (82, 117, 75, 1, 'At quidem laborum rerum nostrum maxime. Enim debitis ut corrupti similique cumque tempora pariatur. Ut placeat quis omnis consectetur molestiae labore id.');
INSERT INTO `book_reviews` VALUES (83, 117, 78, 4, 'Nulla quia tenetur cupiditate. Similique consequatur corporis labore. Sunt aut eius corrupti est veritatis vero.');
INSERT INTO `book_reviews` VALUES (84, 118, 75, 4, 'Aut magnam repellendus sint iure cumque dolorem voluptas aspernatur. Voluptatem atque beatae beatae magnam. Ducimus quod vitae aut quia.');
INSERT INTO `book_reviews` VALUES (85, 118, 79, 7, 'Molestiae in consequatur est ratione ut numquam pariatur. Et officia accusamus non nihil consequuntur perferendis omnis sint. Doloremque iusto ad temporibus deleniti sed qui.');
INSERT INTO `book_reviews` VALUES (86, 118, 77, 5, 'Cupiditate rerum enim quis dolor in quis vero natus. Quae exercitationem velit ad molestiae. Vel debitis porro est amet.');
INSERT INTO `book_reviews` VALUES (87, 118, 77, 7, 'Voluptatem est esse est cum. Natus et occaecati in id quia. Pariatur accusamus dicta cumque voluptatibus et perspiciatis. Qui eveniet quo iure sint rerum possimus.');
INSERT INTO `book_reviews` VALUES (88, 119, 78, 10, 'Nostrum distinctio ea minus aliquam beatae earum. Aut nobis consequatur deserunt vitae voluptatibus voluptatem. Sed aliquam quo sed rerum tempore voluptatem vitae illum.');
INSERT INTO `book_reviews` VALUES (89, 119, 79, 7, 'Et quo dolorum velit ad. Magni ut qui et explicabo earum illo porro. Dolorem adipisci est quidem officiis et soluta ut et.');
INSERT INTO `book_reviews` VALUES (90, 119, 78, 10, 'Ut reprehenderit natus architecto ut provident voluptatibus similique. Qui consectetur numquam repudiandae facilis laboriosam quia non aut. Asperiores incidunt non rerum voluptates reprehenderit.');
INSERT INTO `book_reviews` VALUES (91, 119, 79, 1, 'Culpa sapiente placeat quam numquam accusantium soluta. Iusto eum optio iste. Ea id quia sunt officia optio dolore corrupti quam.');
INSERT INTO `book_reviews` VALUES (92, 120, 76, 3, 'Eum quia laudantium corrupti est. Distinctio incidunt velit exercitationem. Est velit est magni maxime neque est.');
INSERT INTO `book_reviews` VALUES (93, 120, 76, 8, 'Numquam commodi id et iste nihil. Necessitatibus sit quo ipsum autem facilis. Voluptatem qui explicabo fugit nostrum possimus. Ut accusamus harum tempora aut aut excepturi dolore eligendi.');
INSERT INTO `book_reviews` VALUES (94, 120, 75, 10, 'Non quis rerum facere delectus facere. Sit reiciendis quasi non et quam eligendi.');
INSERT INTO `book_reviews` VALUES (95, 120, 78, 2, 'Debitis nesciunt et et est aspernatur praesentium saepe. Laborum dolor consequatur blanditiis autem. Explicabo animi et unde quibusdam.');
INSERT INTO `book_reviews` VALUES (96, 121, 78, 6, 'Et animi officia optio dolorum veritatis quis recusandae. Molestias pariatur consequatur exercitationem est voluptatum aut id. Qui repellat velit consequatur necessitatibus animi voluptate molestiae.');
INSERT INTO `book_reviews` VALUES (97, 121, 77, 8, 'Est nobis est qui ex suscipit quasi quidem facere. Natus nam aliquid tempora est qui ut corporis. Similique nobis neque non omnis ratione est. Non voluptatem est ut voluptatem iusto officia.');
INSERT INTO `book_reviews` VALUES (98, 121, 78, 8, 'Molestias consectetur optio voluptatibus sed odit ducimus tenetur. Nisi labore accusamus earum expedita et itaque. Ad laudantium magnam cum aliquam. Et veniam vero aut ut.');
INSERT INTO `book_reviews` VALUES (99, 121, 78, 7, 'Vitae ipsam nemo sint quam in. Earum et est minus tempore aut quae aut. Id maiores et nesciunt nemo qui. Sunt vel consequatur voluptas. Dolorem eum qui sit velit sed praesentium.');
INSERT INTO `book_reviews` VALUES (100, 122, 76, 4, 'Velit harum ipsam sit quae eos mollitia nobis. Odio et et blanditiis nam assumenda dolorum iusto. Et facere ullam dolorum eum. Laborum reprehenderit cumque eius dolores ullam.');
INSERT INTO `book_reviews` VALUES (101, 122, 78, 2, 'Minus dolores nulla sit et expedita qui. At dolore perferendis at eaque est. Dolorem dignissimos velit autem dolorem ut id. Suscipit repellat vero dicta deserunt.');
INSERT INTO `book_reviews` VALUES (102, 122, 76, 2, 'Occaecati voluptatibus voluptas non saepe eveniet qui. Soluta id et rem ipsum. Ut rerum expedita incidunt. Dolores sunt eius id sit.');
INSERT INTO `book_reviews` VALUES (103, 122, 76, 10, 'Odio similique sint dolore inventore quo ipsam. Et minus officia dolores omnis. Velit non voluptatum nostrum animi. Sunt cum id velit exercitationem minus qui.');
INSERT INTO `book_reviews` VALUES (104, 123, 75, 5, 'Sed quos placeat corporis omnis distinctio omnis. Quaerat quasi veniam ratione harum quibusdam eius omnis.');
INSERT INTO `book_reviews` VALUES (105, 123, 77, 1, 'Labore dolorum occaecati vel maxime vel voluptatem. Temporibus rerum illo et. Quo similique tempore voluptatem eius doloremque ut. Consequatur voluptas beatae at sapiente sit.');
INSERT INTO `book_reviews` VALUES (106, 123, 79, 5, 'Et id vel omnis aut nesciunt. Eveniet atque vero placeat.');
INSERT INTO `book_reviews` VALUES (107, 123, 77, 3, 'Ad accusantium aut et vel. Omnis et sit illo nulla in sit. Consequatur veritatis et eaque dolore atque esse. Doloribus facilis aliquid est earum veritatis accusantium.');
INSERT INTO `book_reviews` VALUES (108, 124, 76, 8, 'Quia voluptatem quaerat nulla. Sed voluptates asperiores beatae. Repellendus sit esse nesciunt fugit dolores. Qui voluptate molestiae saepe veniam.');
INSERT INTO `book_reviews` VALUES (109, 124, 75, 6, 'Tenetur quo est nulla est dolorum in. Et quod nesciunt quo eum nisi culpa qui. Sed esse molestiae ut illum ea voluptatum. Incidunt totam dolores aut libero doloribus temporibus laborum perspiciatis.');
INSERT INTO `book_reviews` VALUES (110, 124, 79, 6, 'Doloremque voluptatem similique tempora. Aut sequi vitae et voluptates laborum debitis molestiae aliquid. Rerum cupiditate impedit rerum porro modi sed autem.');
INSERT INTO `book_reviews` VALUES (111, 124, 75, 7, 'Est hic et at voluptatem saepe. Eveniet dicta eos architecto dolore autem et. Rerum eligendi quisquam voluptatibus optio.');
INSERT INTO `book_reviews` VALUES (112, 125, 77, 7, 'Autem ullam et labore eius quos eum quis autem. Tempore qui eaque nam repellendus blanditiis animi. Qui nihil quae dolorum eum excepturi.');
INSERT INTO `book_reviews` VALUES (113, 125, 75, 2, 'Consequatur voluptatibus eveniet earum sed eius adipisci placeat. Vero vel non cupiditate placeat laudantium id. Qui voluptatibus magni sequi eos ea vero.');
INSERT INTO `book_reviews` VALUES (114, 125, 75, 10, 'Ratione deleniti nihil asperiores eligendi perferendis ut. Quis quas velit dolorem reiciendis. Pariatur accusantium molestiae natus quod. Recusandae ipsam aut inventore sunt id sed maxime.');
INSERT INTO `book_reviews` VALUES (115, 125, 76, 7, 'Expedita neque tenetur voluptatem repellat non ut rerum. Dignissimos cumque omnis et nostrum. Modi libero deserunt omnis vitae quis eum.');
INSERT INTO `book_reviews` VALUES (116, 126, 79, 9, 'Earum quasi fugiat qui earum voluptates. Aperiam cupiditate maxime consequatur aspernatur. Autem atque corporis earum. Iure error nisi id quia quae impedit.');
INSERT INTO `book_reviews` VALUES (117, 126, 78, 4, 'Perferendis eos sint ab minus sed praesentium harum. Quia omnis labore magnam dolores a praesentium et. Nostrum quos magni voluptates labore libero.');
INSERT INTO `book_reviews` VALUES (118, 126, 76, 4, 'Pariatur magni nostrum soluta ipsum a. Mollitia dolorem facilis eum placeat. Architecto asperiores doloribus impedit repudiandae dolorem libero. Et officia mollitia voluptate enim.');
INSERT INTO `book_reviews` VALUES (119, 126, 75, 2, 'Dicta natus iusto dicta eum dolorem qui. Aperiam molestiae et accusamus.');
INSERT INTO `book_reviews` VALUES (120, 127, 79, 3, 'Minus accusantium sed nostrum autem eum omnis reiciendis. Saepe commodi omnis asperiores facilis libero ut sed. Dicta in vero dolorem optio. Quia ut animi modi et pariatur et.');
INSERT INTO `book_reviews` VALUES (121, 127, 79, 6, 'Vitae omnis voluptatem minima soluta exercitationem natus error. Et ipsam earum quidem adipisci sunt. Maiores in non est aperiam optio libero aut.');
INSERT INTO `book_reviews` VALUES (122, 127, 76, 10, 'Minus quos sapiente vel ut. Aut voluptates tenetur itaque qui nisi maiores. Occaecati dicta beatae est in ea maiores. Harum eos debitis voluptates non.');
INSERT INTO `book_reviews` VALUES (123, 127, 76, 8, 'In vel vero voluptate quibusdam eum voluptatum. Earum quis modi aut natus est. Temporibus neque qui voluptatem et id.');
INSERT INTO `book_reviews` VALUES (124, 128, 79, 7, 'Distinctio voluptates repudiandae vel nostrum numquam. Facilis accusamus voluptatem aut consectetur. Quia ut quas deleniti. Itaque error exercitationem architecto sit qui.');
INSERT INTO `book_reviews` VALUES (125, 128, 76, 1, 'Nobis dolor aut id sequi nihil non nobis. Debitis sunt et corporis praesentium amet praesentium ad. Necessitatibus tempora sapiente amet iusto quia nihil odit.');
INSERT INTO `book_reviews` VALUES (126, 128, 78, 9, 'Et rem et repudiandae saepe et et. Et omnis doloremque ut numquam. Voluptatibus harum animi omnis nesciunt voluptate. Vero omnis sint molestias veniam.');
INSERT INTO `book_reviews` VALUES (127, 128, 77, 8, 'Ducimus eius unde unde et. Exercitationem architecto iure quia nemo consequuntur occaecati dolor nihil. Et corporis atque iusto impedit.');
INSERT INTO `book_reviews` VALUES (128, 129, 76, 6, 'Veritatis consequatur officiis non ex et quia. Illum maiores sit ipsum laudantium. In molestiae in eveniet. Totam aliquid consequatur dignissimos eos porro dolore.');
INSERT INTO `book_reviews` VALUES (129, 129, 77, 3, 'Neque fugit quo illum autem ut ratione ab. Fugit numquam itaque blanditiis consequuntur ab consequatur temporibus doloremque. Ea delectus ut fuga non.');
INSERT INTO `book_reviews` VALUES (130, 129, 77, 6, 'Et soluta sed aperiam provident. Sequi itaque reprehenderit officia doloribus vel quasi. Qui qui officiis aperiam praesentium.');
INSERT INTO `book_reviews` VALUES (131, 129, 75, 7, 'Sunt qui fuga ea eveniet ipsum autem qui atque. Enim quas adipisci dolorum iste explicabo facere veritatis.');
INSERT INTO `book_reviews` VALUES (132, 130, 76, 3, 'Beatae sit culpa repudiandae. Nihil rerum id nulla commodi quasi officiis. Ipsam minima deserunt est sed aliquam.');
INSERT INTO `book_reviews` VALUES (133, 130, 77, 10, 'Sit accusantium et reprehenderit odio et. Sint numquam quaerat quae laboriosam quasi aut tempora. Velit aut doloribus iusto eos fugit accusamus aut. Officiis architecto et nam culpa.');
INSERT INTO `book_reviews` VALUES (134, 130, 77, 4, 'Accusantium odit rem nam non ex ullam labore. Atque nemo molestiae delectus. Et ut rerum magni voluptates.');
INSERT INTO `book_reviews` VALUES (135, 130, 77, 10, 'Tempora dicta est sunt excepturi voluptate. Voluptas exercitationem qui quos sequi culpa minima eius. Facere perspiciatis illo neque qui. Mollitia rerum error odit vero nobis nihil.');
INSERT INTO `book_reviews` VALUES (136, 131, 77, 8, 'Ipsam expedita rem enim nihil aut possimus. Dolor voluptatem iure distinctio. Voluptatum dolorum blanditiis asperiores officiis consequatur.');
INSERT INTO `book_reviews` VALUES (137, 131, 77, 5, 'Libero iure voluptatem dolorem sequi. Iusto amet a quas quia. Et praesentium reiciendis cumque placeat. Aspernatur dolorum alias non.');
INSERT INTO `book_reviews` VALUES (138, 131, 77, 3, 'Excepturi voluptatem et suscipit est pariatur minus voluptates. Omnis quidem dolores molestiae aut iusto ratione. Mollitia in earum natus voluptates eos soluta quas.');
INSERT INTO `book_reviews` VALUES (139, 131, 79, 2, 'Odio facere voluptas qui enim velit facilis. Voluptas voluptas quisquam ratione quis modi voluptatem totam. Quia totam debitis sit dolorem quasi veritatis.');
INSERT INTO `book_reviews` VALUES (140, 132, 76, 6, 'Aliquid error incidunt accusamus quo aperiam. Id porro earum dolor. Ut praesentium magni voluptatem doloribus eum minus. Quibusdam commodi voluptatibus recusandae.');
INSERT INTO `book_reviews` VALUES (141, 132, 75, 4, 'Assumenda tempora praesentium autem ut. Non asperiores sit aut totam aspernatur reprehenderit. Dolorum dolores quasi quaerat repudiandae. Quas rerum qui cupiditate quia vel.');
INSERT INTO `book_reviews` VALUES (142, 132, 76, 5, 'Quaerat cum consectetur unde at. Cum impedit ea necessitatibus enim recusandae ab rerum. Quibusdam quia rerum tempore maiores dignissimos nobis nisi.');
INSERT INTO `book_reviews` VALUES (143, 132, 77, 5, 'Reiciendis voluptatem dolorum in voluptas et dolor voluptatem. Vero est est asperiores repudiandae molestiae eaque cumque. Rerum aperiam fugiat non molestiae iure consequatur in.');
INSERT INTO `book_reviews` VALUES (144, 133, 76, 4, 'Eaque aliquam autem odio et. Nam id et cum. Possimus et facere quisquam nobis. Quis aut officia vel impedit delectus et. Laudantium consequatur non vero iste quae quod.');
INSERT INTO `book_reviews` VALUES (145, 133, 75, 4, 'Quo error itaque rerum sit. Amet ratione inventore error quia nostrum. Labore quo omnis voluptas blanditiis voluptas minus rerum.');
INSERT INTO `book_reviews` VALUES (146, 133, 76, 1, 'Eum voluptas facilis tempore voluptas est vitae. Natus laborum vel ratione cumque sunt. Consequatur corrupti omnis nesciunt aspernatur enim. Id quia omnis modi consequatur.');
INSERT INTO `book_reviews` VALUES (147, 133, 75, 2, 'Dolorem velit nam est corrupti possimus aut sapiente. Qui cupiditate sed expedita eveniet provident est explicabo. Nostrum sint sit aut vel magnam.');
INSERT INTO `book_reviews` VALUES (148, 134, 77, 2, 'Dicta accusamus qui voluptatibus deserunt. Qui id nihil dolorem eum voluptatem ut dolor. Voluptate necessitatibus quia quisquam et. Soluta id inventore dignissimos molestiae temporibus.');
INSERT INTO `book_reviews` VALUES (149, 134, 75, 6, 'Fugiat assumenda doloribus molestiae esse. Iusto quaerat molestiae dignissimos rem voluptate. Pariatur voluptate modi iusto placeat voluptatem.');
INSERT INTO `book_reviews` VALUES (150, 134, 79, 3, 'Minus iure excepturi et. Sed aspernatur omnis tempora sunt. Non aspernatur ipsam totam velit.');
INSERT INTO `book_reviews` VALUES (151, 134, 77, 9, 'Et qui voluptatem rerum aliquam dolores quasi. Cum eaque id omnis harum consequatur similique minima. Facere suscipit excepturi omnis asperiores repellendus.');
INSERT INTO `book_reviews` VALUES (152, 135, 77, 7, 'Deleniti ullam quia qui fugit. Itaque voluptas qui atque nesciunt est fuga sit. Earum voluptate unde similique omnis illo mollitia.');
INSERT INTO `book_reviews` VALUES (153, 135, 76, 3, 'Quis sit alias magnam numquam. Sit accusamus et recusandae quo voluptatem. Dignissimos in repellendus soluta facilis vel et. Eius repudiandae impedit nostrum nihil ab.');
INSERT INTO `book_reviews` VALUES (154, 135, 78, 2, 'Omnis ut aliquid voluptatem alias dolorum. Aut et consectetur dolore rerum autem ea. Unde veniam tempore rem optio neque nobis qui.');
INSERT INTO `book_reviews` VALUES (155, 135, 76, 7, 'Libero laudantium architecto consequatur sed quas iure et sed. Saepe ea quae quod incidunt et et. Quidem qui sint omnis cum. Ratione ipsam quos aut vero.');
INSERT INTO `book_reviews` VALUES (156, 136, 77, 9, 'Aut consequuntur quis modi modi exercitationem. Veritatis iste dolore ea est et. Repellendus alias molestiae porro voluptatibus repudiandae inventore suscipit.');
INSERT INTO `book_reviews` VALUES (157, 136, 79, 2, 'Voluptates voluptatem aut animi officia et sed. Cupiditate ut mollitia deleniti tempore sapiente rerum est recusandae. Est architecto totam numquam quod sit. Quos inventore nihil officiis nam.');
INSERT INTO `book_reviews` VALUES (158, 136, 77, 2, 'Omnis vel iste et sunt consequatur. Fugit et mollitia aspernatur sint dolores blanditiis aut. Culpa repellendus itaque magni rem nihil quasi. Veniam nesciunt placeat fuga magni voluptas.');
INSERT INTO `book_reviews` VALUES (159, 136, 76, 8, 'Pariatur eveniet magnam eum quia veritatis fugiat et. Natus quia at odit laboriosam rerum.');
INSERT INTO `book_reviews` VALUES (160, 137, 78, 4, 'Odit placeat vero nulla et recusandae dicta cumque. Corrupti cumque occaecati qui. Quas et odit deleniti rerum. Laborum dolor odio repellat dicta.');
INSERT INTO `book_reviews` VALUES (161, 137, 77, 8, 'Ut quo minus odit provident sit. Ab ullam officiis dolores molestiae debitis excepturi. Porro aut itaque qui cumque nobis distinctio occaecati.');
INSERT INTO `book_reviews` VALUES (162, 137, 78, 2, 'Libero quis repellat et soluta. Numquam eum optio quae quae sed quia temporibus. Voluptas eius et saepe vel recusandae ut. Voluptatum enim cumque sequi tenetur harum maxime reprehenderit.');
INSERT INTO `book_reviews` VALUES (163, 137, 76, 8, 'Ad omnis ea dolore expedita velit est saepe pariatur. Voluptates repellendus velit dignissimos minima est ipsa repellendus. Quo eum est blanditiis veniam et qui. Rerum ullam aut ut voluptatem.');
INSERT INTO `book_reviews` VALUES (164, 138, 79, 8, 'Ut ipsum unde sed reiciendis eum aliquam labore cumque. Dolores est tempora est cum perferendis enim consectetur. Sunt ut ipsa necessitatibus omnis. Accusantium asperiores veniam iusto quod.');
INSERT INTO `book_reviews` VALUES (165, 138, 76, 2, 'Voluptates voluptatem eum excepturi perferendis. Rerum commodi similique voluptas quod autem est. Provident beatae exercitationem non odit a ipsa sequi.');
INSERT INTO `book_reviews` VALUES (166, 138, 76, 1, 'Consequatur doloremque eaque nam. Voluptate et porro ut officia ducimus et. Tempora magnam sunt earum ut tempora. Cumque laboriosam ut laboriosam.');
INSERT INTO `book_reviews` VALUES (167, 138, 77, 10, 'Dolores sint dolorem eum autem voluptatibus odio minus laboriosam. Eum id ad eligendi et molestiae qui.');
INSERT INTO `book_reviews` VALUES (168, 139, 79, 9, 'Ipsa maxime veniam quia sit adipisci ducimus facilis. Sed nesciunt consequatur dolores vel magnam et. Consequatur quia earum iusto odio fugit.');
INSERT INTO `book_reviews` VALUES (169, 139, 78, 6, 'Sit a ut tempore sint reprehenderit quidem alias. Praesentium sint dolore aut rerum necessitatibus dolores sit. Praesentium eius modi est tempora in. Suscipit rerum provident minus at.');
INSERT INTO `book_reviews` VALUES (170, 139, 78, 10, 'Alias consequatur voluptatem quidem quae molestiae adipisci recusandae rerum. Laboriosam dolores eveniet repellat non. Enim enim nemo officiis.');
INSERT INTO `book_reviews` VALUES (171, 139, 78, 6, 'Assumenda error tenetur quae qui at. Animi magnam soluta repellendus facere ut nisi. Voluptate aliquam distinctio excepturi nostrum iure doloremque.');
INSERT INTO `book_reviews` VALUES (172, 140, 77, 8, 'Delectus iste quia sunt sint voluptatem. Architecto magni illum laboriosam. Ut non distinctio voluptas error voluptatem sapiente et. Nemo enim et harum omnis at sit.');
INSERT INTO `book_reviews` VALUES (173, 140, 77, 4, 'Sunt ut hic et consequuntur dolorem ducimus et. Sunt qui sequi quae. Sunt adipisci laudantium tempore minus.');
INSERT INTO `book_reviews` VALUES (174, 140, 79, 8, 'Et facilis velit voluptatibus esse qui laboriosam in et. Eligendi repellat velit odit aperiam. Nulla optio et dolores repellendus.');
INSERT INTO `book_reviews` VALUES (175, 140, 76, 6, 'Soluta a et eveniet modi inventore autem. Ut qui itaque tenetur quisquam dicta et aut ut. Repudiandae odio culpa enim incidunt debitis mollitia.');
INSERT INTO `book_reviews` VALUES (176, 141, 78, 6, 'Aut ad recusandae voluptas. Beatae omnis facilis dolore asperiores nihil vel. Sequi aut optio et voluptas. Est fugiat est perferendis aut ab voluptatem velit.');
INSERT INTO `book_reviews` VALUES (177, 141, 78, 3, 'Consequatur perferendis vel sit. Similique occaecati maiores quia nam. Vitae vitae sit saepe minus qui. Impedit aut suscipit et et tempora. Doloribus eligendi nisi sit rerum occaecati aut.');
INSERT INTO `book_reviews` VALUES (178, 141, 77, 8, 'Neque tempora quod atque aperiam nesciunt dolores iste. Consectetur repellat unde ab rerum delectus. Nam et repudiandae ex deserunt quo.');
INSERT INTO `book_reviews` VALUES (179, 141, 75, 3, 'Dolores aut sit at esse. Corrupti sit voluptatibus aut voluptate.');
INSERT INTO `book_reviews` VALUES (180, 142, 75, 7, 'Reiciendis et non iure quis enim nemo. Facilis est error eos expedita vel. Quis laudantium impedit vitae cumque sunt deserunt.');
INSERT INTO `book_reviews` VALUES (181, 142, 76, 4, 'Aut eum itaque aut expedita recusandae adipisci dolorem. Excepturi architecto consequatur aut sequi.');
INSERT INTO `book_reviews` VALUES (182, 142, 76, 4, 'Velit velit ea est autem inventore. Atque alias dolorum ullam saepe voluptates. Sit ea ea iure qui illum ipsa.');
INSERT INTO `book_reviews` VALUES (183, 142, 75, 8, 'Iste asperiores maxime qui. Tempora atque minima quaerat dolores praesentium aspernatur consequatur quas. Laboriosam libero id perferendis nisi in.');
INSERT INTO `book_reviews` VALUES (184, 143, 79, 10, 'Nemo quibusdam quaerat quia laudantium. Maxime et sed cumque unde cupiditate aut. Occaecati animi autem nihil est. Consequatur magni omnis nam consectetur cupiditate. Et qui facere id.');
INSERT INTO `book_reviews` VALUES (185, 143, 78, 8, 'Alias et non inventore blanditiis ex mollitia. Nemo occaecati dolorem reiciendis consequatur minus et. Accusamus illum voluptatem iste aliquam iure et fuga delectus. Minima veniam et iste.');
INSERT INTO `book_reviews` VALUES (186, 143, 76, 10, 'Ipsa eveniet fugit est eaque enim aliquam. Eaque quod distinctio numquam cupiditate. Aut debitis sit dolorem doloremque veritatis optio nam.');
INSERT INTO `book_reviews` VALUES (187, 143, 76, 7, 'Iure sequi et repellendus quia est. Nesciunt porro et ut fuga. Aut omnis accusantium quos possimus et fugit voluptatem.');
INSERT INTO `book_reviews` VALUES (188, 144, 76, 9, 'Enim aliquid natus tenetur rerum quae dolorum. Mollitia delectus illo nostrum quo quia at aut. Ullam molestiae rerum non. Est iure dolore rerum.');
INSERT INTO `book_reviews` VALUES (189, 144, 75, 10, 'Earum ex aut quo eius aut. Molestias voluptatem dolores labore vel. Perspiciatis eligendi deleniti laudantium suscipit at qui corporis.');
INSERT INTO `book_reviews` VALUES (190, 144, 79, 3, 'Ullam quis asperiores officiis alias impedit. Nihil eius debitis numquam officia. Quo quo est corporis dolor.');
INSERT INTO `book_reviews` VALUES (191, 144, 77, 8, 'Rerum sunt architecto sit asperiores. Incidunt ab vitae optio id voluptas hic. Voluptas et culpa omnis autem voluptas non. Dolores delectus et maiores perspiciatis quos sit sed.');
INSERT INTO `book_reviews` VALUES (192, 145, 79, 8, 'Rem eos omnis hic deleniti. Consequatur qui enim eum aperiam cumque fugit blanditiis. Iure distinctio temporibus dolore et minus quod ea ut.');
INSERT INTO `book_reviews` VALUES (193, 145, 75, 2, 'Voluptatibus ipsa necessitatibus quo laborum maiores laudantium. Omnis veritatis autem impedit voluptatem est commodi. Sed aut explicabo quia facere omnis non.');
INSERT INTO `book_reviews` VALUES (194, 145, 75, 4, 'Molestias laudantium blanditiis quam qui. Blanditiis qui sint modi autem magni. Velit officia fuga provident ad enim eos quis. Necessitatibus minus omnis architecto qui repellendus facilis ipsum.');
INSERT INTO `book_reviews` VALUES (195, 145, 75, 5, 'Nostrum voluptate ullam velit incidunt tenetur libero ullam. Exercitationem et non ex et. Explicabo cupiditate officia non aut. Possimus fuga unde magni.');
INSERT INTO `book_reviews` VALUES (196, 146, 79, 6, 'Placeat veniam quas aperiam molestiae qui nulla. Quod possimus aliquid aut. Est est dolore et expedita qui. Officia consequatur laboriosam quia veniam consectetur aut.');
INSERT INTO `book_reviews` VALUES (197, 146, 79, 4, 'Cum ipsa exercitationem consequuntur suscipit molestiae dolorem saepe fuga. Qui quia sint molestiae voluptas itaque sequi saepe. Eum magni est sit tempora corporis temporibus corrupti et.');
INSERT INTO `book_reviews` VALUES (198, 146, 76, 2, 'Ut iusto et nostrum quae fugit. Ipsa sed ad est officia sit sunt. Hic ut ut magnam qui reprehenderit maiores quasi fugiat. Voluptas doloremque omnis aut voluptas nihil voluptas.');
INSERT INTO `book_reviews` VALUES (199, 146, 78, 2, 'Ut aut sit reiciendis perspiciatis maxime blanditiis est. Voluptas dolorem harum vel molestiae. Qui molestiae ex totam quo vero quae. Sed sunt fugiat sequi est.');
INSERT INTO `book_reviews` VALUES (200, 147, 76, 10, 'Voluptatem facere voluptas officiis quae dolorem laboriosam et. Voluptas quae ullam quam ex. Et nam optio cum qui corporis eos omnis.');
INSERT INTO `book_reviews` VALUES (201, 147, 78, 1, 'Eaque aut repellendus explicabo voluptas ducimus. Nisi quisquam nostrum occaecati porro. Voluptatem quia vitae similique odio est. Vel laudantium iste quibusdam rerum praesentium recusandae velit.');
INSERT INTO `book_reviews` VALUES (202, 147, 76, 9, 'Vero saepe ea eius aut sit. Odit officia molestiae mollitia quo. Quas omnis debitis in reprehenderit velit doloribus consequuntur. Ut qui et maiores libero.');
INSERT INTO `book_reviews` VALUES (203, 147, 75, 6, 'Enim autem dicta quisquam explicabo. Repellat illo voluptatem laborum consequuntur sit assumenda est. Facilis hic ipsum consequatur veniam. Omnis autem quis suscipit rerum accusamus.');
INSERT INTO `book_reviews` VALUES (204, 148, 76, 9, 'Odio harum voluptatem numquam exercitationem quo nam sint dolores. Voluptatem voluptatem enim nesciunt maxime autem error a laborum.');
INSERT INTO `book_reviews` VALUES (205, 148, 75, 3, 'Repellat nisi id eius. Sequi velit est magnam impedit. Enim labore temporibus natus inventore aliquid incidunt. Necessitatibus in commodi consequuntur quasi rerum.');
INSERT INTO `book_reviews` VALUES (206, 148, 75, 4, 'Et consectetur sit molestiae possimus quo. Dignissimos veniam enim ut sed perspiciatis. Fuga ea quae iste veritatis ipsam eveniet quisquam. Ut enim qui et necessitatibus voluptas ex.');
INSERT INTO `book_reviews` VALUES (207, 148, 77, 6, 'Voluptates voluptas rem numquam atque ullam. Cumque quibusdam iusto veritatis quae. Alias harum placeat architecto dolore excepturi maxime. Saepe perspiciatis perspiciatis harum omnis ut.');
INSERT INTO `book_reviews` VALUES (208, 149, 77, 2, 'Dolorem earum rem id et maiores ut. Nemo qui ea ab eius. Aut quia atque voluptatem ut corporis id saepe. Minus alias minus aliquam et.');
INSERT INTO `book_reviews` VALUES (209, 149, 78, 1, 'Qui enim voluptas repellendus minus. Quis ullam aut commodi ratione ea. Excepturi ea qui ratione et doloribus praesentium.');
INSERT INTO `book_reviews` VALUES (210, 149, 78, 3, 'Illum modi et ab corrupti quam veniam. Dolores non iusto inventore et magnam. Dicta suscipit voluptatem omnis est voluptatem.');
INSERT INTO `book_reviews` VALUES (211, 149, 79, 3, 'Quasi est quo est totam. Ipsa eligendi quis et amet. Laudantium accusantium veniam dolorem quo omnis excepturi dolores.');
INSERT INTO `book_reviews` VALUES (212, 150, 75, 8, 'Accusamus atque quidem est fugit totam nulla. Amet ut et optio consequatur. Id iste est sit officia sit optio.');
INSERT INTO `book_reviews` VALUES (213, 150, 77, 10, 'Impedit velit necessitatibus nihil sint. Maiores doloremque omnis in occaecati. Dolores possimus assumenda debitis ad tenetur delectus.');
INSERT INTO `book_reviews` VALUES (214, 150, 78, 7, 'Quo aut dignissimos et iure est sequi sunt. Aliquid aut amet tenetur voluptatibus nemo aut dolor ut. Ex ad tempore impedit qui non minus velit.');
INSERT INTO `book_reviews` VALUES (215, 150, 77, 2, 'Aut omnis ut atque iure facilis corporis reprehenderit. Itaque autem tempora quia sequi eveniet quibusdam placeat. Quo quisquam adipisci autem tempora.');
INSERT INTO `book_reviews` VALUES (216, 106, 83, 7, 'Ducimus eaque enim quia cum. Quia qui est quia rerum nostrum. Et quam necessitatibus nostrum odit at vitae est. Voluptatum voluptas aliquam cumque. Architecto dolorem sunt autem repellendus.');
INSERT INTO `book_reviews` VALUES (217, 106, 82, 2, 'Dicta velit porro soluta voluptates corporis assumenda neque. In aspernatur culpa error placeat. Eos fugiat qui et libero.');
INSERT INTO `book_reviews` VALUES (218, 106, 83, 3, 'Alias nisi officiis totam et sunt voluptatem alias. Iste quia eum vitae tempora. Sunt consequatur ipsa eum necessitatibus hic qui rerum. Velit minima perferendis eum.');
INSERT INTO `book_reviews` VALUES (219, 106, 83, 2, 'Sapiente est fugiat dolore ipsa nihil. Optio dolor ipsam velit rem ut sit reiciendis. Nobis nulla voluptatum quam voluptatibus odio blanditiis.');
INSERT INTO `book_reviews` VALUES (220, 107, 83, 9, 'Odio maiores aut sapiente accusantium. Atque eius voluptas est laborum fugit ea. A qui tempora in doloremque eveniet est ut. Laborum corrupti deserunt molestiae ipsum.');
INSERT INTO `book_reviews` VALUES (221, 107, 83, 4, 'Quia sint nihil perferendis ut. Et voluptate ab nam impedit molestias possimus consectetur. Ut et quia omnis consequatur.');
INSERT INTO `book_reviews` VALUES (222, 107, 83, 8, 'A iure delectus maiores molestiae. Magnam omnis dolorum voluptas maxime sit. Iure provident qui quae beatae voluptates ut ea aut. Voluptas iure eum voluptatum hic rerum.');
INSERT INTO `book_reviews` VALUES (223, 107, 83, 9, 'Consectetur ad sit soluta dolorem id nam velit. Eaque soluta est sunt est in. Sapiente ea laboriosam dolores cum repudiandae. Sint quasi necessitatibus voluptatem quia ad.');
INSERT INTO `book_reviews` VALUES (224, 108, 82, 2, 'Autem sed aliquam alias reiciendis libero dicta. Necessitatibus quae rerum veritatis soluta harum aut. Dicta alias nisi expedita veritatis perspiciatis porro.');
INSERT INTO `book_reviews` VALUES (225, 108, 82, 8, 'Alias sapiente maxime illo ratione. Cumque sint laudantium quia. Doloremque aut nulla illo est nobis. Blanditiis nisi fugit aut eveniet vitae.');
INSERT INTO `book_reviews` VALUES (226, 108, 85, 1, 'Minus excepturi sapiente et totam iste aut. Atque doloribus sed numquam placeat rerum sunt. Id autem dolor et.');
INSERT INTO `book_reviews` VALUES (227, 108, 85, 7, 'Repudiandae non consequuntur dolor odio. Et et asperiores aut odit mollitia. Accusamus voluptatibus at eum. Et illum et sunt aut aut.');
INSERT INTO `book_reviews` VALUES (228, 109, 83, 10, 'Aut ea dicta minus cupiditate odio et molestias. Voluptates ea impedit non tempora. Et esse aliquid quos hic eum.');
INSERT INTO `book_reviews` VALUES (229, 109, 84, 10, 'Perspiciatis voluptatem voluptates qui harum vitae ut. Velit eius ea est autem. Porro minus quia fugiat eveniet. Facere ex doloribus architecto ex est impedit maiores.');
INSERT INTO `book_reviews` VALUES (230, 109, 84, 10, 'Velit beatae architecto nihil voluptate quia consequatur omnis. Reprehenderit voluptatum quidem magni. Autem eligendi ut qui repellendus recusandae. Et quae aut tempore excepturi aliquid facere.');
INSERT INTO `book_reviews` VALUES (231, 109, 82, 4, 'Maiores laborum aliquid qui qui nostrum eveniet et nemo. Ex fugit eveniet rerum rerum nihil. Similique corporis quibusdam necessitatibus libero accusamus dolorem natus.');
INSERT INTO `book_reviews` VALUES (232, 110, 85, 6, 'Voluptatem culpa aut nisi dolore. Quo et nesciunt deserunt. Distinctio consequatur deserunt ex sit in voluptate.');
INSERT INTO `book_reviews` VALUES (233, 110, 83, 6, 'Quis eveniet vitae quis perspiciatis. Fugit blanditiis fugit incidunt amet possimus. Modi enim tempora dolores harum inventore et nobis. Ut sunt amet provident nemo enim.');
INSERT INTO `book_reviews` VALUES (234, 110, 82, 3, 'Alias sunt atque voluptas sint omnis. Nam laboriosam numquam in ipsam deleniti.');
INSERT INTO `book_reviews` VALUES (235, 110, 85, 4, 'Praesentium occaecati deserunt magnam. Accusantium optio ullam ad ipsa ad odio. Magnam nemo amet praesentium a harum consequuntur. Quia modi accusantium velit perferendis quibusdam.');
INSERT INTO `book_reviews` VALUES (236, 111, 81, 10, 'Ut et esse asperiores sit repellat. Magnam veritatis nesciunt voluptates cum ab distinctio odio. Culpa quod excepturi cupiditate sequi.');
INSERT INTO `book_reviews` VALUES (237, 111, 81, 2, 'Sapiente quis incidunt nihil qui inventore est occaecati. Esse et eius earum molestiae neque perspiciatis.');
INSERT INTO `book_reviews` VALUES (238, 111, 84, 2, 'Doloremque dolor quia earum fugit quis mollitia. Expedita ut doloribus totam modi odit porro voluptas.');
INSERT INTO `book_reviews` VALUES (239, 111, 82, 3, 'Ratione nihil blanditiis est omnis. Harum quis impedit fugit adipisci assumenda iure sunt est. Sapiente nobis praesentium id et asperiores sed tempora. Ullam officiis sed eos quis debitis.');
INSERT INTO `book_reviews` VALUES (240, 112, 81, 5, 'Itaque fugit saepe aliquid eligendi tempore praesentium. Eligendi alias illum modi non perspiciatis et aut. Repudiandae sed adipisci sed minus. Non similique tempore iure dolore consequatur nostrum.');
INSERT INTO `book_reviews` VALUES (241, 112, 81, 8, 'Sed voluptatem veritatis modi expedita itaque. Officia illum ex voluptate earum exercitationem quaerat. Architecto voluptatem voluptas qui molestiae voluptas nihil.');
INSERT INTO `book_reviews` VALUES (242, 112, 82, 7, 'Totam corporis laboriosam deleniti esse. Qui quod occaecati nulla. Ad est sed minus quasi.');
INSERT INTO `book_reviews` VALUES (243, 112, 82, 4, 'Sed et sed quibusdam et hic impedit officiis. Veritatis perferendis laboriosam reprehenderit non esse laboriosam. Aut ad culpa vel omnis.');
INSERT INTO `book_reviews` VALUES (244, 113, 81, 8, 'Ex et vitae quibusdam qui pariatur perferendis. Voluptatem est blanditiis quod commodi illo sapiente. Quae cum fugiat voluptatem ea. Numquam voluptates modi voluptas consequuntur at occaecati.');
INSERT INTO `book_reviews` VALUES (245, 113, 84, 6, 'Sit ratione aut est. In unde numquam est repellendus consectetur quidem. Aliquid nesciunt aspernatur minus aspernatur dolores repellat commodi. Quisquam dignissimos et ullam et tenetur.');
INSERT INTO `book_reviews` VALUES (246, 113, 83, 4, 'Molestiae dicta quo vel ea. Commodi at eum possimus perspiciatis odit ut et. Et neque provident atque nam cum qui.');
INSERT INTO `book_reviews` VALUES (247, 113, 83, 10, 'Ipsum dolor sit optio et veniam nemo ea. Enim sed tempore doloribus consectetur quidem quasi. Quis quia minima nesciunt ex tempore soluta. Velit perspiciatis voluptas non eius ut id ducimus.');
INSERT INTO `book_reviews` VALUES (248, 114, 81, 10, 'Magni hic non veniam vel ea non excepturi impedit. Fugiat excepturi ut aut esse tenetur tempora veritatis ipsa. At doloribus unde ipsa sint in magnam.');
INSERT INTO `book_reviews` VALUES (249, 114, 84, 4, 'Voluptatum quidem aut ipsum ut ab repellendus reiciendis recusandae. Accusantium nam quis sit. Velit in magni molestiae id.');
INSERT INTO `book_reviews` VALUES (250, 114, 84, 6, 'Eos tenetur magnam quos aperiam occaecati. Repudiandae exercitationem esse fuga illo iure. Nam est dolores nihil voluptatum qui et. Exercitationem nulla assumenda ducimus quasi saepe.');
INSERT INTO `book_reviews` VALUES (251, 114, 84, 1, 'Repellat quo sed voluptas enim qui culpa illo. Qui deleniti possimus ullam totam ut ut. Enim inventore neque hic ut modi et omnis. Quis impedit quia corporis ut doloremque.');
INSERT INTO `book_reviews` VALUES (252, 115, 84, 10, 'Accusantium amet qui voluptates aut labore molestias. Nihil impedit enim eum eius molestiae quia. Voluptatibus ratione dolorem aperiam molestias velit dolorem.');
INSERT INTO `book_reviews` VALUES (253, 115, 84, 8, 'Repellendus ut modi quia iste. Consequatur est distinctio ipsum voluptas aliquid. Facilis vero eos ad adipisci.');
INSERT INTO `book_reviews` VALUES (254, 115, 81, 1, 'Dolores et quisquam sit. Voluptas atque distinctio tenetur nemo.');
INSERT INTO `book_reviews` VALUES (255, 115, 81, 5, 'Libero cumque voluptas est quis atque cumque. Eos ratione magni saepe. Et quo quod vel asperiores. Vitae omnis omnis qui possimus qui aut quasi.');
INSERT INTO `book_reviews` VALUES (256, 116, 83, 4, 'Soluta est animi error facere ratione eum. Reiciendis est qui ab tempora sit consequatur ullam. Asperiores unde quisquam dignissimos enim aut veniam qui.');
INSERT INTO `book_reviews` VALUES (257, 116, 83, 7, 'Consequatur delectus incidunt nihil magni eligendi quaerat aut. Quaerat nemo magni et dolor. Suscipit tenetur qui neque ea eum beatae numquam. Eum alias ut accusamus.');
INSERT INTO `book_reviews` VALUES (258, 116, 84, 2, 'Consectetur laborum molestias excepturi. Et assumenda perferendis enim quia qui ipsa nobis corrupti. Est maxime corrupti rerum. Nobis voluptatem id labore in aut sed.');
INSERT INTO `book_reviews` VALUES (259, 116, 84, 1, 'In ea ea mollitia sint eius ab. Ut et quam omnis ut voluptate. Numquam eveniet magni qui vel quasi.');
INSERT INTO `book_reviews` VALUES (260, 117, 83, 9, 'Aliquid repellendus facere numquam eveniet quisquam nobis. Optio recusandae velit doloribus perferendis nesciunt dicta. Iste occaecati veritatis a consequuntur et.');
INSERT INTO `book_reviews` VALUES (261, 117, 83, 10, 'Atque aut dicta dignissimos aut. Excepturi modi odit dolorem nobis at ullam molestiae. Et sunt dicta aut ut. Quo tempore eum consequuntur quas.');
INSERT INTO `book_reviews` VALUES (262, 117, 83, 2, 'Vel odio quidem illo nihil sit veniam qui. Rerum vero velit et. Aut voluptas occaecati distinctio eos quia quisquam eos.');
INSERT INTO `book_reviews` VALUES (263, 117, 81, 5, 'Quidem est sed magnam quod. Quaerat praesentium cumque repudiandae consequuntur deleniti magnam et. Odit quam et dolores debitis dolores tenetur totam. Numquam voluptates non et reiciendis beatae.');
INSERT INTO `book_reviews` VALUES (264, 118, 83, 6, 'A quas id ad et aut qui. Eos saepe eos et amet cumque. Quaerat odit ad hic. Optio molestiae consequatur tempore qui harum.');
INSERT INTO `book_reviews` VALUES (265, 118, 85, 2, 'Dolorum hic et alias aut. Aliquid beatae et repellat omnis iste. Magnam consequatur ut quis ut optio inventore. Libero sapiente repudiandae eum.');
INSERT INTO `book_reviews` VALUES (266, 118, 84, 3, 'Consequuntur consequatur magni hic fuga vero quos perspiciatis. Aut ratione illo maxime debitis. Quaerat at dicta officia a. Sit ea ut laboriosam perferendis ullam.');
INSERT INTO `book_reviews` VALUES (267, 118, 84, 3, 'Dolores quae unde fuga et consequatur. Dolorem nobis qui accusamus deserunt quis eos amet aliquam. Nobis sunt laudantium corrupti natus.');
INSERT INTO `book_reviews` VALUES (268, 119, 82, 2, 'Non quibusdam unde ut aperiam dolorem repellendus qui. Fugiat quis quod et a aut dignissimos. Rerum vero nobis ullam aut rerum ut at. Voluptatem eos iure deserunt et et.');
INSERT INTO `book_reviews` VALUES (269, 119, 81, 9, 'Et architecto error quisquam officiis consequatur accusantium. Tempora unde vitae ullam tempore aliquid laudantium eligendi. Eaque modi dolor distinctio iusto laudantium enim.');
INSERT INTO `book_reviews` VALUES (270, 119, 81, 1, 'Dolor velit id distinctio laboriosam. Quidem qui incidunt labore et eos et aliquid possimus. Ea libero quae rerum odio natus optio quae voluptate.');
INSERT INTO `book_reviews` VALUES (271, 119, 85, 7, 'Sit quaerat culpa alias vero. Corporis saepe fugiat iure numquam dolor. Doloribus inventore et id illo tempore similique sunt at.');
INSERT INTO `book_reviews` VALUES (272, 120, 81, 6, 'Iste possimus quod quasi rerum blanditiis. Adipisci dicta sapiente sed non architecto porro. Atque itaque et odit aut placeat.');
INSERT INTO `book_reviews` VALUES (273, 120, 82, 7, 'Quaerat dolores molestias sit ut corrupti ipsa. Unde illum ullam ad perspiciatis cupiditate harum voluptates. Aut eum ea qui ea eos qui.');
INSERT INTO `book_reviews` VALUES (274, 120, 82, 1, 'Omnis voluptatem alias omnis voluptas magnam aut. Perspiciatis quibusdam sunt accusantium. Qui eius ut ex fugiat.');
INSERT INTO `book_reviews` VALUES (275, 120, 85, 10, 'Et ut quas non id. Blanditiis aut hic qui ipsum modi. Labore quia et debitis consequatur eos repellat.');
INSERT INTO `book_reviews` VALUES (276, 121, 83, 4, 'Aperiam ipsa in rerum quam neque delectus optio amet. Provident quis nostrum soluta. Consequatur aliquam et facere qui dolore.');
INSERT INTO `book_reviews` VALUES (277, 121, 85, 8, 'Minus aut pariatur harum non. Ut esse impedit est deleniti. Officiis sunt id minima quia deleniti excepturi.');
INSERT INTO `book_reviews` VALUES (278, 121, 82, 9, 'Ex quam dignissimos eos laudantium illum distinctio culpa. Recusandae earum enim harum laboriosam voluptatum sit. Quis ut ab omnis. Voluptas pariatur sed explicabo dolorem ea.');
INSERT INTO `book_reviews` VALUES (279, 121, 83, 1, 'Quis molestiae blanditiis qui excepturi. Voluptas necessitatibus unde sint. Sunt sed corrupti aliquam ut. Enim quod excepturi voluptates nesciunt cumque harum eum.');
INSERT INTO `book_reviews` VALUES (280, 122, 82, 2, 'Minima architecto perferendis nihil aut. Aperiam dolorum explicabo sed qui.');
INSERT INTO `book_reviews` VALUES (281, 122, 83, 3, 'Est quia ea quasi voluptatem. Reiciendis magnam temporibus exercitationem quo ea. Est quia rerum non dolores.');
INSERT INTO `book_reviews` VALUES (282, 122, 81, 4, 'Voluptatem commodi et omnis et facilis et. Atque voluptas qui consequatur nisi. Consequatur culpa non iste.');
INSERT INTO `book_reviews` VALUES (283, 122, 82, 1, 'Laboriosam expedita rerum sed adipisci ab. Necessitatibus optio occaecati quaerat eum. Omnis suscipit earum laudantium ab assumenda eius provident. Dolor dolor quidem quae.');
INSERT INTO `book_reviews` VALUES (284, 123, 82, 1, 'Omnis hic quo a architecto. Est tempora architecto exercitationem dolores vel possimus. Aspernatur saepe ea temporibus voluptas distinctio magnam. Numquam est rerum sit sit reiciendis aut.');
INSERT INTO `book_reviews` VALUES (285, 123, 85, 7, 'Aut veritatis ut eveniet unde ut in libero. Sunt voluptatibus et et ullam saepe neque. Dignissimos ut corrupti repudiandae non quidem provident.');
INSERT INTO `book_reviews` VALUES (286, 123, 85, 6, 'Doloremque explicabo cupiditate et repellendus possimus vitae et. Sed dolor et qui. Voluptatum fugiat esse sed impedit.');
INSERT INTO `book_reviews` VALUES (287, 123, 84, 4, 'Fuga suscipit natus qui exercitationem officia rerum. Quis autem vero repellat ipsum. Dolorum ex sed quia ducimus ut.');
INSERT INTO `book_reviews` VALUES (288, 124, 81, 10, 'Mollitia quibusdam temporibus iure possimus laboriosam ratione. Et aut voluptatem aut in. At a in assumenda ad. Aperiam hic enim optio iste.');
INSERT INTO `book_reviews` VALUES (289, 124, 84, 9, 'Qui alias sint explicabo eligendi ut quo fugit. Voluptatem ipsam neque nobis nostrum qui nobis aut.');
INSERT INTO `book_reviews` VALUES (290, 124, 83, 2, 'Sequi veritatis dolor eveniet cupiditate cupiditate et. Porro quo quia aut.');
INSERT INTO `book_reviews` VALUES (291, 124, 84, 7, 'Quam et a facere impedit quia rem. Dolores aut aut sit assumenda. Ut id ad ex. Sunt aliquid sunt voluptas id soluta est eum.');
INSERT INTO `book_reviews` VALUES (292, 125, 85, 9, 'Rem placeat dicta dolores suscipit labore blanditiis. Commodi totam architecto sit sed repellendus odit aut. Cupiditate eveniet pariatur illo. Sed aut aut a labore aut.');
INSERT INTO `book_reviews` VALUES (293, 125, 82, 1, 'Ut hic at ipsa voluptatem. Rem culpa ab sint quos laborum commodi dolore. Nisi amet at ducimus. Error aliquam est et ipsa facere nisi qui.');
INSERT INTO `book_reviews` VALUES (294, 125, 84, 5, 'Et aspernatur qui iusto consequatur sed laudantium. Qui voluptatibus aut est unde tempore ut sint est. Autem cupiditate autem ut velit tempora quo nihil. Ducimus et quod omnis at illum.');
INSERT INTO `book_reviews` VALUES (295, 125, 81, 1, 'In natus est dignissimos. Amet eveniet est aut. Sed accusamus quis laboriosam et commodi praesentium. Aspernatur illum nisi autem eaque fuga officiis. Dolore deleniti unde adipisci.');
INSERT INTO `book_reviews` VALUES (296, 126, 81, 6, 'Molestiae praesentium vel ratione et expedita minus dolor qui. Sunt iusto quos ratione expedita qui. At dolorem autem tempora quia. Labore itaque aliquid neque. Nihil est dolorum reiciendis eum.');
INSERT INTO `book_reviews` VALUES (297, 126, 85, 5, 'Dolorem dolores necessitatibus voluptatibus pariatur eveniet voluptas magni deleniti. Fuga et nihil tempora a ratione quia.');
INSERT INTO `book_reviews` VALUES (298, 126, 81, 3, 'Maxime quod autem nulla maxime omnis voluptates. Dolorem voluptatum porro ut vel quasi et. Magnam id culpa eveniet sapiente mollitia quia rem. Provident et iusto quos et reprehenderit cum.');
INSERT INTO `book_reviews` VALUES (299, 126, 83, 3, 'Molestiae quo dolores suscipit provident qui. Soluta dolor molestiae qui voluptate laudantium. Quibusdam nesciunt nam provident porro sunt vitae.');
INSERT INTO `book_reviews` VALUES (300, 127, 81, 8, 'Iure cupiditate quo numquam possimus accusantium. Sint ut dolores fugiat. Dolorem possimus architecto similique aliquid est. Odio unde quo sint hic provident.');
INSERT INTO `book_reviews` VALUES (301, 127, 81, 2, 'Sed facere accusamus accusamus. Unde et ut distinctio consequatur minus. Quis saepe esse deleniti doloremque beatae ut atque.');
INSERT INTO `book_reviews` VALUES (302, 127, 83, 7, 'Vero atque non optio veritatis laboriosam. Ipsum et iusto ut ratione et aliquid consequatur. Illum porro dignissimos qui aut laborum praesentium aut provident. Est reiciendis dolor provident.');
INSERT INTO `book_reviews` VALUES (303, 127, 83, 6, 'Veniam facere sapiente quos cupiditate. Iusto assumenda hic illum odit non dolores numquam. Consequatur nesciunt voluptatem dolor consequatur enim. Et alias velit debitis saepe et est ipsa est.');
INSERT INTO `book_reviews` VALUES (304, 128, 81, 6, 'Aut ut dolore consequuntur. Perspiciatis ipsum quia veniam recusandae esse aut amet. Iusto nisi occaecati consequatur sed. Eos laboriosam optio sit mollitia. Et earum et minus quo voluptate.');
INSERT INTO `book_reviews` VALUES (305, 128, 82, 7, 'Et nemo quo praesentium nam. Libero voluptatem id excepturi culpa omnis ut. Et nesciunt totam et. Quidem nemo quas quia.');
INSERT INTO `book_reviews` VALUES (306, 128, 85, 10, 'Repellat eum illum maiores quisquam saepe. Quaerat incidunt doloremque et facilis molestiae officiis soluta. Voluptatem error laboriosam voluptatem consequuntur quidem.');
INSERT INTO `book_reviews` VALUES (307, 128, 84, 4, 'Autem repellat ea et in impedit corrupti ea est. Et repudiandae officiis dignissimos sapiente. Cumque occaecati commodi aut. Accusantium id aperiam maiores. Repellat vel qui autem temporibus nobis.');
INSERT INTO `book_reviews` VALUES (308, 129, 81, 2, 'Aliquam inventore temporibus nemo corrupti. Quos dolorem maxime soluta. Deleniti sit atque est. Beatae voluptatem harum ea vero beatae sit.');
INSERT INTO `book_reviews` VALUES (309, 129, 82, 3, 'Ut est nostrum hic est nostrum. Commodi rerum eaque ad totam quisquam quo asperiores. Non beatae architecto reiciendis fuga voluptatibus quisquam ea.');
INSERT INTO `book_reviews` VALUES (310, 129, 83, 3, 'Voluptates at accusamus molestias voluptas sapiente sed. Doloribus totam dolor error debitis sit dolorem et. Animi nam vero necessitatibus modi dicta sed quo recusandae.');
INSERT INTO `book_reviews` VALUES (311, 129, 83, 3, 'Repellat animi similique dignissimos ratione vitae autem. Aperiam nihil omnis rem et. Praesentium at doloremque officiis fugiat qui rerum.');
INSERT INTO `book_reviews` VALUES (312, 130, 81, 9, 'Est id accusamus autem quia quasi quos similique eos. Ut et quasi qui repudiandae hic minus provident. Voluptatibus ut ratione quibusdam ut.');
INSERT INTO `book_reviews` VALUES (313, 130, 83, 7, 'A maxime sequi hic quas. Aut quis totam ut sunt natus quos quis. Enim accusantium eos incidunt voluptas esse quasi veritatis placeat.');
INSERT INTO `book_reviews` VALUES (314, 130, 84, 5, 'Laboriosam voluptas qui et voluptates. Aut reiciendis repellat et est architecto. Rerum perferendis quia inventore pariatur quo delectus non.');
INSERT INTO `book_reviews` VALUES (315, 130, 84, 1, 'Dolor porro magni mollitia sed in non rerum. Voluptatum eligendi minima perspiciatis odit aut nisi. Qui molestiae nulla sed dolore et qui. Laborum omnis facilis dolor cupiditate quia neque aliquam.');
INSERT INTO `book_reviews` VALUES (316, 131, 81, 8, 'Rerum molestiae nulla earum perferendis aut ut consequatur. Et fugiat iusto ea qui quaerat saepe. Nostrum at aut inventore qui laudantium et qui.');
INSERT INTO `book_reviews` VALUES (317, 131, 81, 1, 'Rem nam quae et pariatur. Voluptatem aut commodi vel. Aliquid nisi maxime nesciunt et sed repudiandae. Quibusdam et est qui ut.');
INSERT INTO `book_reviews` VALUES (318, 131, 84, 1, 'Repellendus quod voluptatem ducimus. Nisi omnis est voluptates tenetur qui. Autem commodi perferendis ipsam voluptatem et velit cupiditate. Alias voluptas quis facere facere.');
INSERT INTO `book_reviews` VALUES (319, 131, 85, 10, 'Praesentium facilis at harum et occaecati velit. Delectus in eius et sapiente dignissimos ex. Porro eligendi velit perspiciatis nobis. Sed in est id pariatur.');
INSERT INTO `book_reviews` VALUES (320, 132, 83, 5, 'Quod laborum qui qui. Aliquid optio voluptatum voluptatem quibusdam. Et blanditiis perferendis excepturi iure vel.');
INSERT INTO `book_reviews` VALUES (321, 132, 85, 3, 'Fugiat aut dolores sit aliquid. Debitis est ducimus aut fugit sunt aliquid temporibus. Quae et perferendis in libero.');
INSERT INTO `book_reviews` VALUES (322, 132, 84, 10, 'Ad optio ducimus repellendus consequuntur dolorem alias. Qui ipsa in nam illum autem. Laboriosam voluptas porro atque voluptas.');
INSERT INTO `book_reviews` VALUES (323, 132, 83, 9, 'Accusamus non sequi id quia voluptatibus. Inventore atque voluptatibus dicta blanditiis provident accusamus harum dolorem. Eaque tenetur magnam et nam delectus.');
INSERT INTO `book_reviews` VALUES (324, 133, 84, 10, 'Similique deleniti repellendus soluta aliquam. Maxime repellat suscipit aliquam libero. Repellendus quis et debitis recusandae perferendis eos. Est repellat veritatis eos non ad qui.');
INSERT INTO `book_reviews` VALUES (325, 133, 83, 3, 'Magni voluptatem ad deserunt. Debitis veritatis quibusdam quidem rerum molestiae. Qui illo magnam consectetur ipsam aut.');
INSERT INTO `book_reviews` VALUES (326, 133, 84, 4, 'Consequatur voluptatem sed voluptatum sed sit. Consequatur ea quia rerum. Dolores voluptatem dolores soluta in. Debitis in modi consequatur. Mollitia voluptas quam quod.');
INSERT INTO `book_reviews` VALUES (327, 133, 84, 7, 'Non eius aut magnam dolores. Omnis qui harum iure consequatur inventore consectetur.');
INSERT INTO `book_reviews` VALUES (328, 134, 82, 6, 'Cumque voluptas atque quas commodi perspiciatis. Quia maiores enim qui et aliquam earum tempora. In et nemo tempora magni recusandae aut.');
INSERT INTO `book_reviews` VALUES (329, 134, 84, 8, 'Quisquam natus tenetur molestias. Ullam illum ut sequi corporis. Nam accusamus voluptatum laudantium sed quia non.');
INSERT INTO `book_reviews` VALUES (330, 134, 82, 2, 'Sed optio delectus eaque omnis sed repellendus et. Vel ipsa nihil quia voluptatem in et iure. Nesciunt soluta tenetur beatae non et dignissimos et. Quo est aut accusantium quibusdam vel.');
INSERT INTO `book_reviews` VALUES (331, 134, 85, 8, 'Et officia aut a architecto fuga optio. Ipsum facilis qui neque vel. Id deleniti magnam suscipit.');
INSERT INTO `book_reviews` VALUES (332, 135, 81, 2, 'Consequatur ut sit molestiae aspernatur eos consectetur quasi. Id minus dignissimos rerum. Voluptatibus sit distinctio ipsum laudantium voluptas. Et nam est eligendi nihil rem ipsa cupiditate.');
INSERT INTO `book_reviews` VALUES (333, 135, 85, 3, 'Ipsum illum quas quos quis deleniti animi corporis aut. Tempora saepe soluta inventore eaque. Modi quam reiciendis fugit autem.');
INSERT INTO `book_reviews` VALUES (334, 135, 85, 10, 'Illum repudiandae voluptatum ipsa nesciunt vero optio. Est qui vel ea vel.');
INSERT INTO `book_reviews` VALUES (335, 135, 83, 3, 'Occaecati a sunt dolores perferendis quisquam. Tempora sit cumque qui aut et voluptatem repellendus. Recusandae vel voluptates omnis itaque. Officia eum ut est dolorem nesciunt.');
INSERT INTO `book_reviews` VALUES (336, 136, 85, 10, 'Necessitatibus aut est voluptatem assumenda. Ut dolore numquam vel ea quis quam expedita eveniet. Veniam consequatur rem nam. Explicabo sed nostrum sit tenetur.');
INSERT INTO `book_reviews` VALUES (337, 136, 81, 8, 'Aut asperiores unde vel ab ut blanditiis cupiditate excepturi. Inventore rerum autem dolores vitae ut odio. Laborum eveniet voluptas aut et dolorum.');
INSERT INTO `book_reviews` VALUES (338, 136, 82, 6, 'Sed quia praesentium libero quas. Voluptate accusamus autem sed minus est. Inventore ut voluptatum velit odit quia. Aut eos iusto et est aut est eos numquam. Qui ut ipsum quis id aut.');
INSERT INTO `book_reviews` VALUES (339, 136, 84, 2, 'Voluptate vero aspernatur id in tempore nesciunt. Itaque ea iusto voluptas enim molestiae. Quaerat nulla quasi voluptatem.');
INSERT INTO `book_reviews` VALUES (340, 137, 84, 5, 'Omnis et ab quae laudantium. Libero repellat atque enim velit sed dignissimos. Deserunt recusandae soluta quaerat aut non velit iste eaque.');
INSERT INTO `book_reviews` VALUES (341, 137, 82, 8, 'Qui id omnis voluptate excepturi ut. Vel omnis dolor eaque et. Eveniet reiciendis quis non blanditiis sit cumque. Dolores accusamus quasi consectetur voluptas eum. Nulla eos porro rerum eligendi.');
INSERT INTO `book_reviews` VALUES (342, 137, 82, 8, 'Est nemo qui quisquam quibusdam. Quia nihil velit eius sunt. Quae at perspiciatis et blanditiis maxime.');
INSERT INTO `book_reviews` VALUES (343, 137, 82, 9, 'Aut deleniti officia eligendi rem quia tempora ab eos. Tenetur a tenetur illo non voluptate nam eum qui. Qui nam quidem id suscipit possimus velit et.');
INSERT INTO `book_reviews` VALUES (344, 138, 82, 2, 'Dolorum unde saepe aspernatur earum quasi. Eum qui voluptatum sit autem eius aut. Excepturi quia qui voluptates architecto aut perspiciatis laboriosam.');
INSERT INTO `book_reviews` VALUES (345, 138, 85, 10, 'In temporibus doloremque aspernatur debitis fugit consequuntur. Ut nam ut sit doloribus. Aut quam expedita aperiam assumenda. Libero totam aut maxime et consequuntur.');
INSERT INTO `book_reviews` VALUES (346, 138, 84, 3, 'Asperiores qui maxime ut quam et. Cum laboriosam corrupti odio iure. Nemo non velit nemo officiis unde voluptate rem.');
INSERT INTO `book_reviews` VALUES (347, 138, 81, 9, 'Voluptatem nisi totam at earum perferendis autem. Placeat voluptatem aliquid labore sunt quis. Sit officiis et aliquid dolores. Vitae autem veniam accusamus eum.');
INSERT INTO `book_reviews` VALUES (348, 139, 82, 7, 'Labore illo ipsum magni enim ea. Iusto ex quasi incidunt aut ex quam. Ut ut sequi in voluptas omnis asperiores. Voluptatem esse consectetur velit qui facilis. Aspernatur quod libero et incidunt.');
INSERT INTO `book_reviews` VALUES (349, 139, 81, 4, 'Quidem earum nobis voluptatem sapiente qui assumenda in. Similique deserunt velit voluptatibus qui eveniet et veniam. Fuga nostrum eos vero fuga reiciendis vel qui ut.');
INSERT INTO `book_reviews` VALUES (350, 139, 85, 4, 'Voluptas nihil molestias ipsum aliquid consequuntur. Non et ut harum. Dicta fuga vitae consequatur impedit.');
INSERT INTO `book_reviews` VALUES (351, 139, 83, 4, 'Unde dolorem omnis nobis id. Veniam id explicabo tempore aut nulla.');
INSERT INTO `book_reviews` VALUES (352, 140, 85, 4, 'Minima velit vel itaque. Inventore totam nostrum consequatur sit ut dolorum cum. Labore necessitatibus repellendus tenetur itaque reiciendis. Ex beatae voluptas quibusdam non.');
INSERT INTO `book_reviews` VALUES (353, 140, 81, 5, 'Occaecati quaerat laudantium aut ex quasi. Et odio eveniet ducimus ut et. Quae debitis iure animi nam.');
INSERT INTO `book_reviews` VALUES (354, 140, 84, 10, 'Eaque voluptatem in molestiae eum nostrum reiciendis ipsam earum. Quidem voluptatem doloremque similique fugiat ex. Blanditiis blanditiis sed impedit ab.');
INSERT INTO `book_reviews` VALUES (355, 140, 84, 6, 'Laboriosam et rerum soluta doloribus voluptate quisquam sint saepe. Culpa sed excepturi eos harum maxime illo ratione. Voluptas et et tempore corrupti.');
INSERT INTO `book_reviews` VALUES (356, 141, 81, 10, 'Dignissimos ut et quod ipsa omnis. Numquam eum accusamus alias dolore rerum doloribus. Officiis atque delectus rerum quibusdam voluptatibus. Et voluptatem excepturi corrupti et quis aut.');
INSERT INTO `book_reviews` VALUES (357, 141, 81, 5, 'Ex qui in recusandae corporis rem eligendi repellat. Cupiditate quas necessitatibus vitae et. Dolor optio sapiente omnis voluptas enim ratione.');
INSERT INTO `book_reviews` VALUES (358, 141, 83, 10, 'Est sed eos alias aut quia eos. Distinctio commodi reiciendis totam ad est enim. Ut porro ut similique et ducimus amet nesciunt. Ut porro ipsum tenetur nostrum.');
INSERT INTO `book_reviews` VALUES (359, 141, 83, 5, 'Corrupti sed nam quia autem non in. Vero corporis soluta repudiandae odio voluptate. Est sit numquam optio explicabo molestiae eaque quae eum.');
INSERT INTO `book_reviews` VALUES (360, 142, 85, 1, 'Et fugiat dolor repellat ad soluta amet. Temporibus quasi quis officia et quae consequuntur. Eveniet laudantium velit aperiam ut ut. Aut non nemo vero sunt ea quasi. Ex aut eligendi nemo.');
INSERT INTO `book_reviews` VALUES (361, 142, 81, 3, 'Quia voluptatem officiis blanditiis quia. Sed mollitia quia rerum quibusdam. Et et dolorum consequatur ut quis assumenda possimus. Nulla voluptas quo dolorem.');
INSERT INTO `book_reviews` VALUES (362, 142, 85, 4, 'Veniam ut ea ut voluptatem eius ab. Aut aliquid iusto aut rerum adipisci laborum doloribus. Mollitia hic eum sequi nostrum rem ipsum. Doloremque accusantium in nulla dolor nisi.');
INSERT INTO `book_reviews` VALUES (363, 142, 82, 3, 'Voluptas est eveniet quam. Veniam tempore voluptas ut ducimus veniam. Inventore ad similique est cum molestiae ea iste.');
INSERT INTO `book_reviews` VALUES (364, 143, 85, 2, 'Libero ipsam velit porro nisi non. Soluta omnis perferendis id tempora dolorem soluta unde. Velit a esse est consequatur excepturi corporis. Inventore quaerat libero velit amet suscipit.');
INSERT INTO `book_reviews` VALUES (365, 143, 84, 7, 'Voluptatem qui minus eum quae vero deleniti. Quia consectetur eum delectus qui nisi veritatis dolores. Dolorem est impedit aut nam voluptatem.');
INSERT INTO `book_reviews` VALUES (366, 143, 84, 8, 'Error quod quas odio rem. Sit et dolorum enim. Voluptas enim deleniti dignissimos consequatur. Corporis eos quidem incidunt aut molestiae.');
INSERT INTO `book_reviews` VALUES (367, 143, 82, 8, 'Ut ut et ad et qui quis accusantium. Qui amet ab repudiandae odio et impedit. Autem ratione maxime laudantium nulla. Reiciendis illum vel maxime harum.');
INSERT INTO `book_reviews` VALUES (368, 144, 83, 3, 'Perferendis porro earum cupiditate sed. Ea cupiditate voluptas qui veniam. Voluptatum molestiae in dicta aperiam repellendus. Eos similique nobis inventore illo cupiditate doloribus.');
INSERT INTO `book_reviews` VALUES (369, 144, 85, 7, 'Excepturi et earum facilis omnis sit minima placeat hic. Sit reprehenderit aliquid reprehenderit et.');
INSERT INTO `book_reviews` VALUES (370, 144, 82, 6, 'Eum ea animi quae est quia. Adipisci perferendis aut et nemo. Aperiam sit quia et aut.');
INSERT INTO `book_reviews` VALUES (371, 144, 82, 3, 'Eos cupiditate ipsam aut. Ipsam qui enim dicta id nostrum nihil nam. Quia sint sit rerum adipisci repudiandae ipsam velit. Est animi non ad mollitia. Rerum porro cum numquam quos veritatis.');
INSERT INTO `book_reviews` VALUES (372, 145, 84, 1, 'Quod ea consequatur amet voluptas tempore. Ea quia qui velit qui necessitatibus ex quia dolorem. Modi ut voluptas fugit a exercitationem. Aut alias inventore non quod.');
INSERT INTO `book_reviews` VALUES (373, 145, 83, 1, 'Amet et sed consectetur provident voluptatem et aut. Et natus fugiat autem sed nemo sit. Consequatur cumque autem rerum voluptas veniam unde. Tempora voluptatibus cum quos ut est accusamus eum.');
INSERT INTO `book_reviews` VALUES (374, 145, 82, 5, 'In voluptatem blanditiis magni eius ratione nisi ea. Placeat nobis dignissimos quo ipsam odio ipsum. Dignissimos molestiae qui perferendis eum ab sit aut.');
INSERT INTO `book_reviews` VALUES (375, 145, 83, 8, 'Iste ut nostrum nesciunt deserunt quis. Pariatur non et magnam beatae vitae. Unde eum amet iste totam.');
INSERT INTO `book_reviews` VALUES (376, 146, 82, 3, 'Quia ratione esse aut in omnis quia et necessitatibus. Dolorum ut illo inventore et eaque dolore maxime. Quod veritatis assumenda dolorem omnis corporis aut dolorem.');
INSERT INTO `book_reviews` VALUES (377, 146, 83, 6, 'Aspernatur accusantium ipsam ullam quaerat. Cum nisi deserunt aperiam sed cupiditate quia.');
INSERT INTO `book_reviews` VALUES (378, 146, 85, 3, 'Eos et esse ex consequatur. Est ut velit dolorum sunt inventore commodi dicta. Saepe quo exercitationem est at. Voluptatum atque et qui est quia.');
INSERT INTO `book_reviews` VALUES (379, 146, 84, 8, 'Deleniti esse qui natus expedita dolor omnis. Quia occaecati consectetur iusto at voluptatem et facere fugit. Aliquam totam dignissimos non quia dignissimos dignissimos.');
INSERT INTO `book_reviews` VALUES (380, 147, 85, 3, 'Sed sequi eos facere et ut aperiam neque. Modi asperiores corrupti quaerat et sit a. Consectetur atque quis qui quod vero praesentium.');
INSERT INTO `book_reviews` VALUES (381, 147, 84, 6, 'Ut distinctio et voluptas voluptas cumque veritatis. Est officiis ducimus ut necessitatibus officiis ut et. Iure id doloribus ducimus omnis impedit.');
INSERT INTO `book_reviews` VALUES (382, 147, 84, 4, 'Rerum in perspiciatis atque molestiae. Dicta ratione ipsa quos aut sint ducimus. Tempore quia eum non deserunt accusamus voluptate sapiente sed.');
INSERT INTO `book_reviews` VALUES (383, 147, 82, 6, 'Repellat tempore quis et amet neque rerum deleniti assumenda. Sed recusandae numquam nihil et. Neque iure eos quis aut occaecati repellendus.');
INSERT INTO `book_reviews` VALUES (384, 148, 81, 3, 'Deleniti harum esse qui sed quod nesciunt. Itaque est aut soluta reiciendis et et esse necessitatibus. Id assumenda eum beatae fugiat deserunt temporibus et.');
INSERT INTO `book_reviews` VALUES (385, 148, 83, 1, 'Enim modi et dolor dignissimos qui et. Quo beatae blanditiis amet ab. Suscipit ea sint aliquid expedita est.');
INSERT INTO `book_reviews` VALUES (386, 148, 84, 1, 'Consequatur velit officiis sit sed temporibus. Aut neque dolor pariatur et. Accusamus possimus porro sed. Ea quasi optio qui consectetur. Quis ea quis ab vel vitae nulla impedit debitis.');
INSERT INTO `book_reviews` VALUES (387, 148, 84, 9, 'Blanditiis velit officia odit iure facere. Tempora magni nobis laboriosam natus. Laboriosam aut nesciunt blanditiis quisquam. Assumenda odit vero rem reprehenderit illum sunt eos.');
INSERT INTO `book_reviews` VALUES (388, 149, 81, 2, 'Quasi consequuntur in officiis aut. Cumque optio necessitatibus dolorum odio corporis occaecati aut. Vel assumenda sapiente et ad suscipit.');
INSERT INTO `book_reviews` VALUES (389, 149, 82, 6, 'Sunt at velit molestiae et. Qui eligendi tenetur est officiis ullam possimus ea. Molestiae reiciendis veritatis veritatis aut magni alias et asperiores.');
INSERT INTO `book_reviews` VALUES (390, 149, 83, 2, 'Optio repellat iusto qui quia illum. Sint laudantium aspernatur ratione et esse libero temporibus.');
INSERT INTO `book_reviews` VALUES (391, 149, 82, 10, 'Corporis inventore voluptatem voluptates voluptatem praesentium sunt voluptatem officia. Ad in voluptate sunt eligendi. Possimus ratione veniam provident non debitis.');
INSERT INTO `book_reviews` VALUES (392, 150, 85, 10, 'Libero reiciendis consequuntur quis odit. Necessitatibus incidunt magnam tempore quidem non autem placeat. Tempora recusandae quia sunt nisi et expedita molestiae eum.');
INSERT INTO `book_reviews` VALUES (393, 150, 83, 7, 'Sapiente omnis odio quibusdam neque quod voluptas qui ad. Voluptas et ut asperiores nesciunt expedita. Reprehenderit dolore delectus enim pariatur.');
INSERT INTO `book_reviews` VALUES (394, 150, 81, 4, 'Inventore asperiores atque commodi sint. Exercitationem vel qui rem aliquid veniam. Nihil odit nam aliquid iure.');
INSERT INTO `book_reviews` VALUES (395, 150, 84, 3, 'Ad perspiciatis eveniet laborum ducimus molestiae est et. A aut vel et maiores quis et. Quae vel ea accusantium occaecati beatae.');
INSERT INTO `book_reviews` VALUES (396, 151, 81, 2, 'Sed numquam et sint quibusdam totam repellat et amet. Impedit ea quo voluptas quia illum. Repudiandae minima aliquam dolorem itaque placeat at aut. Rerum esse aut eaque modi voluptates adipisci.');
INSERT INTO `book_reviews` VALUES (397, 151, 81, 2, 'Sit nostrum odio illo ut tenetur dolor. Quisquam deserunt accusamus quam ut voluptatibus. Illum ab illum voluptatum error.');
INSERT INTO `book_reviews` VALUES (398, 151, 81, 1, 'Amet sequi adipisci omnis. Et ratione et non laborum occaecati aspernatur et. Ullam suscipit rerum reiciendis et.');
INSERT INTO `book_reviews` VALUES (399, 151, 83, 3, 'Perferendis eveniet quisquam doloribus sint quisquam aut. Sed minima dolorem veritatis cum modi neque aut. Officiis facere voluptatem sunt quia quasi non veritatis quam.');
INSERT INTO `book_reviews` VALUES (400, 152, 83, 10, 'Corrupti veritatis et nesciunt ab. Est dolores ipsa soluta aut dolorum cupiditate. Tenetur et accusantium libero sunt eos optio. Quia sed id velit. Dignissimos voluptatibus ut nostrum.');
INSERT INTO `book_reviews` VALUES (401, 152, 84, 8, 'Voluptates et est inventore accusantium distinctio reiciendis ducimus. Sit atque et perferendis ut delectus error quaerat.');
INSERT INTO `book_reviews` VALUES (402, 152, 83, 4, 'Ratione quisquam est delectus adipisci molestiae nobis. Iure totam voluptate corporis consequuntur. Sint quas rerum earum quae.');
INSERT INTO `book_reviews` VALUES (403, 152, 83, 10, 'Ea atque ut non consectetur voluptas. Voluptatibus nisi voluptates quisquam quia qui adipisci aut.');
INSERT INTO `book_reviews` VALUES (404, 153, 84, 5, 'Sed at aut asperiores voluptatum. Esse ut repellendus doloremque sint est molestiae sunt. Impedit qui aliquam ut aut accusantium. Consequuntur fugit non aliquid cumque quisquam dolorem.');
INSERT INTO `book_reviews` VALUES (405, 153, 84, 1, 'Molestiae nobis aspernatur sequi eos. Non porro tenetur id accusamus. Ut eos ipsum deserunt.');
INSERT INTO `book_reviews` VALUES (406, 153, 85, 8, 'Totam molestiae excepturi commodi. Sed perferendis enim saepe ut. Sed magni praesentium et. Iure sed officia nulla aperiam.');
INSERT INTO `book_reviews` VALUES (407, 153, 82, 3, 'Praesentium enim voluptas sapiente facere est quas. Harum et praesentium dolor velit minima vitae perspiciatis.');
INSERT INTO `book_reviews` VALUES (408, 154, 83, 3, 'Qui suscipit aut sed expedita officia itaque aspernatur. Voluptate temporibus similique eveniet ut cupiditate.');
INSERT INTO `book_reviews` VALUES (409, 154, 85, 2, 'Necessitatibus labore necessitatibus voluptatem laboriosam officia voluptates. Et sed itaque adipisci nostrum. Incidunt tempore quae necessitatibus. Autem et ipsum non architecto commodi sit ut.');
INSERT INTO `book_reviews` VALUES (410, 154, 81, 3, 'Et veniam ratione consequatur eligendi dolores. Sunt ducimus aspernatur doloribus autem. Aliquam et voluptatem dolorum neque doloribus nisi necessitatibus.');
INSERT INTO `book_reviews` VALUES (411, 154, 84, 6, 'Ea neque laudantium reprehenderit necessitatibus et harum perspiciatis voluptas. Unde dolorum incidunt sit. Voluptatem in hic nesciunt odio laboriosam. Quis sed est quia labore unde illo.');
INSERT INTO `book_reviews` VALUES (412, 155, 83, 10, 'Voluptatum magnam qui eum consequatur molestiae quos. Eligendi minima doloremque amet eos ut laborum. Omnis dolorem qui sint. In fuga quas molestiae. Qui numquam quam harum quaerat ut exercitationem.');
INSERT INTO `book_reviews` VALUES (413, 155, 85, 1, 'Necessitatibus excepturi quod nostrum eveniet quaerat accusamus. Ipsum dolor dolorum aut tempora fugit nesciunt quis similique. Ipsam nihil fugiat nisi.');
INSERT INTO `book_reviews` VALUES (414, 155, 81, 10, 'Ut veniam enim eos beatae enim consectetur autem rerum. Cumque sed aut exercitationem nihil et. Reiciendis omnis quidem quia dolor quia in.');
INSERT INTO `book_reviews` VALUES (415, 155, 82, 9, 'Autem inventore quia tempora est ratione. Doloremque similique voluptatem illo aperiam magni amet omnis. Voluptas ipsum libero culpa dolorum. Doloremque id quo sapiente tempore.');
INSERT INTO `book_reviews` VALUES (416, 156, 82, 6, 'Saepe ab omnis quis necessitatibus odit aut. Dolores reprehenderit harum eum vel consequatur nihil. Voluptas ipsum occaecati sunt corporis ut ratione aut rerum.');
INSERT INTO `book_reviews` VALUES (417, 156, 81, 8, 'Ratione itaque sequi ea in a possimus sint. Similique consequatur unde odit natus eius soluta.');
INSERT INTO `book_reviews` VALUES (418, 156, 85, 4, 'Rerum est voluptas nobis ullam nobis quis. Beatae atque eius voluptatibus hic commodi illo voluptatum. Enim saepe modi debitis sequi.');
INSERT INTO `book_reviews` VALUES (419, 156, 82, 2, 'Voluptas at aut quis libero expedita distinctio. Beatae placeat velit dolor sequi laborum atque voluptate. Ullam aut nesciunt ex quia quas esse voluptatibus.');
INSERT INTO `book_reviews` VALUES (420, 157, 83, 7, 'Natus odio vitae dolores libero. Ducimus et saepe totam voluptatem. Eaque sunt reiciendis ea qui nostrum ipsa. Dignissimos saepe tenetur provident illo ut et hic.');
INSERT INTO `book_reviews` VALUES (421, 157, 81, 8, 'Quisquam aut et ea. Quo ipsum neque sunt quo. Ab voluptatum et labore consequatur aut. Aut iste iste dignissimos aut mollitia reiciendis.');
INSERT INTO `book_reviews` VALUES (422, 157, 81, 8, 'Sequi consequatur sunt et enim minima hic quibusdam. Sapiente suscipit sunt eos nostrum id. Est maiores et voluptatibus quia suscipit sunt et.');
INSERT INTO `book_reviews` VALUES (423, 157, 85, 7, 'Qui nulla accusamus in. Omnis magnam quaerat hic autem distinctio ex dolor. Autem esse vel facilis voluptatum sit. Voluptate maiores aliquid deleniti rerum doloremque.');
INSERT INTO `book_reviews` VALUES (424, 158, 81, 2, 'Enim ea corporis qui adipisci atque enim et hic. Voluptatibus commodi dolores laborum sapiente doloremque.');
INSERT INTO `book_reviews` VALUES (425, 158, 82, 3, 'Magnam voluptas in alias amet voluptatibus deserunt. Quasi quis ea quia iure eligendi. Ut sed ipsam nihil.');
INSERT INTO `book_reviews` VALUES (426, 158, 81, 4, 'Alias sequi itaque minima. Animi tempore autem asperiores mollitia reprehenderit vitae impedit.');
INSERT INTO `book_reviews` VALUES (427, 158, 83, 1, 'Accusantium minus velit voluptate. Et aliquam id debitis atque vel. Sunt id ullam laborum consequuntur dolor officia est. Recusandae culpa iusto ea qui quod sunt modi.');
INSERT INTO `book_reviews` VALUES (428, 159, 82, 8, 'Nisi eum repudiandae vero laborum facilis nihil. Odit facere ut illo ab blanditiis eos repellat. Tempora ipsam eos non. Natus porro nesciunt nihil magnam assumenda enim quo excepturi.');
INSERT INTO `book_reviews` VALUES (429, 159, 84, 3, 'Veritatis ab atque qui consequatur velit. Perspiciatis libero at officia assumenda quam consequatur. Voluptates excepturi ratione ut provident molestias.');
INSERT INTO `book_reviews` VALUES (430, 159, 81, 1, 'Officia voluptatibus blanditiis perspiciatis dolores nulla minima. Alias dolorum ipsa et omnis perferendis mollitia. Dolorum aut aperiam fuga nam provident magnam.');
INSERT INTO `book_reviews` VALUES (431, 159, 84, 5, 'Voluptate aperiam inventore sequi deleniti qui. Et voluptatum nihil error ullam. Vel ea voluptas et. Labore cupiditate tempora quos exercitationem autem non aut.');
INSERT INTO `book_reviews` VALUES (432, 160, 83, 8, 'Voluptas voluptatem deleniti magni in consequatur excepturi omnis atque. Quibusdam aliquam nisi quasi ipsa iure voluptas molestias. Et et quo quo occaecati.');
INSERT INTO `book_reviews` VALUES (433, 160, 81, 1, 'Impedit accusantium mollitia illo in. Impedit rerum doloribus quo aut. Natus voluptatem ex velit. Repellat molestias culpa consequuntur voluptatem a similique.');
INSERT INTO `book_reviews` VALUES (434, 160, 84, 9, 'Non deserunt accusantium necessitatibus ut. Et sapiente quod aut est pariatur quia. Voluptas labore quidem alias adipisci recusandae soluta.');
INSERT INTO `book_reviews` VALUES (435, 160, 81, 1, 'Cumque dolorem ullam at fuga impedit. Porro et quidem quam eum similique fuga.');
INSERT INTO `book_reviews` VALUES (436, 161, 83, 5, 'Et nemo blanditiis ullam inventore. Quis vitae corrupti quia animi ullam. Distinctio culpa facere aut sit omnis eum. Aut odit repellat sit temporibus eum qui nihil adipisci.');
INSERT INTO `book_reviews` VALUES (437, 161, 84, 1, 'Et sed corporis sint non. Voluptatem in amet delectus velit debitis est. Atque voluptatum ut eum et.');
INSERT INTO `book_reviews` VALUES (438, 161, 82, 10, 'Doloribus velit distinctio rerum dolor fugit ipsum ullam. Eum ad quia eos.');
INSERT INTO `book_reviews` VALUES (439, 161, 84, 8, 'Quia accusamus eius culpa omnis. Asperiores exercitationem molestiae tempora voluptas. Qui dolor dolorem velit sit. Id nisi molestiae quia distinctio.');
INSERT INTO `book_reviews` VALUES (440, 162, 82, 6, 'Deserunt non hic voluptatem et iure sed. Placeat alias iste quod quidem et iusto temporibus. Culpa ea sint voluptas et quia et suscipit.');
INSERT INTO `book_reviews` VALUES (441, 162, 81, 9, 'Qui iusto at omnis labore voluptas. Omnis qui non laboriosam. Odit sapiente aut blanditiis harum rem vel rem.');
INSERT INTO `book_reviews` VALUES (442, 162, 85, 10, 'Labore molestiae in rerum eius similique voluptatum porro. Placeat at architecto ab accusamus natus voluptatem molestiae. Quia tempore molestias at et enim animi enim.');
INSERT INTO `book_reviews` VALUES (443, 162, 85, 5, 'Est mollitia doloremque ea natus corrupti. Debitis expedita quo laborum ipsum id et. Optio vel asperiores vitae explicabo doloremque.');
INSERT INTO `book_reviews` VALUES (444, 163, 83, 5, 'Ratione ut ab quia cum officiis aut. Aliquid sed qui quia praesentium rerum perspiciatis natus. Sed hic iusto quia corporis recusandae ab ut tenetur.');
INSERT INTO `book_reviews` VALUES (445, 163, 85, 9, 'Iusto a corrupti sint eos. Enim voluptas sequi repellat. Architecto delectus animi asperiores facere. Cumque cum laudantium a officiis id et ut.');
INSERT INTO `book_reviews` VALUES (446, 163, 83, 3, 'Quos deleniti nisi dolores officia dolore. Omnis natus odit natus ut dolorem optio sint et. Molestiae accusamus rerum enim velit tempore. Magni distinctio eos facere.');
INSERT INTO `book_reviews` VALUES (447, 163, 84, 6, 'Nam atque eos et soluta alias earum et. Eius sint sed iure quo nostrum voluptatem. Excepturi tempora voluptatem et ea est. Explicabo earum perspiciatis expedita unde.');
INSERT INTO `book_reviews` VALUES (448, 164, 84, 2, 'Magni ut sit quos. Magni ipsum in ad iure. Enim at velit adipisci deserunt et. Ab est qui in delectus numquam. Ut optio et unde asperiores ipsa.');
INSERT INTO `book_reviews` VALUES (449, 164, 84, 10, 'Nemo sit quibusdam nesciunt enim culpa praesentium officiis eum. Reiciendis et eos dolor est. Deserunt ut est nemo qui debitis.');
INSERT INTO `book_reviews` VALUES (450, 164, 83, 6, 'Quisquam placeat et rem reiciendis. Voluptatem est quis eveniet nihil rerum aut.');
INSERT INTO `book_reviews` VALUES (451, 164, 85, 4, 'Omnis voluptatibus veritatis aut voluptatibus. Dolore veniam eaque saepe nihil aut. Debitis eaque aut asperiores dolor officia nesciunt assumenda. Itaque rem voluptas ipsam illum officia suscipit.');
INSERT INTO `book_reviews` VALUES (452, 165, 82, 8, 'Ipsum sit officiis illo sint quasi autem. Aliquid at corporis quo veniam quia nam. Quo ratione maiores excepturi rerum temporibus et dicta. Et vel a repellendus illo et quos.');
INSERT INTO `book_reviews` VALUES (453, 165, 82, 9, 'Quia aut ut pariatur porro. In nisi neque eveniet est perspiciatis amet quas illo. Et a quia ipsam delectus qui. Amet totam nisi est illum dolore quam ipsum.');
INSERT INTO `book_reviews` VALUES (454, 165, 85, 3, 'Pariatur reprehenderit et eum iste consequatur. Quia non necessitatibus quos dolore voluptas rerum numquam. Sed sequi possimus repellat qui quia.');
INSERT INTO `book_reviews` VALUES (455, 165, 84, 7, 'Aut laboriosam laudantium ut. Explicabo ea et et veniam. A sint ut aut eaque expedita veniam libero. Mollitia et eligendi dolores veritatis.');
INSERT INTO `book_reviews` VALUES (456, 166, 81, 8, 'Et quam dicta distinctio voluptates voluptatem. Praesentium voluptate qui ut enim ratione fuga. Aut est sed dignissimos.');
INSERT INTO `book_reviews` VALUES (457, 166, 81, 9, 'Molestias et nisi inventore vel esse officiis architecto. Eum explicabo magni atque doloremque necessitatibus est. Nisi culpa quia aut excepturi qui.');
INSERT INTO `book_reviews` VALUES (458, 166, 85, 5, 'Qui et dicta vel vel qui. Quisquam consequatur nihil ipsam quae dolorem officiis saepe. Sit cum fuga autem non tempora quasi nemo.');
INSERT INTO `book_reviews` VALUES (459, 166, 85, 2, 'Velit quas sed enim. Nesciunt voluptatibus illo ut tempore rerum non ex repudiandae. Sapiente et aut suscipit. Eum voluptas numquam sit praesentium quia est.');
INSERT INTO `book_reviews` VALUES (460, 167, 81, 10, 'Deleniti quia eum repellendus corrupti asperiores hic. Eos delectus minus dolorem est autem. Consequatur tempore explicabo provident quam voluptatem culpa.');
INSERT INTO `book_reviews` VALUES (461, 167, 85, 3, 'Ut sint saepe sed fugiat amet impedit et tenetur. Qui pariatur et non eius nobis ut qui. Corporis maxime reprehenderit ea similique.');
INSERT INTO `book_reviews` VALUES (462, 167, 83, 10, 'Omnis voluptas quia quia dolore. Et corporis fugit excepturi sunt. Eum ut et ex reiciendis accusantium.');
INSERT INTO `book_reviews` VALUES (463, 167, 81, 4, 'Sit ea delectus et facilis accusantium. Impedit qui velit distinctio aut. Voluptatem quis libero dolor vel asperiores. Quis modi blanditiis aut voluptatibus laborum quaerat consequatur voluptate.');
INSERT INTO `book_reviews` VALUES (464, 168, 81, 6, 'Sunt non hic temporibus doloribus ab. Ut quia tempora aut iure id laudantium. Sed quia quo animi.');
INSERT INTO `book_reviews` VALUES (465, 168, 85, 10, 'Vero exercitationem et possimus non. Earum et quis deserunt aspernatur. Autem sint enim dignissimos quia quisquam at.');
INSERT INTO `book_reviews` VALUES (466, 168, 82, 7, 'Harum temporibus rem in. Tenetur rerum culpa animi. Saepe non quis non minima. Assumenda nihil doloremque non dignissimos qui sint. Facilis non sunt tempore sed dolor.');
INSERT INTO `book_reviews` VALUES (467, 168, 82, 5, 'Numquam quidem error earum distinctio natus quam. Velit labore nulla architecto placeat aperiam aliquid. Quia et suscipit et qui est eum.');
INSERT INTO `book_reviews` VALUES (468, 169, 82, 6, 'Consequatur voluptatem dignissimos ad eum. Placeat saepe ut laboriosam voluptate enim eos. Aut ipsa soluta saepe inventore nam.');
INSERT INTO `book_reviews` VALUES (469, 169, 82, 2, 'Voluptate alias est id rerum dolor modi. Et eveniet aliquid ipsam. Quia rerum assumenda est qui. Harum veritatis sed veniam et.');
INSERT INTO `book_reviews` VALUES (470, 169, 82, 7, 'Quis quia ut quo sit repudiandae. Quia veniam sed eius doloremque soluta temporibus ut commodi. Fugiat quaerat soluta itaque dolorem atque et quis.');
INSERT INTO `book_reviews` VALUES (471, 169, 82, 2, 'Pariatur soluta sit eligendi adipisci hic maiores. Id error eveniet quis autem et minus quas minima. Fugit est iusto aut incidunt.');
INSERT INTO `book_reviews` VALUES (472, 170, 84, 7, 'Eveniet sit eius et aut odit sed nam soluta. Distinctio reiciendis culpa dolorum cumque voluptas. Debitis odit et aliquid molestiae dolor nulla.');
INSERT INTO `book_reviews` VALUES (473, 170, 81, 9, 'Tempora beatae in recusandae qui. Quaerat cum voluptatem nihil.');
INSERT INTO `book_reviews` VALUES (474, 170, 84, 6, 'Perferendis provident omnis saepe quia atque nesciunt et. Autem optio dolore placeat velit.');
INSERT INTO `book_reviews` VALUES (475, 170, 84, 8, 'Libero qui dolorum et autem non dolorem. Ullam earum sit nobis labore sint.');
INSERT INTO `book_reviews` VALUES (476, 171, 83, 2, 'Officia accusamus quod voluptatibus sit qui esse. Quam error perferendis et sint non illum. Rerum reprehenderit sunt et.');
INSERT INTO `book_reviews` VALUES (477, 171, 82, 8, 'Reprehenderit dolor porro tenetur odit et soluta. Necessitatibus occaecati quaerat voluptas et dicta minima unde. Nobis et molestias atque et ut.');
INSERT INTO `book_reviews` VALUES (478, 171, 81, 8, 'Illo qui voluptate dolore autem esse est veniam. Odit unde cumque sit non. Quos officiis ipsam quis ipsum. Voluptatum molestias cupiditate ut soluta ut fuga quasi.');
INSERT INTO `book_reviews` VALUES (479, 171, 85, 1, 'Eos id illo deserunt laborum. Reiciendis et nostrum reprehenderit qui. Non voluptatem nihil reiciendis aut et dicta adipisci. Reiciendis et quis est dolorem.');
INSERT INTO `book_reviews` VALUES (480, 172, 82, 2, 'Culpa ut at optio quia eos accusantium veritatis voluptate. Nulla in aut nulla ut. Eveniet assumenda minus voluptatem exercitationem quia. Molestiae sint a voluptatem neque aliquid.');
INSERT INTO `book_reviews` VALUES (481, 172, 85, 9, 'Nostrum tempora ullam voluptas et deleniti ut architecto. Laborum quia voluptatum magni nihil mollitia. Debitis rerum id molestiae velit rerum nihil sint.');
INSERT INTO `book_reviews` VALUES (482, 172, 84, 4, 'Similique cumque iusto at consequuntur. Illo id alias et repellat animi quis. Mollitia expedita blanditiis dolorem voluptatibus. Excepturi quia recusandae eum recusandae quas aperiam velit.');
INSERT INTO `book_reviews` VALUES (483, 172, 85, 3, 'Sint veniam consectetur soluta porro autem harum. Deserunt aut est incidunt earum veritatis est. Accusamus illo id quidem sapiente ullam culpa placeat. Est aut excepturi vel dignissimos rem quis.');
INSERT INTO `book_reviews` VALUES (484, 173, 84, 1, 'Autem sit aliquid cumque qui. Nam dolor dignissimos mollitia labore. Facere et harum mollitia nulla omnis ad corporis.');
INSERT INTO `book_reviews` VALUES (485, 173, 82, 9, 'Sequi quia expedita assumenda et. Voluptas eveniet quia deserunt natus quisquam. Delectus iure mollitia quis quos. Neque quia est praesentium officiis.');
INSERT INTO `book_reviews` VALUES (486, 173, 83, 5, 'Modi quam possimus dolorem et sed fuga. Aliquam omnis quisquam laudantium cum similique. Animi voluptatum animi nobis consequuntur repudiandae et.');
INSERT INTO `book_reviews` VALUES (487, 173, 81, 2, 'Aspernatur eaque repudiandae voluptatem ut. Sunt natus exercitationem et pariatur dolore ipsam. Dolor cum occaecati quo deserunt corrupti.');
INSERT INTO `book_reviews` VALUES (488, 174, 83, 7, 'Beatae quos porro aut sunt. Ut aut optio autem laborum enim quia laborum. Dolor nihil iusto et qui. Ex deleniti molestias distinctio non quos.');
INSERT INTO `book_reviews` VALUES (489, 174, 83, 7, 'Non et impedit eum deleniti. Mollitia provident omnis nulla officia debitis sed sed.');
INSERT INTO `book_reviews` VALUES (490, 174, 84, 4, 'Eum consectetur illo quia error. Libero porro earum et saepe qui debitis quaerat. Voluptatem a est et iste nostrum quo laudantium possimus.');
INSERT INTO `book_reviews` VALUES (491, 174, 85, 8, 'Expedita itaque quod adipisci nihil natus quo. Impedit et placeat amet tenetur molestiae. Quidem repudiandae error soluta ea.');
INSERT INTO `book_reviews` VALUES (492, 175, 83, 4, 'Placeat et odio ut harum accusantium eligendi. Amet commodi omnis ut eligendi. Quo saepe cum assumenda cumque voluptas.');
INSERT INTO `book_reviews` VALUES (493, 175, 81, 7, 'Quasi ut et voluptatem et est. Eius error repellendus id quisquam rerum tempore quod. Maiores culpa veniam asperiores fuga porro fuga ipsam et.');
INSERT INTO `book_reviews` VALUES (494, 175, 83, 5, 'Praesentium provident numquam sunt est provident exercitationem. Facilis aspernatur inventore amet et consectetur quae. Maxime rerum ut delectus. Eligendi et ut praesentium quas at saepe consequatur.');
INSERT INTO `book_reviews` VALUES (495, 175, 82, 6, 'Ab eveniet molestiae et minima aut qui odit. Odit mollitia saepe et itaque. Quo enim molestiae non perferendis aliquid. Quisquam esse quae quia veniam.');
INSERT INTO `book_reviews` VALUES (496, 176, 82, 8, 'Consequatur id modi est consectetur quod. Veritatis voluptas similique dolores saepe. Et aut libero quas dolorem repellat ut commodi.');
INSERT INTO `book_reviews` VALUES (497, 176, 85, 9, 'Quaerat aut doloremque dolores cum ea inventore. Sequi debitis facere assumenda et asperiores quisquam repellendus.');
INSERT INTO `book_reviews` VALUES (498, 176, 82, 8, 'Consectetur tempora eius earum officiis pariatur sed accusamus. Enim omnis veniam illo corporis dignissimos. Autem voluptatem sapiente quo similique consequatur blanditiis.');
INSERT INTO `book_reviews` VALUES (499, 176, 82, 6, 'Rerum voluptatibus expedita aut quod. Amet id cupiditate veritatis nam numquam.');
INSERT INTO `book_reviews` VALUES (500, 177, 81, 7, 'Ut illo aut quia voluptas dolore minima at. Et tenetur quidem quis numquam voluptate molestias ratione. Qui esse recusandae eveniet nesciunt accusantium laboriosam distinctio.');
INSERT INTO `book_reviews` VALUES (501, 177, 81, 1, 'Excepturi ut quia sequi saepe. Ipsum accusamus aspernatur illo animi deleniti. Error voluptas quae ad iste explicabo enim cumque.');
INSERT INTO `book_reviews` VALUES (502, 177, 81, 4, 'Quo modi omnis mollitia sint assumenda quia nisi. Aliquid molestias culpa sint sit aut molestiae sequi. In id autem molestias et cum.');
INSERT INTO `book_reviews` VALUES (503, 177, 83, 8, 'Doloremque nihil ullam repellat perferendis. Laborum sed fugit dolore accusantium repellat dolorem. Expedita reprehenderit velit quia. Quo modi omnis quia dolores id.');
INSERT INTO `book_reviews` VALUES (504, 178, 82, 1, 'Cupiditate asperiores illum pariatur sed enim. Aut inventore ut quas occaecati. Minus commodi repellat quia quas.');
INSERT INTO `book_reviews` VALUES (505, 178, 82, 1, 'Est distinctio nemo et animi earum aut. Iste est rerum nobis blanditiis odio eum magnam. Repudiandae id voluptas quia sint aut quod ipsum.');
INSERT INTO `book_reviews` VALUES (506, 178, 84, 5, 'Voluptatibus cupiditate suscipit ea natus delectus ullam vitae quam. Voluptatem impedit blanditiis quia. Ex pariatur itaque beatae ducimus non voluptatibus.');
INSERT INTO `book_reviews` VALUES (507, 178, 82, 3, 'Ut soluta dolorem et et dolorem. Similique eum ipsa deserunt.');
INSERT INTO `book_reviews` VALUES (508, 179, 83, 6, 'Cum numquam soluta consectetur cum ut. Et voluptates quo tempora omnis.');
INSERT INTO `book_reviews` VALUES (509, 179, 81, 9, 'Odit est repellendus id impedit et. Quos enim earum blanditiis blanditiis quis eaque. Corporis earum qui et quod. Et blanditiis et molestiae eveniet. Amet blanditiis ut non laborum.');
INSERT INTO `book_reviews` VALUES (510, 179, 81, 9, 'Temporibus dignissimos occaecati iste veritatis ad culpa. Consequatur qui dolore explicabo illo maiores amet eum.');
INSERT INTO `book_reviews` VALUES (511, 179, 84, 2, 'Quas magnam quasi est est. Assumenda optio laborum et minus a. Labore dolorum debitis fuga quibusdam adipisci et dolores. Ab consequatur nihil saepe qui iusto.');
INSERT INTO `book_reviews` VALUES (512, 180, 81, 5, 'Qui sapiente non velit aut ad laboriosam. Delectus soluta aperiam sunt ut consequuntur dolorum commodi dolore. Aliquam et eveniet temporibus non unde.');
INSERT INTO `book_reviews` VALUES (513, 180, 83, 9, 'Atque dolorem omnis ut. Ratione est quasi eveniet quaerat exercitationem. Et perspiciatis dolore eaque aperiam impedit.');
INSERT INTO `book_reviews` VALUES (514, 180, 84, 6, 'Quos aliquid nihil nesciunt explicabo. Aliquam rerum ab provident quae maiores eius omnis temporibus. Ab repudiandae sed dolorem cupiditate sit consequatur repudiandae.');
INSERT INTO `book_reviews` VALUES (515, 180, 84, 9, 'Incidunt impedit voluptatibus possimus odit omnis. Incidunt adipisci quibusdam sed et doloremque necessitatibus. Nisi praesentium qui provident consequatur.');
INSERT INTO `book_reviews` VALUES (516, 181, 83, 2, 'Quibusdam voluptas sequi eius molestiae explicabo quos. Officia beatae corporis maiores voluptatibus et. Omnis numquam libero dolorem repellat. Delectus aut ex aut autem.');
INSERT INTO `book_reviews` VALUES (517, 181, 82, 9, 'Iste qui dolores voluptates et illo consequatur voluptate. Qui error quidem voluptates maxime nesciunt quidem eos. Nisi possimus quo eaque provident commodi officiis distinctio laborum.');
INSERT INTO `book_reviews` VALUES (518, 181, 81, 4, 'Minima iure dolores quo natus. Qui harum aut alias quia id. Aut sit perferendis quia aliquam.');
INSERT INTO `book_reviews` VALUES (519, 181, 84, 9, 'Voluptatem qui voluptate ut dignissimos sint porro molestias. Sint molestiae delectus quod assumenda eum quod. Quo eos placeat ut veniam non incidunt qui. Ducimus enim molestias ut.');
INSERT INTO `book_reviews` VALUES (520, 182, 82, 4, 'Quam odit dolores officia cumque possimus amet. Rerum quod aperiam et harum molestiae. Quia repudiandae eius nam debitis. Sint iste voluptate optio.');
INSERT INTO `book_reviews` VALUES (521, 182, 85, 2, 'Modi laudantium ducimus sequi eveniet. Rem et id voluptas. Aspernatur accusamus repellendus cumque ut quis eum sint qui. Voluptatum dolor quidem velit animi necessitatibus iste.');
INSERT INTO `book_reviews` VALUES (522, 182, 82, 3, 'Labore doloribus incidunt occaecati odit eum. Laboriosam sint quod similique. Harum magnam sed ducimus nam et laudantium non.');
INSERT INTO `book_reviews` VALUES (523, 182, 84, 6, 'Excepturi voluptatem soluta sunt excepturi facere. Aut sit nemo recusandae perferendis. Nesciunt consectetur dicta quas magnam numquam nulla est. Ut assumenda vel aut tempora voluptatem.');
INSERT INTO `book_reviews` VALUES (524, 183, 84, 6, 'Doloribus voluptas officia fuga voluptatem cupiditate in voluptas omnis. Voluptate voluptas voluptatum maxime nemo voluptatibus repellendus laborum. Velit eos praesentium qui sed nihil porro harum.');
INSERT INTO `book_reviews` VALUES (525, 183, 82, 7, 'Veniam aut ratione perspiciatis quo iste. Optio sunt consequatur ut iure facere. Non aliquam aliquid delectus facilis suscipit corporis.');
INSERT INTO `book_reviews` VALUES (526, 183, 84, 5, 'Et illo commodi non consequatur sed consequatur a. Voluptate enim nihil id optio. Voluptate sit dicta voluptas voluptatibus quo. Quis cupiditate commodi maxime accusantium aut necessitatibus.');
INSERT INTO `book_reviews` VALUES (527, 183, 84, 5, 'Omnis aut rerum reprehenderit. Officiis et rerum molestiae eos. Quia in sit est quod.');
INSERT INTO `book_reviews` VALUES (528, 184, 83, 6, 'Necessitatibus voluptates maiores ut quia sequi. Porro et praesentium earum ducimus non. Et et libero saepe voluptas.');
INSERT INTO `book_reviews` VALUES (529, 184, 85, 2, 'Fugiat consectetur cumque ut unde. Reprehenderit nihil ratione asperiores harum unde nobis corrupti nesciunt. Excepturi ducimus expedita suscipit repellat esse doloremque cum.');
INSERT INTO `book_reviews` VALUES (530, 184, 81, 10, 'Alias vel ipsum autem modi qui. Vero non quae aspernatur. Et aliquid aut earum fuga accusantium enim. Aut accusantium tempora rerum dignissimos.');
INSERT INTO `book_reviews` VALUES (531, 184, 85, 7, 'Molestiae omnis ut amet cumque impedit. In et cumque deleniti ullam. Inventore est officia et rerum. Id et error non dolore illum.');
INSERT INTO `book_reviews` VALUES (532, 185, 82, 9, 'Ullam est cumque consequatur atque harum rem. Perspiciatis dolorem esse atque numquam. Excepturi corporis voluptas impedit commodi et facere.');
INSERT INTO `book_reviews` VALUES (533, 185, 85, 8, 'Sequi et molestiae recusandae adipisci dolores libero. Omnis eos quo porro qui amet est omnis in. Rerum et voluptas blanditiis sed. At totam odio ut temporibus consectetur.');
INSERT INTO `book_reviews` VALUES (534, 185, 83, 7, 'Voluptatibus voluptatum aliquid ut alias ea reiciendis. Reprehenderit ipsam modi ab voluptatem aut et. Quo accusantium veniam accusantium eius iusto. Labore enim non nemo consequatur voluptas dolor.');
INSERT INTO `book_reviews` VALUES (535, 185, 81, 2, 'Non adipisci laboriosam omnis fugiat enim. Asperiores consequatur autem dolorem molestiae. A architecto laudantium et in. Et voluptatibus est quibusdam nesciunt vitae et vitae.');
INSERT INTO `book_reviews` VALUES (536, 186, 81, 2, 'Et dolorem fugit ut praesentium. Vitae optio odit aut eveniet ut ut ipsa alias. Ea et deserunt neque provident quis aspernatur tempore blanditiis. Eum sapiente inventore veritatis ex.');
INSERT INTO `book_reviews` VALUES (537, 186, 83, 2, 'Culpa minus pariatur molestias quibusdam qui maiores rerum. Ipsa recusandae ad perferendis impedit voluptatibus. Ut quis quasi a. Modi tempore dolorum accusamus qui doloribus sit.');
INSERT INTO `book_reviews` VALUES (538, 186, 81, 8, 'Ab earum voluptatem dolor esse voluptatem commodi. Ab eos delectus reiciendis est. Fugit illo quos qui nobis velit dicta aliquam. Qui eligendi voluptate excepturi ex sed aut sit.');
INSERT INTO `book_reviews` VALUES (539, 186, 84, 4, 'Sit nostrum et ullam commodi. Illum laborum dolores dolorem veritatis voluptatem eius. Minus rerum ad aut fugit eligendi magnam veritatis cumque.');
INSERT INTO `book_reviews` VALUES (540, 187, 85, 2, 'Quidem sit at sed tempora maiores nobis quidem sunt. Suscipit et ipsam nihil. Iure consequatur architecto quisquam et. Magni molestiae consequatur amet laboriosam.');
INSERT INTO `book_reviews` VALUES (541, 187, 81, 9, 'Cum dolor enim fugit. Ut ipsam error quia quibusdam beatae ipsum.');
INSERT INTO `book_reviews` VALUES (542, 187, 83, 2, 'Assumenda ullam quae ea ex vel. Minima vel delectus quod tenetur nihil nemo sed alias. Autem sed nemo cum velit tempora necessitatibus.');
INSERT INTO `book_reviews` VALUES (543, 187, 84, 7, 'Id nam sint magni quo corrupti eligendi eligendi. Ut sed consequatur placeat maiores hic. Dicta cupiditate architecto officia voluptatibus ducimus.');
INSERT INTO `book_reviews` VALUES (544, 188, 81, 10, 'Itaque dolorum fugiat voluptates. Ipsa et autem nihil. Sed nam ullam explicabo autem.');
INSERT INTO `book_reviews` VALUES (545, 188, 84, 5, 'Est in expedita cumque et officiis et. Quis occaecati enim eius recusandae praesentium ut neque mollitia. Eius quis corrupti omnis.');
INSERT INTO `book_reviews` VALUES (546, 188, 85, 7, 'Praesentium occaecati minima vel voluptatibus. Et quam deserunt non beatae. Accusantium quia voluptatem ab. Sequi veniam aut ut consequatur autem est soluta.');
INSERT INTO `book_reviews` VALUES (547, 188, 83, 2, 'Corrupti ex rem ab velit. Error qui odit ab beatae voluptatem sint aut. Optio dolorem mollitia dolor ipsam at saepe.');
INSERT INTO `book_reviews` VALUES (548, 189, 82, 7, 'Enim ab non nihil libero. Fugiat ut libero nobis eius rerum. Soluta quo quasi doloremque deserunt est ad. Rerum ut nihil distinctio impedit quam autem earum.');
INSERT INTO `book_reviews` VALUES (549, 189, 82, 9, 'Excepturi corrupti et qui quis. Nobis nobis architecto impedit voluptas occaecati quisquam. Hic et et est alias. Aspernatur explicabo quia dolorem vel esse.');
INSERT INTO `book_reviews` VALUES (550, 189, 83, 1, 'Voluptas nemo aut aut. Unde iure sunt quibusdam modi ducimus dolore. Ipsa illum recusandae at ea a error placeat. Corporis odit consequatur quos incidunt omnis.');
INSERT INTO `book_reviews` VALUES (551, 189, 85, 9, 'Ipsum sint deleniti quia minus. Maiores excepturi in ea enim incidunt sequi. Sequi perspiciatis omnis error et qui. Sit deleniti numquam aut.');
INSERT INTO `book_reviews` VALUES (552, 190, 82, 6, 'Modi ullam quibusdam minus adipisci nulla sint accusantium. Vitae quo labore nemo minima rerum. Corrupti minima dolor voluptates hic.');
INSERT INTO `book_reviews` VALUES (553, 190, 82, 4, 'Quia repellat voluptatibus est veritatis. Voluptatum ut odit facere soluta. Est dignissimos quo laudantium.');
INSERT INTO `book_reviews` VALUES (554, 190, 82, 4, 'Eum aliquam tenetur minus qui assumenda. Aut nobis unde dolores excepturi. Et error praesentium mollitia nulla nesciunt quisquam quisquam labore. Dolor rerum corporis optio sint inventore nesciunt.');
INSERT INTO `book_reviews` VALUES (555, 190, 82, 5, 'Quam suscipit molestiae commodi ullam. Animi atque exercitationem cum asperiores harum in. Tempora est soluta earum. Fugit aut velit fugit rerum earum facilis.');
INSERT INTO `book_reviews` VALUES (556, 191, 81, 9, 'Dolores dolores dolores voluptates est soluta iure totam id. Corporis eligendi cumque earum. Rerum pariatur doloribus alias.');
INSERT INTO `book_reviews` VALUES (557, 191, 81, 10, 'Eveniet impedit animi et corrupti magnam. Eligendi qui a velit id eum veniam esse. Alias omnis deserunt fuga ipsam labore et voluptas officiis. Quasi qui illo sit voluptatem accusamus rerum ipsa.');
INSERT INTO `book_reviews` VALUES (558, 191, 84, 7, 'Eaque et perspiciatis pariatur qui. Quas laborum et a molestiae. Quisquam et et fugiat iure magni. Eius in optio sapiente odio.');
INSERT INTO `book_reviews` VALUES (559, 191, 81, 2, 'Dignissimos facere ut explicabo nesciunt. Doloremque officia quasi nihil. Tenetur et nisi ut incidunt vitae enim ut.');
INSERT INTO `book_reviews` VALUES (560, 192, 83, 3, 'Quia reiciendis ut praesentium quae omnis. Aliquid fugit fugiat quod vero consequatur est. Adipisci optio aut reprehenderit vel alias. Aut dignissimos vitae ad nihil.');
INSERT INTO `book_reviews` VALUES (561, 192, 81, 5, 'Dolorum ut vitae rerum. Libero quo voluptas ea quisquam debitis soluta accusantium. Quibusdam repudiandae quo harum necessitatibus. Cum voluptatem distinctio omnis quae rerum.');
INSERT INTO `book_reviews` VALUES (562, 192, 84, 2, 'Molestiae officia earum ut quis voluptatem nisi quia. Eaque voluptatem non earum sunt magnam neque. Possimus exercitationem architecto quasi corrupti commodi et. Non fuga ea voluptatem nobis.');
INSERT INTO `book_reviews` VALUES (563, 192, 83, 1, 'Incidunt ea corporis non inventore. Distinctio ipsam iure voluptatibus amet qui sint. Nesciunt in numquam in omnis libero qui suscipit.');
INSERT INTO `book_reviews` VALUES (564, 193, 82, 5, 'Dolor est cum quia reprehenderit quia. Consequatur at nam voluptatem et sit veniam quo. Quia suscipit sunt maxime est.');
INSERT INTO `book_reviews` VALUES (565, 193, 82, 2, 'Enim id delectus et sit aspernatur soluta nam. Et esse qui totam facere. Aliquam ipsa nesciunt ex quos eos doloremque consequuntur.');
INSERT INTO `book_reviews` VALUES (566, 193, 85, 7, 'Est sed laborum recusandae unde. Et at ullam harum est. Quia esse aut totam fugiat neque ipsa voluptates vel. Velit numquam accusantium quia porro.');
INSERT INTO `book_reviews` VALUES (567, 193, 81, 8, 'Consequuntur adipisci porro molestiae ut et. Laboriosam incidunt veniam alias temporibus provident. A qui cumque doloremque provident. Distinctio doloribus ex maiores doloribus quidem.');
INSERT INTO `book_reviews` VALUES (568, 194, 84, 3, 'Aliquid libero aut quaerat nisi reprehenderit. Officiis sunt provident voluptas voluptatem voluptatem nobis voluptatem. Qui dolores vel laborum omnis. Ut vitae assumenda suscipit excepturi.');
INSERT INTO `book_reviews` VALUES (569, 194, 83, 2, 'Sint optio at voluptatem aut eveniet. Sed accusantium numquam facilis dolorum omnis pariatur possimus. Aliquam quasi vel ut. Molestiae autem nesciunt deserunt dolore dolores ipsam incidunt.');
INSERT INTO `book_reviews` VALUES (570, 194, 81, 4, 'Ex ipsam labore nam qui necessitatibus ea similique. Asperiores aspernatur expedita non et eum totam accusamus ipsam. Facere asperiores consequatur natus consequuntur qui.');
INSERT INTO `book_reviews` VALUES (571, 194, 85, 6, 'Nihil fuga sed eaque temporibus quisquam. Voluptas maiores impedit et. Vitae omnis at officia magni dicta accusamus. Et a maxime velit et et. Est aliquid deleniti necessitatibus dolor exercitationem.');
INSERT INTO `book_reviews` VALUES (572, 195, 81, 3, 'Nesciunt debitis voluptatibus culpa totam. Suscipit qui veritatis est commodi. Sit aliquid rerum consequatur quos dolorum maiores occaecati.');
INSERT INTO `book_reviews` VALUES (573, 195, 83, 9, 'Eius vero dolor ut. Voluptatem est reiciendis voluptatem ipsam sunt. Ut consequatur rerum ut est quia eaque.');
INSERT INTO `book_reviews` VALUES (574, 195, 83, 5, 'Voluptas saepe consequatur numquam corporis pariatur. Sint assumenda et praesentium distinctio placeat. Magni vel et vitae ut aut totam. Rerum voluptatem eos dolor et facilis explicabo dolorem.');
INSERT INTO `book_reviews` VALUES (575, 195, 82, 5, 'Et debitis voluptas omnis sed numquam. Quia similique fuga voluptatibus ut non ut rem. Officiis qui totam impedit minus deleniti saepe tenetur. Eveniet nostrum illo velit nihil voluptas omnis.');
INSERT INTO `book_reviews` VALUES (576, 196, 84, 1, 'A optio maiores alias accusantium enim itaque. Accusantium laudantium sint pariatur delectus fugiat accusantium deleniti. Sed a voluptatum aut unde.');
INSERT INTO `book_reviews` VALUES (577, 196, 85, 1, 'Voluptate iusto corrupti quia vero. Deserunt quis fuga nisi eligendi numquam officia. Quia et qui dolore sed. Optio magnam assumenda ut ullam ducimus accusamus.');
INSERT INTO `book_reviews` VALUES (578, 196, 83, 5, 'Ut aut et dolores adipisci. Consequatur nisi dolorem ab voluptate saepe et quas. Nemo voluptas magnam eius. Consequatur ipsam aut qui nostrum magni. Iusto molestias repellat quidem eius odio est.');
INSERT INTO `book_reviews` VALUES (579, 196, 83, 7, 'Nisi et labore temporibus ut vel. Voluptas laboriosam et ut veritatis. Sit ea earum ut laboriosam assumenda placeat necessitatibus.');

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
) ENGINE = InnoDB AUTO_INCREMENT = 197 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (106, '9782020191630', 'Sed dignissimos distinctio quaerat impedit explicabo.', 'Rem voluptate est reiciendis iste iure sint mollitia. Nihil fugiat autem odit voluptatem. Nisi voluptatem expedita tempora tempore. Quia sunt autem sit laboriosam.', 15.00, 1985);
INSERT INTO `books` VALUES (107, '9787649084585', 'Sit aperiam labore hic repellendus et aut.', 'Et unde asperiores corporis qui. Consequuntur maxime earum et nulla quos. Quibusdam ex assumenda quis necessitatibus voluptas quam sunt libero.', 19.00, 1917);
INSERT INTO `books` VALUES (108, '9784336926456', 'Mollitia culpa quis nobis aut cumque occaecati hic.', 'Tempora suscipit temporibus voluptatem est ut iusto. Facilis aut reprehenderit et et reprehenderit. Eligendi quae rem porro pariatur voluptatibus quis.', 8.00, 1908);
INSERT INTO `books` VALUES (109, '9797318578192', 'Molestiae expedita tempora rerum reiciendis.', 'Voluptatem fugit nemo aut temporibus aperiam qui. Molestias tempora neque nostrum. Quam quia accusantium molestias non aut accusamus sequi.', 8.00, 1999);
INSERT INTO `books` VALUES (110, '9798143893962', 'Et maiores ea voluptatem reiciendis repellendus doloremque.', 'Et ut sit non iure consequuntur. Accusantium voluptas omnis nisi odio libero ea necessitatibus. Nam aut et praesentium nisi aliquam.', 19.00, 1935);
INSERT INTO `books` VALUES (111, '9794535255387', 'Omnis eligendi ea blanditiis omnis officiis aut provident.', 'Vitae et facere dolore inventore. Doloribus dolorem et ea neque porro. Nihil voluptatem nihil maiores ut.', 9.00, 1976);
INSERT INTO `books` VALUES (112, '9794716516603', 'Eos cumque eos quidem dignissimos et et.', 'Molestiae maxime inventore id quis eaque vitae quisquam labore. Dolor quod dolores nulla. Suscipit quisquam et eligendi a recusandae corrupti. Quas itaque minus iusto.', 23.00, 1973);
INSERT INTO `books` VALUES (113, '9789350710074', 'Doloribus est magnam eveniet illum ut hic et cum.', 'Molestias eligendi sunt officia voluptas labore rem magni. Ab velit alias eum inventore rerum quo consequatur. Inventore distinctio ut porro autem blanditiis ut.', 22.00, 1968);
INSERT INTO `books` VALUES (114, '9794384504889', 'Et distinctio hic non harum deserunt doloremque.', 'Ea sint qui eius veniam sit neque incidunt. Nostrum delectus perferendis vel optio porro est vitae. Magnam quidem vel laborum fugiat natus est reiciendis incidunt.', 20.00, 1925);
INSERT INTO `books` VALUES (115, '9797368345782', 'Pariatur aliquam molestias sunt commodi et magnam.', 'Neque quos rerum quo error. Dolorum incidunt fugiat minima eum et.', 10.00, 1984);
INSERT INTO `books` VALUES (116, '9790898588827', 'Et soluta iusto odit.', 'Quibusdam voluptates odit eius officia laudantium ut sapiente id. Officia at est praesentium id et aut. Sit quasi provident rerum cumque. Ea eos id est exercitationem qui dolor nam qui.', 6.00, 1925);
INSERT INTO `books` VALUES (117, '9781524761592', 'Nostrum dolor incidunt enim quod.', 'Quo eum qui odit ad similique sed. Aut atque non amet non tempora vitae aliquid facilis. Rerum iusto nemo assumenda sed sit. Aut ratione tenetur quo ipsum ut ab earum.', 22.00, 1998);
INSERT INTO `books` VALUES (118, '9786064035066', 'Nesciunt reprehenderit dolores odit et repudiandae at ut.', 'Aspernatur voluptas exercitationem in sit consequatur. Sed et aut itaque ipsa aut dolores optio corporis. Nulla autem eum consequuntur sunt aspernatur. Et reprehenderit voluptate porro totam.', 5.00, 1989);
INSERT INTO `books` VALUES (119, '9791813644017', 'Quia laboriosam quibusdam voluptatum.', 'Tempore non pariatur non harum quia. Reiciendis debitis facere eveniet. Id deleniti id ea asperiores architecto molestiae. Illum perspiciatis ex neque ut iusto et expedita.', 12.00, 1971);
INSERT INTO `books` VALUES (120, '9793929651125', 'Impedit veritatis praesentium impedit vero.', 'Eligendi officiis sit aut dolorem iste omnis. Incidunt error nam omnis tempore. Ipsam error sed rerum doloribus ullam doloribus.', 25.00, 1981);
INSERT INTO `books` VALUES (121, '9782803708451', 'Placeat ut non et eius rerum error neque.', 'Quam saepe delectus ut. Est repudiandae deleniti in eligendi eum consequatur voluptas. Placeat animi quae dolore dolore vel repudiandae cumque.', 9.00, 2012);
INSERT INTO `books` VALUES (122, '9783794510924', 'Autem alias voluptatem molestias incidunt veritatis corrupti reprehenderit.', 'Sed aut facere culpa nobis nostrum. Qui non nesciunt non sint minus expedita.', 20.00, 1996);
INSERT INTO `books` VALUES (123, '9796441337133', 'Ut sed expedita suscipit est consequatur qui voluptatum.', 'Commodi necessitatibus sed officia et iure. Pariatur esse asperiores quo pariatur neque. Velit modi illo quis et aut.', 12.00, 1964);
INSERT INTO `books` VALUES (124, '9799861955758', 'Molestiae eum ut ipsam accusamus est magni qui.', 'Magnam blanditiis sit repellendus earum asperiores autem. Exercitationem perspiciatis et optio. Sit sint fugiat dolore dolorum autem ut.', 13.00, 2011);
INSERT INTO `books` VALUES (125, '9789703435487', 'Iusto non et praesentium.', 'Ducimus voluptatibus possimus in molestiae. Aspernatur ad et numquam doloribus magni totam inventore ut. Unde sint vero impedit ad possimus quod. Ut laborum qui recusandae quis.', 5.00, 1915);
INSERT INTO `books` VALUES (126, '9793389766124', 'Sequi in dolorem harum unde esse.', 'Sed necessitatibus non quia asperiores. Est adipisci quo non omnis dolorem sint voluptatem. Tempora nemo nemo consequatur est et. Vel quo voluptas sint magnam.', 10.00, 1934);
INSERT INTO `books` VALUES (127, '9796497401086', 'Qui tenetur aut laudantium omnis magni impedit.', 'Autem velit sit adipisci repudiandae animi autem. Voluptate possimus velit ut veritatis quas est. Facere accusamus et autem repellat eum officia quam. Voluptas dolor et ut eligendi repudiandae cum.', 18.00, 1957);
INSERT INTO `books` VALUES (128, '9798604102138', 'Quaerat sequi nulla nihil consequatur sit facilis autem minus.', 'Illo et id officia itaque corrupti ratione. Ut iure itaque esse ea ut voluptas totam. Molestiae consequatur ut aspernatur quam quos doloremque. Dolore et est delectus amet molestiae voluptas.', 25.00, 1957);
INSERT INTO `books` VALUES (129, '9781232043072', 'Aut sint ea cumque maxime expedita asperiores.', 'Architecto et quis veniam. Rem omnis quis nisi magnam non ipsa maxime. Qui ea harum ratione maxime molestias ut consequatur. Illum consequuntur et aut sapiente quia excepturi.', 14.00, 1906);
INSERT INTO `books` VALUES (130, '9796911731409', 'Odit beatae ab vel perspiciatis cupiditate.', 'Est molestias est eum provident pariatur. Labore itaque sint saepe maiores. Libero quae omnis id harum est. Nostrum sit sunt deserunt aut enim est in.', 22.00, 1938);
INSERT INTO `books` VALUES (131, '9796449117898', 'Quo consequatur quis at facilis qui.', 'Rerum modi illum aliquid aut non aliquam quis magnam. Consequuntur ut autem beatae ab rerum ex. Quos autem ea similique et non.', 5.00, 1938);
INSERT INTO `books` VALUES (132, '9796495730256', 'Recusandae sint natus debitis ullam praesentium molestiae debitis.', 'Temporibus qui facilis blanditiis neque et. Id minus corporis fugiat sit porro nulla quis. Asperiores molestias earum veniam quia. Qui quas voluptatem est dolore impedit nihil quis.', 7.00, 1988);
INSERT INTO `books` VALUES (133, '9785945779587', 'Explicabo ut quis dolorem accusantium beatae ex enim.', 'Perferendis vel saepe minima omnis vel. Voluptate voluptate labore reiciendis ducimus assumenda. Officiis cumque aut quasi voluptates culpa non neque.', 23.00, 1959);
INSERT INTO `books` VALUES (134, '9782533370577', 'Omnis quaerat impedit modi illum rerum accusamus architecto.', 'Ratione voluptas quo esse qui omnis. Quia quae perspiciatis provident quas sint. Est porro occaecati est dicta sequi sunt.', 21.00, 1966);
INSERT INTO `books` VALUES (135, '9793379142440', 'Nobis repellat voluptatibus omnis pariatur.', 'Voluptas maxime quia et. Ut quo occaecati ducimus minus aliquid. Odio labore omnis omnis a deleniti. Fuga debitis deserunt quibusdam inventore ut odit aut. Molestiae labore nulla totam aliquid et.', 20.00, 1929);
INSERT INTO `books` VALUES (136, '9784720818619', 'Culpa dolorem modi cupiditate quibusdam.', 'Et voluptatem quisquam hic reiciendis velit neque ipsum. Et quis voluptas et quis itaque. Quaerat eius rerum beatae quis delectus qui et et. Est impedit repellat eum ab.', 21.00, 1916);
INSERT INTO `books` VALUES (137, '9797328234477', 'Aut eligendi pariatur vel magnam deserunt occaecati qui.', 'Maiores et illo voluptas deleniti. Architecto quos dolorem fuga. Veniam dolore molestias harum debitis blanditiis velit autem. Aut accusamus sequi ipsum quasi voluptate provident.', 24.00, 2016);
INSERT INTO `books` VALUES (138, '9792025002848', 'Tenetur dolorem inventore assumenda nihil reprehenderit.', 'Provident alias nihil tempora odit molestias. Laudantium sequi pariatur consequuntur magni. Dolorem quos ut voluptatem aut repudiandae deserunt non ipsum.', 13.00, 2018);
INSERT INTO `books` VALUES (139, '9792210641876', 'Neque facilis rerum eius consectetur tenetur consequatur temporibus quis.', 'Aut facere et distinctio sed ut modi repellat est. Rem rerum voluptatem voluptatem omnis deserunt odio. Cupiditate iusto quia non ad a et. Cum in perspiciatis delectus assumenda.', 8.00, 1962);
INSERT INTO `books` VALUES (140, '9796598388804', 'Impedit sint iusto neque earum harum rerum.', 'Incidunt ab maiores sequi quia. Nobis sed saepe dolores natus. Nisi quia tempore dicta non molestiae architecto.', 25.00, 1973);
INSERT INTO `books` VALUES (141, '9787894100986', 'Ex voluptatem eligendi nesciunt rerum velit nobis culpa.', 'Voluptas id sit vel. Quia maiores et porro consequatur soluta nihil voluptas.', 8.00, 1993);
INSERT INTO `books` VALUES (142, '9796697745768', 'Quia eligendi voluptates nam tenetur enim.', 'Assumenda corporis ipsum magni id id rem. Omnis voluptatem architecto accusantium est corrupti. Ratione quae rem est aut ea minima deserunt.', 25.00, 1964);
INSERT INTO `books` VALUES (143, '9788843820931', 'Ea fuga velit dicta enim error illo mollitia.', 'Ea molestiae et perspiciatis praesentium. Sit voluptas expedita aut consequatur. Quia sint et explicabo veniam porro sed. Est soluta quasi eius quis necessitatibus velit autem.', 6.00, 1968);
INSERT INTO `books` VALUES (144, '9780293222594', 'Voluptas placeat omnis aut iste corrupti.', 'Accusantium magnam voluptates quibusdam ut quo magni autem. Quisquam nisi ut cupiditate laboriosam consequuntur quia quibusdam. Ut qui autem ducimus esse ducimus mollitia reiciendis.', 7.00, 1933);
INSERT INTO `books` VALUES (145, '9785400510311', 'Veniam quasi atque at sint.', 'Voluptatem aliquam exercitationem quae repellendus provident quos. Ad velit optio optio eos qui non. Impedit nemo dolores ut iste nostrum.', 7.00, 1955);
INSERT INTO `books` VALUES (146, '9788500495564', 'Enim facere impedit accusamus.', 'Non qui repellendus praesentium ullam qui aperiam autem. Aspernatur et pariatur dolores quos saepe cumque autem. Ducimus recusandae reprehenderit nihil nihil amet dolorum.', 10.00, 1974);
INSERT INTO `books` VALUES (147, '9790434404857', 'Inventore et occaecati est quas facere.', 'Quis deserunt possimus architecto minima non et atque. Aut eveniet perferendis amet qui expedita voluptas. Eum autem voluptates labore ut consequatur et.', 25.00, 1971);
INSERT INTO `books` VALUES (148, '9785604909676', 'Voluptatem odio cupiditate sed aut molestiae et.', 'Et quis quo pariatur autem. Architecto molestias sunt quidem quia atque necessitatibus tenetur. Vero laborum quia temporibus dolor laudantium sint nihil.', 24.00, 1974);
INSERT INTO `books` VALUES (149, '9796259379356', 'Similique et veritatis quos provident quia.', 'Omnis odit earum voluptatem perspiciatis distinctio. Officiis atque nisi facere aperiam sit suscipit. Non voluptas est eum.', 11.00, 2001);
INSERT INTO `books` VALUES (150, '9783299620814', 'Sed voluptatem sint ipsum corporis.', 'Tempora at similique ducimus quo ea porro. Aut odit et hic corrupti quia dignissimos rerum.', 11.00, 1937);
INSERT INTO `books` VALUES (151, '9788328302341', 'Clean code', 'Lorem ipsum', 12.25, 2000);
INSERT INTO `books` VALUES (152, '9781036452100', 'Fugiat sequi fugit at.', 'Consectetur dolores consequatur recusandae nesciunt. Impedit consequatur sit vero voluptas occaecati nemo nihil.', 19.00, 2011);
INSERT INTO `books` VALUES (153, '9791817802260', 'Vel placeat velit et eos consequatur.', 'Dolores praesentium doloribus nisi impedit pariatur veritatis. Dignissimos laborum sit et maxime praesentium. Atque aperiam quia harum non cum suscipit sint.', 12.00, 2012);
INSERT INTO `books` VALUES (154, '9790286803839', 'Sit mollitia voluptas quo voluptatem expedita eligendi consequatur dolores.', 'Reprehenderit ipsum eius ut veniam et debitis. Non enim ducimus reprehenderit quia ut dolorem. Ab est quas inventore quo optio.', 21.00, 2007);
INSERT INTO `books` VALUES (155, '9790677618882', 'Quis aut quod alias alias est dolore.', 'Tempore qui fugiat molestias ex doloremque ratione labore. Autem nihil amet voluptas. Dolor soluta occaecati ut ut voluptas. Quia qui in aut officia.', 19.00, 1914);
INSERT INTO `books` VALUES (156, '9783708376714', 'Consequuntur vero autem impedit consequuntur.', 'Modi laborum ipsum quam nemo ut qui temporibus. Consequuntur impedit aperiam doloremque sed ut dignissimos voluptate. Exercitationem incidunt dicta et impedit.', 24.00, 1937);
INSERT INTO `books` VALUES (157, '9794288432783', 'Harum dolorum dolorum et facilis enim.', 'Ipsum in beatae ullam dolorum quis. Deleniti placeat dolores quis qui. Delectus laboriosam quia a fugiat eos. Incidunt expedita molestias rem ipsam est velit repudiandae.', 9.00, 1909);
INSERT INTO `books` VALUES (158, '9783424984859', 'Et corrupti officiis est ut est.', 'Totam enim inventore nemo eveniet iste eius corrupti. Vel voluptas esse qui hic sunt maxime. Ipsam sed dolor est facilis quam.', 25.00, 1933);
INSERT INTO `books` VALUES (159, '9791236347564', 'Praesentium mollitia consectetur corrupti nulla et dolores molestias cum.', 'Nisi dolorem officiis quidem quis quod vel minus suscipit. Porro aspernatur maiores dolorem accusantium quia. Sed quo unde eligendi voluptatum et et suscipit.', 7.00, 1900);
INSERT INTO `books` VALUES (160, '9782970552994', 'Reprehenderit ipsum impedit ratione aut sint fuga.', 'Delectus perferendis saepe aut itaque. Voluptatem quisquam quod ex et vel accusantium distinctio. Architecto debitis similique in libero. Et eum iure debitis nam vitae nobis.', 11.00, 1925);
INSERT INTO `books` VALUES (161, '9797662383978', 'Earum blanditiis voluptas aut enim dignissimos veniam aut.', 'Qui sequi nostrum quae accusantium fugit velit ducimus. Illo debitis necessitatibus quo amet et. Autem illum et quam praesentium enim.', 18.00, 1933);
INSERT INTO `books` VALUES (162, '9789427691336', 'Laborum dolorem harum qui qui ut.', 'Adipisci consequatur et et adipisci consequatur. Voluptatem ratione voluptatem accusamus incidunt. In est eum perspiciatis inventore deserunt quaerat sit.', 20.00, 1912);
INSERT INTO `books` VALUES (163, '9785180348715', 'Cumque sit et ullam aut deserunt hic esse.', 'Dolorem quae aspernatur sequi laudantium atque. Sit voluptas iste occaecati quod non perspiciatis a. Autem sint ea aut illum praesentium nostrum omnis voluptate.', 15.00, 1987);
INSERT INTO `books` VALUES (164, '9794143616426', 'Omnis repellendus facere recusandae quo quis dignissimos.', 'Ex magnam perferendis porro commodi sunt non at veritatis. Suscipit beatae est dolorum velit. Et quis laboriosam laudantium voluptatibus dolor sequi quia similique.', 14.00, 1988);
INSERT INTO `books` VALUES (165, '9791934653936', 'Consequatur culpa qui enim voluptas quod voluptates.', 'Impedit dolores et et. Officia voluptatem omnis ullam sit. Ratione aut molestiae fugiat numquam. Est veritatis repellat iusto in ut.', 13.00, 1923);
INSERT INTO `books` VALUES (166, '9790722360247', 'Ex ea ea repudiandae aliquam laborum.', 'Molestiae distinctio et non nemo. Necessitatibus impedit dolorem sit at assumenda quod debitis nobis.', 18.00, 1900);
INSERT INTO `books` VALUES (167, '9793881264685', 'Hic ipsa nesciunt molestias est molestiae enim.', 'Nisi alias omnis at magnam tempora qui cupiditate. Saepe eius magni facilis et inventore provident sunt.', 11.00, 2013);
INSERT INTO `books` VALUES (168, '9790700073848', 'Dignissimos cumque incidunt unde rerum minima exercitationem quo.', 'Laborum error velit odio et quia autem sequi. Libero dignissimos consequatur maxime placeat quia totam voluptatum atque. Est pariatur esse qui necessitatibus.', 21.00, 1970);
INSERT INTO `books` VALUES (169, '9787872451482', 'Magnam ut quidem dignissimos doloribus consectetur et.', 'Aspernatur dolor unde sed necessitatibus vitae fugit. Error aut consequatur sint.', 23.00, 1907);
INSERT INTO `books` VALUES (170, '9794438949505', 'Numquam voluptas non sint qui praesentium.', 'Omnis ullam maiores est esse qui. Aspernatur blanditiis eos velit nihil a et quam. Ex rerum cum qui aliquid ipsam non suscipit. Omnis aut illum minus non commodi.', 9.00, 2018);
INSERT INTO `books` VALUES (171, '9799959997127', 'Repudiandae esse nihil pariatur ut nostrum consequatur.', 'Suscipit quos explicabo consequatur inventore vitae. Alias tempore rerum eos quia. Enim aliquam omnis est officia deleniti a sequi. Omnis consequatur nobis repellat dolore in.', 13.00, 1914);
INSERT INTO `books` VALUES (172, '9796678755670', 'Autem ab ducimus voluptas quod eveniet.', 'Modi ipsa id ut ducimus dolorem consectetur asperiores. Voluptas sequi minima qui nostrum dolor. Voluptatem ratione totam expedita tempora. A modi qui sapiente qui voluptate quod soluta.', 21.00, 1911);
INSERT INTO `books` VALUES (173, '9783550811937', 'Consequatur molestiae voluptatem voluptatem excepturi vitae est aut.', 'Sed qui omnis nulla fugit. Dolorem pariatur dignissimos ut beatae. Non et at nulla quod rem.', 5.00, 2011);
INSERT INTO `books` VALUES (174, '9792790365643', 'Voluptatem sunt voluptatum dolores voluptatem quod omnis omnis.', 'Sed illo rerum fugit consequatur fugit. Sint voluptatum sint sit eligendi officia. Recusandae iusto sed distinctio incidunt. Placeat culpa occaecati rerum natus vel.', 22.00, 1976);
INSERT INTO `books` VALUES (175, '9788011659790', 'Molestiae et quia occaecati incidunt odit ut.', 'Eos temporibus quo dicta possimus itaque qui. Esse quos ab consequatur odit quia. Dolor voluptatem minima voluptatem nihil accusantium sit sint.', 11.00, 1927);
INSERT INTO `books` VALUES (176, '9795358791731', 'Voluptatem sint quo ut dignissimos neque ex nobis.', 'Doloribus assumenda adipisci eveniet dolore. Et dolorum sapiente harum. Aut aut consequatur impedit aut ut id. Quasi eaque aut alias sunt aperiam dolorum.', 15.00, 1924);
INSERT INTO `books` VALUES (177, '9780679280156', 'Maiores officia nesciunt aut et exercitationem laboriosam.', 'Eius dolorum aut provident dolorem suscipit dolores vero. Repudiandae distinctio non placeat vitae eius quae aut.', 7.00, 1902);
INSERT INTO `books` VALUES (178, '9783065880749', 'Expedita aliquid atque rerum nihil laborum.', 'Maiores quidem molestias libero est optio molestiae fuga. In omnis quasi voluptatibus rerum qui minus fugit mollitia. Incidunt recusandae amet velit sed. Dolor repudiandae magnam sunt adipisci.', 7.00, 1901);
INSERT INTO `books` VALUES (179, '9796027944489', 'Beatae aspernatur animi et et consequatur cumque officia eius.', 'Sunt vero amet omnis delectus consequatur molestiae veritatis. Id dolores eligendi provident voluptas. In quas ut doloribus et illo.', 14.00, 1927);
INSERT INTO `books` VALUES (180, '9788018061534', 'Molestias repudiandae veritatis laboriosam iusto molestiae doloribus ut.', 'Non nobis rerum accusamus. Quia doloribus voluptatibus beatae veritatis ea. Sint ut porro nam porro illo. Omnis neque qui officiis sed reiciendis sit. Ut eveniet vero et quia.', 8.00, 1928);
INSERT INTO `books` VALUES (181, '9788355982967', 'Ullam quia laudantium voluptates officia.', 'Cumque quas sit sit dolorum sit repellendus. Et nisi qui ullam qui possimus natus. Soluta omnis ut quia ducimus.', 6.00, 2000);
INSERT INTO `books` VALUES (182, '9792723253726', 'Consequatur nesciunt omnis itaque eos voluptates fuga.', 'Quia voluptas laboriosam sit aut at sint. Accusantium aliquid nobis quisquam et. Officiis officiis ut amet maxime qui.', 25.00, 1941);
INSERT INTO `books` VALUES (183, '9794120032867', 'Vero aut quia incidunt.', 'Accusamus ducimus magnam omnis quod quam consequuntur dolores qui. Perferendis nihil placeat laudantium sint. Iste consequatur repudiandae ea velit dolor quia tenetur.', 21.00, 1901);
INSERT INTO `books` VALUES (184, '9797535224940', 'Ut deleniti id labore aliquam aliquam.', 'Explicabo ducimus quia non sit impedit. Dolores est assumenda excepturi et a rerum explicabo. Quas omnis incidunt quia ea voluptas.', 15.00, 1988);
INSERT INTO `books` VALUES (185, '9792680084418', 'Deleniti velit sed libero earum.', 'Rerum est eum reprehenderit. Earum nulla ut animi iste dolor animi.', 5.00, 2011);
INSERT INTO `books` VALUES (186, '9786601942673', 'Tempore provident doloribus corrupti inventore.', 'Iusto eveniet qui harum harum. Aut quae aut tempore nisi dolorem pariatur est. Sed non illo quo est ad culpa est.', 12.00, 1913);
INSERT INTO `books` VALUES (187, '9788159059964', 'Ut ut est et.', 'Dolor possimus non beatae vitae qui voluptatibus ut. Consectetur voluptatum consequatur officiis sint consequatur. Et non voluptate perspiciatis aut. Ad nihil accusamus deleniti accusamus aut nam.', 23.00, 1945);
INSERT INTO `books` VALUES (188, '9793685969250', 'Eos veniam et tempora ex.', 'Repudiandae aut voluptatum sed placeat. Cumque deserunt ducimus nobis et ad.', 19.00, 1964);
INSERT INTO `books` VALUES (189, '9783689206130', 'Maiores quis eaque tempora debitis saepe voluptatibus sed.', 'Cupiditate natus vel praesentium quaerat quas. Dolore incidunt consequatur dolorem modi ut corrupti voluptas asperiores. Non aut molestiae velit eum.', 23.00, 2018);
INSERT INTO `books` VALUES (190, '9790703136915', 'Autem et et vero quasi omnis molestiae.', 'Reprehenderit reiciendis dolorum dolorum vel. Ipsum id fugit cumque est illum praesentium. Explicabo qui in nihil qui at occaecati.', 25.00, 1959);
INSERT INTO `books` VALUES (191, '9787079742307', 'Explicabo placeat aut quod nostrum recusandae qui.', 'Repudiandae culpa voluptates perspiciatis. Pariatur ut dolor ipsum aliquid. Ad earum maiores sit id. Exercitationem eos libero eos ad voluptatem commodi vitae. Voluptas doloremque ut rerum.', 13.00, 2019);
INSERT INTO `books` VALUES (192, '9795467142134', 'Consequuntur voluptate magnam vel non sit at.', 'Quisquam id debitis atque est dolorum occaecati. Et sit asperiores quos magni. Harum occaecati cupiditate nostrum magnam.', 12.00, 1906);
INSERT INTO `books` VALUES (193, '9799851639286', 'Expedita consequuntur et quia blanditiis ex exercitationem odio.', 'Quidem officia aliquam neque. Atque unde sint voluptatem inventore nesciunt labore voluptatem nemo. Ut necessitatibus consequatur delectus eum quisquam.', 7.00, 1985);
INSERT INTO `books` VALUES (194, '9795234834880', 'Dolores modi ea veniam quis at beatae.', 'Est placeat sint rerum cum repellendus quaerat. Vero sunt quod voluptatem alias. Pariatur ducimus ea quibusdam ut.', 14.00, 1958);
INSERT INTO `books` VALUES (195, '9782266284097', 'Veniam magni deleniti earum aut dolores eveniet perferendis.', 'Corporis reiciendis consequatur eos. Autem est necessitatibus ratione autem perspiciatis optio vel. Iste deleniti perspiciatis rerum itaque.', 8.00, 2009);
INSERT INTO `books` VALUES (196, '9791457135544', 'Est eos nisi rerum quo aut.', 'Aut fuga et reiciendis consequuntur non. Ut officiis dolore repudiandae odit. Explicabo quia ipsum eligendi temporibus fugit deserunt quis. Aperiam sit quisquam vitae.', 17.00, 1993);

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
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (75, 'Dr. Jarred Thompson II', 'litzy33@example.net', '2024-10-16 10:58:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4MNQGjBYKgvttcQmG6sGxVowDh2yA0xxzLTopBVoYurnNieYDpkzKnb4oK4D', 0, 'avfUKGI7uw', '2024-10-16 10:58:43', '2024-10-16 10:58:43');
INSERT INTO `users` VALUES (76, 'Estell Russel', 'koelpin.daija@example.org', '2024-10-16 10:58:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5V5s9HL8WlFPIpHyNcLDLbvcJhdQ1SjBmPZMoRFInpRiZPJq7u5SndBAAjGs', 0, 'LoE2eq20Iq', '2024-10-16 10:58:43', '2024-10-16 10:58:43');
INSERT INTO `users` VALUES (77, 'Vida Gaylord', 'rylan48@example.com', '2024-10-16 10:58:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '39DnHJAko9eIlEhzAcA4X3CGvMUF2mJ96HTRynDS5uOkbimvvDVuuFCwl8PG', 0, 'RHfm34Adcy', '2024-10-16 10:58:43', '2024-10-16 10:58:43');
INSERT INTO `users` VALUES (78, 'Dylan Raynor', 'bernie28@example.com', '2024-10-16 10:58:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TX1mIaVifEkVh1pgUMKtVXS0QLomuBEdkkYRL5GTkPMZZAOY72qX3O4HzA6Z', 0, 'GpNfj5prYT', '2024-10-16 10:58:43', '2024-10-16 10:58:43');
INSERT INTO `users` VALUES (79, 'Dr. Christian Ferry', 'ashly72@example.com', '2024-10-16 10:58:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PJyQYCHfRLBvEiqd9cBBOx5x8GrojQ8iV09tQfn7r751acCWknoC7uhS3fEd', 0, 'r0vmETlkRy', '2024-10-16 10:58:43', '2024-10-16 10:58:43');
INSERT INTO `users` VALUES (80, 'Myrtle Conroy MD', 'bogan.rebeka@example.com', '2024-10-16 10:58:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'daQH7zrqWbAsIsRQ1hIV4h5eOBwG2tAGGmoQqiwgKSgzwdnYLYSJNBkJJLji', 1, 'w7fsFRSjVu', '2024-10-16 10:58:43', '2024-10-16 10:58:43');
INSERT INTO `users` VALUES (81, 'Bernice Huels Jr.', 'kferry@example.org', '2024-10-16 11:03:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZPor9wGy5udOS3xHve55LjXSu6gbeXdIeV0aJ4l4y1vlCvagi703kknPorFc', 0, 'YMFqTVYS2l', '2024-10-16 11:03:32', '2024-10-16 11:03:32');
INSERT INTO `users` VALUES (82, 'Pascale Mann Jr.', 'goyette.burnice@example.org', '2024-10-16 11:03:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JgpBXoCFZWrRcWOOwBqfngINICGSlzu4X9jbuUCJGKY3Z7dv8J6f5xqsRGzZ', 0, 'lTtjPxeChX', '2024-10-16 11:03:33', '2024-10-16 11:03:33');
INSERT INTO `users` VALUES (83, 'Verda Muller', 'benton83@example.com', '2024-10-16 11:03:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sNwxoRex7lPLKBoSY9pcOYMFM9tkRfyCQ7WgI51Aif9IAdczRVCWd98PZU2Z', 0, 'EmzCYjxmCm', '2024-10-16 11:03:33', '2024-10-16 11:03:33');
INSERT INTO `users` VALUES (84, 'Prof. Monique Cole', 'lydia.borer@example.net', '2024-10-16 11:03:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vvK7brIjBRcD051naI4fscOJMneZs3Cw5gFECOU9unmexabZAZypnHDOpD2o', 0, 'S8JvuE77ka', '2024-10-16 11:03:33', '2024-10-16 11:03:33');
INSERT INTO `users` VALUES (85, 'Prof. Rebecca Wiegand', 'arielle.barton@example.net', '2024-10-16 11:03:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3gp2tA2hRxILpj3TDGLzRi3IuBjamgAOclJHr6vudbPSGprnP34s927HNtqW', 0, 'na04RM0bjM', '2024-10-16 11:03:33', '2024-10-16 11:03:33');
INSERT INTO `users` VALUES (86, 'Mohammed Gibson', 'pat85@example.net', '2024-10-16 11:03:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'COhL2IjJwikAVoTqcky2llDZoKdcwiTOB5hiVIPU1tvQC2eTU1vonSBuTQVq', 1, '4Dmb4mPnrZ', '2024-10-16 11:03:33', '2024-10-16 11:03:33');

SET FOREIGN_KEY_CHECKS = 1;
