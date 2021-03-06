USE `kwit`;

SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE user;
ALTER TABLE user
  AUTO_INCREMENT = 1;
INSERT INTO user (email, password_hash, salary_day, role) VALUES
  ('mksn13@gmail.com', '$2a$12$5EeGW2rSJVdrg4g8bp9g0exNjaGsjHNAq0BkR6UTU5baFr8Y3i522', 24, 'ADMIN'),
  ('young0@fotki.com', '$2a$12$5EeGW2rSJVdrg4g8bp9g0exNjaGsjHNAq0BkR6UTU5baFr8Y3i522', 14, 'USER'),
  ('lee1@toplist.cz', '$2a$12$5EeGW2rSJVdrg4g8bp9g0exNjaGsjHNAq0BkR6UTU5baFr8Y3i522', 15, 'USER'),
  ('hernandez2@globo.com', '$2a$12$5EeGW2rSJVdrg4g8bp9g0exNjaGsjHNAq0BkR6UTU5baFr8Y3i522', 16, 'USER'),
  ('chapman3@chicagotribune.com', '$2a$12$5EeGW2rSJVdrg4g8bp9g0exNjaGsjHNAq0BkR6UTU5baFr8Y3i522', 14, 'USER'),
  ('stone4@unesco.org', '$2a$12$5EeGW2rSJVdrg4g8bp9g0exNjaGsjHNAq0BkR6UTU5baFr8Y3i522', 10, 'USER'),
  ('gibson5@51.la', '$2a$12$5EeGW2rSJVdrg4g8bp9g0exNjaGsjHNAq0BkR6UTU5baFr8Y3i522', 1, 'USER'),
  ('patterson6@odnoklassniki.ru', '$2a$12$5EeGW2rSJVdrg4g8bp9g0exNjaGsjHNAq0BkR6UTU5baFr8Y3i522', 17, 'USER'),
  ('diaz7@ocn.ne.jp', '$2a$12$5EeGW2rSJVdrg4g8bp9g0exNjaGsjHNAq0BkR6UTU5baFr8Y3i522', 18, 'USER'),
  ('sanders8@freewebs.com', '$2a$12$5EeGW2rSJVdrg4g8bp9g0exNjaGsjHNAq0BkR6UTU5baFr8Y3i522', 28, 'USER'),
  ('murray9@squidoo.com', '$2a$12$5EeGW2rSJVdrg4g8bp9g0exNjaGsjHNAq0BkR6UTU5baFr8Y3i522', 6, 'USER');

TRUNCATE TABLE currency;
ALTER TABLE currency
  AUTO_INCREMENT = 1;
INSERT INTO currency (code, symbol, is_prefix) VALUES
  ('BYN', 'Br', FALSE),
  ('RUB', '₽', TRUE),
  ('EUR', '€', TRUE),
  ('USD', '$', TRUE),
  ('PLN', 'zł', FALSE);

TRUNCATE TABLE wallet;
ALTER TABLE wallet
  AUTO_INCREMENT = 1;
INSERT INTO wallet (user_id, currency_id, name, balance, type) VALUES
  (1, 5, 'Flipopia', 51.7269, 'SAVING'),
  (1, 5, 'Yodel', 615.2785, 'SAVING'),
  (1, 4, 'Brainverse', 401.126, 'NORMAL'),
  (1, 2, 'Jaloo', 754.1037, 'NORMAL'),
  (1, 4, 'Omba', 616.9132, 'NORMAL'),
  (1, 1, 'Shuffledrive', 674.3469, 'NORMAL'),
  (1, 1, 'Tagchat', 863.0407, 'NORMAL'),
  (1, 3, 'Blognation', 98.0336, 'NORMAL'),
  (1, 1, 'Jazzy', 78.8319, 'NORMAL'),
  (1, 4, 'Oyoba', 424.6274, 'NORMAL'),
  (1, 1, 'Mynte', 107.7902, 'NORMAL'),
  (1, 1, 'Blogpad', 350.9001, 'NORMAL'),
  (1, 3, 'Riffpedia', 244.5383, 'NORMAL'),
  (1, 2, 'Skipfire', 790.3616, 'NORMAL'),
  (1, 4, 'Zava', 623.4604, 'NORMAL'),
  (1, 5, 'Abatz', 772.4133, 'NORMAL'),
  (1, 2, 'Yombu', 833.9008, 'NORMAL'),
  (1, 5, 'Kazu', 790.5152, 'NORMAL'),
  (1, 1, 'Rhybox', 902.27, 'NORMAL'),
  (1, 3, 'Quimm', 244.7861, 'NORMAL');


TRUNCATE TABLE category;
ALTER TABLE category
  AUTO_INCREMENT = 1;
INSERT INTO category (user_id, name, type) VALUES
  (1, 'Mycobutin', 'OUTGO'),
  (1, 'Heartburn Relief', 'INCOME'),
  (1, 'Nicotine Polacrilex, Original', 'OUTGO'),
  (1, 'LOreal Paris ', 'INCOME'),
  (1, 'Topiramate', 'OUTGO'),
  (1, 'SoonSoo gargle', 'INCOME'),
  (1, 'Linden Pollen', 'OUTGO'),
  (1, 'Duck Feathers', 'INCOME'),
  (1, 'Acetazolamide', 'OUTGO'),
  (1, 'Gehwol FUSSKRAFT Callus Softener', 'INCOME'),
  (1, 'caffeine citrate', 'OUTGO'),
  (1, 'granisetron hydrochloride', 'INCOME'),
  (1, 'UTRASURE', 'OUTGO'),
  (1, 'Wal Zan 75', 'INCOME'),
  (1, 'Extreme GH', 'OUTGO'),
  (1, 'Nimbex', 'INCOME'),
  (1, 'topcare allergy relief', 'OUTGO'),
  (1, 'LEVETIRACETAM', 'INCOME'),
  (1, 'Gemfibrozil', 'OUTGO'),
  (1, 'Junel Fe 1.5/30', 'INCOME'),
  (1, 'Instant Hand Sanitizer Blue Raspberry', 'OUTGO'),
  (1, 'OLEA EUROPAEA POLLEN', 'INCOME'),
  (1, 'Crestor', 'OUTGO'),
  (1, 'Crinone', 'INCOME'),
  (1, 'Ocean Potion Instant Dry 70 Mist Sunscreen', 'OUTGO'),
  (1, 'Isosorbide Mononitrate', 'INCOME'),
  (1, 'DayTime Cold and Flu', 'OUTGO'),
  (1, 'Quetiapine Fumarate', 'INCOME'),
  (1, 'Amoxicillin', 'OUTGO'),
  (1, 'Mometasone Furoate', 'INCOME'),
  (1, 'BAYBERRY POLLEN', 'OUTGO'),
  (1, 'SODIUM SULFACETAMIDE AND SULFUR', 'INCOME'),
  (1, 'RheumatismHP', 'OUTGO'),
  (1, 'Ondansetron Hydrochloride', 'INCOME'),
  (1, 'Nitrofurantoin (macrocrystals)', 'OUTGO'),
  (1, 'Stomach Relief', 'INCOME'),
  (1, 'Ketoconazole', 'OUTGO'),
  (1, 'Voraxaze', 'INCOME'),
  (1, 'diltiazem hydrochloride', 'OUTGO'),
  (1, 'Fulton Street Market Clearlax', 'INCOME');

TRUNCATE TABLE transaction;
ALTER TABLE transaction
  AUTO_INCREMENT = 1;
INSERT INTO transaction (user_id, wallet_id, category_id, sum, date) VALUES
  (1, 7, 28, 32.5444, '2017-01-26 09:56:28'),
  (1, 5, 34, 70.9401, '2016-07-30 20:07:48'),
  (1, 3, 33, 23.8773, '2017-04-16 09:11:06'),
  (1, 12, 3, 76.933, '2016-10-06 12:19:11'),
  (1, 5, 40, 84.872, '2017-01-27 11:17:09'),
  (1, 17, 25, 44.847, '2017-02-02 00:33:06'),
  (1, 17, 35, 32.8444, '2017-01-21 18:20:27'),
  (1, 8, 28, 36.9055, '2016-11-16 23:26:21'),
  (1, 8, 24, 37.6572, '2016-07-04 06:05:58'),
  (1, 9, 13, 3.0132, '2017-01-10 04:55:56'),
  (1, 13, 40, 85.7433, '2016-07-25 11:01:16'),
  (1, 10, 14, 17.9597, '2016-11-08 16:41:42'),
  (1, 11, 20, 6.8444, '2016-12-30 07:31:58'),
  (1, 13, 23, 85.9544, '2016-05-17 13:50:14'),
  (1, 9, 2, 67.6171, '2016-09-19 23:29:03'),
  (1, 10, 15, 53.5755, '2016-07-17 03:18:50'),
  (1, 16, 23, 40.1054, '2017-03-09 12:10:31'),
  (1, 12, 38, 39.8991, '2017-01-11 03:54:47'),
  (1, 18, 40, 78.9164, '2016-06-24 05:41:53'),
  (1, 3, 19, 75.8302, '2017-01-21 15:12:38'),
  (1, 6, 12, 63.0793, '2016-12-04 18:45:40'),
  (1, 7, 1, 6.1531, '2016-08-14 16:28:26'),
  (1, 19, 34, 62.9285, '2017-03-18 16:49:53'),
  (1, 13, 12, 88.8921, '2016-09-17 17:55:19'),
  (1, 10, 10, 86.5849, '2016-11-13 18:33:46'),
  (1, 9, 40, 16.1192, '2016-11-28 03:18:00'),
  (1, 20, 37, 48.3338, '2016-07-20 04:40:41'),
  (1, 12, 5, 83.8416, '2016-06-13 05:37:34'),
  (1, 15, 24, 67.7846, '2017-05-05 07:33:10'),
  (1, 14, 17, 55.5687, '2017-01-22 04:30:59'),
  (1, 17, 21, 66.848, '2017-02-04 19:16:39'),
  (1, 13, 22, 57.1039, '2016-12-25 18:10:36'),
  (1, 18, 23, 90.1509, '2016-11-20 19:26:38'),
  (1, 7, 10, 37.0054, '2016-08-24 01:50:17'),
  (1, 4, 4, 83.2641, '2016-05-07 19:14:04'),
  (1, 11, 4, 36.0115, '2016-12-09 12:24:00'),
  (1, 3, 10, 22.3169, '2016-08-17 17:15:30'),
  (1, 16, 20, 55.5849, '2016-09-18 21:24:23'),
  (1, 3, 33, 26.4344, '2016-06-23 10:37:36'),
  (1, 3, 8, 42.3645, '2016-08-23 08:11:50'),
  (1, 18, 30, 31.3661, '2016-09-08 11:45:31'),
  (1, 9, 28, 51.2149, '2016-05-18 23:44:23'),
  (1, 17, 24, 70.7815, '2016-12-23 08:31:35'),
  (1, 12, 24, 32.1817, '2017-04-29 13:15:53'),
  (1, 11, 19, 0.7386, '2016-08-10 08:28:37'),
  (1, 20, 23, 11.8247, '2016-11-06 16:39:48'),
  (1, 8, 25, 5.1856, '2016-10-31 22:50:33'),
  (1, 18, 28, 68.9634, '2016-08-07 16:45:03'),
  (1, 20, 1, 8.546, '2016-07-09 16:49:36'),
  (1, 5, 2, 83.9155, '2016-05-25 13:37:28'),
  (1, 6, 39, 14.2267, '2017-01-24 06:06:49'),
  (1, 4, 3, 77.3069, '2016-09-23 19:55:02'),
  (1, 12, 7, 13.6062, '2016-10-31 01:33:41'),
  (1, 5, 1, 38.2202, '2017-03-12 20:21:48'),
  (1, 12, 18, 45.0094, '2016-12-30 22:45:23'),
  (1, 7, 9, 47.6959, '2016-08-25 18:15:44'),
  (1, 6, 1, 33.4683, '2016-12-04 20:21:51'),
  (1, 5, 28, 98.9672, '2016-09-07 19:50:06'),
  (1, 19, 33, 93.6641, '2016-06-08 14:55:58'),
  (1, 18, 10, 27.9846, '2017-04-10 06:54:00'),
  (1, 18, 30, 94.8641, '2016-11-12 09:31:59'),
  (1, 14, 26, 52.6514, '2017-01-22 03:41:48'),
  (1, 10, 30, 25.3337, '2017-04-20 14:46:00'),
  (1, 6, 37, 60.6879, '2017-01-05 18:32:55'),
  (1, 12, 39, 93.4899, '2016-11-14 19:19:49'),
  (1, 7, 7, 90.6475, '2016-09-12 04:57:58'),
  (1, 17, 6, 52.008, '2017-03-06 00:56:14'),
  (1, 18, 13, 86.8305, '2016-11-03 12:17:15'),
  (1, 14, 19, 58.9587, '2017-02-16 15:36:43'),
  (1, 7, 40, 36.1026, '2016-08-07 10:43:58'),
  (1, 20, 17, 20.2482, '2017-01-15 07:08:14'),
  (1, 4, 9, 30.3283, '2017-02-10 19:57:04'),
  (1, 20, 17, 82.6929, '2017-03-24 22:56:27'),
  (1, 11, 15, 9.1597, '2016-09-02 23:02:06'),
  (1, 18, 20, 74.2559, '2017-01-28 09:52:32'),
  (1, 16, 17, 66.6109, '2016-08-20 07:51:28'),
  (1, 6, 35, 7.0246, '2017-03-01 05:51:08'),
  (1, 15, 20, 99.8776, '2017-02-19 21:35:18'),
  (1, 19, 8, 3.7498, '2016-12-15 19:35:58'),
  (1, 12, 37, 21.037, '2016-08-20 08:17:01'),
  (1, 20, 21, 76.4897, '2016-06-22 14:53:29'),
  (1, 20, 21, 60.3566, '2017-04-28 11:35:59'),
  (1, 18, 11, 94.9125, '2016-12-15 21:54:53'),
  (1, 11, 5, 77.5387, '2016-08-23 14:37:41'),
  (1, 3, 23, 36.3327, '2016-07-07 18:31:03'),
  (1, 20, 12, 80.6584, '2016-11-16 15:45:36'),
  (1, 15, 14, 56.7342, '2016-09-07 16:50:03'),
  (1, 17, 24, 37.6916, '2016-11-30 22:31:39'),
  (1, 7, 9, 10.4866, '2016-11-14 03:16:13'),
  (1, 20, 36, 20.8092, '2016-07-14 21:49:25'),
  (1, 5, 13, 96.6039, '2016-12-19 05:32:06'),
  (1, 9, 29, 23.386, '2016-08-28 17:03:07'),
  (1, 12, 13, 39.7178, '2017-04-23 10:45:54'),
  (1, 3, 36, 52.5059, '2016-12-31 05:17:49'),
  (1, 19, 17, 14.0701, '2016-11-25 23:05:51'),
  (1, 16, 20, 54.0249, '2016-07-09 18:08:32'),
  (1, 9, 2, 30.7382, '2016-09-06 03:47:34'),
  (1, 14, 11, 19.186, '2017-04-06 02:21:44'),
  (1, 13, 15, 34.6514, '2016-11-28 10:41:01'),
  (1, 7, 19, 87.3813, '2016-11-29 14:21:23'),
  (1, 17, 24, 60.6697, '2016-05-22 03:12:16'),
  (1, 6, 13, 77.6255, '2016-10-20 08:02:20'),
  (1, 16, 18, 15.7633, '2016-07-25 20:39:38'),
  (1, 19, 34, 54.3217, '2017-01-15 16:34:05'),
  (1, 5, 10, 43.2185, '2017-01-05 07:12:02'),
  (1, 9, 37, 73.8476, '2017-02-21 09:10:01'),
  (1, 6, 12, 91.4439, '2017-01-27 17:24:01'),
  (1, 17, 19, 52.2513, '2016-10-18 07:52:05'),
  (1, 4, 15, 87.7935, '2016-09-30 02:07:46'),
  (1, 9, 25, 71.6434, '2016-11-24 03:48:41'),
  (1, 11, 40, 14.7338, '2016-12-26 04:16:07'),
  (1, 5, 29, 62.3243, '2016-10-30 00:21:10'),
  (1, 3, 37, 97.4996, '2017-01-18 07:45:33'),
  (1, 13, 39, 52.4334, '2016-08-08 07:10:50'),
  (1, 7, 25, 82.2949, '2016-09-07 06:58:25'),
  (1, 11, 40, 81.1752, '2016-07-11 21:24:47'),
  (1, 12, 28, 32.2804, '2016-06-13 19:14:29'),
  (1, 14, 33, 56.2365, '2017-01-18 19:09:33'),
  (1, 15, 37, 16.8183, '2016-07-11 11:14:22'),
  (1, 12, 28, 12.967, '2017-02-26 23:53:28'),
  (1, 8, 7, 79.2852, '2016-07-21 07:09:50'),
  (1, 20, 2, 55.869, '2016-09-14 20:28:17'),
  (1, 19, 9, 75.1572, '2017-03-05 07:54:59'),
  (1, 12, 21, 51.6639, '2017-01-05 23:10:20'),
  (1, 18, 10, 26.3798, '2017-04-17 14:25:59'),
  (1, 13, 10, 96.1939, '2016-07-30 01:18:59'),
  (1, 4, 13, 65.2332, '2016-07-13 16:41:57'),
  (1, 4, 7, 37.8928, '2016-12-19 23:57:51'),
  (1, 4, 28, 67.4975, '2016-12-22 09:37:00'),
  (1, 18, 3, 73.0957, '2016-10-19 13:09:07'),
  (1, 4, 36, 27.478, '2016-10-25 22:27:56'),
  (1, 20, 5, 17.8936, '2016-11-10 23:26:23'),
  (1, 15, 15, 1.5153, '2017-04-19 16:53:54'),
  (1, 12, 34, 7.0595, '2016-05-13 00:16:14'),
  (1, 10, 16, 28.9565, '2017-04-08 09:28:26'),
  (1, 10, 1, 3.8119, '2016-06-13 22:27:26'),
  (1, 11, 39, 31.0354, '2016-06-04 06:14:34'),
  (1, 16, 26, 5.3029, '2016-09-27 19:44:00'),
  (1, 8, 36, 0.6243, '2016-05-30 23:34:05'),
  (1, 19, 1, 11.7366, '2016-07-31 01:09:09'),
  (1, 19, 13, 69.4561, '2016-12-16 22:03:58'),
  (1, 20, 40, 38.7428, '2016-09-25 23:54:07'),
  (1, 6, 23, 84.4206, '2016-05-14 19:56:18'),
  (1, 6, 38, 33.0615, '2016-11-03 19:12:01'),
  (1, 8, 9, 90.045, '2017-03-17 16:57:27'),
  (1, 5, 38, 42.1107, '2017-01-26 07:50:51'),
  (1, 14, 20, 7.9503, '2016-07-20 19:12:52'),
  (1, 8, 39, 2.8915, '2016-11-15 03:53:39'),
  (1, 19, 26, 59.7651, '2016-09-13 01:21:59'),
  (1, 18, 15, 61.2477, '2016-10-22 15:50:59'),
  (1, 10, 23, 51.5846, '2017-04-29 18:24:47'),
  (1, 8, 25, 94.7411, '2017-04-03 16:00:15'),
  (1, 6, 28, 64.4984, '2017-01-23 08:45:52'),
  (1, 17, 39, 71.5347, '2016-09-14 16:17:44'),
  (1, 4, 26, 87.0089, '2016-12-20 01:21:01'),
  (1, 5, 18, 17.239, '2017-02-26 05:04:21'),
  (1, 11, 28, 42.9431, '2016-06-11 00:28:10'),
  (1, 12, 2, 63.0443, '2016-06-05 03:17:22'),
  (1, 11, 34, 53.0685, '2016-10-25 11:00:20'),
  (1, 6, 39, 64.3315, '2016-06-14 08:36:41'),
  (1, 8, 16, 29.7592, '2016-10-24 18:02:50'),
  (1, 20, 7, 7.7055, '2016-09-26 07:06:57'),
  (1, 16, 16, 5.3488, '2016-11-26 04:07:18'),
  (1, 10, 33, 90.1447, '2017-04-03 02:23:56'),
  (1, 18, 21, 14.1871, '2016-05-17 17:44:22'),
  (1, 6, 36, 39.1361, '2016-07-11 04:19:35'),
  (1, 4, 38, 72.0839, '2016-06-15 06:57:55'),
  (1, 11, 3, 88.3944, '2017-03-16 04:13:48'),
  (1, 18, 6, 20.4563, '2017-02-14 05:56:33'),
  (1, 4, 8, 85.363, '2017-03-28 05:24:15'),
  (1, 3, 17, 71.53, '2016-07-26 08:17:17'),
  (1, 15, 13, 25.8637, '2016-06-05 18:07:55'),
  (1, 8, 22, 55.3273, '2016-07-16 04:23:09'),
  (1, 15, 21, 72.8959, '2017-01-09 09:45:28'),
  (1, 8, 12, 23.8091, '2017-04-20 16:41:21'),
  (1, 14, 22, 92.6119, '2017-03-11 07:54:16'),
  (1, 19, 33, 36.0738, '2016-12-20 23:57:01'),
  (1, 4, 10, 12.2532, '2016-06-18 14:15:45'),
  (1, 20, 15, 73.6436, '2017-02-12 12:25:21'),
  (1, 11, 39, 31.2698, '2016-08-14 04:38:01'),
  (1, 3, 14, 49.6556, '2016-12-19 13:10:35'),
  (1, 13, 31, 18.7782, '2016-05-25 07:37:17'),
  (1, 6, 20, 19.2902, '2017-03-23 16:54:53'),
  (1, 5, 5, 77.3188, '2016-11-14 22:23:28'),
  (1, 4, 10, 45.5447, '2016-08-09 15:47:45'),
  (1, 13, 7, 97.8073, '2016-08-22 08:23:42'),
  (1, 19, 15, 1.8335, '2016-06-22 18:45:54'),
  (1, 16, 5, 22.272, '2016-08-30 17:09:18'),
  (1, 14, 24, 14.1381, '2016-05-28 12:21:38'),
  (1, 15, 5, 19.9436, '2016-11-22 22:45:35'),
  (1, 17, 37, 26.2512, '2017-02-17 11:36:54'),
  (1, 6, 33, 13.2684, '2016-12-02 19:08:53'),
  (1, 6, 11, 26.5788, '2017-01-15 23:00:42'),
  (1, 3, 3, 13.57, '2016-08-31 01:52:27'),
  (1, 5, 32, 54.6383, '2016-07-05 15:29:24'),
  (1, 16, 19, 9.7964, '2016-08-17 03:14:41'),
  (1, 18, 34, 40.1764, '2016-09-09 02:38:53'),
  (1, 4, 7, 91.6719, '2016-09-04 05:37:45'),
  (1, 20, 14, 49.1737, '2017-01-16 11:40:18'),
  (1, 16, 22, 82.1239, '2016-10-11 05:52:23');


SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
