USE Taxi
GO
EXECUTE add_order N'2041-7-12 7:21:40', N'Иван', N'8-171-554-28-84', N'Запорожский', N'Садовая', 28, 3, N'Кабельный', N'Молодежная', 3, 5, 203, N'cashless', 1
GO
INSERT INTO list(date, order_id, status) VALUES(N'2041-7-12 7:32:1', 1, N'canceled')
GO
EXECUTE add_order N'2716-16-3 1:30:47', N'Александр', N'8-134-597-29-81', N'Подмостовский', N'Крестовая', 65, 4, N'Запорожский', N'9мая', 69, 4, 97, N'cashless', 2
GO
INSERT INTO list(date, order_id, status) VALUES(N'2716-16-3 2:10:4', 2, N'canceled')
GO
EXECUTE add_order N'2037-16-8 2:42:21', N'Иван', N'8-420-682-05-68', N'Кировский', N'Лесная', 91, 6, N'Спальный', N'Садовая', 7, 1, 151, N'cash', 3
GO
INSERT INTO list(date, order_id, status) VALUES(N'2037-16-8 2:46:10', 3, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2037-16-8 2:59:53', 3, N'done')
GO
EXECUTE add_order N'2084-25-11 3:17:20', N'Александр', N'8-887-369-48-16', N'Подмостовский', N'Новая', 34, 2, N'Рыбный', N'Ботаническая', 5, 9, 480, N'cash', 4
GO
INSERT INTO list(date, order_id, status) VALUES(N'2084-25-11 3:21:53', 4, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2084-25-11 3:48:19', 4, N'done')
GO
EXECUTE add_order N'2021-17-6 5:17:52', N'Михаил', N'8-561-062-73-79', N'Приморский', N'Балтийская', 32, 5, N'Подмостовский', N'Советская', 42, 1, 274, N'cashless', 5
GO
INSERT INTO list(date, order_id, status) VALUES(N'2021-17-6 5:29:39', 5, N'canceled')
GO
EXECUTE add_order N'2191-26-8 4:17:37', N'Тимофей', N'8-628-189-95-33', N'Кабельный', N'Садовая', 69, 4, N'Центральный', N'Лесная', 56, 3, 460, N'cash', 6
GO
INSERT INTO list(date, order_id, status) VALUES(N'2191-26-8 4:23:14', 6, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2191-26-8 4:35:42', 6, N'done')
GO
EXECUTE add_order N'2483-10-8 1:0:2', N'Михаил', N'8-489-816-04-61', N'Запорожский', N'Новая', 100, 4, N'Кировский', N'Школьная', 89, 1, 177, N'cash', 7
GO
INSERT INTO list(date, order_id, status) VALUES(N'2483-10-8 1:4:55', 7, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2483-10-8 1:19:3', 7, N'done')
GO
EXECUTE add_order N'2483-14-12 3:58:30', N'Егор', N'8-699-015-69-43', N'Кировский', N'Крестовая', 9, 5, N'Васильевский', N'Мира', 3, 10, 245, N'cash', 8
GO
INSERT INTO list(date, order_id, status) VALUES(N'2483-14-12 4:4:13', 8, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2483-14-12 4:16:16', 8, N'done')
GO
EXECUTE add_order N'2587-12-11 2:4:8', N'Алексей', N'8-798-918-60-88', N'Подмостовский', N'Набережная', 93, 9, N'Кировский', N'Мира', 58, 1, 508, N'cash', 9
GO
INSERT INTO list(date, order_id, status) VALUES(N'2587-12-11 2:8:56', 9, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2587-12-11 2:31:32', 9, N'done')
GO
EXECUTE add_order N'2511-3-3 6:44:32', N'Дмитрий', N'8-642-935-62-68', N'Запорожский', N'Крестовая', 52, 3, N'Запорожский', N'Мира', 77, 8, 442, N'cash', 10
GO
INSERT INTO list(date, order_id, status) VALUES(N'2511-3-3 6:49:44', 10, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2511-3-3 7:36:24', 10, N'done')
GO
EXECUTE add_order N'2510-18-4 4:57:41', N'Пётр', N'8-685-252-35-91', N'Приморский', N'Набережная', 33, 3, N'Спальный', N'Новая', 90, 2, 526, N'cash', 11
GO
INSERT INTO list(date, order_id, status) VALUES(N'2510-18-4 5:2:33', 11, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2510-18-4 5:12:58', 11, N'done')
GO
EXECUTE add_order N'2555-2-3 2:4:1', N'Никита', N'8-976-939-38-05', N'Спальный', N'Центральная', 50, 7, N'Невский', N'Советская', 17, 8, 336, N'cash', 12
GO
INSERT INTO list(date, order_id, status) VALUES(N'2555-2-3 2:8:43', 12, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2555-2-3 2:19:38', 12, N'done')
GO
EXECUTE add_order N'2734-26-7 8:41:56', N'Владислав', N'8-528-235-53-36', N'Невский', N'Молодежная', 59, 2, N'Кабельный', N'Центральная', 45, 2, 246, N'cashless', 13
GO
INSERT INTO list(date, order_id, status) VALUES(N'2734-26-7 8:47:57', 13, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2734-26-7 9:33:32', 13, N'done')
GO
EXECUTE add_order N'2450-23-2 3:20:44', N'Николай', N'8-369-504-43-92', N'Васильевский', N'Серова', 19, 9, N'Приморский', N'Советская', 92, 9, 252, N'cash', 14
GO
INSERT INTO list(date, order_id, status) VALUES(N'2450-23-2 3:24:18', 14, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2450-23-2 3:32:52', 14, N'done')
GO
EXECUTE add_order N'2824-3-7 6:46:12', N'Николай', N'8-830-378-77-03', N'Подмостовский', N'Советская', 81, 3, N'Невский', N'Центральная', 100, 3, 77, N'cash', 15
GO
INSERT INTO list(date, order_id, status) VALUES(N'2824-3-7 6:51:36', 15, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2824-3-7 7:28:39', 15, N'done')
GO
EXECUTE add_order N'2972-14-6 8:36:43', N'Никита', N'8-046-222-15-35', N'Приморский', N'Советская', 75, 4, N'Центральный', N'Садовая', 34, 6, 261, N'cashless', 16
GO
INSERT INTO list(date, order_id, status) VALUES(N'2972-14-6 8:41:10', 16, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2972-14-6 9:5:55', 16, N'done')
GO
EXECUTE add_order N'2550-3-9 0:44:55', N'Антон', N'8-386-128-46-59', N'Запорожский', N'Мира', 65, 9, N'Спальный', N'Центральная', 88, 1, 110, N'cashless', 17
GO
INSERT INTO list(date, order_id, status) VALUES(N'2550-3-9 1:10:52', 17, N'canceled')
GO
EXECUTE add_order N'2170-1-12 8:23:47', N'Вячеслав', N'8-547-756-29-48', N'Приморский', N'Ботаническая', 24, 9, N'Центральный', N'Серова', 24, 3, 146, N'cash', 18
GO
INSERT INTO list(date, order_id, status) VALUES(N'2170-1-12 9:23:42', 18, N'canceled')
GO
EXECUTE add_order N'2525-1-5 1:43:22', N'Виталий', N'8-400-371-11-60', N'Кировский', N'Ленина', 52, 1, N'Подмостовский', N'Мира', 14, 1, 508, N'cashless', 19
GO
INSERT INTO list(date, order_id, status) VALUES(N'2525-1-5 1:46:49', 19, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2525-1-5 2:31:26', 19, N'done')
GO
EXECUTE add_order N'2200-28-7 0:38:23', N'Алексей', N'8-800-173-87-47', N'Невский', N'Новая', 41, 6, N'Запорожский', N'Новая', 57, 6, 122, N'cashless', 20
GO
INSERT INTO list(date, order_id, status) VALUES(N'2200-28-7 0:43:8', 20, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2200-28-7 1:29:4', 20, N'done')
GO
EXECUTE add_order N'2216-6-7 2:22:6', N'Егор', N'8-672-726-19-17', N'Рыбный', N'Лесная', 30, 4, N'Спальный', N'Советская', 33, 10, 346, N'cash', 21
GO
INSERT INTO list(date, order_id, status) VALUES(N'2216-6-7 2:28:8', 21, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2216-6-7 2:41:12', 21, N'done')
GO
EXECUTE add_order N'2734-5-7 5:57:37', N'Иван', N'8-858-751-37-32', N'Невский', N'Серова', 12, 5, N'Запорожский', N'Балтийская', 26, 10, 271, N'cashless', 22
GO
INSERT INTO list(date, order_id, status) VALUES(N'2734-5-7 6:3:11', 22, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2734-5-7 6:9:56', 22, N'done')
GO
EXECUTE add_order N'2783-11-7 6:11:19', N'Владимир', N'8-825-636-47-43', N'Запорожский', N'Балтийская', 42, 4, N'Рыбный', N'Балтийская', 63, 3, 161, N'cash', 23
GO
INSERT INTO list(date, order_id, status) VALUES(N'2783-11-7 6:15:57', 23, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2783-11-7 6:48:29', 23, N'done')
GO
EXECUTE add_order N'2443-18-1 2:47:20', N'Джек', N'8-195-227-08-25', N'Центральный', N'Ленина', 91, 6, N'Приморский', N'Новая', 46, 1, 403, N'cashless', 24
GO
INSERT INTO list(date, order_id, status) VALUES(N'2443-18-1 3:39:40', 24, N'canceled')
GO
EXECUTE add_order N'2044-28-3 2:25:59', N'Никита', N'8-972-859-31-45', N'Кабельный', N'9мая', 68, 8, N'Запорожский', N'Мира', 14, 1, 224, N'cash', 25
GO
INSERT INTO list(date, order_id, status) VALUES(N'2044-28-3 2:29:34', 25, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2044-28-3 3:17:37', 25, N'done')
GO
EXECUTE add_order N'2213-9-5 1:33:21', N'Никита', N'8-708-654-78-09', N'Приморский', N'Новая', 22, 4, N'Невский', N'Молодежная', 11, 4, 221, N'cash', 26
GO
INSERT INTO list(date, order_id, status) VALUES(N'2213-9-5 2:9:25', 26, N'canceled')
GO
EXECUTE add_order N'2542-26-12 2:6:31', N'Антон', N'8-782-395-50-28', N'Васильевский', N'Ленина', 65, 2, N'Невский', N'Советская', 13, 6, 96, N'cashless', 27
GO
INSERT INTO list(date, order_id, status) VALUES(N'2542-26-12 2:10:53', 27, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2542-26-12 2:56:12', 27, N'done')
GO
EXECUTE add_order N'2985-13-6 0:47:45', N'Алексей', N'8-722-231-08-85', N'Центральный', N'Крестовая', 4, 2, N'Невский', N'Серова', 70, 1, 65, N'cash', 28
GO
INSERT INTO list(date, order_id, status) VALUES(N'2985-13-6 0:53:28', 28, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2985-13-6 1:19:15', 28, N'done')
GO
EXECUTE add_order N'2088-10-4 6:13:29', N'Вячеслав', N'8-848-108-28-19', N'Кабельный', N'Балтийская', 44, 10, N'Центральный', N'Балтийская', 68, 9, 86, N'cash', 29
GO
INSERT INTO list(date, order_id, status) VALUES(N'2088-10-4 6:17:15', 29, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2088-10-4 6:23:40', 29, N'done')
GO
EXECUTE add_order N'2038-10-2 3:7:4', N'Пётр', N'8-516-854-67-93', N'Рыбный', N'Лесная', 97, 10, N'Васильевский', N'Советская', 43, 5, 125, N'cash', 30
GO
INSERT INTO list(date, order_id, status) VALUES(N'2038-10-2 3:20:20', 30, N'canceled')
GO
EXECUTE add_order N'2948-15-5 4:3:26', N'Джек', N'8-665-352-65-49', N'Запорожский', N'Ботаническая', 57, 5, N'Подмостовский', N'Лесная', 83, 9, 405, N'cash', 31
GO
INSERT INTO list(date, order_id, status) VALUES(N'2948-15-5 4:27:16', 31, N'canceled')
GO
EXECUTE add_order N'2841-24-10 9:3:57', N'Александр', N'8-282-633-42-00', N'Невский', N'Новая', 35, 4, N'Невский', N'Молодежная', 25, 9, 367, N'cash', 32
GO
INSERT INTO list(date, order_id, status) VALUES(N'2841-24-10 9:7:45', 32, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2841-24-10 9:47:45', 32, N'done')
GO
EXECUTE add_order N'2080-3-7 6:40:50', N'Дмитрий', N'8-891-293-63-41', N'Подмостовский', N'Крестовая', 21, 5, N'Подмостовский', N'Школьная', 70, 2, 428, N'cash', 33
GO
INSERT INTO list(date, order_id, status) VALUES(N'2080-3-7 6:44:29', 33, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2080-3-7 7:37:20', 33, N'done')
GO
EXECUTE add_order N'2003-10-10 7:21:44', N'Никита', N'8-410-782-98-35', N'Кировский', N'9мая', 94, 10, N'Рыбный', N'Новая', 70, 8, 108, N'cashless', 34
GO
INSERT INTO list(date, order_id, status) VALUES(N'2003-10-10 8:6:8', 34, N'canceled')
GO
EXECUTE add_order N'2117-28-4 2:10:15', N'Михаил', N'8-044-054-28-29', N'Рыбный', N'9мая', 16, 2, N'Спальный', N'Садовая', 74, 9, 338, N'cash', 35
GO
INSERT INTO list(date, order_id, status) VALUES(N'2117-28-4 2:59:31', 35, N'canceled')
GO
EXECUTE add_order N'2689-13-2 3:35:41', N'Михаил', N'8-145-108-48-33', N'Невский', N'Центральная', 96, 4, N'Кировский', N'Советская', 30, 7, 200, N'cashless', 36
GO
INSERT INTO list(date, order_id, status) VALUES(N'2689-13-2 3:40:34', 36, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2689-13-2 4:12:0', 36, N'done')
GO
EXECUTE add_order N'2080-14-1 7:24:27', N'Пётр', N'8-766-666-51-49', N'Запорожский', N'Мира', 87, 1, N'Запорожский', N'Центральная', 65, 2, 359, N'cash', 37
GO
INSERT INTO list(date, order_id, status) VALUES(N'2080-14-1 8:12:20', 37, N'canceled')
GO
EXECUTE add_order N'2124-14-2 8:49:22', N'Вячеслав', N'8-621-772-88-61', N'Центральный', N'Новая', 85, 10, N'Кабельный', N'Советская', 97, 4, 202, N'cashless', 38
GO
INSERT INTO list(date, order_id, status) VALUES(N'2124-14-2 8:54:30', 38, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2124-14-2 9:1:58', 38, N'done')
GO
EXECUTE add_order N'2491-8-9 8:21:54', N'Николай', N'8-838-992-54-28', N'Кабельный', N'Ботаническая', 87, 9, N'Кабельный', N'Центральная', 59, 4, 72, N'cashless', 39
GO
INSERT INTO list(date, order_id, status) VALUES(N'2491-8-9 9:12:31', 39, N'canceled')
GO
EXECUTE add_order N'2925-3-4 1:50:2', N'Тимофей', N'8-028-298-02-08', N'Рыбный', N'Балтийская', 68, 3, N'Кабельный', N'Центральная', 98, 9, 378, N'cash', 40
GO
INSERT INTO list(date, order_id, status) VALUES(N'2925-3-4 1:53:52', 40, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2925-3-4 2:21:21', 40, N'done')
GO
EXECUTE add_order N'2925-6-11 6:48:40', N'Алексей', N'8-684-125-52-70', N'Васильевский', N'Молодежная', 70, 9, N'Кировский', N'Крестовая', 16, 6, 71, N'cash', 41
GO
INSERT INTO list(date, order_id, status) VALUES(N'2925-6-11 6:54:8', 41, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2925-6-11 7:18:2', 41, N'done')
GO
EXECUTE add_order N'2570-1-6 5:25:57', N'Андрей', N'8-053-030-99-41', N'Приморский', N'9мая', 79, 8, N'Невский', N'9мая', 65, 5, 141, N'cash', 42
GO
INSERT INTO list(date, order_id, status) VALUES(N'2570-1-6 5:31:2', 42, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2570-1-6 5:56:39', 42, N'done')
GO
EXECUTE add_order N'2004-20-6 7:57:44', N'Михаил', N'8-664-232-51-88', N'Кабельный', N'Набережная', 41, 10, N'Васильевский', N'Новая', 12, 4, 491, N'cash', 43
GO
INSERT INTO list(date, order_id, status) VALUES(N'2004-20-6 8:3:49', 43, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2004-20-6 8:20:34', 43, N'done')
GO
EXECUTE add_order N'2585-7-5 0:26:55', N'Иван', N'8-193-509-43-64', N'Подмостовский', N'Ленина', 32, 9, N'Кировский', N'9мая', 23, 1, 324, N'cash', 44
GO
INSERT INTO list(date, order_id, status) VALUES(N'2585-7-5 1:22:47', 44, N'canceled')
GO
EXECUTE add_order N'2182-12-12 1:36:4', N'Кирилл', N'8-772-124-05-24', N'Спальный', N'Балтийская', 95, 6, N'Центральный', N'Школьная', 82, 5, 62, N'cashless', 45
GO
INSERT INTO list(date, order_id, status) VALUES(N'2182-12-12 1:39:52', 45, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2182-12-12 2:31:44', 45, N'done')
GO
EXECUTE add_order N'2762-21-4 1:13:35', N'Пётр', N'8-665-896-44-93', N'Центральный', N'Набережная', 88, 3, N'Подмостовский', N'9мая', 48, 5, 71, N'cash', 46
GO
INSERT INTO list(date, order_id, status) VALUES(N'2762-21-4 1:52:26', 46, N'canceled')
GO
EXECUTE add_order N'2376-13-12 3:32:3', N'Андрей', N'8-645-062-10-68', N'Приморский', N'Новая', 35, 4, N'Приморский', N'Крестовая', 92, 9, 246, N'cash', 47
GO
INSERT INTO list(date, order_id, status) VALUES(N'2376-13-12 3:37:30', 47, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2376-13-12 4:21:16', 47, N'done')
GO
EXECUTE add_order N'2871-1-6 5:11:43', N'Тимофей', N'8-013-378-58-58', N'Кировский', N'Лесная', 50, 1, N'Подмостовский', N'Мира', 82, 10, 515, N'cash', 48
GO
INSERT INTO list(date, order_id, status) VALUES(N'2871-1-6 5:18:16', 48, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2871-1-6 5:32:10', 48, N'done')
GO
EXECUTE add_order N'2472-11-9 6:55:1', N'Андрей', N'8-373-014-20-77', N'Спальный', N'Советская', 28, 10, N'Подмостовский', N'Советская', 59, 3, 476, N'cash', 49
GO
INSERT INTO list(date, order_id, status) VALUES(N'2472-11-9 7:30:29', 49, N'canceled')
GO
EXECUTE add_order N'2651-18-3 2:44:20', N'Вячеслав', N'8-738-148-20-26', N'Рыбный', N'Крестовая', 58, 2, N'Центральный', N'Новая', 59, 9, 211, N'cash', 50
GO
INSERT INTO list(date, order_id, status) VALUES(N'2651-18-3 2:47:47', 50, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2651-18-3 3:29:5', 50, N'done')
GO
EXECUTE add_order N'2489-10-8 8:54:35', N'Александр', N'8-603-288-00-36', N'Рыбный', N'Садовая', 38, 10, N'Подмостовский', N'Серова', 53, 9, 419, N'cashless', 51
GO
INSERT INTO list(date, order_id, status) VALUES(N'2489-10-8 8:58:3', 51, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2489-10-8 9:5:35', 51, N'done')
GO
EXECUTE add_order N'2647-16-9 2:0:8', N'Антон', N'8-382-091-59-37', N'Запорожский', N'Новая', 92, 4, N'Центральный', N'Новая', 98, 1, 469, N'cashless', 52
GO
INSERT INTO list(date, order_id, status) VALUES(N'2647-16-9 2:5:39', 52, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2647-16-9 2:51:23', 52, N'done')
GO
EXECUTE add_order N'2340-4-12 6:15:25', N'Вячеслав', N'8-570-401-23-28', N'Спальный', N'Садовая', 92, 6, N'Подмостовский', N'Садовая', 79, 10, 529, N'cash', 53
GO
INSERT INTO list(date, order_id, status) VALUES(N'2340-4-12 6:19:58', 53, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2340-4-12 6:59:51', 53, N'done')
GO
EXECUTE add_order N'2620-23-6 8:41:16', N'Михаил', N'8-024-999-89-82', N'Кировский', N'Центральная', 78, 9, N'Невский', N'Садовая', 97, 8, 124, N'cashless', 54
GO
INSERT INTO list(date, order_id, status) VALUES(N'2620-23-6 9:18:15', 54, N'canceled')
GO
EXECUTE add_order N'2761-11-5 8:39:23', N'Вячеслав', N'8-506-234-12-26', N'Васильевский', N'Ботаническая', 81, 7, N'Кировский', N'Серова', 85, 8, 290, N'cash', 55
GO
INSERT INTO list(date, order_id, status) VALUES(N'2761-11-5 8:43:53', 55, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2761-11-5 8:51:14', 55, N'done')
GO
EXECUTE add_order N'2882-24-2 8:49:18', N'Сергей', N'8-078-988-66-51', N'Приморский', N'Мира', 96, 2, N'Кировский', N'9мая', 100, 4, 334, N'cash', 56
GO
INSERT INTO list(date, order_id, status) VALUES(N'2882-24-2 8:52:46', 56, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2882-24-2 8:58:58', 56, N'done')
GO
EXECUTE add_order N'2243-11-2 2:49:28', N'Дмитрий', N'8-776-461-82-31', N'Спальный', N'Молодежная', 92, 5, N'Спальный', N'Центральная', 94, 7, 141, N'cash', 57
GO
INSERT INTO list(date, order_id, status) VALUES(N'2243-11-2 2:53:45', 57, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2243-11-2 3:41:5', 57, N'done')
GO
EXECUTE add_order N'2052-12-9 2:38:7', N'Александр', N'8-135-570-43-52', N'Кировский', N'Крестовая', 41, 9, N'Запорожский', N'Набережная', 71, 6, 525, N'cash', 58
GO
INSERT INTO list(date, order_id, status) VALUES(N'2052-12-9 3:27:16', 58, N'canceled')
GO
EXECUTE add_order N'2333-11-6 4:48:2', N'Тимофей', N'8-571-102-27-62', N'Спальный', N'Молодежная', 52, 9, N'Приморский', N'Ленина', 77, 7, 309, N'cash', 59
GO
INSERT INTO list(date, order_id, status) VALUES(N'2333-11-6 4:59:8', 59, N'canceled')
GO
EXECUTE add_order N'2486-13-12 8:13:34', N'Алексей', N'8-675-211-38-73', N'Подмостовский', N'Лесная', 82, 7, N'Запорожский', N'Советская', 25, 8, 368, N'cash', 60
GO
INSERT INTO list(date, order_id, status) VALUES(N'2486-13-12 8:19:48', 60, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2486-13-12 9:10:47', 60, N'done')
GO
EXECUTE add_order N'2998-14-3 1:55:22', N'Дмитрий', N'8-108-607-23-83', N'Запорожский', N'Новая', 64, 6, N'Кабельный', N'Ленина', 46, 2, 523, N'cashless', 61
GO
INSERT INTO list(date, order_id, status) VALUES(N'2998-14-3 2:7:55', 61, N'canceled')
GO
EXECUTE add_order N'2181-12-4 5:1:50', N'Вячеслав', N'8-107-162-19-25', N'Рыбный', N'Серова', 90, 3, N'Центральный', N'Советская', 59, 2, 343, N'cashless', 62
GO
INSERT INTO list(date, order_id, status) VALUES(N'2181-12-4 5:7:38', 62, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2181-12-4 5:47:44', 62, N'done')
GO
EXECUTE add_order N'2171-9-11 4:38:17', N'Алексей', N'8-657-894-98-94', N'Васильевский', N'Крестовая', 29, 7, N'Приморский', N'Школьная', 100, 1, 335, N'cashless', 63
GO
INSERT INTO list(date, order_id, status) VALUES(N'2171-9-11 4:41:57', 63, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2171-9-11 5:30:27', 63, N'done')
GO
EXECUTE add_order N'2271-4-10 1:41:25', N'Евгений', N'8-470-764-77-10', N'Запорожский', N'Набережная', 69, 2, N'Невский', N'Садовая', 12, 8, 154, N'cash', 64
GO
INSERT INTO list(date, order_id, status) VALUES(N'2271-4-10 1:47:33', 64, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2271-4-10 2:24:35', 64, N'done')
GO
EXECUTE add_order N'2413-11-9 4:52:17', N'Евгений', N'8-317-431-79-58', N'Приморский', N'Молодежная', 48, 3, N'Рыбный', N'Ленина', 85, 5, 145, N'cash', 65
GO
INSERT INTO list(date, order_id, status) VALUES(N'2413-11-9 5:5:1', 65, N'canceled')
GO
EXECUTE add_order N'2781-15-1 1:0:56', N'Вячеслав', N'8-961-831-80-03', N'Кировский', N'Балтийская', 34, 2, N'Спальный', N'Школьная', 54, 10, 486, N'cash', 66
GO
INSERT INTO list(date, order_id, status) VALUES(N'2781-15-1 1:5:30', 66, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2781-15-1 1:37:30', 66, N'done')
GO
EXECUTE add_order N'2835-17-1 5:7:35', N'Сергей', N'8-250-522-69-81', N'Рыбный', N'Серова', 37, 1, N'Приморский', N'Серова', 81, 9, 390, N'cashless', 67
GO
INSERT INTO list(date, order_id, status) VALUES(N'2835-17-1 5:12:28', 67, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2835-17-1 5:44:48', 67, N'done')
GO
EXECUTE add_order N'2546-22-3 5:18:17', N'Алексей', N'8-818-165-70-25', N'Рыбный', N'9мая', 10, 6, N'Подмостовский', N'9мая', 63, 6, 93, N'cashless', 68
GO
INSERT INTO list(date, order_id, status) VALUES(N'2546-22-3 5:36:59', 68, N'canceled')
GO
EXECUTE add_order N'2512-7-9 7:36:8', N'Егор', N'8-903-599-50-04', N'Спальный', N'Советская', 62, 2, N'Запорожский', N'Центральная', 34, 4, 79, N'cash', 69
GO
INSERT INTO list(date, order_id, status) VALUES(N'2512-7-9 8:20:21', 69, N'canceled')
GO
EXECUTE add_order N'2083-23-9 9:5:18', N'Антон', N'8-747-509-42-93', N'Кабельный', N'Молодежная', 41, 4, N'Спальный', N'Советская', 11, 9, 321, N'cash', 70
GO
INSERT INTO list(date, order_id, status) VALUES(N'2083-23-9 9:29:48', 70, N'canceled')
GO
EXECUTE add_order N'2183-16-10 1:22:58', N'Николай', N'8-395-836-75-26', N'Центральный', N'Серова', 2, 6, N'Рыбный', N'Серова', 70, 8, 184, N'cash', 71
GO
INSERT INTO list(date, order_id, status) VALUES(N'2183-16-10 1:29:36', 71, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2183-16-10 1:42:1', 71, N'done')
GO
EXECUTE add_order N'2597-19-11 4:7:24', N'Никита', N'8-771-403-14-83', N'Подмостовский', N'9мая', 2, 4, N'Невский', N'Лесная', 22, 6, 495, N'cashless', 72
GO
INSERT INTO list(date, order_id, status) VALUES(N'2597-19-11 4:13:5', 72, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2597-19-11 4:16:47', 72, N'done')
GO
EXECUTE add_order N'2812-28-4 2:14:15', N'Джек', N'8-485-724-82-98', N'Центральный', N'Ботаническая', 5, 5, N'Невский', N'Садовая', 25, 9, 531, N'cashless', 73
GO
INSERT INTO list(date, order_id, status) VALUES(N'2812-28-4 2:17:58', 73, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2812-28-4 3:4:32', 73, N'done')
GO
EXECUTE add_order N'2130-4-7 8:10:45', N'Сергей', N'8-409-753-89-06', N'Кировский', N'Центральная', 21, 5, N'Подмостовский', N'Крестовая', 35, 6, 111, N'cashless', 74
GO
INSERT INTO list(date, order_id, status) VALUES(N'2130-4-7 8:17:9', 74, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2130-4-7 8:38:24', 74, N'done')
GO
EXECUTE add_order N'2382-22-8 8:27:12', N'Антон', N'8-987-856-73-99', N'Приморский', N'Набережная', 57, 2, N'Рыбный', N'Садовая', 94, 2, 482, N'cashless', 75
GO
INSERT INTO list(date, order_id, status) VALUES(N'2382-22-8 8:51:47', 75, N'canceled')
GO
EXECUTE add_order N'2907-19-5 2:25:19', N'Михаил', N'8-791-240-91-16', N'Центральный', N'Мира', 54, 4, N'Невский', N'9мая', 6, 4, 226, N'cash', 76
GO
INSERT INTO list(date, order_id, status) VALUES(N'2907-19-5 2:30:58', 76, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2907-19-5 3:15:26', 76, N'done')
GO
EXECUTE add_order N'2998-8-12 8:11:55', N'Владимир', N'8-318-918-82-63', N'Невский', N'Новая', 50, 4, N'Подмостовский', N'Центральная', 42, 3, 237, N'cashless', 77
GO
INSERT INTO list(date, order_id, status) VALUES(N'2998-8-12 8:29:12', 77, N'canceled')
GO
EXECUTE add_order N'2413-25-1 8:48:10', N'Андрей', N'8-345-902-70-65', N'Подмостовский', N'Советская', 61, 7, N'Кировский', N'Крестовая', 46, 2, 517, N'cash', 78
GO
INSERT INTO list(date, order_id, status) VALUES(N'2413-25-1 8:54:39', 78, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2413-25-1 9:23:41', 78, N'done')
GO
EXECUTE add_order N'2063-11-8 8:13:37', N'Николай', N'8-678-601-83-63', N'Рыбный', N'Лесная', 20, 3, N'Рыбный', N'Лесная', 96, 2, 94, N'cash', 79
GO
INSERT INTO list(date, order_id, status) VALUES(N'2063-11-8 8:20:5', 79, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2063-11-8 8:38:40', 79, N'done')
GO
EXECUTE add_order N'2450-1-8 7:9:51', N'Вячеслав', N'8-375-840-92-53', N'Невский', N'Советская', 51, 4, N'Невский', N'Набережная', 12, 2, 540, N'cashless', 80
GO
INSERT INTO list(date, order_id, status) VALUES(N'2450-1-8 8:0:49', 80, N'canceled')
GO
EXECUTE add_order N'2047-27-1 0:7:59', N'Андрей', N'8-218-552-82-03', N'Васильевский', N'Мира', 79, 9, N'Подмостовский', N'Центральная', 48, 2, 519, N'cash', 81
GO
INSERT INTO list(date, order_id, status) VALUES(N'2047-27-1 0:33:12', 81, N'canceled')
GO
EXECUTE add_order N'2964-14-7 7:3:5', N'Джек', N'8-942-949-23-24', N'Центральный', N'Новая', 50, 5, N'Кировский', N'Советская', 53, 4, 323, N'cashless', 82
GO
INSERT INTO list(date, order_id, status) VALUES(N'2964-14-7 8:2:12', 82, N'canceled')
GO
EXECUTE add_order N'2511-7-2 2:54:58', N'Вячеслав', N'8-204-382-33-92', N'Центральный', N'Лесная', 52, 3, N'Центральный', N'Набережная', 77, 7, 228, N'cashless', 83
GO
INSERT INTO list(date, order_id, status) VALUES(N'2511-7-2 3:0:46', 83, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2511-7-2 3:50:44', 83, N'done')
GO
EXECUTE add_order N'2179-2-4 0:48:3', N'Андрей', N'8-786-132-00-22', N'Приморский', N'Серова', 68, 9, N'Спальный', N'Советская', 33, 10, 169, N'cash', 84
GO
INSERT INTO list(date, order_id, status) VALUES(N'2179-2-4 0:53:33', 84, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2179-2-4 1:14:1', 84, N'done')
GO
EXECUTE add_order N'2631-25-10 5:10:30', N'Никита', N'8-617-001-85-74', N'Спальный', N'Крестовая', 34, 1, N'Приморский', N'Ленина', 75, 1, 543, N'cashless', 85
GO
INSERT INTO list(date, order_id, status) VALUES(N'2631-25-10 5:14:51', 85, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2631-25-10 5:56:21', 85, N'done')
GO
EXECUTE add_order N'2662-26-12 8:39:11', N'Вячеслав', N'8-659-136-30-70', N'Запорожский', N'Советская', 41, 2, N'Спальный', N'Набережная', 51, 4, 108, N'cash', 86
GO
INSERT INTO list(date, order_id, status) VALUES(N'2662-26-12 8:45:32', 86, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2662-26-12 9:35:19', 86, N'done')
GO
EXECUTE add_order N'2271-28-4 3:28:24', N'Николай', N'8-298-058-10-08', N'Кировский', N'Садовая', 36, 9, N'Запорожский', N'Мира', 94, 8, 146, N'cash', 87
GO
INSERT INTO list(date, order_id, status) VALUES(N'2271-28-4 3:34:2', 87, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2271-28-4 4:5:12', 87, N'done')
GO
EXECUTE add_order N'2538-24-9 6:55:17', N'Владислав', N'8-941-655-38-20', N'Невский', N'Школьная', 93, 4, N'Невский', N'Крестовая', 4, 8, 240, N'cash', 88
GO
INSERT INTO list(date, order_id, status) VALUES(N'2538-24-9 6:59:45', 88, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2538-24-9 7:46:52', 88, N'done')
GO
EXECUTE add_order N'2498-17-6 1:4:39', N'Тимофей', N'8-339-698-59-19', N'Запорожский', N'Ботаническая', 35, 2, N'Рыбный', N'Набережная', 94, 7, 254, N'cashless', 89
GO
INSERT INTO list(date, order_id, status) VALUES(N'2498-17-6 1:9:47', 89, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2498-17-6 1:33:30', 89, N'done')
GO
EXECUTE add_order N'2684-16-1 2:47:28', N'Иван', N'8-549-437-04-10', N'Кабельный', N'Ленина', 59, 10, N'Спальный', N'Новая', 41, 8, 368, N'cashless', 90
GO
INSERT INTO list(date, order_id, status) VALUES(N'2684-16-1 2:51:14', 90, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2684-16-1 3:12:43', 90, N'done')
GO
EXECUTE add_order N'2503-9-7 1:54:0', N'Михаил', N'8-053-791-61-56', N'Центральный', N'Лесная', 82, 6, N'Кировский', N'Серова', 63, 8, 474, N'cash', 91
GO
INSERT INTO list(date, order_id, status) VALUES(N'2503-9-7 2:11:12', 91, N'canceled')
GO
EXECUTE add_order N'2885-11-5 5:48:9', N'Евгений', N'8-705-185-05-53', N'Невский', N'Новая', 76, 2, N'Кабельный', N'Мира', 38, 2, 360, N'cashless', 92
GO
INSERT INTO list(date, order_id, status) VALUES(N'2885-11-5 6:47:25', 92, N'canceled')
GO
EXECUTE add_order N'2071-16-5 8:55:45', N'Андрей', N'8-272-587-23-85', N'Спальный', N'Набережная', 4, 7, N'Запорожский', N'Садовая', 59, 10, 379, N'cash', 93
GO
INSERT INTO list(date, order_id, status) VALUES(N'2071-16-5 9:2:24', 93, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2071-16-5 9:33:9', 93, N'done')
GO
EXECUTE add_order N'2272-23-4 8:54:32', N'Джек', N'8-145-738-27-80', N'Кировский', N'Центральная', 37, 10, N'Кировский', N'Мира', 22, 9, 476, N'cash', 94
GO
INSERT INTO list(date, order_id, status) VALUES(N'2272-23-4 9:0:47', 94, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2272-23-4 9:16:11', 94, N'done')
GO
EXECUTE add_order N'2981-10-5 8:1:2', N'Андрей', N'8-944-377-64-58', N'Запорожский', N'Школьная', 69, 4, N'Приморский', N'Мира', 42, 8, 441, N'cashless', 95
GO
INSERT INTO list(date, order_id, status) VALUES(N'2981-10-5 8:6:17', 95, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2981-10-5 8:44:9', 95, N'done')
GO
EXECUTE add_order N'2929-12-2 4:53:35', N'Виталий', N'8-878-913-20-97', N'Васильевский', N'Ботаническая', 34, 5, N'Рыбный', N'Школьная', 63, 1, 179, N'cashless', 96
GO
INSERT INTO list(date, order_id, status) VALUES(N'2929-12-2 4:58:13', 96, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2929-12-2 5:16:56', 96, N'done')
GO
EXECUTE add_order N'2085-9-1 3:56:33', N'Сергей', N'8-140-447-77-52', N'Запорожский', N'Садовая', 91, 5, N'Подмостовский', N'Ленина', 19, 7, 171, N'cashless', 97
GO
INSERT INTO list(date, order_id, status) VALUES(N'2085-9-1 4:2:49', 97, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2085-9-1 4:10:23', 97, N'done')
GO
EXECUTE add_order N'2669-20-1 3:28:13', N'Пётр', N'8-694-089-08-26', N'Кировский', N'Набережная', 15, 9, N'Приморский', N'Новая', 21, 5, 377, N'cashless', 98
GO
INSERT INTO list(date, order_id, status) VALUES(N'2669-20-1 3:32:14', 98, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2669-20-1 4:5:32', 98, N'done')
GO
EXECUTE add_order N'2642-26-7 8:21:44', N'Александр', N'8-254-631-83-96', N'Подмостовский', N'Садовая', 21, 2, N'Невский', N'Школьная', 14, 8, 113, N'cash', 99
GO
INSERT INTO list(date, order_id, status) VALUES(N'2642-26-7 8:25:19', 99, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2642-26-7 8:39:35', 99, N'done')
GO
EXECUTE add_order N'2761-20-5 3:19:19', N'Владислав', N'8-891-147-74-08', N'Запорожский', N'Советская', 13, 4, N'Рыбный', N'Балтийская', 73, 4, 452, N'cashless', 100
GO
INSERT INTO list(date, order_id, status) VALUES(N'2761-20-5 3:25:32', 100, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2761-20-5 3:33:18', 100, N'done')
GO
EXECUTE add_order N'2651-25-12 0:8:52', N'Владимир', N'8-902-312-79-39', N'Подмостовский', N'Центральная', 6, 5, N'Центральный', N'Ленина', 10, 3, 157, N'cashless', 101
GO
INSERT INTO list(date, order_id, status) VALUES(N'2651-25-12 0:46:43', 101, N'canceled')
GO
EXECUTE add_order N'2171-16-3 3:11:54', N'Вячеслав', N'8-269-026-76-99', N'Невский', N'Балтийская', 6, 4, N'Запорожский', N'Мира', 88, 7, 179, N'cashless', 102
GO
INSERT INTO list(date, order_id, status) VALUES(N'2171-16-3 3:15:59', 102, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2171-16-3 3:25:15', 102, N'done')
GO
EXECUTE add_order N'2388-19-1 8:27:46', N'Джек', N'8-304-867-81-90', N'Приморский', N'Мира', 23, 7, N'Подмостовский', N'Набережная', 61, 4, 497, N'cash', 103
GO
INSERT INTO list(date, order_id, status) VALUES(N'2388-19-1 8:59:43', 103, N'canceled')
GO
EXECUTE add_order N'2043-3-9 4:37:6', N'Егор', N'8-543-644-21-04', N'Центральный', N'Серова', 52, 1, N'Кабельный', N'Ботаническая', 78, 4, 339, N'cash', 104
GO
INSERT INTO list(date, order_id, status) VALUES(N'2043-3-9 4:41:38', 104, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2043-3-9 5:25:32', 104, N'done')
GO
EXECUTE add_order N'2144-28-6 4:1:44', N'Александр', N'8-176-443-07-88', N'Кировский', N'9мая', 92, 3, N'Подмостовский', N'Крестовая', 92, 2, 511, N'cashless', 105
GO
INSERT INTO list(date, order_id, status) VALUES(N'2144-28-6 4:7:53', 105, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2144-28-6 4:49:24', 105, N'done')
GO
EXECUTE add_order N'2400-10-8 0:38:37', N'Кирилл', N'8-313-938-76-15', N'Спальный', N'Молодежная', 68, 4, N'Рыбный', N'Центральная', 58, 1, 231, N'cash', 106
GO
INSERT INTO list(date, order_id, status) VALUES(N'2400-10-8 1:13:3', 106, N'canceled')
GO
EXECUTE add_order N'2687-6-8 8:40:45', N'Антон', N'8-135-712-57-18', N'Центральный', N'Балтийская', 76, 1, N'Центральный', N'Советская', 99, 8, 136, N'cashless', 107
GO
INSERT INTO list(date, order_id, status) VALUES(N'2687-6-8 8:44:36', 107, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2687-6-8 9:33:40', 107, N'done')
GO
EXECUTE add_order N'2388-15-7 7:28:39', N'Николай', N'8-083-606-99-97', N'Невский', N'Лесная', 55, 10, N'Подмостовский', N'Балтийская', 55, 5, 383, N'cashless', 108
GO
INSERT INTO list(date, order_id, status) VALUES(N'2388-15-7 7:33:10', 108, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2388-15-7 8:0:18', 108, N'done')
GO
EXECUTE add_order N'2559-22-6 6:18:8', N'Александр', N'8-622-801-90-53', N'Кировский', N'Новая', 88, 8, N'Кировский', N'Новая', 41, 4, 345, N'cashless', 109
GO
INSERT INTO list(date, order_id, status) VALUES(N'2559-22-6 6:23:17', 109, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2559-22-6 6:35:54', 109, N'done')
GO
EXECUTE add_order N'2317-22-11 5:2:15', N'Евгений', N'8-247-401-63-33', N'Приморский', N'Лесная', 18, 6, N'Подмостовский', N'Центральная', 31, 8, 163, N'cashless', 110
GO
INSERT INTO list(date, order_id, status) VALUES(N'2317-22-11 5:35:24', 110, N'canceled')
GO
EXECUTE add_order N'2628-3-2 8:49:4', N'Алексей', N'8-477-422-30-92', N'Рыбный', N'Ленина', 14, 2, N'Невский', N'Мира', 96, 4, 312, N'cash', 111
GO
INSERT INTO list(date, order_id, status) VALUES(N'2628-3-2 8:54:13', 111, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2628-3-2 9:15:1', 111, N'done')
GO
EXECUTE add_order N'2768-28-9 2:12:34', N'Дмитрий', N'8-020-777-20-37', N'Центральный', N'Крестовая', 55, 7, N'Рыбный', N'Советская', 96, 2, 87, N'cash', 112
GO
INSERT INTO list(date, order_id, status) VALUES(N'2768-28-9 3:4:41', 112, N'canceled')
GO
EXECUTE add_order N'2029-28-8 3:15:54', N'Алексей', N'8-015-038-51-33', N'Подмостовский', N'Балтийская', 41, 2, N'Васильевский', N'Садовая', 35, 7, 298, N'cash', 113
GO
INSERT INTO list(date, order_id, status) VALUES(N'2029-28-8 3:22:30', 113, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2029-28-8 3:47:42', 113, N'done')
GO
EXECUTE add_order N'2262-16-9 6:39:47', N'Антон', N'8-293-120-06-87', N'Васильевский', N'Молодежная', 5, 6, N'Центральный', N'Лесная', 39, 7, 351, N'cash', 114
GO
INSERT INTO list(date, order_id, status) VALUES(N'2262-16-9 6:43:48', 114, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2262-16-9 6:53:28', 114, N'done')
GO
EXECUTE add_order N'2695-20-11 0:22:43', N'Пётр', N'8-779-699-34-89', N'Подмостовский', N'Балтийская', 24, 3, N'Подмостовский', N'Крестовая', 54, 4, 498, N'cash', 115
GO
INSERT INTO list(date, order_id, status) VALUES(N'2695-20-11 0:27:51', 115, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2695-20-11 1:2:59', 115, N'done')
GO
EXECUTE add_order N'2411-22-2 7:26:21', N'Андрей', N'8-535-935-56-80', N'Васильевский', N'Крестовая', 41, 6, N'Невский', N'Садовая', 69, 1, 544, N'cash', 116
GO
INSERT INTO list(date, order_id, status) VALUES(N'2411-22-2 7:32:9', 116, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2411-22-2 7:40:10', 116, N'done')
GO
EXECUTE add_order N'2032-7-9 3:1:12', N'Андрей', N'8-383-771-05-61', N'Рыбный', N'Лесная', 43, 4, N'Запорожский', N'Ботаническая', 13, 5, 143, N'cashless', 117
GO
INSERT INTO list(date, order_id, status) VALUES(N'2032-7-9 3:51:46', 117, N'canceled')
GO
EXECUTE add_order N'2258-27-3 1:26:31', N'Вячеслав', N'8-244-534-49-78', N'Приморский', N'Серова', 47, 6, N'Кабельный', N'Мира', 38, 1, 400, N'cash', 118
GO
INSERT INTO list(date, order_id, status) VALUES(N'2258-27-3 1:32:27', 118, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2258-27-3 2:20:24', 118, N'done')
GO
EXECUTE add_order N'2403-1-11 4:23:31', N'Сергей', N'8-851-864-56-53', N'Рыбный', N'Школьная', 13, 4, N'Кировский', N'Центральная', 40, 7, 136, N'cashless', 119
GO
INSERT INTO list(date, order_id, status) VALUES(N'2403-1-11 4:27:34', 119, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2403-1-11 4:56:16', 119, N'done')
GO
EXECUTE add_order N'2911-20-9 7:19:18', N'Тимофей', N'8-102-643-73-00', N'Запорожский', N'Молодежная', 14, 6, N'Васильевский', N'Ботаническая', 4, 6, 144, N'cash', 120
GO
INSERT INTO list(date, order_id, status) VALUES(N'2911-20-9 7:25:45', 120, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2911-20-9 7:56:25', 120, N'done')
GO
EXECUTE add_order N'2079-10-10 3:28:54', N'Алексей', N'8-333-773-21-70', N'Спальный', N'9мая', 29, 6, N'Кировский', N'Школьная', 93, 1, 494, N'cashless', 121
GO
INSERT INTO list(date, order_id, status) VALUES(N'2079-10-10 3:34:47', 121, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2079-10-10 3:38:43', 121, N'done')
GO
EXECUTE add_order N'2547-15-11 4:27:41', N'Антон', N'8-917-869-56-18', N'Запорожский', N'9мая', 47, 8, N'Невский', N'Центральная', 13, 2, 417, N'cash', 122
GO
INSERT INTO list(date, order_id, status) VALUES(N'2547-15-11 4:32:38', 122, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2547-15-11 4:55:59', 122, N'done')
GO
EXECUTE add_order N'2328-21-7 0:29:28', N'Пётр', N'8-449-584-02-61', N'Васильевский', N'Ботаническая', 15, 10, N'Рыбный', N'Школьная', 52, 3, 87, N'cashless', 123
GO
INSERT INTO list(date, order_id, status) VALUES(N'2328-21-7 0:33:39', 123, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2328-21-7 0:57:18', 123, N'done')
GO
EXECUTE add_order N'2290-12-10 8:51:58', N'Антон', N'8-878-477-89-62', N'Невский', N'Серова', 70, 2, N'Невский', N'Набережная', 5, 5, 534, N'cash', 124
GO
INSERT INTO list(date, order_id, status) VALUES(N'2290-12-10 8:55:29', 124, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2290-12-10 9:20:22', 124, N'done')
GO
EXECUTE add_order N'2892-3-7 3:8:19', N'Михаил', N'8-358-934-49-43', N'Кировский', N'Молодежная', 64, 3, N'Кировский', N'Новая', 46, 9, 281, N'cashless', 125
GO
INSERT INTO list(date, order_id, status) VALUES(N'2892-3-7 3:12:50', 125, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2892-3-7 3:22:18', 125, N'done')
GO
EXECUTE add_order N'2421-14-7 2:40:47', N'Андрей', N'8-315-696-63-28', N'Кировский', N'Советская', 37, 8, N'Запорожский', N'Лесная', 14, 1, 201, N'cashless', 126
GO
INSERT INTO list(date, order_id, status) VALUES(N'2421-14-7 2:46:30', 126, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2421-14-7 3:18:51', 126, N'done')
GO
EXECUTE add_order N'2245-22-11 6:1:45', N'Кирилл', N'8-625-776-44-75', N'Кировский', N'Ленина', 12, 10, N'Спальный', N'Крестовая', 76, 1, 460, N'cashless', 127
GO
INSERT INTO list(date, order_id, status) VALUES(N'2245-22-11 6:6:41', 127, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2245-22-11 6:59:11', 127, N'done')
GO
EXECUTE add_order N'2112-14-11 2:7:52', N'Виталий', N'8-117-125-06-37', N'Рыбный', N'Ленина', 17, 3, N'Кабельный', N'Школьная', 26, 2, 388, N'cashless', 128
GO
INSERT INTO list(date, order_id, status) VALUES(N'2112-14-11 2:13:36', 128, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2112-14-11 2:34:32', 128, N'done')
GO
EXECUTE add_order N'2826-19-3 6:49:48', N'Владимир', N'8-850-979-87-86', N'Подмостовский', N'9мая', 78, 10, N'Запорожский', N'Набережная', 32, 6, 456, N'cashless', 129
GO
INSERT INTO list(date, order_id, status) VALUES(N'2826-19-3 6:55:57', 129, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2826-19-3 7:44:26', 129, N'done')
GO
EXECUTE add_order N'2956-14-6 3:44:25', N'Виталий', N'8-586-597-05-70', N'Невский', N'Центральная', 88, 1, N'Рыбный', N'Набережная', 1, 4, 304, N'cash', 130
GO
INSERT INTO list(date, order_id, status) VALUES(N'2956-14-6 3:48:0', 130, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2956-14-6 3:51:28', 130, N'done')
GO
EXECUTE add_order N'2310-24-5 0:49:57', N'Тимофей', N'8-322-329-57-44', N'Запорожский', N'Ботаническая', 34, 8, N'Центральный', N'Ботаническая', 58, 4, 518, N'cashless', 131
GO
INSERT INTO list(date, order_id, status) VALUES(N'2310-24-5 0:55:5', 131, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2310-24-5 1:42:26', 131, N'done')
GO
EXECUTE add_order N'2732-9-6 9:1:39', N'Владимир', N'8-500-270-26-39', N'Невский', N'Садовая', 78, 8, N'Васильевский', N'Новая', 34, 4, 428, N'cashless', 132
GO
INSERT INTO list(date, order_id, status) VALUES(N'2732-9-6 9:7:13', 132, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2732-9-6 9:11:48', 132, N'done')
GO
EXECUTE add_order N'2349-21-5 8:30:24', N'Никита', N'8-320-432-35-24', N'Приморский', N'Серова', 38, 1, N'Приморский', N'9мая', 98, 2, 55, N'cashless', 133
GO
INSERT INTO list(date, order_id, status) VALUES(N'2349-21-5 8:37:3', 133, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2349-21-5 9:1:53', 133, N'done')
GO
EXECUTE add_order N'2898-28-2 0:18:4', N'Никита', N'8-725-828-85-65', N'Кабельный', N'Серова', 94, 4, N'Рыбный', N'Лесная', 25, 10, 404, N'cash', 134
GO
INSERT INTO list(date, order_id, status) VALUES(N'2898-28-2 0:21:30', 134, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2898-28-2 0:28:19', 134, N'done')
GO
EXECUTE add_order N'2492-4-12 8:37:16', N'Владимир', N'8-001-962-73-87', N'Васильевский', N'Садовая', 24, 7, N'Кабельный', N'Новая', 38, 7, 466, N'cash', 135
GO
INSERT INTO list(date, order_id, status) VALUES(N'2492-4-12 8:43:27', 135, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2492-4-12 9:17:31', 135, N'done')
GO
EXECUTE add_order N'2777-21-2 4:3:10', N'Сергей', N'8-065-189-68-85', N'Кабельный', N'Советская', 48, 5, N'Кировский', N'Молодежная', 1, 5, 73, N'cashless', 136
GO
INSERT INTO list(date, order_id, status) VALUES(N'2777-21-2 4:47:10', 136, N'canceled')
GO
EXECUTE add_order N'2250-20-9 6:2:46', N'Владимир', N'8-987-676-86-50', N'Васильевский', N'Садовая', 91, 2, N'Подмостовский', N'Крестовая', 18, 7, 340, N'cash', 137
GO
INSERT INTO list(date, order_id, status) VALUES(N'2250-20-9 6:6:40', 137, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2250-20-9 6:30:46', 137, N'done')
GO
EXECUTE add_order N'2462-8-11 0:57:6', N'Дмитрий', N'8-219-269-60-46', N'Кабельный', N'Мира', 71, 8, N'Кировский', N'Набережная', 62, 5, 230, N'cashless', 138
GO
INSERT INTO list(date, order_id, status) VALUES(N'2462-8-11 1:1:22', 138, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2462-8-11 1:5:43', 138, N'done')
GO
EXECUTE add_order N'2647-13-12 2:34:50', N'Никита', N'8-935-774-79-89', N'Запорожский', N'Центральная', 37, 10, N'Запорожский', N'Молодежная', 30, 5, 408, N'cashless', 139
GO
INSERT INTO list(date, order_id, status) VALUES(N'2647-13-12 2:39:47', 139, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2647-13-12 3:8:11', 139, N'done')
GO
EXECUTE add_order N'2798-6-3 0:20:38', N'Никита', N'8-023-173-91-65', N'Кабельный', N'Крестовая', 90, 10, N'Невский', N'Ботаническая', 72, 2, 333, N'cashless', 140
GO
INSERT INTO list(date, order_id, status) VALUES(N'2798-6-3 0:24:10', 140, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2798-6-3 0:30:34', 140, N'done')
GO
EXECUTE add_order N'2759-27-6 7:58:53', N'Николай', N'8-152-761-25-94', N'Кировский', N'Советская', 56, 8, N'Приморский', N'Мира', 40, 3, 491, N'cashless', 141
GO
INSERT INTO list(date, order_id, status) VALUES(N'2759-27-6 8:2:47', 141, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2759-27-6 8:28:55', 141, N'done')
GO
EXECUTE add_order N'2441-21-5 5:32:54', N'Виталий', N'8-662-458-51-37', N'Васильевский', N'Молодежная', 45, 2, N'Центральный', N'Новая', 77, 7, 77, N'cash', 142
GO
INSERT INTO list(date, order_id, status) VALUES(N'2441-21-5 5:37:45', 142, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2441-21-5 6:8:26', 142, N'done')
GO
EXECUTE add_order N'2465-16-4 1:44:19', N'Алексей', N'8-562-754-43-67', N'Кабельный', N'Центральная', 47, 10, N'Рыбный', N'Крестовая', 2, 3, 376, N'cash', 143
GO
INSERT INTO list(date, order_id, status) VALUES(N'2465-16-4 1:48:28', 143, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2465-16-4 1:57:38', 143, N'done')
GO
EXECUTE add_order N'2405-18-11 8:2:50', N'Виталий', N'8-026-066-23-35', N'Центральный', N'Садовая', 51, 3, N'Рыбный', N'9мая', 61, 2, 534, N'cash', 144
GO
INSERT INTO list(date, order_id, status) VALUES(N'2405-18-11 8:7:0', 144, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2405-18-11 8:28:22', 144, N'done')
GO
EXECUTE add_order N'2806-21-5 2:59:50', N'Егор', N'8-120-015-86-62', N'Невский', N'Школьная', 94, 5, N'Рыбный', N'Балтийская', 68, 9, 470, N'cash', 145
GO
INSERT INTO list(date, order_id, status) VALUES(N'2806-21-5 3:4:15', 145, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2806-21-5 3:19:11', 145, N'done')
GO
EXECUTE add_order N'2833-9-11 5:36:29', N'Николай', N'8-152-039-39-73', N'Запорожский', N'Ленина', 14, 4, N'Приморский', N'Ботаническая', 18, 7, 261, N'cash', 146
GO
INSERT INTO list(date, order_id, status) VALUES(N'2833-9-11 5:42:35', 146, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2833-9-11 6:11:26', 146, N'done')
GO
EXECUTE add_order N'2942-7-7 8:39:15', N'Тимофей', N'8-650-560-24-87', N'Центральный', N'Набережная', 65, 3, N'Васильевский', N'Мира', 16, 1, 250, N'cashless', 147
GO
INSERT INTO list(date, order_id, status) VALUES(N'2942-7-7 8:44:17', 147, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2942-7-7 8:59:13', 147, N'done')
GO
EXECUTE add_order N'2833-28-4 0:6:55', N'Сергей', N'8-772-189-98-45', N'Спальный', N'Набережная', 59, 2, N'Подмостовский', N'Новая', 100, 8, 449, N'cashless', 148
GO
INSERT INTO list(date, order_id, status) VALUES(N'2833-28-4 0:34:11', 148, N'canceled')
GO
EXECUTE add_order N'2984-12-5 6:39:13', N'Сергей', N'8-789-194-87-91', N'Спальный', N'Лесная', 76, 10, N'Кабельный', N'Новая', 75, 8, 434, N'cashless', 149
GO
INSERT INTO list(date, order_id, status) VALUES(N'2984-12-5 6:44:58', 149, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2984-12-5 7:29:39', 149, N'done')
GO
EXECUTE add_order N'2714-5-2 3:42:18', N'Тимофей', N'8-733-157-75-43', N'Спальный', N'Молодежная', 34, 6, N'Васильевский', N'Балтийская', 5, 3, 329, N'cashless', 150
GO
INSERT INTO list(date, order_id, status) VALUES(N'2714-5-2 4:4:52', 150, N'canceled')
GO
EXECUTE add_order N'2072-18-5 4:16:55', N'Александр', N'8-180-784-05-01', N'Приморский', N'Центральная', 71, 9, N'Запорожский', N'9мая', 82, 10, 540, N'cash', 151
GO
INSERT INTO list(date, order_id, status) VALUES(N'2072-18-5 4:46:18', 151, N'canceled')
GO
EXECUTE add_order N'2302-21-11 8:32:1', N'Евгений', N'8-734-746-26-57', N'Центральный', N'Советская', 24, 5, N'Приморский', N'Крестовая', 31, 9, 305, N'cashless', 152
GO
INSERT INTO list(date, order_id, status) VALUES(N'2302-21-11 8:37:13', 152, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2302-21-11 9:24:49', 152, N'done')
GO
EXECUTE add_order N'2318-3-2 5:54:36', N'Александр', N'8-501-502-03-42', N'Кировский', N'Балтийская', 84, 2, N'Кировский', N'Центральная', 85, 9, 295, N'cash', 153
GO
INSERT INTO list(date, order_id, status) VALUES(N'2318-3-2 6:16:59', 153, N'canceled')
GO
EXECUTE add_order N'2258-24-12 3:53:36', N'Никита', N'8-398-665-83-12', N'Рыбный', N'Серова', 70, 7, N'Рыбный', N'Серова', 21, 8, 80, N'cashless', 154
GO
INSERT INTO list(date, order_id, status) VALUES(N'2258-24-12 4:0:5', 154, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2258-24-12 4:42:58', 154, N'done')
GO
EXECUTE add_order N'2480-26-2 0:13:6', N'Владимир', N'8-635-535-95-25', N'Кабельный', N'Школьная', 53, 6, N'Запорожский', N'Советская', 37, 3, 238, N'cash', 155
GO
INSERT INTO list(date, order_id, status) VALUES(N'2480-26-2 0:19:38', 155, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2480-26-2 0:24:3', 155, N'done')
GO
EXECUTE add_order N'2278-25-11 7:19:46', N'Владислав', N'8-729-425-21-76', N'Центральный', N'Советская', 60, 5, N'Центральный', N'Школьная', 61, 2, 60, N'cash', 156
GO
INSERT INTO list(date, order_id, status) VALUES(N'2278-25-11 7:23:39', 156, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2278-25-11 7:54:54', 156, N'done')
GO
EXECUTE add_order N'2136-24-8 7:9:50', N'Виталий', N'8-665-257-63-26', N'Кабельный', N'Центральная', 27, 9, N'Васильевский', N'Советская', 9, 6, 390, N'cashless', 157
GO
INSERT INTO list(date, order_id, status) VALUES(N'2136-24-8 7:15:44', 157, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2136-24-8 7:19:16', 157, N'done')
GO
EXECUTE add_order N'2752-27-3 3:28:45', N'Михаил', N'8-915-178-39-99', N'Спальный', N'Школьная', 63, 6, N'Невский', N'Лесная', 48, 1, 103, N'cashless', 158
GO
INSERT INTO list(date, order_id, status) VALUES(N'2752-27-3 3:34:0', 158, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2752-27-3 4:1:9', 158, N'done')
GO
EXECUTE add_order N'2066-20-6 3:16:11', N'Владимир', N'8-598-086-42-19', N'Центральный', N'Ботаническая', 79, 7, N'Кабельный', N'Набережная', 24, 4, 421, N'cash', 159
GO
INSERT INTO list(date, order_id, status) VALUES(N'2066-20-6 3:20:32', 159, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2066-20-6 4:0:5', 159, N'done')
GO
EXECUTE add_order N'2934-24-11 8:43:37', N'Вячеслав', N'8-659-063-55-63', N'Невский', N'Ленина', 80, 3, N'Спальный', N'Молодежная', 86, 4, 515, N'cash', 160
GO
INSERT INTO list(date, order_id, status) VALUES(N'2934-24-11 8:48:44', 160, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2934-24-11 9:29:55', 160, N'done')
GO
EXECUTE add_order N'2087-28-8 2:23:16', N'Дмитрий', N'8-596-790-73-22', N'Кабельный', N'Новая', 14, 10, N'Рыбный', N'Школьная', 69, 2, 419, N'cashless', 161
GO
INSERT INTO list(date, order_id, status) VALUES(N'2087-28-8 2:39:34', 161, N'canceled')
GO
EXECUTE add_order N'2074-16-8 8:41:14', N'Виталий', N'8-384-571-25-14', N'Кировский', N'Балтийская', 84, 3, N'Запорожский', N'Ленина', 1, 3, 140, N'cashless', 162
GO
INSERT INTO list(date, order_id, status) VALUES(N'2074-16-8 8:46:19', 162, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2074-16-8 9:34:41', 162, N'done')
GO
EXECUTE add_order N'2858-2-3 4:19:21', N'Алексей', N'8-480-722-23-68', N'Приморский', N'Ботаническая', 65, 4, N'Васильевский', N'Ботаническая', 91, 7, 475, N'cash', 163
GO
INSERT INTO list(date, order_id, status) VALUES(N'2858-2-3 4:23:48', 163, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2858-2-3 5:13:40', 163, N'done')
GO
EXECUTE add_order N'2231-25-12 1:18:38', N'Пётр', N'8-956-876-19-08', N'Кировский', N'Садовая', 15, 6, N'Кабельный', N'Набережная', 35, 7, 410, N'cash', 164
GO
INSERT INTO list(date, order_id, status) VALUES(N'2231-25-12 1:23:16', 164, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2231-25-12 1:48:10', 164, N'done')
GO
EXECUTE add_order N'2589-25-5 2:41:34', N'Михаил', N'8-799-342-19-29', N'Приморский', N'Лесная', 28, 7, N'Спальный', N'Ленина', 15, 10, 465, N'cashless', 165
GO
INSERT INTO list(date, order_id, status) VALUES(N'2589-25-5 2:46:3', 165, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2589-25-5 3:12:21', 165, N'done')
GO
EXECUTE add_order N'2676-1-3 2:44:6', N'Егор', N'8-665-342-86-85', N'Подмостовский', N'9мая', 30, 5, N'Подмостовский', N'Ботаническая', 50, 3, 446, N'cashless', 166
GO
INSERT INTO list(date, order_id, status) VALUES(N'2676-1-3 2:47:28', 166, N'canceled')
GO
EXECUTE add_order N'2775-6-5 4:2:32', N'Николай', N'8-312-943-44-75', N'Невский', N'Набережная', 74, 4, N'Центральный', N'Советская', 86, 5, 51, N'cashless', 167
GO
INSERT INTO list(date, order_id, status) VALUES(N'2775-6-5 4:9:7', 167, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2775-6-5 4:46:13', 167, N'done')
GO
EXECUTE add_order N'2720-13-12 3:2:9', N'Никита', N'8-036-762-48-37', N'Подмостовский', N'Ботаническая', 80, 4, N'Спальный', N'Центральная', 3, 3, 419, N'cashless', 168
GO
INSERT INTO list(date, order_id, status) VALUES(N'2720-13-12 3:7:43', 168, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2720-13-12 3:18:21', 168, N'done')
GO
EXECUTE add_order N'2274-28-7 7:48:54', N'Никита', N'8-195-738-73-38', N'Васильевский', N'Ботаническая', 8, 2, N'Кабельный', N'Серова', 93, 6, 522, N'cashless', 169
GO
INSERT INTO list(date, order_id, status) VALUES(N'2274-28-7 7:52:25', 169, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2274-28-7 8:4:40', 169, N'done')
GO
EXECUTE add_order N'2835-21-6 6:32:12', N'Виталий', N'8-536-604-60-98', N'Васильевский', N'9мая', 39, 9, N'Васильевский', N'Мира', 54, 8, 492, N'cashless', 170
GO
INSERT INTO list(date, order_id, status) VALUES(N'2835-21-6 6:36:24', 170, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2835-21-6 6:50:9', 170, N'done')
GO
EXECUTE add_order N'2611-17-3 8:39:9', N'Дмитрий', N'8-291-914-58-60', N'Невский', N'Серова', 13, 3, N'Спальный', N'Лесная', 6, 8, 340, N'cash', 171
GO
INSERT INTO list(date, order_id, status) VALUES(N'2611-17-3 8:42:57', 171, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2611-17-3 9:5:16', 171, N'done')
GO
EXECUTE add_order N'2228-20-5 6:2:58', N'Алексей', N'8-506-805-54-86', N'Васильевский', N'Лесная', 80, 3, N'Невский', N'Центральная', 37, 6, 383, N'cash', 172
GO
INSERT INTO list(date, order_id, status) VALUES(N'2228-20-5 6:8:30', 172, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2228-20-5 6:22:28', 172, N'done')
GO
EXECUTE add_order N'2165-15-9 2:19:59', N'Никита', N'8-249-958-88-68', N'Спальный', N'Новая', 68, 9, N'Кировский', N'Ленина', 4, 2, 240, N'cashless', 173
GO
INSERT INTO list(date, order_id, status) VALUES(N'2165-15-9 2:23:22', 173, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2165-15-9 3:0:6', 173, N'done')
GO
EXECUTE add_order N'2300-4-5 8:42:27', N'Виталий', N'8-786-370-25-06', N'Спальный', N'Ботаническая', 61, 9, N'Кировский', N'Садовая', 13, 8, 284, N'cashless', 174
GO
INSERT INTO list(date, order_id, status) VALUES(N'2300-4-5 8:48:29', 174, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2300-4-5 9:17:59', 174, N'done')
GO
EXECUTE add_order N'2211-3-4 0:28:31', N'Антон', N'8-825-774-75-00', N'Невский', N'Садовая', 38, 10, N'Кировский', N'Новая', 31, 7, 359, N'cashless', 175
GO
INSERT INTO list(date, order_id, status) VALUES(N'2211-3-4 0:53:50', 175, N'canceled')
GO
EXECUTE add_order N'2881-1-7 0:23:31', N'Кирилл', N'8-557-096-97-43', N'Васильевский', N'Ботаническая', 93, 5, N'Центральный', N'Мира', 14, 8, 303, N'cash', 176
GO
INSERT INTO list(date, order_id, status) VALUES(N'2881-1-7 0:29:31', 176, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2881-1-7 0:41:16', 176, N'done')
GO
EXECUTE add_order N'2153-11-4 0:59:36', N'Кирилл', N'8-117-253-06-42', N'Васильевский', N'Новая', 86, 7, N'Спальный', N'Крестовая', 69, 8, 104, N'cashless', 177
GO
INSERT INTO list(date, order_id, status) VALUES(N'2153-11-4 1:6:15', 177, N'canceled')
GO
EXECUTE add_order N'2020-19-8 0:46:32', N'Виталий', N'8-075-938-96-92', N'Запорожский', N'Центральная', 78, 1, N'Кабельный', N'Советская', 4, 7, 302, N'cashless', 178
GO
INSERT INTO list(date, order_id, status) VALUES(N'2020-19-8 0:51:17', 178, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2020-19-8 1:18:25', 178, N'done')
GO
EXECUTE add_order N'2678-18-5 5:49:9', N'Антон', N'8-336-381-77-65', N'Кировский', N'Крестовая', 10, 6, N'Кабельный', N'Лесная', 40, 2, 134, N'cash', 179
GO
INSERT INTO list(date, order_id, status) VALUES(N'2678-18-5 5:54:40', 179, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2678-18-5 6:45:29', 179, N'done')
GO
EXECUTE add_order N'2442-19-3 7:51:27', N'Алексей', N'8-386-803-78-39', N'Центральный', N'Молодежная', 86, 9, N'Невский', N'Новая', 57, 9, 520, N'cash', 180
GO
INSERT INTO list(date, order_id, status) VALUES(N'2442-19-3 7:56:10', 180, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2442-19-3 8:15:58', 180, N'done')
GO
EXECUTE add_order N'2619-19-7 2:17:55', N'Иван', N'8-114-884-57-19', N'Приморский', N'Садовая', 76, 3, N'Кабельный', N'Школьная', 81, 9, 135, N'cash', 181
GO
INSERT INTO list(date, order_id, status) VALUES(N'2619-19-7 2:22:8', 181, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2619-19-7 3:10:55', 181, N'done')
GO
EXECUTE add_order N'2285-15-3 4:2:16', N'Владимир', N'8-117-359-78-90', N'Приморский', N'Ленина', 77, 2, N'Спальный', N'9мая', 43, 5, 517, N'cashless', 182
GO
INSERT INTO list(date, order_id, status) VALUES(N'2285-15-3 4:7:32', 182, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2285-15-3 4:21:26', 182, N'done')
GO
EXECUTE add_order N'2999-9-10 0:9:41', N'Вячеслав', N'8-653-959-99-11', N'Запорожский', N'Ботаническая', 90, 4, N'Рыбный', N'Ботаническая', 46, 6, 220, N'cash', 183
GO
INSERT INTO list(date, order_id, status) VALUES(N'2999-9-10 0:16:13', 183, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2999-9-10 0:48:45', 183, N'done')
GO
EXECUTE add_order N'2324-21-10 5:4:15', N'Пётр', N'8-488-045-60-30', N'Кировский', N'Молодежная', 18, 8, N'Кировский', N'Садовая', 81, 10, 420, N'cashless', 184
GO
INSERT INTO list(date, order_id, status) VALUES(N'2324-21-10 5:14:15', 184, N'canceled')
GO
EXECUTE add_order N'2064-9-4 5:28:2', N'Владислав', N'8-588-266-64-86', N'Подмостовский', N'Центральная', 60, 7, N'Подмостовский', N'Лесная', 11, 7, 107, N'cashless', 185
GO
INSERT INTO list(date, order_id, status) VALUES(N'2064-9-4 6:12:32', 185, N'canceled')
GO
EXECUTE add_order N'2145-13-2 1:37:54', N'Кирилл', N'8-511-486-36-93', N'Рыбный', N'Новая', 40, 3, N'Подмостовский', N'Мира', 76, 1, 387, N'cashless', 186
GO
INSERT INTO list(date, order_id, status) VALUES(N'2145-13-2 2:21:38', 186, N'canceled')
GO
EXECUTE add_order N'2864-8-6 5:8:45', N'Иван', N'8-940-156-44-81', N'Спальный', N'Балтийская', 8, 9, N'Рыбный', N'Мира', 57, 9, 370, N'cashless', 187
GO
INSERT INTO list(date, order_id, status) VALUES(N'2864-8-6 5:12:27', 187, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2864-8-6 5:48:24', 187, N'done')
GO
EXECUTE add_order N'2553-12-4 2:36:29', N'Сергей', N'8-274-804-79-89', N'Центральный', N'Крестовая', 57, 9, N'Центральный', N'Серова', 40, 4, 351, N'cash', 188
GO
INSERT INTO list(date, order_id, status) VALUES(N'2553-12-4 2:40:58', 188, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2553-12-4 2:50:51', 188, N'done')
GO
EXECUTE add_order N'2033-9-8 0:18:55', N'Александр', N'8-165-077-16-02', N'Подмостовский', N'Центральная', 92, 7, N'Центральный', N'Советская', 44, 6, 313, N'cash', 189
GO
INSERT INTO list(date, order_id, status) VALUES(N'2033-9-8 0:44:30', 189, N'canceled')
GO
EXECUTE add_order N'2217-2-9 3:44:27', N'Владимир', N'8-413-949-08-22', N'Запорожский', N'Новая', 21, 4, N'Васильевский', N'Ленина', 14, 8, 252, N'cashless', 190
GO
INSERT INTO list(date, order_id, status) VALUES(N'2217-2-9 4:43:40', 190, N'canceled')
GO
EXECUTE add_order N'2249-28-7 2:14:50', N'Евгений', N'8-061-738-51-53', N'Спальный', N'Балтийская', 44, 6, N'Запорожский', N'Новая', 1, 3, 121, N'cash', 191
GO
INSERT INTO list(date, order_id, status) VALUES(N'2249-28-7 2:18:40', 191, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2249-28-7 2:51:54', 191, N'done')
GO
EXECUTE add_order N'2622-3-1 1:23:35', N'Никита', N'8-923-505-83-24', N'Приморский', N'Крестовая', 85, 8, N'Спальный', N'Крестовая', 99, 9, 330, N'cash', 192
GO
INSERT INTO list(date, order_id, status) VALUES(N'2622-3-1 1:27:8', 192, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2622-3-1 1:44:48', 192, N'done')
GO
EXECUTE add_order N'2447-20-3 8:56:22', N'Антон', N'8-015-389-36-82', N'Спальный', N'Молодежная', 76, 3, N'Васильевский', N'Школьная', 4, 6, 331, N'cash', 193
GO
INSERT INTO list(date, order_id, status) VALUES(N'2447-20-3 9:43:50', 193, N'canceled')
GO
EXECUTE add_order N'2170-1-3 3:32:9', N'Александр', N'8-958-712-22-58', N'Спальный', N'Центральная', 87, 10, N'Спальный', N'Балтийская', 67, 1, 182, N'cash', 194
GO
INSERT INTO list(date, order_id, status) VALUES(N'2170-1-3 4:25:32', 194, N'canceled')
GO
EXECUTE add_order N'2161-18-5 0:35:50', N'Никита', N'8-080-055-30-12', N'Запорожский', N'Лесная', 15, 5, N'Спальный', N'Советская', 53, 10, 285, N'cash', 195
GO
INSERT INTO list(date, order_id, status) VALUES(N'2161-18-5 0:39:40', 195, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2161-18-5 0:49:22', 195, N'done')
GO
EXECUTE add_order N'2261-20-8 5:44:26', N'Вячеслав', N'8-254-246-52-80', N'Запорожский', N'Лесная', 91, 6, N'Рыбный', N'Лесная', 83, 8, 333, N'cash', 196
GO
INSERT INTO list(date, order_id, status) VALUES(N'2261-20-8 5:48:36', 196, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2261-20-8 6:19:55', 196, N'done')
GO
EXECUTE add_order N'2268-1-3 9:3:49', N'Дмитрий', N'8-910-604-21-50', N'Спальный', N'Ленина', 1, 8, N'Рыбный', N'Молодежная', 49, 1, 205, N'cash', 197
GO
INSERT INTO list(date, order_id, status) VALUES(N'2268-1-3 9:8:40', 197, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2268-1-3 9:24:40', 197, N'done')
GO
EXECUTE add_order N'2382-8-1 8:24:30', N'Николай', N'8-315-741-19-95', N'Спальный', N'Школьная', 64, 5, N'Васильевский', N'Ботаническая', 52, 1, 547, N'cashless', 198
GO
INSERT INTO list(date, order_id, status) VALUES(N'2382-8-1 9:18:57', 198, N'canceled')
GO
EXECUTE add_order N'2265-20-9 6:55:55', N'Пётр', N'8-488-769-07-21', N'Кировский', N'Советская', 34, 2, N'Рыбный', N'9мая', 48, 5, 412, N'cashless', 199
GO
INSERT INTO list(date, order_id, status) VALUES(N'2265-20-9 7:0:9', 199, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2265-20-9 7:14:27', 199, N'done')
GO
EXECUTE add_order N'2721-21-1 2:54:26', N'Виталий', N'8-414-399-79-06', N'Центральный', N'Центральная', 53, 7, N'Подмостовский', N'Ленина', 73, 7, 243, N'cashless', 200
GO
INSERT INTO list(date, order_id, status) VALUES(N'2721-21-1 3:0:49', 200, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2721-21-1 3:53:56', 200, N'done')
GO
EXECUTE add_order N'2823-9-2 4:36:34', N'Владимир', N'8-734-320-23-03', N'Рыбный', N'Серова', 68, 1, N'Кабельный', N'Садовая', 27, 9, 378, N'cash', 201
GO
INSERT INTO list(date, order_id, status) VALUES(N'2823-9-2 4:41:37', 201, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2823-9-2 4:52:26', 201, N'done')
GO
EXECUTE add_order N'2833-7-4 0:54:0', N'Тимофей', N'8-195-137-32-70', N'Кировский', N'Молодежная', 4, 9, N'Кировский', N'Ленина', 65, 9, 507, N'cashless', 202
GO
INSERT INTO list(date, order_id, status) VALUES(N'2833-7-4 1:52:42', 202, N'canceled')
GO
EXECUTE add_order N'2756-9-8 2:34:58', N'Вячеслав', N'8-153-112-29-14', N'Запорожский', N'Советская', 72, 9, N'Подмостовский', N'Новая', 36, 5, 50, N'cash', 203
GO
INSERT INTO list(date, order_id, status) VALUES(N'2756-9-8 2:40:21', 203, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2756-9-8 2:54:31', 203, N'done')
GO
EXECUTE add_order N'2688-7-12 7:13:37', N'Никита', N'8-351-198-95-08', N'Приморский', N'Мира', 8, 1, N'Васильевский', N'Мира', 13, 8, 191, N'cashless', 204
GO
INSERT INTO list(date, order_id, status) VALUES(N'2688-7-12 7:19:39', 204, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2688-7-12 7:31:56', 204, N'done')
GO
EXECUTE add_order N'2551-17-4 8:46:5', N'Евгений', N'8-795-858-64-85', N'Подмостовский', N'Лесная', 28, 10, N'Подмостовский', N'Крестовая', 43, 6, 117, N'cash', 205
GO
INSERT INTO list(date, order_id, status) VALUES(N'2551-17-4 8:50:20', 205, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2551-17-4 9:39:22', 205, N'done')
GO
EXECUTE add_order N'2748-24-8 3:54:7', N'Джек', N'8-828-301-97-95', N'Кабельный', N'Молодежная', 87, 6, N'Спальный', N'Лесная', 60, 9, 302, N'cash', 206
GO
INSERT INTO list(date, order_id, status) VALUES(N'2748-24-8 3:58:5', 206, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2748-24-8 4:18:59', 206, N'done')
GO
EXECUTE add_order N'2972-9-9 6:42:51', N'Тимофей', N'8-518-957-94-13', N'Рыбный', N'Центральная', 77, 3, N'Приморский', N'Ленина', 100, 8, 104, N'cash', 207
GO
INSERT INTO list(date, order_id, status) VALUES(N'2972-9-9 7:24:45', 207, N'canceled')
GO
EXECUTE add_order N'2129-22-10 8:17:34', N'Никита', N'8-726-499-76-91', N'Приморский', N'Школьная', 83, 2, N'Спальный', N'Набережная', 53, 2, 546, N'cashless', 208
GO
INSERT INTO list(date, order_id, status) VALUES(N'2129-22-10 8:24:11', 208, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2129-22-10 9:10:5', 208, N'done')
GO
EXECUTE add_order N'2032-10-7 5:41:16', N'Антон', N'8-792-923-23-51', N'Спальный', N'Советская', 55, 10, N'Подмостовский', N'Мира', 33, 1, 495, N'cash', 209
GO
INSERT INTO list(date, order_id, status) VALUES(N'2032-10-7 6:28:45', 209, N'canceled')
GO
EXECUTE add_order N'2590-6-9 7:8:25', N'Николай', N'8-414-458-28-80', N'Приморский', N'Садовая', 82, 10, N'Васильевский', N'Ботаническая', 47, 1, 310, N'cash', 210
GO
INSERT INTO list(date, order_id, status) VALUES(N'2590-6-9 7:12:6', 210, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2590-6-9 7:18:7', 210, N'done')
GO
EXECUTE add_order N'2818-15-7 5:54:23', N'Владимир', N'8-340-625-14-86', N'Центральный', N'9мая', 36, 10, N'Кабельный', N'Ленина', 93, 6, 68, N'cash', 211
GO
INSERT INTO list(date, order_id, status) VALUES(N'2818-15-7 6:29:59', 211, N'canceled')
GO
EXECUTE add_order N'2525-5-3 5:25:12', N'Андрей', N'8-103-063-16-55', N'Васильевский', N'Ленина', 1, 8, N'Спальный', N'Набережная', 63, 6, 252, N'cashless', 212
GO
INSERT INTO list(date, order_id, status) VALUES(N'2525-5-3 5:31:4', 212, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2525-5-3 6:21:52', 212, N'done')
GO
EXECUTE add_order N'2235-27-7 7:50:37', N'Никита', N'8-445-101-93-02', N'Рыбный', N'Ботаническая', 83, 10, N'Кабельный', N'Мира', 94, 1, 235, N'cashless', 213
GO
INSERT INTO list(date, order_id, status) VALUES(N'2235-27-7 7:55:25', 213, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2235-27-7 8:7:4', 213, N'done')
GO
EXECUTE add_order N'2425-22-5 7:2:11', N'Кирилл', N'8-338-187-87-02', N'Рыбный', N'Молодежная', 63, 8, N'Рыбный', N'Лесная', 19, 6, 422, N'cashless', 214
GO
INSERT INTO list(date, order_id, status) VALUES(N'2425-22-5 7:47:49', 214, N'canceled')
GO
EXECUTE add_order N'2121-20-6 2:17:23', N'Сергей', N'8-614-429-97-58', N'Спальный', N'Серова', 19, 7, N'Рыбный', N'Набережная', 62, 1, 182, N'cashless', 215
GO
INSERT INTO list(date, order_id, status) VALUES(N'2121-20-6 2:36:32', 215, N'canceled')
GO
EXECUTE add_order N'2277-5-3 0:21:18', N'Егор', N'8-160-019-54-58', N'Кировский', N'Набережная', 8, 2, N'Запорожский', N'Советская', 78, 8, 59, N'cash', 216
GO
INSERT INTO list(date, order_id, status) VALUES(N'2277-5-3 0:26:58', 216, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2277-5-3 1:4:1', 216, N'done')
GO
EXECUTE add_order N'2574-6-11 3:18:26', N'Сергей', N'8-413-468-30-89', N'Невский', N'Лесная', 11, 3, N'Приморский', N'Новая', 95, 9, 129, N'cash', 217
GO
INSERT INTO list(date, order_id, status) VALUES(N'2574-6-11 3:22:43', 217, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2574-6-11 3:45:4', 217, N'done')
GO
EXECUTE add_order N'2285-24-6 7:34:32', N'Пётр', N'8-910-573-97-95', N'Кировский', N'Мира', 13, 7, N'Запорожский', N'Крестовая', 21, 10, 247, N'cashless', 218
GO
INSERT INTO list(date, order_id, status) VALUES(N'2285-24-6 7:39:32', 218, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2285-24-6 8:28:51', 218, N'done')
GO
EXECUTE add_order N'2842-10-9 8:11:34', N'Андрей', N'8-546-316-46-60', N'Кировский', N'Новая', 55, 8, N'Васильевский', N'Лесная', 58, 7, 335, N'cashless', 219
GO
INSERT INTO list(date, order_id, status) VALUES(N'2842-10-9 8:55:26', 219, N'canceled')
GO
EXECUTE add_order N'2673-21-4 0:53:52', N'Вячеслав', N'8-925-579-39-89', N'Рыбный', N'Крестовая', 8, 10, N'Центральный', N'Новая', 41, 2, 93, N'cashless', 220
GO
INSERT INTO list(date, order_id, status) VALUES(N'2673-21-4 1:10:9', 220, N'canceled')
GO
EXECUTE add_order N'2623-28-1 1:4:45', N'Александр', N'8-572-466-92-70', N'Спальный', N'Лесная', 68, 1, N'Кабельный', N'9мая', 21, 6, 342, N'cash', 221
GO
INSERT INTO list(date, order_id, status) VALUES(N'2623-28-1 1:9:3', 221, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2623-28-1 1:23:47', 221, N'done')
GO
EXECUTE add_order N'2531-3-10 9:5:5', N'Андрей', N'8-529-062-20-39', N'Запорожский', N'9мая', 75, 6, N'Приморский', N'Мира', 83, 10, 401, N'cash', 222
GO
INSERT INTO list(date, order_id, status) VALUES(N'2531-3-10 9:10:6', 222, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2531-3-10 9:24:42', 222, N'done')
GO
EXECUTE add_order N'2604-26-2 5:53:17', N'Дмитрий', N'8-299-380-92-55', N'Васильевский', N'Новая', 76, 3, N'Рыбный', N'Крестовая', 33, 7, 118, N'cashless', 223
GO
INSERT INTO list(date, order_id, status) VALUES(N'2604-26-2 6:31:9', 223, N'canceled')
GO
EXECUTE add_order N'2286-14-11 8:55:51', N'Антон', N'8-474-834-86-43', N'Кабельный', N'Ботаническая', 97, 7, N'Невский', N'Школьная', 97, 1, 491, N'cash', 224
GO
INSERT INTO list(date, order_id, status) VALUES(N'2286-14-11 9:2:20', 224, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2286-14-11 9:22:40', 224, N'done')
GO
EXECUTE add_order N'2355-28-1 1:24:41', N'Владислав', N'8-391-809-43-85', N'Кировский', N'Набережная', 78, 5, N'Центральный', N'Набережная', 74, 7, 139, N'cashless', 225
GO
INSERT INTO list(date, order_id, status) VALUES(N'2355-28-1 1:28:30', 225, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2355-28-1 1:46:38', 225, N'done')
GO
EXECUTE add_order N'2539-2-6 1:9:27', N'Алексей', N'8-203-496-21-70', N'Подмостовский', N'Центральная', 64, 4, N'Невский', N'9мая', 93, 1, 493, N'cashless', 226
GO
INSERT INTO list(date, order_id, status) VALUES(N'2539-2-6 1:13:36', 226, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2539-2-6 1:52:8', 226, N'done')
GO
EXECUTE add_order N'2576-23-2 8:12:36', N'Вячеслав', N'8-731-538-88-84', N'Невский', N'Набережная', 91, 5, N'Кабельный', N'Лесная', 45, 10, 286, N'cashless', 227
GO
INSERT INTO list(date, order_id, status) VALUES(N'2576-23-2 8:16:29', 227, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2576-23-2 9:5:29', 227, N'done')
GO
EXECUTE add_order N'2401-24-12 6:53:48', N'Джек', N'8-280-932-17-47', N'Кировский', N'Лесная', 28, 1, N'Кировский', N'9мая', 6, 7, 51, N'cashless', 228
GO
INSERT INTO list(date, order_id, status) VALUES(N'2401-24-12 7:43:3', 228, N'canceled')
GO
EXECUTE add_order N'2507-3-4 1:7:55', N'Вячеслав', N'8-470-883-48-49', N'Невский', N'Ленина', 71, 3, N'Кировский', N'9мая', 17, 5, 199, N'cash', 229
GO
INSERT INTO list(date, order_id, status) VALUES(N'2507-3-4 1:13:32', 229, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2507-3-4 1:41:11', 229, N'done')
GO
EXECUTE add_order N'2432-14-4 5:42:6', N'Егор', N'8-663-526-05-46', N'Кировский', N'Лесная', 15, 4, N'Спальный', N'Лесная', 75, 6, 374, N'cashless', 230
GO
INSERT INTO list(date, order_id, status) VALUES(N'2432-14-4 5:47:55', 230, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2432-14-4 6:29:11', 230, N'done')
GO
EXECUTE add_order N'2597-16-7 6:13:46', N'Вячеслав', N'8-811-695-91-24', N'Невский', N'Молодежная', 7, 1, N'Спальный', N'Советская', 85, 10, 96, N'cash', 231
GO
INSERT INTO list(date, order_id, status) VALUES(N'2597-16-7 6:17:12', 231, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2597-16-7 6:27:3', 231, N'done')
GO
EXECUTE add_order N'2093-4-9 4:59:10', N'Егор', N'8-961-335-97-25', N'Рыбный', N'Ленина', 89, 4, N'Приморский', N'Молодежная', 75, 2, 113, N'cash', 232
GO
INSERT INTO list(date, order_id, status) VALUES(N'2093-4-9 5:5:20', 232, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2093-4-9 5:10:41', 232, N'done')
GO
EXECUTE add_order N'2727-5-7 5:4:35', N'Владимир', N'8-035-921-19-96', N'Васильевский', N'Молодежная', 33, 4, N'Кировский', N'Новая', 71, 6, 490, N'cashless', 233
GO
INSERT INTO list(date, order_id, status) VALUES(N'2727-5-7 5:23:23', 233, N'canceled')
GO
EXECUTE add_order N'2985-1-6 3:38:44', N'Егор', N'8-942-045-24-34', N'Васильевский', N'Лесная', 29, 4, N'Кировский', N'Мира', 100, 2, 53, N'cashless', 234
GO
INSERT INTO list(date, order_id, status) VALUES(N'2985-1-6 4:35:40', 234, N'canceled')
GO
EXECUTE add_order N'2290-3-3 0:28:50', N'Джек', N'8-289-255-94-21', N'Спальный', N'Балтийская', 47, 1, N'Приморский', N'Ботаническая', 37, 3, 523, N'cashless', 235
GO
INSERT INTO list(date, order_id, status) VALUES(N'2290-3-3 0:34:46', 235, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2290-3-3 1:12:17', 235, N'done')
GO
EXECUTE add_order N'2391-20-11 6:12:2', N'Николай', N'8-702-598-90-62', N'Васильевский', N'Балтийская', 43, 10, N'Рыбный', N'Крестовая', 29, 6, 122, N'cashless', 236
GO
INSERT INTO list(date, order_id, status) VALUES(N'2391-20-11 6:18:40', 236, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2391-20-11 7:4:3', 236, N'done')
GO
EXECUTE add_order N'2201-1-4 0:33:17', N'Никита', N'8-591-603-58-05', N'Запорожский', N'Центральная', 41, 5, N'Невский', N'Мира', 89, 1, 313, N'cashless', 237
GO
INSERT INTO list(date, order_id, status) VALUES(N'2201-1-4 0:36:58', 237, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2201-1-4 1:18:2', 237, N'done')
GO
EXECUTE add_order N'2003-23-11 7:1:56', N'Кирилл', N'8-128-902-84-56', N'Васильевский', N'Советская', 23, 7, N'Васильевский', N'Центральная', 17, 1, 276, N'cashless', 238
GO
INSERT INTO list(date, order_id, status) VALUES(N'2003-23-11 7:20:53', 238, N'canceled')
GO
EXECUTE add_order N'2901-14-10 4:26:7', N'Андрей', N'8-614-898-03-15', N'Кабельный', N'Серова', 91, 2, N'Подмостовский', N'Крестовая', 54, 4, 331, N'cashless', 239
GO
INSERT INTO list(date, order_id, status) VALUES(N'2901-14-10 4:29:40', 239, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2901-14-10 4:40:31', 239, N'done')
GO
EXECUTE add_order N'2115-18-9 5:38:53', N'Антон', N'8-704-123-43-74', N'Кировский', N'Новая', 41, 8, N'Невский', N'9мая', 77, 4, 281, N'cashless', 240
GO
INSERT INTO list(date, order_id, status) VALUES(N'2115-18-9 5:42:26', 240, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2115-18-9 5:49:59', 240, N'done')
GO
EXECUTE add_order N'2311-5-10 7:37:31', N'Кирилл', N'8-091-229-42-69', N'Центральный', N'Ботаническая', 63, 6, N'Рыбный', N'9мая', 12, 8, 313, N'cash', 241
GO
INSERT INTO list(date, order_id, status) VALUES(N'2311-5-10 7:43:16', 241, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2311-5-10 8:10:39', 241, N'done')
GO
EXECUTE add_order N'2850-17-10 4:0:42', N'Антон', N'8-936-739-52-63', N'Запорожский', N'Садовая', 29, 6, N'Запорожский', N'Мира', 16, 1, 494, N'cashless', 242
GO
INSERT INTO list(date, order_id, status) VALUES(N'2850-17-10 4:7:6', 242, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2850-17-10 4:39:24', 242, N'done')
GO
EXECUTE add_order N'2383-14-7 3:47:15', N'Михаил', N'8-426-425-10-52', N'Рыбный', N'Садовая', 50, 5, N'Васильевский', N'Новая', 10, 3, 366, N'cash', 243
GO
INSERT INTO list(date, order_id, status) VALUES(N'2383-14-7 4:29:28', 243, N'canceled')
GO
EXECUTE add_order N'2930-17-7 7:1:23', N'Джек', N'8-710-990-75-09', N'Спальный', N'Школьная', 22, 5, N'Рыбный', N'Садовая', 35, 4, 549, N'cash', 244
GO
INSERT INTO list(date, order_id, status) VALUES(N'2930-17-7 7:7:27', 244, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2930-17-7 7:45:5', 244, N'done')
GO
EXECUTE add_order N'2511-15-8 5:49:3', N'Егор', N'8-010-520-11-51', N'Приморский', N'Крестовая', 34, 5, N'Запорожский', N'9мая', 88, 9, 429, N'cashless', 245
GO
INSERT INTO list(date, order_id, status) VALUES(N'2511-15-8 5:54:12', 245, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2511-15-8 5:58:44', 245, N'done')
GO
EXECUTE add_order N'2061-23-9 6:20:23', N'Антон', N'8-881-138-10-07', N'Невский', N'Ленина', 10, 6, N'Подмостовский', N'Ленина', 65, 4, 395, N'cash', 246
GO
INSERT INTO list(date, order_id, status) VALUES(N'2061-23-9 6:47:49', 246, N'canceled')
GO
EXECUTE add_order N'2142-4-5 7:20:59', N'Пётр', N'8-349-576-78-15', N'Запорожский', N'Балтийская', 25, 6, N'Кабельный', N'Советская', 32, 9, 271, N'cash', 247
GO
INSERT INTO list(date, order_id, status) VALUES(N'2142-4-5 7:27:23', 247, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2142-4-5 8:17:38', 247, N'done')
GO
EXECUTE add_order N'2344-8-1 1:41:10', N'Тимофей', N'8-529-465-07-49', N'Рыбный', N'9мая', 42, 3, N'Васильевский', N'Ленина', 53, 4, 361, N'cash', 248
GO
INSERT INTO list(date, order_id, status) VALUES(N'2344-8-1 1:47:9', 248, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2344-8-1 2:6:52', 248, N'done')
GO
EXECUTE add_order N'2665-7-6 1:53:46', N'Владислав', N'8-286-402-61-37', N'Спальный', N'Лесная', 92, 9, N'Спальный', N'Лесная', 80, 4, 548, N'cash', 249
GO
INSERT INTO list(date, order_id, status) VALUES(N'2665-7-6 1:58:49', 249, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2665-7-6 2:42:39', 249, N'done')
GO
EXECUTE add_order N'2020-23-2 1:37:1', N'Джек', N'8-408-248-73-75', N'Запорожский', N'Лесная', 9, 6, N'Невский', N'Серова', 22, 3, 369, N'cash', 250
GO
INSERT INTO list(date, order_id, status) VALUES(N'2020-23-2 2:7:23', 250, N'canceled')
GO
EXECUTE add_order N'2561-17-12 1:27:31', N'Вячеслав', N'8-358-035-10-65', N'Подмостовский', N'Серова', 58, 7, N'Спальный', N'Центральная', 77, 10, 511, N'cashless', 251
GO
INSERT INTO list(date, order_id, status) VALUES(N'2561-17-12 1:38:31', 251, N'canceled')
GO
EXECUTE add_order N'2700-25-11 6:50:20', N'Сергей', N'8-002-034-21-89', N'Васильевский', N'Молодежная', 37, 10, N'Рыбный', N'Школьная', 28, 10, 304, N'cashless', 252
GO
INSERT INTO list(date, order_id, status) VALUES(N'2700-25-11 6:56:44', 252, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2700-25-11 7:1:54', 252, N'done')
GO
EXECUTE add_order N'2168-26-10 2:15:25', N'Александр', N'8-453-949-08-30', N'Приморский', N'Школьная', 12, 7, N'Васильевский', N'Набережная', 30, 4, 137, N'cashless', 253
GO
INSERT INTO list(date, order_id, status) VALUES(N'2168-26-10 2:21:29', 253, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2168-26-10 2:45:23', 253, N'done')
GO
EXECUTE add_order N'2076-19-12 3:43:4', N'Тимофей', N'8-496-771-25-78', N'Спальный', N'Школьная', 42, 2, N'Васильевский', N'Новая', 66, 6, 200, N'cashless', 254
GO
INSERT INTO list(date, order_id, status) VALUES(N'2076-19-12 3:48:23', 254, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2076-19-12 3:56:39', 254, N'done')
GO
EXECUTE add_order N'2439-3-11 1:27:21', N'Вячеслав', N'8-947-845-90-06', N'Спальный', N'Школьная', 39, 4, N'Рыбный', N'Серова', 86, 2, 113, N'cash', 255
GO
INSERT INTO list(date, order_id, status) VALUES(N'2439-3-11 1:31:8', 255, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2439-3-11 1:44:11', 255, N'done')
GO
EXECUTE add_order N'2930-15-10 7:46:22', N'Владислав', N'8-476-382-62-05', N'Рыбный', N'Школьная', 38, 8, N'Кировский', N'Крестовая', 71, 5, 233, N'cash', 256
GO
INSERT INTO list(date, order_id, status) VALUES(N'2930-15-10 7:50:41', 256, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2930-15-10 8:18:44', 256, N'done')
GO
EXECUTE add_order N'2221-25-10 8:42:29', N'Вячеслав', N'8-004-946-37-53', N'Спальный', N'Центральная', 57, 9, N'Рыбный', N'Набережная', 34, 3, 285, N'cash', 257
GO
INSERT INTO list(date, order_id, status) VALUES(N'2221-25-10 8:47:28', 257, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2221-25-10 8:51:49', 257, N'done')
GO
EXECUTE add_order N'2090-5-12 5:57:59', N'Джек', N'8-719-916-95-56', N'Рыбный', N'Ботаническая', 28, 5, N'Рыбный', N'Балтийская', 53, 4, 350, N'cash', 258
GO
INSERT INTO list(date, order_id, status) VALUES(N'2090-5-12 6:4:37', 258, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2090-5-12 6:22:32', 258, N'done')
GO
EXECUTE add_order N'2569-23-5 7:44:3', N'Егор', N'8-967-860-95-97', N'Центральный', N'Мира', 8, 2, N'Спальный', N'Школьная', 100, 6, 320, N'cashless', 259
GO
INSERT INTO list(date, order_id, status) VALUES(N'2569-23-5 8:23:18', 259, N'canceled')
GO
EXECUTE add_order N'2232-27-6 8:48:40', N'Егор', N'8-174-110-43-94', N'Центральный', N'9мая', 84, 5, N'Кировский', N'Советская', 71, 2, 304, N'cash', 260
GO
INSERT INTO list(date, order_id, status) VALUES(N'2232-27-6 8:52:45', 260, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2232-27-6 9:6:14', 260, N'done')
GO
EXECUTE add_order N'2414-14-5 3:13:50', N'Евгений', N'8-815-752-10-32', N'Рыбный', N'Ленина', 47, 2, N'Центральный', N'Школьная', 9, 5, 277, N'cash', 261
GO
INSERT INTO list(date, order_id, status) VALUES(N'2414-14-5 3:18:25', 261, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2414-14-5 3:25:10', 261, N'done')
GO
EXECUTE add_order N'2050-19-3 8:25:18', N'Михаил', N'8-097-421-45-94', N'Подмостовский', N'Центральная', 78, 5, N'Приморский', N'Садовая', 68, 2, 391, N'cash', 262
GO
INSERT INTO list(date, order_id, status) VALUES(N'2050-19-3 8:29:43', 262, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2050-19-3 8:38:24', 262, N'done')
GO
EXECUTE add_order N'2655-7-12 2:18:3', N'Егор', N'8-040-525-22-92', N'Кировский', N'Крестовая', 35, 5, N'Невский', N'Школьная', 23, 6, 332, N'cashless', 263
GO
INSERT INTO list(date, order_id, status) VALUES(N'2655-7-12 2:23:33', 263, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2655-7-12 2:47:57', 263, N'done')
GO
EXECUTE add_order N'2423-7-7 8:1:48', N'Евгений', N'8-511-983-26-51', N'Кабельный', N'Крестовая', 99, 2, N'Приморский', N'Лесная', 40, 10, 102, N'cashless', 264
GO
INSERT INTO list(date, order_id, status) VALUES(N'2423-7-7 8:8:9', 264, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2423-7-7 8:23:51', 264, N'done')
GO
EXECUTE add_order N'2118-21-9 6:43:54', N'Александр', N'8-445-458-93-00', N'Кировский', N'Садовая', 19, 10, N'Спальный', N'Набережная', 100, 1, 498, N'cashless', 265
GO
INSERT INTO list(date, order_id, status) VALUES(N'2118-21-9 6:49:26', 265, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2118-21-9 7:31:46', 265, N'done')
GO
EXECUTE add_order N'2888-6-3 5:57:13', N'Алексей', N'8-009-720-70-52', N'Кабельный', N'Мира', 6, 2, N'Запорожский', N'Центральная', 68, 10, 420, N'cashless', 266
GO
INSERT INTO list(date, order_id, status) VALUES(N'2888-6-3 6:3:9', 266, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2888-6-3 6:56:2', 266, N'done')
GO
EXECUTE add_order N'2116-7-6 7:36:6', N'Джек', N'8-609-171-84-23', N'Приморский', N'9мая', 24, 4, N'Кировский', N'9мая', 100, 8, 431, N'cash', 267
GO
INSERT INTO list(date, order_id, status) VALUES(N'2116-7-6 7:43:57', 267, N'canceled')
GO
EXECUTE add_order N'2578-27-6 6:0:53', N'Кирилл', N'8-972-845-23-76', N'Невский', N'Молодежная', 95, 6, N'Кабельный', N'Мира', 90, 2, 148, N'cash', 268
GO
INSERT INTO list(date, order_id, status) VALUES(N'2578-27-6 6:5:13', 268, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2578-27-6 6:48:24', 268, N'done')
GO
EXECUTE add_order N'2573-6-2 7:26:46', N'Евгений', N'8-493-356-42-86', N'Кировский', N'Ботаническая', 71, 3, N'Запорожский', N'Садовая', 30, 6, 544, N'cash', 269
GO
INSERT INTO list(date, order_id, status) VALUES(N'2573-6-2 7:30:36', 269, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2573-6-2 7:59:45', 269, N'done')
GO
EXECUTE add_order N'2300-15-10 5:9:21', N'Вячеслав', N'8-115-993-68-92', N'Центральный', N'Центральная', 40, 7, N'Подмостовский', N'Центральная', 97, 5, 399, N'cash', 270
GO
INSERT INTO list(date, order_id, status) VALUES(N'2300-15-10 5:24:44', 270, N'canceled')
GO
EXECUTE add_order N'2714-9-8 0:27:0', N'Владимир', N'8-128-367-59-86', N'Васильевский', N'Балтийская', 51, 5, N'Спальный', N'9мая', 99, 2, 395, N'cash', 271
GO
INSERT INTO list(date, order_id, status) VALUES(N'2714-9-8 0:33:24', 271, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2714-9-8 0:43:57', 271, N'done')
GO
EXECUTE add_order N'2100-8-12 8:58:17', N'Иван', N'8-952-974-89-11', N'Спальный', N'Новая', 67, 8, N'Кировский', N'Набережная', 50, 5, 346, N'cashless', 272
GO
INSERT INTO list(date, order_id, status) VALUES(N'2100-8-12 9:4:53', 272, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2100-8-12 9:48:30', 272, N'done')
GO
EXECUTE add_order N'2411-9-5 4:23:1', N'Джек', N'8-014-458-84-84', N'Запорожский', N'Набережная', 1, 2, N'Подмостовский', N'Балтийская', 31, 6, 501, N'cashless', 273
GO
INSERT INTO list(date, order_id, status) VALUES(N'2411-9-5 4:28:28', 273, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2411-9-5 4:56:28', 273, N'done')
GO
EXECUTE add_order N'2405-22-11 6:0:14', N'Никита', N'8-401-665-89-24', N'Запорожский', N'Лесная', 36, 7, N'Невский', N'9мая', 77, 5, 342, N'cash', 274
GO
INSERT INTO list(date, order_id, status) VALUES(N'2405-22-11 6:36:50', 274, N'canceled')
GO
EXECUTE add_order N'2527-4-8 3:20:27', N'Алексей', N'8-513-733-07-75', N'Запорожский', N'Набережная', 81, 9, N'Васильевский', N'9мая', 54, 10, 480, N'cashless', 275
GO
INSERT INTO list(date, order_id, status) VALUES(N'2527-4-8 3:34:35', 275, N'canceled')
GO
EXECUTE add_order N'2632-11-2 4:16:56', N'Вячеслав', N'8-808-514-94-58', N'Рыбный', N'Крестовая', 72, 2, N'Рыбный', N'Лесная', 73, 7, 159, N'cash', 276
GO
INSERT INTO list(date, order_id, status) VALUES(N'2632-11-2 4:21:26', 276, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2632-11-2 4:33:31', 276, N'done')
GO
EXECUTE add_order N'2184-28-11 3:49:6', N'Пётр', N'8-973-818-59-72', N'Невский', N'Балтийская', 84, 9, N'Центральный', N'Новая', 97, 6, 389, N'cash', 277
GO
INSERT INTO list(date, order_id, status) VALUES(N'2184-28-11 3:55:5', 277, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2184-28-11 4:7:3', 277, N'done')
GO
EXECUTE add_order N'2061-16-12 7:49:26', N'Евгений', N'8-840-780-62-36', N'Запорожский', N'Школьная', 74, 2, N'Кировский', N'Серова', 20, 9, 395, N'cash', 278
GO
INSERT INTO list(date, order_id, status) VALUES(N'2061-16-12 7:53:2', 278, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2061-16-12 8:28:58', 278, N'done')
GO
EXECUTE add_order N'2239-6-2 7:55:32', N'Евгений', N'8-905-088-72-61', N'Спальный', N'Центральная', 14, 4, N'Кабельный', N'Балтийская', 49, 4, 143, N'cash', 279
GO
INSERT INTO list(date, order_id, status) VALUES(N'2239-6-2 8:35:38', 279, N'canceled')
GO
EXECUTE add_order N'2666-4-4 6:1:11', N'Антон', N'8-272-724-47-89', N'Центральный', N'Мира', 72, 9, N'Кабельный', N'Серова', 18, 3, 74, N'cashless', 280
GO
INSERT INTO list(date, order_id, status) VALUES(N'2666-4-4 6:6:0', 280, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2666-4-4 6:37:28', 280, N'done')
GO
EXECUTE add_order N'2414-25-9 1:12:26', N'Евгений', N'8-737-175-78-57', N'Центральный', N'Ботаническая', 40, 7, N'Подмостовский', N'Набережная', 32, 1, 526, N'cash', 281
GO
INSERT INTO list(date, order_id, status) VALUES(N'2414-25-9 1:16:31', 281, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2414-25-9 1:54:50', 281, N'done')
GO
EXECUTE add_order N'2416-5-11 5:11:17', N'Никита', N'8-044-882-96-86', N'Приморский', N'Ботаническая', 69, 10, N'Васильевский', N'Лесная', 56, 2, 516, N'cash', 282
GO
INSERT INTO list(date, order_id, status) VALUES(N'2416-5-11 5:17:19', 282, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2416-5-11 6:6:59', 282, N'done')
GO
EXECUTE add_order N'2818-22-5 6:1:53', N'Владимир', N'8-022-251-01-63', N'Васильевский', N'Серова', 2, 8, N'Кировский', N'Крестовая', 95, 4, 469, N'cashless', 283
GO
INSERT INTO list(date, order_id, status) VALUES(N'2818-22-5 6:7:26', 283, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2818-22-5 6:40:28', 283, N'done')
GO
EXECUTE add_order N'2512-26-1 5:50:52', N'Никита', N'8-187-583-26-54', N'Запорожский', N'Садовая', 81, 1, N'Невский', N'Серова', 17, 10, 347, N'cashless', 284
GO
INSERT INTO list(date, order_id, status) VALUES(N'2512-26-1 5:57:9', 284, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2512-26-1 6:40:10', 284, N'done')
GO
EXECUTE add_order N'2065-26-5 1:12:51', N'Виталий', N'8-828-279-12-46', N'Подмостовский', N'Молодежная', 18, 1, N'Спальный', N'Новая', 39, 2, 256, N'cash', 285
GO
INSERT INTO list(date, order_id, status) VALUES(N'2065-26-5 1:55:18', 285, N'canceled')
GO
EXECUTE add_order N'2458-2-8 8:19:41', N'Пётр', N'8-039-757-46-14', N'Васильевский', N'Новая', 26, 10, N'Центральный', N'Центральная', 50, 5, 136, N'cashless', 286
GO
INSERT INTO list(date, order_id, status) VALUES(N'2458-2-8 8:26:6', 286, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2458-2-8 8:49:41', 286, N'done')
GO
EXECUTE add_order N'2058-23-12 1:49:42', N'Владислав', N'8-066-218-12-07', N'Кировский', N'Молодежная', 49, 2, N'Подмостовский', N'Школьная', 59, 1, 278, N'cash', 287
GO
INSERT INTO list(date, order_id, status) VALUES(N'2058-23-12 2:3:40', 287, N'canceled')
GO
EXECUTE add_order N'2860-6-2 3:11:33', N'Дмитрий', N'8-488-154-52-34', N'Центральный', N'Лесная', 33, 9, N'Спальный', N'Центральная', 33, 7, 312, N'cashless', 288
GO
INSERT INTO list(date, order_id, status) VALUES(N'2860-6-2 3:18:50', 288, N'canceled')
GO
EXECUTE add_order N'2694-16-7 9:1:54', N'Андрей', N'8-771-613-07-49', N'Подмостовский', N'Садовая', 18, 4, N'Приморский', N'Мира', 44, 2, 88, N'cashless', 289
GO
INSERT INTO list(date, order_id, status) VALUES(N'2694-16-7 9:6:41', 289, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2694-16-7 9:10:13', 289, N'done')
GO
EXECUTE add_order N'2912-10-7 6:9:34', N'Владислав', N'8-190-123-71-88', N'Рыбный', N'Набережная', 30, 9, N'Запорожский', N'Серова', 28, 4, 538, N'cash', 290
GO
INSERT INTO list(date, order_id, status) VALUES(N'2912-10-7 6:13:40', 290, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2912-10-7 6:24:55', 290, N'done')
GO
EXECUTE add_order N'2082-4-4 3:30:19', N'Иван', N'8-100-152-06-27', N'Центральный', N'Ботаническая', 25, 9, N'Запорожский', N'Балтийская', 90, 1, 175, N'cashless', 291
GO
INSERT INTO list(date, order_id, status) VALUES(N'2082-4-4 3:34:32', 291, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2082-4-4 4:17:32', 291, N'done')
GO
EXECUTE add_order N'2430-7-12 6:24:18', N'Тимофей', N'8-954-677-20-71', N'Кабельный', N'Балтийская', 36, 6, N'Кировский', N'Балтийская', 14, 5, 73, N'cashless', 292
GO
INSERT INTO list(date, order_id, status) VALUES(N'2430-7-12 6:30:35', 292, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2430-7-12 6:46:1', 292, N'done')
GO
EXECUTE add_order N'2922-10-8 2:34:26', N'Тимофей', N'8-266-370-58-05', N'Рыбный', N'Молодежная', 31, 8, N'Невский', N'Набережная', 56, 3, 234, N'cash', 293
GO
INSERT INTO list(date, order_id, status) VALUES(N'2922-10-8 2:40:12', 293, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2922-10-8 3:13:22', 293, N'done')
GO
EXECUTE add_order N'2036-22-4 2:56:47', N'Евгений', N'8-128-322-96-18', N'Запорожский', N'Молодежная', 58, 5, N'Кировский', N'Молодежная', 33, 9, 313, N'cash', 294
GO
INSERT INTO list(date, order_id, status) VALUES(N'2036-22-4 3:50:48', 294, N'canceled')
GO
EXECUTE add_order N'2679-17-6 7:23:57', N'Иван', N'8-189-697-70-40', N'Кировский', N'Центральная', 98, 2, N'Невский', N'Крестовая', 30, 7, 243, N'cash', 295
GO
INSERT INTO list(date, order_id, status) VALUES(N'2679-17-6 7:30:31', 295, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2679-17-6 7:54:29', 295, N'done')
GO
EXECUTE add_order N'2988-28-8 0:7:1', N'Алексей', N'8-459-869-69-63', N'Кировский', N'Ботаническая', 67, 3, N'Кировский', N'Лесная', 14, 4, 481, N'cashless', 296
GO
INSERT INTO list(date, order_id, status) VALUES(N'2988-28-8 0:56:27', 296, N'canceled')
GO
EXECUTE add_order N'2449-5-11 3:51:23', N'Джек', N'8-960-068-46-66', N'Кировский', N'Центральная', 85, 9, N'Спальный', N'Серова', 31, 9, 471, N'cash', 297
GO
INSERT INTO list(date, order_id, status) VALUES(N'2449-5-11 4:46:16', 297, N'canceled')
GO
EXECUTE add_order N'2444-16-2 1:40:40', N'Вячеслав', N'8-510-922-50-72', N'Рыбный', N'9мая', 64, 8, N'Спальный', N'9мая', 46, 9, 259, N'cashless', 298
GO
INSERT INTO list(date, order_id, status) VALUES(N'2444-16-2 1:46:0', 298, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2444-16-2 2:33:23', 298, N'done')
GO
EXECUTE add_order N'2606-22-3 4:43:3', N'Евгений', N'8-072-257-99-57', N'Невский', N'Садовая', 53, 6, N'Кабельный', N'Балтийская', 98, 3, 200, N'cash', 299
GO
INSERT INTO list(date, order_id, status) VALUES(N'2606-22-3 4:48:8', 299, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2606-22-3 5:10:15', 299, N'done')
GO
EXECUTE add_order N'2447-8-4 0:21:16', N'Сергей', N'8-716-035-31-65', N'Невский', N'Крестовая', 4, 5, N'Васильевский', N'Лесная', 9, 5, 85, N'cashless', 300
GO
INSERT INTO list(date, order_id, status) VALUES(N'2447-8-4 0:25:17', 300, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2447-8-4 0:58:23', 300, N'done')
GO
EXECUTE add_order N'2393-23-9 5:49:4', N'Егор', N'8-133-666-16-42', N'Кабельный', N'Садовая', 7, 6, N'Кировский', N'Крестовая', 92, 10, 74, N'cash', 301
GO
INSERT INTO list(date, order_id, status) VALUES(N'2393-23-9 6:37:58', 301, N'canceled')
GO
EXECUTE add_order N'2495-12-4 2:8:14', N'Тимофей', N'8-525-620-89-25', N'Кировский', N'Мира', 39, 10, N'Кабельный', N'Крестовая', 61, 1, 391, N'cash', 302
GO
INSERT INTO list(date, order_id, status) VALUES(N'2495-12-4 2:11:40', 302, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2495-12-4 2:46:58', 302, N'done')
GO
EXECUTE add_order N'2268-18-9 1:50:19', N'Тимофей', N'8-567-189-02-41', N'Кабельный', N'Советская', 54, 4, N'Рыбный', N'9мая', 66, 4, 95, N'cash', 303
GO
INSERT INTO list(date, order_id, status) VALUES(N'2268-18-9 2:27:30', 303, N'canceled')
GO
EXECUTE add_order N'2380-8-4 5:45:23', N'Владимир', N'8-889-120-69-43', N'Кировский', N'Серова', 61, 6, N'Спальный', N'Советская', 48, 4, 452, N'cash', 304
GO
INSERT INTO list(date, order_id, status) VALUES(N'2380-8-4 6:19:6', 304, N'canceled')
GO
EXECUTE add_order N'2055-16-12 5:13:29', N'Михаил', N'8-746-595-44-11', N'Кабельный', N'Школьная', 81, 1, N'Центральный', N'Ленина', 68, 7, 328, N'cash', 305
GO
INSERT INTO list(date, order_id, status) VALUES(N'2055-16-12 5:17:37', 305, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2055-16-12 6:9:49', 305, N'done')
GO
EXECUTE add_order N'2576-3-8 6:45:35', N'Виталий', N'8-105-931-16-07', N'Невский', N'Школьная', 87, 9, N'Приморский', N'Ботаническая', 11, 8, 276, N'cashless', 306
GO
INSERT INTO list(date, order_id, status) VALUES(N'2576-3-8 6:49:59', 306, N'canceled')
GO
EXECUTE add_order N'2666-9-3 8:22:28', N'Никита', N'8-683-929-78-62', N'Центральный', N'Лесная', 79, 7, N'Кировский', N'Лесная', 4, 8, 373, N'cash', 307
GO
INSERT INTO list(date, order_id, status) VALUES(N'2666-9-3 9:16:33', 307, N'canceled')
GO
EXECUTE add_order N'2630-13-7 2:29:53', N'Кирилл', N'8-217-319-42-44', N'Невский', N'Школьная', 35, 2, N'Запорожский', N'Советская', 33, 1, 506, N'cashless', 308
GO
INSERT INTO list(date, order_id, status) VALUES(N'2630-13-7 2:38:30', 308, N'canceled')
GO
EXECUTE add_order N'2593-21-2 6:21:50', N'Михаил', N'8-396-591-99-58', N'Спальный', N'Ленина', 28, 5, N'Рыбный', N'Лесная', 3, 6, 366, N'cash', 309
GO
INSERT INTO list(date, order_id, status) VALUES(N'2593-21-2 7:17:54', 309, N'canceled')
GO
EXECUTE add_order N'2948-25-1 1:56:48', N'Михаил', N'8-704-766-61-77', N'Рыбный', N'Молодежная', 54, 4, N'Спальный', N'Лесная', 30, 3, 490, N'cash', 310
GO
INSERT INTO list(date, order_id, status) VALUES(N'2948-25-1 2:4:54', 310, N'canceled')
GO
EXECUTE add_order N'2443-6-12 5:7:50', N'Михаил', N'8-150-222-11-95', N'Кировский', N'Ленина', 53, 2, N'Приморский', N'Балтийская', 31, 6, 401, N'cashless', 311
GO
INSERT INTO list(date, order_id, status) VALUES(N'2443-6-12 5:37:38', 311, N'canceled')
GO
EXECUTE add_order N'2747-15-1 8:40:19', N'Егор', N'8-339-293-26-03', N'Невский', N'Мира', 87, 7, N'Рыбный', N'Новая', 33, 1, 72, N'cash', 312
GO
INSERT INTO list(date, order_id, status) VALUES(N'2747-15-1 8:45:28', 312, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2747-15-1 9:37:3', 312, N'done')
GO
EXECUTE add_order N'2747-24-9 8:47:14', N'Виталий', N'8-258-965-02-43', N'Кировский', N'Мира', 83, 10, N'Невский', N'Серова', 67, 1, 183, N'cashless', 313
GO
INSERT INTO list(date, order_id, status) VALUES(N'2747-24-9 9:1:10', 313, N'canceled')
GO
EXECUTE add_order N'2677-23-8 5:24:23', N'Иван', N'8-011-175-63-60', N'Кабельный', N'Ленина', 79, 9, N'Приморский', N'Новая', 100, 9, 520, N'cash', 314
GO
INSERT INTO list(date, order_id, status) VALUES(N'2677-23-8 5:30:29', 314, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2677-23-8 5:58:14', 314, N'done')
GO
EXECUTE add_order N'2232-11-3 1:12:17', N'Алексей', N'8-657-281-78-38', N'Центральный', N'Серова', 3, 5, N'Приморский', N'Молодежная', 17, 4, 528, N'cashless', 315
GO
INSERT INTO list(date, order_id, status) VALUES(N'2232-11-3 1:17:32', 315, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2232-11-3 1:28:45', 315, N'done')
GO
EXECUTE add_order N'2160-21-11 6:51:59', N'Пётр', N'8-260-623-61-28', N'Кировский', N'Крестовая', 63, 7, N'Кабельный', N'9мая', 5, 4, 388, N'cash', 316
GO
INSERT INTO list(date, order_id, status) VALUES(N'2160-21-11 7:38:34', 316, N'canceled')
GO
EXECUTE add_order N'2911-24-8 8:40:21', N'Егор', N'8-465-146-40-84', N'Рыбный', N'Лесная', 1, 6, N'Васильевский', N'Новая', 12, 3, 507, N'cash', 317
GO
INSERT INTO list(date, order_id, status) VALUES(N'2911-24-8 8:44:8', 317, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2911-24-8 9:15:34', 317, N'done')
GO
EXECUTE add_order N'2943-5-8 2:17:11', N'Егор', N'8-081-696-51-69', N'Васильевский', N'Набережная', 8, 6, N'Невский', N'Балтийская', 95, 8, 430, N'cash', 318
GO
INSERT INTO list(date, order_id, status) VALUES(N'2943-5-8 2:22:45', 318, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2943-5-8 2:32:28', 318, N'done')
GO
EXECUTE add_order N'2611-8-5 6:5:48', N'Алексей', N'8-987-329-33-01', N'Невский', N'Центральная', 64, 1, N'Приморский', N'Лесная', 14, 4, 380, N'cashless', 319
GO
INSERT INTO list(date, order_id, status) VALUES(N'2611-8-5 6:12:26', 319, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2611-8-5 6:50:49', 319, N'done')
GO
EXECUTE add_order N'2598-15-6 6:54:28', N'Кирилл', N'8-775-768-46-82', N'Запорожский', N'Садовая', 21, 1, N'Рыбный', N'Крестовая', 99, 10, 92, N'cashless', 320
GO
INSERT INTO list(date, order_id, status) VALUES(N'2598-15-6 6:58:54', 320, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2598-15-6 7:12:47', 320, N'done')
GO
EXECUTE add_order N'2505-19-11 4:15:11', N'Алексей', N'8-637-068-39-27', N'Центральный', N'Ленина', 87, 7, N'Центральный', N'Ботаническая', 14, 10, 212, N'cashless', 321
GO
INSERT INTO list(date, order_id, status) VALUES(N'2505-19-11 5:12:28', 321, N'canceled')
GO
EXECUTE add_order N'2815-17-8 1:21:16', N'Михаил', N'8-806-554-70-59', N'Спальный', N'Садовая', 68, 4, N'Приморский', N'Школьная', 4, 6, 544, N'cashless', 322
GO
INSERT INTO list(date, order_id, status) VALUES(N'2815-17-8 1:25:28', 322, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2815-17-8 2:6:43', 322, N'done')
GO
EXECUTE add_order N'2541-14-6 1:20:55', N'Антон', N'8-790-565-03-18', N'Рыбный', N'Серова', 84, 10, N'Васильевский', N'Школьная', 49, 4, 76, N'cashless', 323
GO
INSERT INTO list(date, order_id, status) VALUES(N'2541-14-6 1:26:4', 323, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2541-14-6 2:10:30', 323, N'done')
GO
EXECUTE add_order N'2565-20-2 4:1:13', N'Виталий', N'8-811-039-93-30', N'Невский', N'Крестовая', 3, 9, N'Центральный', N'Школьная', 67, 4, 410, N'cashless', 324
GO
INSERT INTO list(date, order_id, status) VALUES(N'2565-20-2 4:4:34', 324, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2565-20-2 4:32:39', 324, N'done')
GO
EXECUTE add_order N'2619-14-3 4:38:16', N'Иван', N'8-325-187-99-44', N'Центральный', N'Набережная', 25, 6, N'Васильевский', N'Советская', 93, 4, 160, N'cash', 325
GO
INSERT INTO list(date, order_id, status) VALUES(N'2619-14-3 4:41:41', 325, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2619-14-3 5:3:33', 325, N'done')
GO
EXECUTE add_order N'2856-11-1 3:7:11', N'Кирилл', N'8-264-965-68-11', N'Подмостовский', N'Серова', 81, 2, N'Рыбный', N'Садовая', 100, 9, 187, N'cash', 326
GO
INSERT INTO list(date, order_id, status) VALUES(N'2856-11-1 3:10:43', 326, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2856-11-1 3:44:34', 326, N'done')
GO
EXECUTE add_order N'2684-15-6 1:25:40', N'Тимофей', N'8-180-600-99-78', N'Центральный', N'9мая', 95, 1, N'Кировский', N'Центральная', 86, 4, 189, N'cash', 327
GO
INSERT INTO list(date, order_id, status) VALUES(N'2684-15-6 1:32:16', 327, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2684-15-6 2:14:0', 327, N'done')
GO
EXECUTE add_order N'2368-12-9 1:20:13', N'Вячеслав', N'8-571-379-36-81', N'Подмостовский', N'Садовая', 53, 1, N'Запорожский', N'Садовая', 74, 1, 138, N'cash', 328
GO
INSERT INTO list(date, order_id, status) VALUES(N'2368-12-9 1:26:16', 328, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2368-12-9 2:13:8', 328, N'done')
GO
EXECUTE add_order N'2474-15-6 6:50:28', N'Дмитрий', N'8-182-050-57-33', N'Невский', N'Лесная', 62, 4, N'Кировский', N'Лесная', 40, 1, 377, N'cash', 329
GO
INSERT INTO list(date, order_id, status) VALUES(N'2474-15-6 7:50:6', 329, N'canceled')
GO
EXECUTE add_order N'2289-10-5 2:7:38', N'Николай', N'8-244-775-20-68', N'Подмостовский', N'Молодежная', 46, 5, N'Васильевский', N'Ленина', 45, 4, 431, N'cash', 330
GO
INSERT INTO list(date, order_id, status) VALUES(N'2289-10-5 2:38:25', 330, N'canceled')
GO
EXECUTE add_order N'2318-16-3 8:46:34', N'Никита', N'8-420-208-91-87', N'Приморский', N'Садовая', 91, 8, N'Приморский', N'Балтийская', 6, 1, 534, N'cash', 331
GO
INSERT INTO list(date, order_id, status) VALUES(N'2318-16-3 8:52:38', 331, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2318-16-3 9:37:38', 331, N'done')
GO
EXECUTE add_order N'2298-20-3 8:26:10', N'Вячеслав', N'8-077-403-74-18', N'Спальный', N'Балтийская', 28, 8, N'Рыбный', N'Садовая', 70, 9, 363, N'cashless', 332
GO
INSERT INTO list(date, order_id, status) VALUES(N'2298-20-3 8:32:9', 332, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2298-20-3 9:22:59', 332, N'done')
GO
EXECUTE add_order N'2456-23-10 2:20:28', N'Джек', N'8-501-417-62-20', N'Подмостовский', N'Крестовая', 95, 4, N'Приморский', N'Ленина', 3, 5, 416, N'cashless', 333
GO
INSERT INTO list(date, order_id, status) VALUES(N'2456-23-10 2:26:39', 333, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2456-23-10 2:48:56', 333, N'done')
GO
EXECUTE add_order N'2633-23-1 1:28:40', N'Владимир', N'8-372-831-76-55', N'Кабельный', N'Крестовая', 8, 5, N'Рыбный', N'Лесная', 83, 10, 58, N'cashless', 334
GO
INSERT INTO list(date, order_id, status) VALUES(N'2633-23-1 1:34:51', 334, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2633-23-1 2:3:17', 334, N'done')
GO
EXECUTE add_order N'2698-25-8 6:14:4', N'Антон', N'8-099-853-01-18', N'Спальный', N'Серова', 64, 9, N'Центральный', N'Лесная', 6, 5, 94, N'cash', 335
GO
INSERT INTO list(date, order_id, status) VALUES(N'2698-25-8 6:18:48', 335, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2698-25-8 6:57:14', 335, N'done')
GO
EXECUTE add_order N'2258-3-2 5:35:59', N'Вячеслав', N'8-556-663-82-65', N'Приморский', N'Крестовая', 40, 2, N'Кировский', N'Ботаническая', 73, 8, 302, N'cashless', 336
GO
INSERT INTO list(date, order_id, status) VALUES(N'2258-3-2 5:52:10', 336, N'canceled')
GO
EXECUTE add_order N'2585-13-6 0:24:7', N'Пётр', N'8-481-722-25-99', N'Запорожский', N'Садовая', 59, 10, N'Рыбный', N'Центральная', 65, 9, 105, N'cash', 337
GO
INSERT INTO list(date, order_id, status) VALUES(N'2585-13-6 0:27:34', 337, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2585-13-6 0:36:49', 337, N'done')
GO
EXECUTE add_order N'2396-10-8 4:44:9', N'Кирилл', N'8-401-892-16-64', N'Рыбный', N'Школьная', 9, 3, N'Подмостовский', N'Балтийская', 38, 2, 62, N'cash', 338
GO
INSERT INTO list(date, order_id, status) VALUES(N'2396-10-8 4:49:0', 338, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2396-10-8 4:54:48', 338, N'done')
GO
EXECUTE add_order N'2160-2-2 2:48:10', N'Михаил', N'8-215-741-85-81', N'Центральный', N'Лесная', 66, 8, N'Спальный', N'9мая', 16, 4, 459, N'cash', 339
GO
INSERT INTO list(date, order_id, status) VALUES(N'2160-2-2 3:8:41', 339, N'canceled')
GO
EXECUTE add_order N'2585-16-2 4:25:44', N'Дмитрий', N'8-589-555-47-24', N'Рыбный', N'Лесная', 10, 7, N'Спальный', N'Набережная', 49, 3, 329, N'cash', 340
GO
INSERT INTO list(date, order_id, status) VALUES(N'2585-16-2 4:54:55', 340, N'canceled')
GO
EXECUTE add_order N'2251-7-9 8:36:19', N'Евгений', N'8-276-911-31-16', N'Запорожский', N'Балтийская', 59, 6, N'Спальный', N'9мая', 75, 1, 134, N'cashless', 341
GO
INSERT INTO list(date, order_id, status) VALUES(N'2251-7-9 8:40:35', 341, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2251-7-9 8:53:48', 341, N'done')
GO
EXECUTE add_order N'2373-24-8 6:44:12', N'Джек', N'8-346-260-60-39', N'Запорожский', N'Набережная', 34, 10, N'Подмостовский', N'Набережная', 43, 10, 254, N'cash', 342
GO
INSERT INTO list(date, order_id, status) VALUES(N'2373-24-8 6:59:48', 342, N'canceled')
GO
EXECUTE add_order N'2065-21-6 8:14:32', N'Александр', N'8-634-868-60-55', N'Кабельный', N'Балтийская', 82, 6, N'Спальный', N'Молодежная', 17, 9, 388, N'cashless', 343
GO
INSERT INTO list(date, order_id, status) VALUES(N'2065-21-6 8:19:31', 343, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2065-21-6 8:26:33', 343, N'done')
GO
EXECUTE add_order N'2733-18-5 8:55:43', N'Виталий', N'8-219-771-40-18', N'Спальный', N'Советская', 50, 4, N'Центральный', N'9мая', 46, 9, 367, N'cash', 344
GO
INSERT INTO list(date, order_id, status) VALUES(N'2733-18-5 9:0:13', 344, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2733-18-5 9:45:51', 344, N'done')
GO
EXECUTE add_order N'2986-7-6 7:33:2', N'Дмитрий', N'8-378-631-06-58', N'Васильевский', N'Молодежная', 66, 7, N'Приморский', N'Ленина', 19, 7, 394, N'cashless', 345
GO
INSERT INTO list(date, order_id, status) VALUES(N'2986-7-6 7:37:41', 345, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2986-7-6 7:57:56', 345, N'done')
GO
EXECUTE add_order N'2372-16-12 7:16:57', N'Александр', N'8-542-086-97-07', N'Кировский', N'Новая', 100, 9, N'Приморский', N'Набережная', 41, 2, 139, N'cashless', 346
GO
INSERT INTO list(date, order_id, status) VALUES(N'2372-16-12 7:21:50', 346, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2372-16-12 8:0:56', 346, N'done')
GO
EXECUTE add_order N'2021-19-1 6:10:18', N'Андрей', N'8-156-235-77-63', N'Кабельный', N'Новая', 43, 5, N'Невский', N'Балтийская', 67, 1, 259, N'cashless', 347
GO
INSERT INTO list(date, order_id, status) VALUES(N'2021-19-1 6:15:18', 347, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2021-19-1 6:21:40', 347, N'done')
GO
EXECUTE add_order N'2916-22-2 0:54:13', N'Антон', N'8-536-333-51-81', N'Невский', N'Серова', 85, 8, N'Спальный', N'Набережная', 5, 7, 134, N'cash', 348
GO
INSERT INTO list(date, order_id, status) VALUES(N'2916-22-2 1:0:25', 348, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2916-22-2 1:14:15', 348, N'done')
GO
EXECUTE add_order N'2560-28-4 3:19:5', N'Джек', N'8-360-688-95-21', N'Невский', N'Набережная', 61, 4, N'Васильевский', N'Новая', 15, 6, 474, N'cash', 349
GO
INSERT INTO list(date, order_id, status) VALUES(N'2560-28-4 3:22:25', 349, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2560-28-4 3:53:32', 349, N'done')
GO
EXECUTE add_order N'2772-6-6 3:23:38', N'Джек', N'8-277-645-69-98', N'Запорожский', N'Балтийская', 36, 2, N'Рыбный', N'Школьная', 7, 8, 438, N'cash', 350
GO
INSERT INTO list(date, order_id, status) VALUES(N'2772-6-6 3:29:16', 350, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2772-6-6 4:9:0', 350, N'done')
GO
EXECUTE add_order N'2957-15-4 8:7:40', N'Владислав', N'8-140-771-07-53', N'Спальный', N'Молодежная', 91, 1, N'Кабельный', N'Крестовая', 24, 9, 340, N'cashless', 351
GO
INSERT INTO list(date, order_id, status) VALUES(N'2957-15-4 8:11:21', 351, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2957-15-4 8:31:16', 351, N'done')
GO
EXECUTE add_order N'2946-19-11 8:6:41', N'Вячеслав', N'8-442-828-76-83', N'Кабельный', N'Новая', 28, 9, N'Центральный', N'9мая', 93, 7, 316, N'cashless', 352
GO
INSERT INTO list(date, order_id, status) VALUES(N'2946-19-11 8:12:36', 352, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2946-19-11 8:17:38', 352, N'done')
GO
EXECUTE add_order N'2619-9-9 1:13:41', N'Виталий', N'8-425-583-09-85', N'Подмостовский', N'Ботаническая', 11, 6, N'Невский', N'Новая', 85, 3, 431, N'cashless', 353
GO
INSERT INTO list(date, order_id, status) VALUES(N'2619-9-9 1:40:45', 353, N'canceled')
GO
EXECUTE add_order N'2301-15-2 8:24:53', N'Виталий', N'8-693-748-95-10', N'Кировский', N'Садовая', 65, 5, N'Приморский', N'Мира', 12, 9, 152, N'cashless', 354
GO
INSERT INTO list(date, order_id, status) VALUES(N'2301-15-2 9:21:20', 354, N'canceled')
GO
EXECUTE add_order N'2942-5-2 8:26:12', N'Евгений', N'8-799-960-18-33', N'Васильевский', N'Лесная', 90, 2, N'Рыбный', N'Школьная', 70, 10, 431, N'cash', 355
GO
INSERT INTO list(date, order_id, status) VALUES(N'2942-5-2 8:30:1', 355, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2942-5-2 9:5:14', 355, N'done')
GO
EXECUTE add_order N'2154-23-2 7:19:53', N'Иван', N'8-226-727-48-24', N'Центральный', N'Школьная', 22, 10, N'Невский', N'Центральная', 6, 4, 194, N'cashless', 356
GO
INSERT INTO list(date, order_id, status) VALUES(N'2154-23-2 7:23:57', 356, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2154-23-2 8:8:48', 356, N'done')
GO
EXECUTE add_order N'2934-28-9 5:37:4', N'Александр', N'8-118-665-31-13', N'Центральный', N'Садовая', 28, 4, N'Запорожский', N'Молодежная', 10, 3, 276, N'cash', 357
GO
INSERT INTO list(date, order_id, status) VALUES(N'2934-28-9 5:41:27', 357, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2934-28-9 5:46:57', 357, N'done')
GO
EXECUTE add_order N'2721-18-12 4:10:17', N'Сергей', N'8-509-540-28-51', N'Запорожский', N'Лесная', 38, 1, N'Спальный', N'Серова', 67, 6, 142, N'cashless', 358
GO
INSERT INTO list(date, order_id, status) VALUES(N'2721-18-12 4:15:23', 358, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2721-18-12 5:1:57', 358, N'done')
GO
EXECUTE add_order N'2324-7-1 6:27:39', N'Джек', N'8-688-775-21-36', N'Центральный', N'Серова', 75, 10, N'Спальный', N'Ботаническая', 80, 5, 522, N'cash', 359
GO
INSERT INTO list(date, order_id, status) VALUES(N'2324-7-1 6:31:16', 359, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2324-7-1 7:2:19', 359, N'done')
GO
EXECUTE add_order N'2222-16-3 2:16:17', N'Алексей', N'8-213-643-74-48', N'Подмостовский', N'Новая', 50, 1, N'Рыбный', N'Балтийская', 92, 4, 212, N'cash', 360
GO
INSERT INTO list(date, order_id, status) VALUES(N'2222-16-3 2:21:57', 360, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2222-16-3 2:40:5', 360, N'done')
GO
EXECUTE add_order N'2354-24-12 1:0:36', N'Владимир', N'8-532-040-56-39', N'Рыбный', N'Лесная', 58, 7, N'Кабельный', N'9мая', 97, 1, 534, N'cash', 361
GO
INSERT INTO list(date, order_id, status) VALUES(N'2354-24-12 1:4:1', 361, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2354-24-12 1:41:40', 361, N'done')
GO
EXECUTE add_order N'2838-4-1 5:4:56', N'Андрей', N'8-263-496-02-69', N'Спальный', N'Советская', 82, 6, N'Кабельный', N'Серова', 18, 4, 528, N'cash', 362
GO
INSERT INTO list(date, order_id, status) VALUES(N'2838-4-1 5:18:39', 362, N'canceled')
GO
EXECUTE add_order N'2232-13-8 1:25:40', N'Владислав', N'8-337-159-37-16', N'Кабельный', N'9мая', 36, 7, N'Невский', N'Мира', 5, 8, 357, N'cashless', 363
GO
INSERT INTO list(date, order_id, status) VALUES(N'2232-13-8 1:31:11', 363, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2232-13-8 2:0:40', 363, N'done')
GO
EXECUTE add_order N'2808-8-8 7:41:47', N'Александр', N'8-476-071-05-28', N'Кабельный', N'Садовая', 66, 10, N'Запорожский', N'Мира', 58, 3, 170, N'cashless', 364
GO
INSERT INTO list(date, order_id, status) VALUES(N'2808-8-8 7:47:18', 364, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2808-8-8 8:13:46', 364, N'done')
GO
EXECUTE add_order N'2344-4-12 4:25:1', N'Пётр', N'8-863-651-42-01', N'Спальный', N'Ленина', 6, 1, N'Центральный', N'Молодежная', 6, 1, 347, N'cashless', 365
GO
INSERT INTO list(date, order_id, status) VALUES(N'2344-4-12 4:31:37', 365, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2344-4-12 5:6:26', 365, N'done')
GO
EXECUTE add_order N'2833-16-3 7:41:51', N'Алексей', N'8-305-050-60-05', N'Кабельный', N'Балтийская', 7, 9, N'Приморский', N'9мая', 80, 2, 544, N'cashless', 366
GO
INSERT INTO list(date, order_id, status) VALUES(N'2833-16-3 7:47:4', 366, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2833-16-3 8:34:30', 366, N'done')
GO
EXECUTE add_order N'2443-28-7 5:13:7', N'Михаил', N'8-006-240-83-97', N'Запорожский', N'Ботаническая', 31, 9, N'Кировский', N'Серова', 3, 2, 241, N'cashless', 367
GO
INSERT INTO list(date, order_id, status) VALUES(N'2443-28-7 5:19:26', 367, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2443-28-7 5:50:39', 367, N'done')
GO
EXECUTE add_order N'2210-10-10 6:10:19', N'Евгений', N'8-923-098-86-29', N'Невский', N'Ботаническая', 4, 6, N'Центральный', N'Ботаническая', 69, 10, 387, N'cashless', 368
GO
INSERT INTO list(date, order_id, status) VALUES(N'2210-10-10 6:16:47', 368, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2210-10-10 6:26:13', 368, N'done')
GO
EXECUTE add_order N'2296-3-7 2:37:0', N'Никита', N'8-399-712-19-65', N'Запорожский', N'Набережная', 25, 8, N'Кировский', N'Мира', 56, 3, 227, N'cashless', 369
GO
INSERT INTO list(date, order_id, status) VALUES(N'2296-3-7 2:41:3', 369, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2296-3-7 3:6:5', 369, N'done')
GO
EXECUTE add_order N'2612-13-2 0:6:47', N'Евгений', N'8-957-181-95-84', N'Кировский', N'Ленина', 88, 7, N'Приморский', N'Школьная', 96, 6, 410, N'cashless', 370
GO
INSERT INTO list(date, order_id, status) VALUES(N'2612-13-2 0:29:34', 370, N'canceled')
GO
EXECUTE add_order N'2656-1-3 5:7:26', N'Виталий', N'8-019-589-33-09', N'Приморский', N'Советская', 3, 2, N'Невский', N'Мира', 22, 8, 206, N'cash', 371
GO
INSERT INTO list(date, order_id, status) VALUES(N'2656-1-3 5:11:14', 371, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2656-1-3 5:36:2', 371, N'done')
GO
EXECUTE add_order N'2012-16-9 4:44:32', N'Джек', N'8-440-136-82-20', N'Рыбный', N'Молодежная', 13, 3, N'Кировский', N'Новая', 70, 2, 359, N'cashless', 372
GO
INSERT INTO list(date, order_id, status) VALUES(N'2012-16-9 4:50:46', 372, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2012-16-9 5:8:33', 372, N'done')
GO
EXECUTE add_order N'2838-27-9 8:40:28', N'Джек', N'8-808-755-90-49', N'Кировский', N'Серова', 56, 4, N'Спальный', N'Садовая', 81, 10, 443, N'cash', 373
GO
INSERT INTO list(date, order_id, status) VALUES(N'2838-27-9 8:59:14', 373, N'canceled')
GO
EXECUTE add_order N'2237-28-12 6:23:1', N'Никита', N'8-343-509-79-23', N'Невский', N'Балтийская', 98, 2, N'Запорожский', N'Балтийская', 8, 6, 206, N'cashless', 374
GO
INSERT INTO list(date, order_id, status) VALUES(N'2237-28-12 6:26:45', 374, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2237-28-12 6:47:41', 374, N'done')
GO
EXECUTE add_order N'2892-14-11 0:40:20', N'Владислав', N'8-629-777-14-66', N'Васильевский', N'Школьная', 49, 3, N'Невский', N'9мая', 62, 7, 531, N'cash', 375
GO
INSERT INTO list(date, order_id, status) VALUES(N'2892-14-11 1:21:3', 375, N'canceled')
GO
EXECUTE add_order N'2245-6-1 2:19:33', N'Алексей', N'8-380-231-18-30', N'Кировский', N'Ботаническая', 21, 4, N'Приморский', N'Балтийская', 32, 5, 50, N'cash', 376
GO
INSERT INTO list(date, order_id, status) VALUES(N'2245-6-1 2:23:1', 376, N'canceled')
GO
EXECUTE add_order N'2917-5-7 0:20:45', N'Николай', N'8-133-964-63-99', N'Невский', N'Новая', 99, 6, N'Подмостовский', N'Балтийская', 65, 6, 272, N'cash', 377
GO
INSERT INTO list(date, order_id, status) VALUES(N'2917-5-7 0:50:34', 377, N'canceled')
GO
EXECUTE add_order N'2770-2-2 2:14:51', N'Антон', N'8-486-965-30-12', N'Кировский', N'Школьная', 81, 2, N'Приморский', N'Лесная', 63, 1, 413, N'cashless', 378
GO
INSERT INTO list(date, order_id, status) VALUES(N'2770-2-2 2:19:6', 378, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2770-2-2 2:32:24', 378, N'done')
GO
EXECUTE add_order N'2772-14-12 7:51:40', N'Джек', N'8-063-792-74-91', N'Подмостовский', N'Ботаническая', 81, 4, N'Кировский', N'9мая', 7, 8, 502, N'cashless', 379
GO
INSERT INTO list(date, order_id, status) VALUES(N'2772-14-12 8:46:40', 379, N'canceled')
GO
EXECUTE add_order N'2377-20-5 5:50:11', N'Тимофей', N'8-602-923-33-42', N'Кировский', N'Школьная', 10, 8, N'Рыбный', N'Балтийская', 73, 1, 367, N'cashless', 380
GO
INSERT INTO list(date, order_id, status) VALUES(N'2377-20-5 6:24:43', 380, N'canceled')
GO
EXECUTE add_order N'2257-5-6 1:58:27', N'Владислав', N'8-288-283-71-37', N'Подмостовский', N'Набережная', 86, 8, N'Невский', N'Молодежная', 95, 9, 341, N'cash', 381
GO
INSERT INTO list(date, order_id, status) VALUES(N'2257-5-6 2:3:39', 381, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2257-5-6 2:45:51', 381, N'done')
GO
EXECUTE add_order N'2509-22-1 1:10:27', N'Сергей', N'8-348-420-13-11', N'Васильевский', N'Новая', 28, 3, N'Рыбный', N'Набережная', 56, 9, 227, N'cash', 382
GO
INSERT INTO list(date, order_id, status) VALUES(N'2509-22-1 1:16:51', 382, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2509-22-1 1:26:28', 382, N'done')
GO
EXECUTE add_order N'2246-7-1 2:16:2', N'Сергей', N'8-883-444-82-15', N'Рыбный', N'Мира', 74, 2, N'Приморский', N'Ботаническая', 18, 10, 195, N'cashless', 383
GO
INSERT INTO list(date, order_id, status) VALUES(N'2246-7-1 3:11:0', 383, N'canceled')
GO
EXECUTE add_order N'2797-2-10 7:44:0', N'Николай', N'8-389-840-23-69', N'Центральный', N'Новая', 68, 5, N'Центральный', N'9мая', 76, 3, 227, N'cashless', 384
GO
INSERT INTO list(date, order_id, status) VALUES(N'2797-2-10 7:48:53', 384, N'canceled')
GO
EXECUTE add_order N'2023-24-9 0:35:18', N'Пётр', N'8-602-065-53-56', N'Спальный', N'Советская', 1, 8, N'Васильевский', N'Школьная', 7, 2, 537, N'cash', 385
GO
INSERT INTO list(date, order_id, status) VALUES(N'2023-24-9 0:41:50', 385, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2023-24-9 1:30:24', 385, N'done')
GO
EXECUTE add_order N'2741-19-2 2:15:30', N'Михаил', N'8-088-472-69-84', N'Васильевский', N'Центральная', 88, 5, N'Центральный', N'Ботаническая', 65, 6, 193, N'cash', 386
GO
INSERT INTO list(date, order_id, status) VALUES(N'2741-19-2 2:21:18', 386, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2741-19-2 2:33:42', 386, N'done')
GO
EXECUTE add_order N'2863-8-11 6:29:20', N'Пётр', N'8-939-048-54-38', N'Рыбный', N'Балтийская', 55, 2, N'Центральный', N'Ленина', 53, 9, 210, N'cash', 387
GO
INSERT INTO list(date, order_id, status) VALUES(N'2863-8-11 6:34:2', 387, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2863-8-11 7:11:47', 387, N'done')
GO
EXECUTE add_order N'2881-5-11 7:6:10', N'Николай', N'8-591-432-54-12', N'Кабельный', N'Балтийская', 78, 5, N'Спальный', N'Балтийская', 61, 9, 121, N'cashless', 388
GO
INSERT INTO list(date, order_id, status) VALUES(N'2881-5-11 7:11:26', 388, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2881-5-11 7:58:3', 388, N'done')
GO
EXECUTE add_order N'2188-25-1 0:0:28', N'Иван', N'8-103-884-47-60', N'Невский', N'Лесная', 90, 9, N'Кировский', N'9мая', 58, 1, 82, N'cash', 389
GO
INSERT INTO list(date, order_id, status) VALUES(N'2188-25-1 0:10:10', 389, N'canceled')
GO
EXECUTE add_order N'2596-2-8 1:19:21', N'Сергей', N'8-799-438-42-54', N'Кировский', N'Мира', 26, 8, N'Подмостовский', N'Крестовая', 58, 2, 530, N'cash', 390
GO
INSERT INTO list(date, order_id, status) VALUES(N'2596-2-8 2:5:49', 390, N'canceled')
GO
EXECUTE add_order N'2739-20-9 8:46:10', N'Владислав', N'8-556-601-62-63', N'Невский', N'Лесная', 100, 3, N'Васильевский', N'Мира', 29, 2, 217, N'cashless', 391
GO
INSERT INTO list(date, order_id, status) VALUES(N'2739-20-9 8:50:11', 391, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2739-20-9 9:12:41', 391, N'done')
GO
EXECUTE add_order N'2452-17-10 0:24:51', N'Владислав', N'8-935-483-20-34', N'Васильевский', N'Центральная', 18, 5, N'Центральный', N'Набережная', 50, 5, 178, N'cash', 392
GO
INSERT INTO list(date, order_id, status) VALUES(N'2452-17-10 0:31:28', 392, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2452-17-10 1:12:55', 392, N'done')
GO
EXECUTE add_order N'2000-24-7 1:13:58', N'Евгений', N'8-057-096-57-20', N'Приморский', N'Серова', 4, 8, N'Центральный', N'Садовая', 20, 3, 347, N'cashless', 393
GO
INSERT INTO list(date, order_id, status) VALUES(N'2000-24-7 1:18:32', 393, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2000-24-7 1:58:15', 393, N'done')
GO
EXECUTE add_order N'2561-19-2 8:50:24', N'Евгений', N'8-085-814-68-00', N'Приморский', N'Советская', 56, 9, N'Рыбный', N'Балтийская', 30, 1, 304, N'cash', 394
GO
INSERT INTO list(date, order_id, status) VALUES(N'2561-19-2 8:53:59', 394, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2561-19-2 9:12:56', 394, N'done')
GO
EXECUTE add_order N'2531-23-2 1:7:27', N'Владимир', N'8-725-611-88-45', N'Запорожский', N'Школьная', 75, 9, N'Спальный', N'Центральная', 65, 7, 409, N'cashless', 395
GO
INSERT INTO list(date, order_id, status) VALUES(N'2531-23-2 1:42:14', 395, N'canceled')
GO
EXECUTE add_order N'2872-16-10 6:29:36', N'Владимир', N'8-587-092-82-93', N'Приморский', N'Новая', 46, 3, N'Спальный', N'Лесная', 82, 9, 221, N'cashless', 396
GO
INSERT INTO list(date, order_id, status) VALUES(N'2872-16-10 7:6:2', 396, N'canceled')
GO
EXECUTE add_order N'2944-28-9 5:46:18', N'Николай', N'8-760-217-82-93', N'Подмостовский', N'Советская', 21, 3, N'Спальный', N'Ботаническая', 70, 5, 333, N'cashless', 397
GO
INSERT INTO list(date, order_id, status) VALUES(N'2944-28-9 5:50:52', 397, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2944-28-9 6:30:8', 397, N'done')
GO
EXECUTE add_order N'2017-16-9 4:33:52', N'Пётр', N'8-639-106-69-47', N'Невский', N'9мая', 73, 2, N'Кабельный', N'Ленина', 40, 9, 465, N'cash', 398
GO
INSERT INTO list(date, order_id, status) VALUES(N'2017-16-9 4:40:16', 398, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2017-16-9 5:11:14', 398, N'done')
GO
EXECUTE add_order N'2484-4-6 5:28:9', N'Владислав', N'8-561-415-04-54', N'Спальный', N'Советская', 57, 4, N'Васильевский', N'Набережная', 10, 10, 107, N'cashless', 399
GO
INSERT INTO list(date, order_id, status) VALUES(N'2484-4-6 5:32:6', 399, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2484-4-6 5:57:44', 399, N'done')
GO
EXECUTE add_order N'2916-20-10 8:10:2', N'Иван', N'8-581-369-70-77', N'Запорожский', N'Новая', 13, 9, N'Кировский', N'Серова', 72, 6, 459, N'cash', 400
GO
INSERT INTO list(date, order_id, status) VALUES(N'2916-20-10 8:15:47', 400, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2916-20-10 8:40:51', 400, N'done')
GO
EXECUTE add_order N'2512-24-1 7:33:18', N'Андрей', N'8-453-584-48-67', N'Невский', N'Мира', 1, 9, N'Спальный', N'9мая', 59, 3, 96, N'cashless', 401
GO
INSERT INTO list(date, order_id, status) VALUES(N'2512-24-1 7:38:41', 401, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2512-24-1 8:28:58', 401, N'done')
GO
EXECUTE add_order N'2712-12-11 7:47:19', N'Иван', N'8-571-645-17-00', N'Невский', N'Ботаническая', 22, 1, N'Кировский', N'9мая', 75, 5, 297, N'cash', 402
GO
INSERT INTO list(date, order_id, status) VALUES(N'2712-12-11 8:5:0', 402, N'canceled')
GO
EXECUTE add_order N'2463-7-12 6:7:30', N'Пётр', N'8-642-240-25-76', N'Запорожский', N'Набережная', 18, 10, N'Спальный', N'Центральная', 39, 1, 494, N'cashless', 403
GO
INSERT INTO list(date, order_id, status) VALUES(N'2463-7-12 6:37:33', 403, N'canceled')
GO
EXECUTE add_order N'2255-27-6 2:4:47', N'Егор', N'8-328-162-13-39', N'Подмостовский', N'Крестовая', 49, 6, N'Рыбный', N'Центральная', 8, 6, 234, N'cashless', 404
GO
INSERT INTO list(date, order_id, status) VALUES(N'2255-27-6 2:39:20', 404, N'canceled')
GO
EXECUTE add_order N'2994-5-6 7:22:39', N'Иван', N'8-265-659-81-73', N'Подмостовский', N'Крестовая', 32, 9, N'Спальный', N'Крестовая', 47, 4, 139, N'cashless', 405
GO
INSERT INTO list(date, order_id, status) VALUES(N'2994-5-6 8:14:19', 405, N'canceled')
GO
EXECUTE add_order N'2880-26-8 5:4:21', N'Владимир', N'8-571-809-83-98', N'Центральный', N'Новая', 68, 7, N'Васильевский', N'Балтийская', 22, 6, 178, N'cash', 406
GO
INSERT INTO list(date, order_id, status) VALUES(N'2880-26-8 5:7:45', 406, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2880-26-8 5:15:9', 406, N'done')
GO
EXECUTE add_order N'2050-20-12 5:31:21', N'Николай', N'8-687-938-11-68', N'Васильевский', N'Балтийская', 30, 6, N'Центральный', N'Лесная', 99, 10, 433, N'cash', 407
GO
INSERT INTO list(date, order_id, status) VALUES(N'2050-20-12 5:42:0', 407, N'canceled')
GO
EXECUTE add_order N'2437-1-7 2:50:15', N'Андрей', N'8-119-526-22-37', N'Запорожский', N'Новая', 1, 4, N'Подмостовский', N'Ленина', 90, 1, 467, N'cash', 408
GO
INSERT INTO list(date, order_id, status) VALUES(N'2437-1-7 2:53:55', 408, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2437-1-7 3:18:58', 408, N'done')
GO
EXECUTE add_order N'2375-25-8 3:20:32', N'Пётр', N'8-886-713-38-81', N'Кировский', N'9мая', 24, 8, N'Приморский', N'Школьная', 16, 3, 306, N'cashless', 409
GO
INSERT INTO list(date, order_id, status) VALUES(N'2375-25-8 3:24:11', 409, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2375-25-8 4:6:34', 409, N'done')
GO
EXECUTE add_order N'2248-5-3 1:43:30', N'Антон', N'8-245-874-42-70', N'Кабельный', N'Молодежная', 47, 8, N'Невский', N'Ленина', 34, 9, 512, N'cashless', 410
GO
INSERT INTO list(date, order_id, status) VALUES(N'2248-5-3 1:48:54', 410, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2248-5-3 2:25:15', 410, N'done')
GO
EXECUTE add_order N'2489-25-6 6:28:6', N'Дмитрий', N'8-045-577-53-26', N'Невский', N'Садовая', 17, 4, N'Васильевский', N'Серова', 10, 9, 214, N'cashless', 411
GO
INSERT INTO list(date, order_id, status) VALUES(N'2489-25-6 6:33:40', 411, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2489-25-6 6:50:26', 411, N'done')
GO
EXECUTE add_order N'2381-27-7 7:36:55', N'Андрей', N'8-216-840-06-90', N'Кабельный', N'9мая', 40, 4, N'Центральный', N'Ботаническая', 33, 2, 535, N'cashless', 412
GO
INSERT INTO list(date, order_id, status) VALUES(N'2381-27-7 7:52:30', 412, N'canceled')
GO
EXECUTE add_order N'2502-17-12 4:10:12', N'Алексей', N'8-780-014-18-71', N'Спальный', N'9мая', 7, 1, N'Рыбный', N'Лесная', 89, 2, 225, N'cash', 413
GO
INSERT INTO list(date, order_id, status) VALUES(N'2502-17-12 4:14:0', 413, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2502-17-12 4:38:25', 413, N'done')
GO
EXECUTE add_order N'2786-26-10 4:46:25', N'Владимир', N'8-227-116-64-75', N'Запорожский', N'Центральная', 22, 6, N'Запорожский', N'Набережная', 26, 8, 190, N'cash', 414
GO
INSERT INTO list(date, order_id, status) VALUES(N'2786-26-10 5:12:22', 414, N'canceled')
GO
EXECUTE add_order N'2051-21-5 3:45:21', N'Егор', N'8-011-868-81-35', N'Кировский', N'Мира', 79, 3, N'Спальный', N'Школьная', 69, 10, 91, N'cash', 415
GO
INSERT INTO list(date, order_id, status) VALUES(N'2051-21-5 3:56:14', 415, N'canceled')
GO
EXECUTE add_order N'2650-24-11 5:58:46', N'Иван', N'8-016-625-05-43', N'Центральный', N'Школьная', 60, 9, N'Центральный', N'Школьная', 57, 5, 504, N'cash', 416
GO
INSERT INTO list(date, order_id, status) VALUES(N'2650-24-11 6:41:9', 416, N'canceled')
GO
EXECUTE add_order N'2119-17-11 2:27:8', N'Джек', N'8-586-125-77-01', N'Рыбный', N'Мира', 19, 4, N'Приморский', N'Лесная', 52, 8, 472, N'cashless', 417
GO
INSERT INTO list(date, order_id, status) VALUES(N'2119-17-11 2:53:29', 417, N'canceled')
GO
EXECUTE add_order N'2910-26-3 4:17:24', N'Никита', N'8-659-679-34-44', N'Центральный', N'Набережная', 28, 10, N'Кабельный', N'Центральная', 91, 2, 263, N'cash', 418
GO
INSERT INTO list(date, order_id, status) VALUES(N'2910-26-3 4:22:8', 418, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2910-26-3 4:44:46', 418, N'done')
GO
EXECUTE add_order N'2504-3-5 7:48:3', N'Никита', N'8-951-452-43-78', N'Невский', N'Лесная', 4, 4, N'Васильевский', N'Набережная', 47, 2, 420, N'cash', 419
GO
INSERT INTO list(date, order_id, status) VALUES(N'2504-3-5 7:51:33', 419, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2504-3-5 8:6:13', 419, N'done')
GO
EXECUTE add_order N'2360-16-3 6:29:42', N'Михаил', N'8-150-273-32-07', N'Спальный', N'Молодежная', 95, 2, N'Васильевский', N'Советская', 11, 8, 187, N'cash', 420
GO
INSERT INTO list(date, order_id, status) VALUES(N'2360-16-3 6:34:24', 420, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2360-16-3 6:43:10', 420, N'done')
GO
EXECUTE add_order N'2158-9-8 0:24:5', N'Никита', N'8-461-972-80-31', N'Спальный', N'Советская', 55, 4, N'Спальный', N'Лесная', 30, 5, 545, N'cashless', 421
GO
INSERT INTO list(date, order_id, status) VALUES(N'2158-9-8 0:28:33', 421, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2158-9-8 0:33:58', 421, N'done')
GO
EXECUTE add_order N'2804-7-5 2:58:19', N'Андрей', N'8-679-724-24-18', N'Спальный', N'Новая', 65, 2, N'Невский', N'Новая', 28, 6, 347, N'cashless', 422
GO
INSERT INTO list(date, order_id, status) VALUES(N'2804-7-5 3:4:9', 422, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2804-7-5 3:32:15', 422, N'done')
GO
EXECUTE add_order N'2996-2-7 6:45:39', N'Пётр', N'8-556-084-31-55', N'Невский', N'Центральная', 39, 5, N'Кировский', N'Серова', 97, 5, 417, N'cashless', 423
GO
INSERT INTO list(date, order_id, status) VALUES(N'2996-2-7 6:56:49', 423, N'canceled')
GO
EXECUTE add_order N'2320-9-1 3:44:1', N'Михаил', N'8-837-258-85-27', N'Васильевский', N'Садовая', 87, 10, N'Запорожский', N'Новая', 99, 10, 298, N'cash', 424
GO
INSERT INTO list(date, order_id, status) VALUES(N'2320-9-1 3:48:13', 424, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2320-9-1 4:2:18', 424, N'done')
GO
EXECUTE add_order N'2995-16-10 5:33:42', N'Кирилл', N'8-716-345-00-32', N'Кабельный', N'Центральная', 9, 3, N'Васильевский', N'9мая', 54, 10, 530, N'cashless', 425
GO
INSERT INTO list(date, order_id, status) VALUES(N'2995-16-10 5:38:13', 425, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2995-16-10 6:6:27', 425, N'done')
GO
EXECUTE add_order N'2043-28-9 3:58:14', N'Евгений', N'8-405-494-31-44', N'Подмостовский', N'Серова', 99, 2, N'Запорожский', N'Новая', 83, 9, 269, N'cash', 426
GO
INSERT INTO list(date, order_id, status) VALUES(N'2043-28-9 4:4:23', 426, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2043-28-9 4:27:41', 426, N'done')
GO
EXECUTE add_order N'2467-24-10 0:24:51', N'Кирилл', N'8-200-739-50-32', N'Запорожский', N'9мая', 43, 3, N'Запорожский', N'Школьная', 46, 2, 78, N'cashless', 427
GO
INSERT INTO list(date, order_id, status) VALUES(N'2467-24-10 0:30:33', 427, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2467-24-10 0:35:19', 427, N'done')
GO
EXECUTE add_order N'2464-5-2 8:13:44', N'Владимир', N'8-248-293-71-40', N'Невский', N'Мира', 91, 7, N'Запорожский', N'Крестовая', 10, 8, 185, N'cash', 428
GO
INSERT INTO list(date, order_id, status) VALUES(N'2464-5-2 8:19:36', 428, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2464-5-2 9:2:56', 428, N'done')
GO
EXECUTE add_order N'2001-23-8 5:12:27', N'Сергей', N'8-527-317-04-48', N'Рыбный', N'Школьная', 16, 9, N'Подмостовский', N'Центральная', 75, 3, 356, N'cashless', 429
GO
INSERT INTO list(date, order_id, status) VALUES(N'2001-23-8 5:16:30', 429, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2001-23-8 5:59:40', 429, N'done')
GO
EXECUTE add_order N'2061-8-8 7:13:8', N'Владислав', N'8-640-942-59-00', N'Рыбный', N'Новая', 28, 10, N'Запорожский', N'Садовая', 84, 9, 460, N'cash', 430
GO
INSERT INTO list(date, order_id, status) VALUES(N'2061-8-8 7:16:52', 430, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2061-8-8 7:40:52', 430, N'done')
GO
EXECUTE add_order N'2332-24-8 6:35:40', N'Николай', N'8-605-701-75-57', N'Кировский', N'Набережная', 16, 1, N'Невский', N'Садовая', 53, 3, 55, N'cashless', 431
GO
INSERT INTO list(date, order_id, status) VALUES(N'2332-24-8 6:41:40', 431, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2332-24-8 7:24:27', 431, N'done')
GO
EXECUTE add_order N'2945-9-5 5:57:46', N'Андрей', N'8-483-845-63-79', N'Кировский', N'Серова', 36, 7, N'Подмостовский', N'Ленина', 69, 2, 263, N'cashless', 432
GO
INSERT INTO list(date, order_id, status) VALUES(N'2945-9-5 6:3:35', 432, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2945-9-5 6:19:56', 432, N'done')
GO
EXECUTE add_order N'2711-11-8 0:28:26', N'Кирилл', N'8-477-434-22-17', N'Кировский', N'Лесная', 95, 5, N'Спальный', N'Лесная', 24, 2, 112, N'cashless', 433
GO
INSERT INTO list(date, order_id, status) VALUES(N'2711-11-8 0:32:15', 433, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2711-11-8 0:53:3', 433, N'done')
GO
EXECUTE add_order N'2353-27-1 2:34:7', N'Владимир', N'8-859-321-77-19', N'Невский', N'Мира', 17, 10, N'Подмостовский', N'Ленина', 99, 7, 323, N'cash', 434
GO
INSERT INTO list(date, order_id, status) VALUES(N'2353-27-1 2:37:51', 434, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2353-27-1 3:10:22', 434, N'done')
GO
EXECUTE add_order N'2872-14-9 7:44:26', N'Евгений', N'8-065-120-36-39', N'Васильевский', N'Серова', 51, 9, N'Кабельный', N'Молодежная', 27, 6, 396, N'cashless', 435
GO
INSERT INTO list(date, order_id, status) VALUES(N'2872-14-9 7:50:36', 435, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2872-14-9 8:31:27', 435, N'done')
GO
EXECUTE add_order N'2863-12-5 4:32:58', N'Алексей', N'8-706-967-96-78', N'Спальный', N'Новая', 42, 5, N'Подмостовский', N'Набережная', 18, 2, 245, N'cash', 436
GO
INSERT INTO list(date, order_id, status) VALUES(N'2863-12-5 4:39:1', 436, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2863-12-5 4:51:26', 436, N'done')
GO
EXECUTE add_order N'2858-25-1 0:9:11', N'Владислав', N'8-521-565-84-42', N'Центральный', N'Советская', 99, 4, N'Центральный', N'Мира', 74, 10, 470, N'cash', 437
GO
INSERT INTO list(date, order_id, status) VALUES(N'2858-25-1 0:13:49', 437, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2858-25-1 1:2:28', 437, N'done')
GO
EXECUTE add_order N'2696-14-5 0:46:17', N'Виталий', N'8-859-789-76-73', N'Рыбный', N'Центральная', 82, 2, N'Запорожский', N'Новая', 33, 4, 435, N'cash', 438
GO
INSERT INTO list(date, order_id, status) VALUES(N'2696-14-5 0:51:5', 438, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2696-14-5 1:30:46', 438, N'done')
GO
EXECUTE add_order N'2501-12-12 0:16:46', N'Пётр', N'8-719-428-62-02', N'Васильевский', N'Лесная', 40, 1, N'Кировский', N'Садовая', 70, 2, 439, N'cashless', 439
GO
INSERT INTO list(date, order_id, status) VALUES(N'2501-12-12 0:21:28', 439, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2501-12-12 0:58:37', 439, N'done')
GO
EXECUTE add_order N'2804-5-3 7:21:16', N'Егор', N'8-631-779-91-03', N'Центральный', N'Советская', 70, 1, N'Подмостовский', N'Мира', 65, 6, 224, N'cashless', 440
GO
INSERT INTO list(date, order_id, status) VALUES(N'2804-5-3 7:29:1', 440, N'canceled')
GO
EXECUTE add_order N'2486-10-8 5:53:34', N'Николай', N'8-164-868-88-58', N'Центральный', N'Молодежная', 34, 5, N'Спальный', N'Молодежная', 100, 3, 155, N'cashless', 441
GO
INSERT INTO list(date, order_id, status) VALUES(N'2486-10-8 5:59:48', 441, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2486-10-8 6:28:41', 441, N'done')
GO
EXECUTE add_order N'2997-5-1 1:59:45', N'Владислав', N'8-637-482-94-40', N'Подмостовский', N'Ленина', 63, 5, N'Запорожский', N'Ленина', 25, 10, 415, N'cash', 442
GO
INSERT INTO list(date, order_id, status) VALUES(N'2997-5-1 2:5:15', 442, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2997-5-1 2:58:26', 442, N'done')
GO
EXECUTE add_order N'2549-5-8 5:34:16', N'Алексей', N'8-186-777-70-60', N'Кировский', N'Серова', 2, 9, N'Подмостовский', N'Крестовая', 19, 4, 299, N'cash', 443
GO
INSERT INTO list(date, order_id, status) VALUES(N'2549-5-8 5:51:8', 443, N'canceled')
GO
EXECUTE add_order N'2375-14-1 1:31:59', N'Николай', N'8-134-564-80-68', N'Кабельный', N'9мая', 3, 3, N'Центральный', N'Лесная', 78, 10, 531, N'cashless', 444
GO
INSERT INTO list(date, order_id, status) VALUES(N'2375-14-1 1:36:31', 444, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2375-14-1 1:54:22', 444, N'done')
GO
EXECUTE add_order N'2317-21-3 2:16:37', N'Александр', N'8-983-526-60-63', N'Рыбный', N'Крестовая', 38, 1, N'Приморский', N'Набережная', 85, 4, 435, N'cash', 445
GO
INSERT INTO list(date, order_id, status) VALUES(N'2317-21-3 2:22:12', 445, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2317-21-3 3:11:28', 445, N'done')
GO
EXECUTE add_order N'2904-1-3 8:46:44', N'Кирилл', N'8-536-579-37-82', N'Подмостовский', N'Ботаническая', 15, 7, N'Спальный', N'Мира', 66, 2, 55, N'cashless', 446
GO
INSERT INTO list(date, order_id, status) VALUES(N'2904-1-3 8:51:49', 446, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2904-1-3 8:59:7', 446, N'done')
GO
EXECUTE add_order N'2100-6-7 0:33:22', N'Пётр', N'8-008-659-23-34', N'Подмостовский', N'Центральная', 99, 1, N'Рыбный', N'Набережная', 66, 2, 493, N'cash', 447
GO
INSERT INTO list(date, order_id, status) VALUES(N'2100-6-7 0:38:50', 447, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2100-6-7 0:48:7', 447, N'done')
GO
EXECUTE add_order N'2760-26-1 6:36:1', N'Иван', N'8-065-226-47-04', N'Приморский', N'Советская', 34, 5, N'Рыбный', N'Балтийская', 91, 8, 121, N'cashless', 448
GO
INSERT INTO list(date, order_id, status) VALUES(N'2760-26-1 6:39:26', 448, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2760-26-1 6:48:45', 448, N'done')
GO
EXECUTE add_order N'2312-6-7 5:35:3', N'Владимир', N'8-700-400-40-71', N'Спальный', N'Крестовая', 56, 5, N'Подмостовский', N'Центральная', 15, 7, 492, N'cashless', 449
GO
INSERT INTO list(date, order_id, status) VALUES(N'2312-6-7 5:40:5', 449, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2312-6-7 6:11:20', 449, N'done')
GO
EXECUTE add_order N'2606-8-1 7:16:47', N'Кирилл', N'8-981-169-14-25', N'Рыбный', N'Садовая', 62, 8, N'Васильевский', N'Советская', 63, 6, 232, N'cash', 450
GO
INSERT INTO list(date, order_id, status) VALUES(N'2606-8-1 8:12:37', 450, N'canceled')
GO
EXECUTE add_order N'2872-13-4 2:41:2', N'Дмитрий', N'8-122-264-90-05', N'Запорожский', N'Крестовая', 60, 6, N'Запорожский', N'Молодежная', 25, 3, 545, N'cash', 451
GO
INSERT INTO list(date, order_id, status) VALUES(N'2872-13-4 2:44:53', 451, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2872-13-4 3:7:45', 451, N'done')
GO
EXECUTE add_order N'2982-7-9 2:3:13', N'Тимофей', N'8-961-447-23-85', N'Спальный', N'Новая', 94, 1, N'Кабельный', N'Мира', 48, 5, 58, N'cash', 452
GO
INSERT INTO list(date, order_id, status) VALUES(N'2982-7-9 2:9:3', 452, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2982-7-9 2:26:30', 452, N'done')
GO
EXECUTE add_order N'2938-12-7 8:50:28', N'Кирилл', N'8-776-784-09-45', N'Рыбный', N'Ленина', 66, 5, N'Центральный', N'Школьная', 49, 5, 443, N'cash', 453
GO
INSERT INTO list(date, order_id, status) VALUES(N'2938-12-7 8:54:49', 453, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2938-12-7 9:37:37', 453, N'done')
GO
EXECUTE add_order N'2231-17-4 3:2:28', N'Дмитрий', N'8-424-377-88-95', N'Невский', N'9мая', 10, 3, N'Центральный', N'Ботаническая', 10, 3, 534, N'cashless', 454
GO
INSERT INTO list(date, order_id, status) VALUES(N'2231-17-4 3:8:25', 454, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2231-17-4 3:18:27', 454, N'done')
GO
EXECUTE add_order N'2275-7-7 5:24:9', N'Вячеслав', N'8-754-320-06-73', N'Подмостовский', N'Лесная', 82, 6, N'Кировский', N'Ботаническая', 89, 3, 460, N'cashless', 455
GO
INSERT INTO list(date, order_id, status) VALUES(N'2275-7-7 5:38:18', 455, N'canceled')
GO
EXECUTE add_order N'2871-14-5 2:4:31', N'Иван', N'8-242-618-75-05', N'Рыбный', N'Мира', 74, 3, N'Запорожский', N'Центральная', 76, 4, 353, N'cashless', 456
GO
INSERT INTO list(date, order_id, status) VALUES(N'2871-14-5 2:8:40', 456, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2871-14-5 2:29:9', 456, N'done')
GO
EXECUTE add_order N'2059-6-1 1:36:5', N'Виталий', N'8-474-376-83-61', N'Васильевский', N'Молодежная', 6, 10, N'Запорожский', N'Серова', 14, 4, 55, N'cashless', 457
GO
INSERT INTO list(date, order_id, status) VALUES(N'2059-6-1 1:40:50', 457, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2059-6-1 2:5:1', 457, N'done')
GO
EXECUTE add_order N'2398-10-4 3:43:19', N'Александр', N'8-861-603-54-05', N'Запорожский', N'Школьная', 60, 9, N'Кировский', N'Ленина', 4, 4, 247, N'cashless', 458
GO
INSERT INTO list(date, order_id, status) VALUES(N'2398-10-4 3:48:45', 458, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2398-10-4 4:31:27', 458, N'done')
GO
EXECUTE add_order N'2964-5-12 8:11:5', N'Пётр', N'8-659-675-81-62', N'Невский', N'Центральная', 33, 5, N'Кабельный', N'Ленина', 75, 1, 172, N'cash', 459
GO
INSERT INTO list(date, order_id, status) VALUES(N'2964-5-12 8:26:5', 459, N'canceled')
GO
EXECUTE add_order N'2008-4-1 1:46:48', N'Егор', N'8-676-951-11-67', N'Кабельный', N'9мая', 28, 10, N'Подмостовский', N'Новая', 21, 6, 359, N'cashless', 460
GO
INSERT INTO list(date, order_id, status) VALUES(N'2008-4-1 1:52:51', 460, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2008-4-1 2:23:2', 460, N'done')
GO
EXECUTE add_order N'2425-21-11 5:51:26', N'Вячеслав', N'8-645-464-37-95', N'Невский', N'Центральная', 55, 5, N'Подмостовский', N'Лесная', 78, 2, 162, N'cashless', 461
GO
INSERT INTO list(date, order_id, status) VALUES(N'2425-21-11 5:57:33', 461, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2425-21-11 6:5:32', 461, N'done')
GO
EXECUTE add_order N'2592-14-6 8:3:24', N'Алексей', N'8-071-205-54-24', N'Васильевский', N'Балтийская', 16, 4, N'Центральный', N'Балтийская', 96, 1, 255, N'cashless', 462
GO
INSERT INTO list(date, order_id, status) VALUES(N'2592-14-6 8:7:55', 462, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2592-14-6 8:41:26', 462, N'done')
GO
EXECUTE add_order N'2501-14-6 1:51:40', N'Владислав', N'8-000-158-01-20', N'Рыбный', N'Садовая', 79, 2, N'Приморский', N'Набережная', 21, 6, 312, N'cashless', 463
GO
INSERT INTO list(date, order_id, status) VALUES(N'2501-14-6 1:58:0', 463, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2501-14-6 2:20:25', 463, N'done')
GO
EXECUTE add_order N'2672-16-4 1:20:7', N'Дмитрий', N'8-796-582-22-70', N'Центральный', N'9мая', 2, 10, N'Центральный', N'Крестовая', 73, 6, 257, N'cash', 464
GO
INSERT INTO list(date, order_id, status) VALUES(N'2672-16-4 1:25:48', 464, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2672-16-4 1:38:55', 464, N'done')
GO
EXECUTE add_order N'2461-10-3 8:21:33', N'Антон', N'8-726-726-55-90', N'Спальный', N'Мира', 100, 2, N'Невский', N'9мая', 43, 7, 500, N'cashless', 465
GO
INSERT INTO list(date, order_id, status) VALUES(N'2461-10-3 8:26:1', 465, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2461-10-3 8:46:50', 465, N'done')
GO
EXECUTE add_order N'2456-13-6 0:17:26', N'Вячеслав', N'8-870-754-35-78', N'Рыбный', N'Центральная', 20, 8, N'Подмостовский', N'9мая', 78, 1, 422, N'cash', 466
GO
INSERT INTO list(date, order_id, status) VALUES(N'2456-13-6 1:10:9', 466, N'canceled')
GO
EXECUTE add_order N'2845-15-11 5:40:35', N'Иван', N'8-839-899-49-04', N'Подмостовский', N'Садовая', 65, 1, N'Кировский', N'Садовая', 74, 2, 347, N'cash', 467
GO
INSERT INTO list(date, order_id, status) VALUES(N'2845-15-11 5:47:6', 467, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2845-15-11 6:20:5', 467, N'done')
GO
EXECUTE add_order N'2148-27-9 8:14:9', N'Никита', N'8-789-551-37-30', N'Рыбный', N'Школьная', 15, 10, N'Центральный', N'Советская', 53, 2, 132, N'cashless', 468
GO
INSERT INTO list(date, order_id, status) VALUES(N'2148-27-9 8:32:54', 468, N'canceled')
GO
EXECUTE add_order N'2869-8-11 7:0:9', N'Сергей', N'8-793-035-73-57', N'Подмостовский', N'Центральная', 16, 6, N'Рыбный', N'Крестовая', 56, 6, 391, N'cash', 469
GO
INSERT INTO list(date, order_id, status) VALUES(N'2869-8-11 7:40:5', 469, N'canceled')
GO
EXECUTE add_order N'2591-7-10 7:15:0', N'Сергей', N'8-479-173-73-72', N'Подмостовский', N'Балтийская', 53, 8, N'Рыбный', N'Центральная', 69, 3, 446, N'cashless', 470
GO
INSERT INTO list(date, order_id, status) VALUES(N'2591-7-10 7:18:46', 470, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2591-7-10 7:43:33', 470, N'done')
GO
EXECUTE add_order N'2154-3-4 8:35:39', N'Евгений', N'8-790-841-45-77', N'Невский', N'Набережная', 69, 5, N'Подмостовский', N'Балтийская', 40, 5, 426, N'cash', 471
GO
INSERT INTO list(date, order_id, status) VALUES(N'2154-3-4 8:39:32', 471, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2154-3-4 9:7:4', 471, N'done')
GO
EXECUTE add_order N'2517-6-8 8:14:30', N'Сергей', N'8-627-285-49-64', N'Невский', N'Крестовая', 46, 6, N'Запорожский', N'Новая', 32, 6, 188, N'cashless', 472
GO
INSERT INTO list(date, order_id, status) VALUES(N'2517-6-8 8:23:30', 472, N'canceled')
GO
EXECUTE add_order N'2434-8-10 7:39:10', N'Николай', N'8-079-846-72-84', N'Рыбный', N'Ботаническая', 66, 3, N'Подмостовский', N'Молодежная', 7, 6, 470, N'cashless', 473
GO
INSERT INTO list(date, order_id, status) VALUES(N'2434-8-10 7:54:27', 473, N'canceled')
GO
EXECUTE add_order N'2862-9-5 4:43:39', N'Николай', N'8-467-798-38-82', N'Невский', N'Ленина', 75, 5, N'Кировский', N'Крестовая', 31, 7, 399, N'cashless', 474
GO
INSERT INTO list(date, order_id, status) VALUES(N'2862-9-5 4:48:23', 474, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2862-9-5 5:9:43', 474, N'done')
GO
EXECUTE add_order N'2172-8-9 7:16:9', N'Дмитрий', N'8-219-292-84-73', N'Невский', N'Лесная', 29, 6, N'Запорожский', N'Центральная', 83, 6, 461, N'cashless', 475
GO
INSERT INTO list(date, order_id, status) VALUES(N'2172-8-9 7:37:45', 475, N'canceled')
GO
EXECUTE add_order N'2255-20-3 7:26:46', N'Кирилл', N'8-204-632-35-97', N'Кировский', N'Набережная', 48, 7, N'Невский', N'Балтийская', 48, 6, 210, N'cashless', 476
GO
INSERT INTO list(date, order_id, status) VALUES(N'2255-20-3 8:16:25', 476, N'canceled')
GO
EXECUTE add_order N'2801-2-7 3:9:23', N'Андрей', N'8-826-409-90-99', N'Подмостовский', N'Крестовая', 60, 2, N'Приморский', N'Молодежная', 44, 9, 487, N'cashless', 477
GO
INSERT INTO list(date, order_id, status) VALUES(N'2801-2-7 3:22:40', 477, N'canceled')
GO
EXECUTE add_order N'2106-22-12 6:52:43', N'Вячеслав', N'8-786-762-95-94', N'Приморский', N'Ботаническая', 79, 10, N'Запорожский', N'Мира', 67, 6, 171, N'cash', 478
GO
INSERT INTO list(date, order_id, status) VALUES(N'2106-22-12 7:35:2', 478, N'canceled')
GO
EXECUTE add_order N'2965-4-12 2:58:39', N'Николай', N'8-517-343-98-41', N'Кировский', N'Центральная', 29, 10, N'Центральный', N'Балтийская', 35, 10, 417, N'cash', 479
GO
INSERT INTO list(date, order_id, status) VALUES(N'2965-4-12 3:3:14', 479, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2965-4-12 3:40:17', 479, N'done')
GO
EXECUTE add_order N'2577-18-5 7:54:48', N'Дмитрий', N'8-545-025-01-86', N'Центральный', N'Советская', 79, 1, N'Приморский', N'Садовая', 12, 7, 423, N'cashless', 480
GO
INSERT INTO list(date, order_id, status) VALUES(N'2577-18-5 8:0:50', 480, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2577-18-5 8:7:27', 480, N'done')
GO
EXECUTE add_order N'2893-2-11 4:41:18', N'Кирилл', N'8-174-938-55-92', N'Кировский', N'Серова', 24, 8, N'Приморский', N'Центральная', 59, 5, 533, N'cashless', 481
GO
INSERT INTO list(date, order_id, status) VALUES(N'2893-2-11 4:51:34', 481, N'canceled')
GO
EXECUTE add_order N'2823-26-9 3:14:47', N'Виталий', N'8-218-684-54-07', N'Центральный', N'Лесная', 67, 10, N'Невский', N'Балтийская', 68, 6, 165, N'cashless', 482
GO
INSERT INTO list(date, order_id, status) VALUES(N'2823-26-9 3:20:3', 482, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2823-26-9 3:52:9', 482, N'done')
GO
EXECUTE add_order N'2464-24-8 8:56:50', N'Евгений', N'8-876-925-40-15', N'Спальный', N'Новая', 41, 8, N'Рыбный', N'Крестовая', 8, 9, 153, N'cashless', 483
GO
INSERT INTO list(date, order_id, status) VALUES(N'2464-24-8 9:3:25', 483, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2464-24-8 9:44:23', 483, N'done')
GO
EXECUTE add_order N'2857-18-6 6:5:22', N'Антон', N'8-845-643-79-11', N'Невский', N'Центральная', 14, 5, N'Центральный', N'Ботаническая', 100, 8, 492, N'cashless', 484
GO
INSERT INTO list(date, order_id, status) VALUES(N'2857-18-6 6:9:23', 484, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2857-18-6 6:43:39', 484, N'done')
GO
EXECUTE add_order N'2709-5-6 1:54:53', N'Дмитрий', N'8-342-736-76-26', N'Запорожский', N'Ботаническая', 54, 7, N'Центральный', N'Серова', 56, 6, 492, N'cashless', 485
GO
INSERT INTO list(date, order_id, status) VALUES(N'2709-5-6 1:59:19', 485, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2709-5-6 2:11:35', 485, N'done')
GO
EXECUTE add_order N'2654-17-11 8:30:51', N'Сергей', N'8-560-549-09-74', N'Запорожский', N'Ленина', 74, 1, N'Подмостовский', N'Ботаническая', 100, 9, 214, N'cash', 486
GO
INSERT INTO list(date, order_id, status) VALUES(N'2654-17-11 8:51:10', 486, N'canceled')
GO
EXECUTE add_order N'2879-2-4 6:52:48', N'Никита', N'8-754-364-07-68', N'Спальный', N'Балтийская', 45, 2, N'Кабельный', N'Ботаническая', 26, 9, 339, N'cash', 487
GO
INSERT INTO list(date, order_id, status) VALUES(N'2879-2-4 6:59:14', 487, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2879-2-4 7:15:42', 487, N'done')
GO
EXECUTE add_order N'2610-23-3 5:50:58', N'Андрей', N'8-772-828-04-88', N'Невский', N'Центральная', 33, 1, N'Кабельный', N'Серова', 35, 6, 304, N'cash', 488
GO
INSERT INTO list(date, order_id, status) VALUES(N'2610-23-3 5:55:36', 488, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2610-23-3 6:17:50', 488, N'done')
GO
EXECUTE add_order N'2215-13-1 0:3:37', N'Дмитрий', N'8-487-377-87-32', N'Запорожский', N'Школьная', 8, 1, N'Спальный', N'Центральная', 59, 3, 137, N'cash', 489
GO
INSERT INTO list(date, order_id, status) VALUES(N'2215-13-1 0:9:35', 489, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2215-13-1 0:39:42', 489, N'done')
GO
EXECUTE add_order N'2285-24-9 3:32:24', N'Владимир', N'8-093-135-77-59', N'Рыбный', N'Ботаническая', 47, 5, N'Невский', N'9мая', 14, 9, 352, N'cash', 490
GO
INSERT INTO list(date, order_id, status) VALUES(N'2285-24-9 3:38:18', 490, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2285-24-9 4:9:25', 490, N'done')
GO
EXECUTE add_order N'2389-22-10 7:39:58', N'Пётр', N'8-713-832-56-44', N'Кабельный', N'Новая', 22, 9, N'Спальный', N'Лесная', 91, 4, 239, N'cashless', 491
GO
INSERT INTO list(date, order_id, status) VALUES(N'2389-22-10 7:46:3', 491, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2389-22-10 8:32:24', 491, N'done')
GO
EXECUTE add_order N'2081-1-6 3:3:22', N'Тимофей', N'8-954-537-28-67', N'Васильевский', N'Мира', 48, 3, N'Спальный', N'Балтийская', 10, 10, 87, N'cash', 492
GO
INSERT INTO list(date, order_id, status) VALUES(N'2081-1-6 3:7:44', 492, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2081-1-6 3:28:55', 492, N'done')
GO
EXECUTE add_order N'2149-2-3 4:27:29', N'Дмитрий', N'8-542-394-22-40', N'Кабельный', N'Крестовая', 14, 10, N'Подмостовский', N'Набережная', 98, 1, 128, N'cash', 493
GO
INSERT INTO list(date, order_id, status) VALUES(N'2149-2-3 4:32:37', 493, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2149-2-3 5:18:50', 493, N'done')
GO
EXECUTE add_order N'2044-6-2 8:57:33', N'Никита', N'8-455-540-21-43', N'Невский', N'Серова', 11, 5, N'Васильевский', N'Лесная', 72, 10, 352, N'cashless', 494
GO
INSERT INTO list(date, order_id, status) VALUES(N'2044-6-2 9:3:9', 494, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2044-6-2 9:42:29', 494, N'done')
GO
EXECUTE add_order N'2806-11-5 4:24:56', N'Владимир', N'8-542-611-60-40', N'Центральный', N'Новая', 45, 9, N'Рыбный', N'Советская', 39, 6, 82, N'cashless', 495
GO
INSERT INTO list(date, order_id, status) VALUES(N'2806-11-5 4:29:58', 495, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2806-11-5 4:55:59', 495, N'done')
GO
EXECUTE add_order N'2799-22-12 3:55:37', N'Евгений', N'8-461-652-93-43', N'Спальный', N'Лесная', 7, 1, N'Спальный', N'9мая', 50, 5, 105, N'cash', 496
GO
INSERT INTO list(date, order_id, status) VALUES(N'2799-22-12 4:0:54', 496, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2799-22-12 4:33:55', 496, N'done')
GO
EXECUTE add_order N'2609-7-9 4:48:30', N'Николай', N'8-472-780-36-89', N'Кировский', N'Школьная', 82, 2, N'Кировский', N'Центральная', 98, 8, 540, N'cashless', 497
GO
INSERT INTO list(date, order_id, status) VALUES(N'2609-7-9 4:53:51', 497, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2609-7-9 5:15:11', 497, N'done')
GO
EXECUTE add_order N'2158-22-1 2:37:14', N'Пётр', N'8-410-077-76-96', N'Спальный', N'Садовая', 33, 1, N'Запорожский', N'Центральная', 78, 1, 536, N'cash', 498
GO
INSERT INTO list(date, order_id, status) VALUES(N'2158-22-1 2:48:0', 498, N'canceled')
GO
EXECUTE add_order N'2668-10-1 8:35:56', N'Владимир', N'8-934-318-87-44', N'Кабельный', N'9мая', 33, 8, N'Рыбный', N'Ленина', 79, 8, 261, N'cashless', 499
GO
INSERT INTO list(date, order_id, status) VALUES(N'2668-10-1 9:22:21', 499, N'canceled')
GO
EXECUTE add_order N'2998-11-9 3:0:1', N'Джек', N'8-570-405-32-63', N'Рыбный', N'Балтийская', 49, 3, N'Невский', N'Лесная', 4, 2, 417, N'cash', 500
GO
INSERT INTO list(date, order_id, status) VALUES(N'2998-11-9 3:5:17', 500, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2998-11-9 3:22:50', 500, N'done')
GO
EXECUTE add_order N'2093-28-1 8:44:10', N'Никита', N'8-337-450-95-75', N'Спальный', N'Серова', 37, 5, N'Кировский', N'Школьная', 42, 4, 173, N'cash', 501
GO
INSERT INTO list(date, order_id, status) VALUES(N'2093-28-1 8:49:19', 501, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2093-28-1 9:15:45', 501, N'done')
GO
EXECUTE add_order N'2371-6-8 1:36:4', N'Дмитрий', N'8-803-910-43-54', N'Запорожский', N'Новая', 40, 7, N'Запорожский', N'Ботаническая', 73, 3, 102, N'cashless', 502
GO
INSERT INTO list(date, order_id, status) VALUES(N'2371-6-8 2:4:34', 502, N'canceled')
GO
EXECUTE add_order N'2785-12-4 4:33:31', N'Вячеслав', N'8-241-437-52-75', N'Приморский', N'Балтийская', 23, 8, N'Кировский', N'Молодежная', 76, 5, 250, N'cash', 503
GO
INSERT INTO list(date, order_id, status) VALUES(N'2785-12-4 4:37:53', 503, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2785-12-4 4:59:58', 503, N'done')
GO
EXECUTE add_order N'2307-8-12 3:21:46', N'Сергей', N'8-910-499-05-43', N'Центральный', N'Лесная', 47, 9, N'Приморский', N'Крестовая', 50, 2, 387, N'cash', 504
GO
INSERT INTO list(date, order_id, status) VALUES(N'2307-8-12 3:27:8', 504, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2307-8-12 3:46:27', 504, N'done')
GO
EXECUTE add_order N'2915-28-12 5:54:49', N'Антон', N'8-440-413-25-32', N'Кабельный', N'Садовая', 22, 1, N'Кировский', N'Центральная', 36, 2, 109, N'cashless', 505
GO
INSERT INTO list(date, order_id, status) VALUES(N'2915-28-12 6:1:24', 505, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2915-28-12 6:11:27', 505, N'done')
GO
EXECUTE add_order N'2209-21-11 2:28:3', N'Владислав', N'8-364-885-30-82', N'Центральный', N'Садовая', 70, 3, N'Кабельный', N'Лесная', 78, 8, 313, N'cashless', 506
GO
INSERT INTO list(date, order_id, status) VALUES(N'2209-21-11 2:33:13', 506, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2209-21-11 3:0:2', 506, N'done')
GO
EXECUTE add_order N'2864-12-11 3:35:58', N'Вячеслав', N'8-760-844-97-68', N'Кировский', N'Садовая', 42, 9, N'Рыбный', N'Ботаническая', 88, 4, 469, N'cash', 507
GO
INSERT INTO list(date, order_id, status) VALUES(N'2864-12-11 4:19:17', 507, N'canceled')
GO
EXECUTE add_order N'2370-4-11 1:9:59', N'Егор', N'8-410-921-02-29', N'Кировский', N'Мира', 31, 6, N'Спальный', N'Лесная', 36, 10, 408, N'cash', 508
GO
INSERT INTO list(date, order_id, status) VALUES(N'2370-4-11 1:26:5', 508, N'canceled')
GO
EXECUTE add_order N'2205-7-4 4:46:55', N'Алексей', N'8-555-539-77-93', N'Приморский', N'Крестовая', 1, 7, N'Васильевский', N'Ботаническая', 29, 2, 57, N'cash', 509
GO
INSERT INTO list(date, order_id, status) VALUES(N'2205-7-4 5:19:12', 509, N'canceled')
GO
EXECUTE add_order N'2226-8-6 5:23:54', N'Антон', N'8-173-121-45-13', N'Центральный', N'Лесная', 36, 5, N'Спальный', N'Ботаническая', 54, 7, 90, N'cash', 510
GO
INSERT INTO list(date, order_id, status) VALUES(N'2226-8-6 5:52:54', 510, N'canceled')
GO
EXECUTE add_order N'2425-14-6 2:7:8', N'Евгений', N'8-251-060-11-99', N'Кировский', N'Набережная', 19, 5, N'Запорожский', N'Центральная', 14, 3, 64, N'cash', 511
GO
INSERT INTO list(date, order_id, status) VALUES(N'2425-14-6 2:12:0', 511, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2425-14-6 2:21:4', 511, N'done')
GO
EXECUTE add_order N'2980-12-4 0:21:26', N'Виталий', N'8-343-401-26-27', N'Рыбный', N'Лесная', 82, 2, N'Кабельный', N'Набережная', 50, 9, 143, N'cash', 512
GO
INSERT INTO list(date, order_id, status) VALUES(N'2980-12-4 0:26:12', 512, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2980-12-4 0:34:54', 512, N'done')
GO
EXECUTE add_order N'2287-4-11 8:1:48', N'Иван', N'8-525-098-25-80', N'Спальный', N'Лесная', 14, 1, N'Подмостовский', N'Ленина', 2, 2, 221, N'cashless', 513
GO
INSERT INTO list(date, order_id, status) VALUES(N'2287-4-11 8:10:46', 513, N'canceled')
GO
EXECUTE add_order N'2575-22-11 5:22:33', N'Михаил', N'8-643-993-55-55', N'Невский', N'Мира', 89, 1, N'Невский', N'Крестовая', 71, 2, 111, N'cash', 514
GO
INSERT INTO list(date, order_id, status) VALUES(N'2575-22-11 5:26:26', 514, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2575-22-11 5:30:0', 514, N'done')
GO
EXECUTE add_order N'2595-1-1 6:44:19', N'Тимофей', N'8-488-956-37-74', N'Рыбный', N'Крестовая', 16, 9, N'Невский', N'Балтийская', 1, 8, 475, N'cashless', 515
GO
INSERT INTO list(date, order_id, status) VALUES(N'2595-1-1 6:48:17', 515, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2595-1-1 7:33:45', 515, N'done')
GO
EXECUTE add_order N'2918-18-12 0:53:23', N'Александр', N'8-068-891-91-92', N'Рыбный', N'Мира', 92, 5, N'Центральный', N'Балтийская', 58, 10, 84, N'cashless', 516
GO
INSERT INTO list(date, order_id, status) VALUES(N'2918-18-12 1:3:41', 516, N'canceled')
GO
EXECUTE add_order N'2460-8-3 0:21:17', N'Тимофей', N'8-666-848-70-83', N'Невский', N'Крестовая', 2, 4, N'Кировский', N'9мая', 32, 4, 425, N'cash', 517
GO
INSERT INTO list(date, order_id, status) VALUES(N'2460-8-3 0:27:30', 517, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2460-8-3 0:38:6', 517, N'done')
GO
EXECUTE add_order N'2747-21-11 0:49:30', N'Иван', N'8-295-628-09-63', N'Кабельный', N'Серова', 66, 2, N'Невский', N'Набережная', 14, 4, 548, N'cashless', 518
GO
INSERT INTO list(date, order_id, status) VALUES(N'2747-21-11 0:52:58', 518, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2747-21-11 1:44:6', 518, N'done')
GO
EXECUTE add_order N'2636-23-12 5:49:35', N'Сергей', N'8-226-017-53-97', N'Приморский', N'Ленина', 77, 8, N'Рыбный', N'Лесная', 13, 10, 256, N'cash', 519
GO
INSERT INTO list(date, order_id, status) VALUES(N'2636-23-12 6:21:7', 519, N'canceled')
GO
EXECUTE add_order N'2655-13-12 8:45:29', N'Пётр', N'8-425-695-98-38', N'Кировский', N'Новая', 81, 9, N'Рыбный', N'Школьная', 35, 4, 142, N'cashless', 520
GO
INSERT INTO list(date, order_id, status) VALUES(N'2655-13-12 8:48:53', 520, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2655-13-12 9:30:34', 520, N'done')
GO
EXECUTE add_order N'2373-19-12 3:25:50', N'Владислав', N'8-394-431-89-70', N'Кабельный', N'Ленина', 7, 10, N'Рыбный', N'Ботаническая', 88, 2, 127, N'cash', 521
GO
INSERT INTO list(date, order_id, status) VALUES(N'2373-19-12 3:31:26', 521, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2373-19-12 3:40:26', 521, N'done')
GO
EXECUTE add_order N'2226-5-5 4:36:44', N'Александр', N'8-429-436-84-35', N'Кабельный', N'Серова', 55, 1, N'Приморский', N'Мира', 22, 7, 195, N'cash', 522
GO
INSERT INTO list(date, order_id, status) VALUES(N'2226-5-5 4:43:19', 522, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2226-5-5 5:12:12', 522, N'done')
GO
EXECUTE add_order N'2580-26-11 2:36:10', N'Виталий', N'8-178-625-70-63', N'Запорожский', N'Садовая', 82, 9, N'Спальный', N'Крестовая', 20, 2, 402, N'cash', 523
GO
INSERT INTO list(date, order_id, status) VALUES(N'2580-26-11 2:39:39', 523, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2580-26-11 3:20:45', 523, N'done')
GO
EXECUTE add_order N'2268-14-1 3:26:25', N'Кирилл', N'8-752-796-69-87', N'Рыбный', N'Советская', 77, 7, N'Кировский', N'Школьная', 13, 3, 153, N'cashless', 524
GO
INSERT INTO list(date, order_id, status) VALUES(N'2268-14-1 3:32:31', 524, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2268-14-1 4:9:0', 524, N'done')
GO
EXECUTE add_order N'2990-14-4 1:6:33', N'Андрей', N'8-706-322-85-78', N'Подмостовский', N'Садовая', 55, 1, N'Васильевский', N'Балтийская', 36, 8, 339, N'cash', 525
GO
INSERT INTO list(date, order_id, status) VALUES(N'2990-14-4 1:11:15', 525, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2990-14-4 1:45:42', 525, N'done')
GO
EXECUTE add_order N'2580-10-10 0:40:53', N'Александр', N'8-030-887-48-07', N'Подмостовский', N'Ботаническая', 64, 10, N'Кабельный', N'Балтийская', 51, 1, 465, N'cash', 526
GO
INSERT INTO list(date, order_id, status) VALUES(N'2580-10-10 0:53:28', 526, N'canceled')
GO
EXECUTE add_order N'2503-26-5 3:18:54', N'Дмитрий', N'8-032-993-08-81', N'Невский', N'Ленина', 46, 9, N'Кабельный', N'Ботаническая', 33, 2, 66, N'cash', 527
GO
INSERT INTO list(date, order_id, status) VALUES(N'2503-26-5 3:25:12', 527, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2503-26-5 3:59:38', 527, N'done')
GO
EXECUTE add_order N'2228-2-11 3:0:4', N'Антон', N'8-558-577-32-91', N'Кабельный', N'Центральная', 98, 1, N'Васильевский', N'Центральная', 58, 3, 218, N'cash', 528
GO
INSERT INTO list(date, order_id, status) VALUES(N'2228-2-11 3:20:9', 528, N'canceled')
GO
EXECUTE add_order N'2729-28-4 6:4:11', N'Андрей', N'8-491-649-48-61', N'Васильевский', N'Набережная', 15, 4, N'Васильевский', N'Балтийская', 99, 9, 221, N'cashless', 529
GO
INSERT INTO list(date, order_id, status) VALUES(N'2729-28-4 7:0:39', 529, N'canceled')
GO
EXECUTE add_order N'2341-20-8 6:6:40', N'Владислав', N'8-523-747-09-04', N'Подмостовский', N'Мира', 84, 1, N'Приморский', N'Садовая', 12, 10, 124, N'cashless', 530
GO
INSERT INTO list(date, order_id, status) VALUES(N'2341-20-8 6:10:3', 530, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2341-20-8 6:30:34', 530, N'done')
GO
EXECUTE add_order N'2861-20-10 0:33:21', N'Сергей', N'8-062-421-31-40', N'Васильевский', N'9мая', 89, 6, N'Запорожский', N'Школьная', 49, 6, 404, N'cash', 531
GO
INSERT INTO list(date, order_id, status) VALUES(N'2861-20-10 0:39:13', 531, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2861-20-10 0:50:21', 531, N'done')
GO
EXECUTE add_order N'2926-14-2 4:3:7', N'Андрей', N'8-093-034-02-94', N'Приморский', N'Серова', 9, 6, N'Кабельный', N'Балтийская', 42, 6, 63, N'cash', 532
GO
INSERT INTO list(date, order_id, status) VALUES(N'2926-14-2 4:9:9', 532, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2926-14-2 5:0:44', 532, N'done')
GO
EXECUTE add_order N'2480-1-2 1:46:19', N'Антон', N'8-432-962-73-60', N'Невский', N'Лесная', 6, 10, N'Спальный', N'Молодежная', 61, 5, 519, N'cashless', 533
GO
INSERT INTO list(date, order_id, status) VALUES(N'2480-1-2 1:50:42', 533, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2480-1-2 2:16:17', 533, N'done')
GO
EXECUTE add_order N'2322-6-4 8:49:33', N'Вячеслав', N'8-699-976-20-67', N'Кировский', N'Крестовая', 43, 6, N'Васильевский', N'Ленина', 88, 3, 164, N'cash', 534
GO
INSERT INTO list(date, order_id, status) VALUES(N'2322-6-4 9:43:8', 534, N'canceled')
GO
EXECUTE add_order N'2999-27-12 8:27:21', N'Алексей', N'8-957-493-32-75', N'Центральный', N'Лесная', 5, 4, N'Приморский', N'Набережная', 57, 4, 174, N'cashless', 535
GO
INSERT INTO list(date, order_id, status) VALUES(N'2999-27-12 8:53:13', 535, N'canceled')
GO
EXECUTE add_order N'2219-10-9 1:12:50', N'Иван', N'8-193-136-68-79', N'Подмостовский', N'Ботаническая', 41, 6, N'Приморский', N'Набережная', 40, 9, 242, N'cashless', 536
GO
INSERT INTO list(date, order_id, status) VALUES(N'2219-10-9 1:17:10', 536, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2219-10-9 1:51:38', 536, N'done')
GO
EXECUTE add_order N'2570-7-6 2:15:52', N'Джек', N'8-896-681-29-23', N'Центральный', N'Ленина', 22, 2, N'Кабельный', N'Лесная', 78, 7, 418, N'cashless', 537
GO
INSERT INTO list(date, order_id, status) VALUES(N'2570-7-6 2:37:18', 537, N'canceled')
GO
EXECUTE add_order N'2145-26-7 3:34:8', N'Николай', N'8-524-735-43-16', N'Кировский', N'Советская', 85, 9, N'Рыбный', N'Новая', 37, 2, 452, N'cashless', 538
GO
INSERT INTO list(date, order_id, status) VALUES(N'2145-26-7 3:40:26', 538, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2145-26-7 4:18:54', 538, N'done')
GO
EXECUTE add_order N'2856-9-8 2:2:16', N'Тимофей', N'8-098-805-96-35', N'Рыбный', N'Школьная', 83, 10, N'Запорожский', N'Балтийская', 82, 5, 114, N'cash', 539
GO
INSERT INTO list(date, order_id, status) VALUES(N'2856-9-8 2:7:26', 539, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2856-9-8 2:23:14', 539, N'done')
GO
EXECUTE add_order N'2380-13-11 4:58:6', N'Антон', N'8-186-552-57-83', N'Подмостовский', N'Набережная', 95, 8, N'Приморский', N'Балтийская', 7, 1, 386, N'cashless', 540
GO
INSERT INTO list(date, order_id, status) VALUES(N'2380-13-11 5:11:48', 540, N'canceled')
GO
EXECUTE add_order N'2159-21-11 1:21:37', N'Сергей', N'8-574-499-96-46', N'Приморский', N'Лесная', 24, 9, N'Запорожский', N'Балтийская', 87, 2, 324, N'cashless', 541
GO
INSERT INTO list(date, order_id, status) VALUES(N'2159-21-11 1:27:54', 541, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2159-21-11 1:54:35', 541, N'done')
GO
EXECUTE add_order N'2085-12-4 3:52:58', N'Евгений', N'8-526-462-49-25', N'Запорожский', N'Садовая', 91, 8, N'Васильевский', N'Ботаническая', 92, 9, 366, N'cashless', 542
GO
INSERT INTO list(date, order_id, status) VALUES(N'2085-12-4 3:58:28', 542, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2085-12-4 4:41:39', 542, N'done')
GO
EXECUTE add_order N'2667-26-11 8:31:26', N'Джек', N'8-533-569-15-63', N'Кабельный', N'Лесная', 81, 8, N'Рыбный', N'Крестовая', 44, 10, 265, N'cash', 543
GO
INSERT INTO list(date, order_id, status) VALUES(N'2667-26-11 8:36:38', 543, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2667-26-11 9:16:6', 543, N'done')
GO
EXECUTE add_order N'2217-13-7 8:23:39', N'Владимир', N'8-069-367-08-78', N'Центральный', N'Школьная', 8, 4, N'Спальный', N'Лесная', 53, 10, 151, N'cash', 544
GO
INSERT INTO list(date, order_id, status) VALUES(N'2217-13-7 8:35:23', 544, N'canceled')
GO
EXECUTE add_order N'2658-7-8 2:38:34', N'Джек', N'8-049-972-07-91', N'Кабельный', N'Центральная', 58, 10, N'Кировский', N'Крестовая', 37, 4, 420, N'cashless', 545
GO
INSERT INTO list(date, order_id, status) VALUES(N'2658-7-8 2:44:1', 545, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2658-7-8 2:55:36', 545, N'done')
GO
EXECUTE add_order N'2587-3-12 8:46:33', N'Джек', N'8-833-931-27-54', N'Приморский', N'Ленина', 21, 1, N'Кировский', N'Ботаническая', 61, 7, 304, N'cash', 546
GO
INSERT INTO list(date, order_id, status) VALUES(N'2587-3-12 8:51:36', 546, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2587-3-12 9:10:50', 546, N'done')
GO
EXECUTE add_order N'2015-22-10 5:19:57', N'Николай', N'8-270-581-87-07', N'Центральный', N'Лесная', 22, 4, N'Рыбный', N'Ботаническая', 60, 4, 180, N'cashless', 547
GO
INSERT INTO list(date, order_id, status) VALUES(N'2015-22-10 5:24:51', 547, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2015-22-10 5:33:21', 547, N'done')
GO
EXECUTE add_order N'2419-22-3 3:11:29', N'Кирилл', N'8-281-274-08-75', N'Кировский', N'Советская', 94, 7, N'Кировский', N'Балтийская', 8, 2, 547, N'cash', 548
GO
INSERT INTO list(date, order_id, status) VALUES(N'2419-22-3 3:15:33', 548, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2419-22-3 3:24:22', 548, N'done')
GO
EXECUTE add_order N'2146-2-11 8:38:30', N'Владислав', N'8-494-049-37-47', N'Приморский', N'Лесная', 97, 10, N'Васильевский', N'Мира', 22, 10, 213, N'cash', 549
GO
INSERT INTO list(date, order_id, status) VALUES(N'2146-2-11 9:24:19', 549, N'canceled')
GO
EXECUTE add_order N'2456-17-3 3:17:54', N'Вячеслав', N'8-232-929-04-99', N'Приморский', N'Мира', 48, 4, N'Запорожский', N'Ботаническая', 20, 10, 175, N'cash', 550
GO
INSERT INTO list(date, order_id, status) VALUES(N'2456-17-3 3:46:18', 550, N'canceled')
GO
EXECUTE add_order N'2356-19-11 4:54:39', N'Вячеслав', N'8-314-882-59-39', N'Центральный', N'Новая', 91, 2, N'Подмостовский', N'Набережная', 10, 3, 363, N'cashless', 551
GO
INSERT INTO list(date, order_id, status) VALUES(N'2356-19-11 4:58:4', 551, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2356-19-11 5:38:14', 551, N'done')
GO
EXECUTE add_order N'2879-23-1 5:57:16', N'Вячеслав', N'8-966-298-03-80', N'Кабельный', N'Лесная', 39, 6, N'Кабельный', N'Набережная', 77, 8, 84, N'cashless', 552
GO
INSERT INTO list(date, order_id, status) VALUES(N'2879-23-1 6:0:51', 552, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2879-23-1 6:31:13', 552, N'done')
GO
EXECUTE add_order N'2013-24-7 1:40:33', N'Алексей', N'8-869-223-59-61', N'Васильевский', N'Балтийская', 67, 2, N'Невский', N'Мира', 18, 1, 143, N'cashless', 553
GO
INSERT INTO list(date, order_id, status) VALUES(N'2013-24-7 1:45:49', 553, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2013-24-7 2:36:20', 553, N'done')
GO
EXECUTE add_order N'2236-9-3 7:22:11', N'Виталий', N'8-482-210-69-84', N'Спальный', N'Ленина', 36, 10, N'Подмостовский', N'Серова', 29, 10, 468, N'cashless', 554
GO
INSERT INTO list(date, order_id, status) VALUES(N'2236-9-3 8:15:33', 554, N'canceled')
GO
EXECUTE add_order N'2080-8-11 0:5:33', N'Николай', N'8-917-093-72-52', N'Запорожский', N'Центральная', 82, 7, N'Спальный', N'Мира', 72, 2, 458, N'cash', 555
GO
INSERT INTO list(date, order_id, status) VALUES(N'2080-8-11 0:43:41', 555, N'canceled')
GO
EXECUTE add_order N'2355-19-12 7:6:37', N'Николай', N'8-709-499-54-38', N'Запорожский', N'Лесная', 90, 9, N'Подмостовский', N'Ботаническая', 11, 6, 276, N'cash', 556
GO
INSERT INTO list(date, order_id, status) VALUES(N'2355-19-12 7:12:0', 556, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2355-19-12 7:22:40', 556, N'done')
GO
EXECUTE add_order N'2611-6-5 3:5:7', N'Владимир', N'8-454-160-31-43', N'Запорожский', N'Крестовая', 80, 8, N'Запорожский', N'Мира', 25, 10, 299, N'cash', 557
GO
INSERT INTO list(date, order_id, status) VALUES(N'2611-6-5 3:10:48', 557, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2611-6-5 3:40:17', 557, N'done')
GO
EXECUTE add_order N'2882-20-3 2:45:40', N'Джек', N'8-446-060-52-52', N'Кировский', N'Новая', 48, 7, N'Васильевский', N'Серова', 69, 7, 69, N'cash', 558
GO
INSERT INTO list(date, order_id, status) VALUES(N'2882-20-3 2:49:0', 558, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2882-20-3 3:33:44', 558, N'done')
GO
EXECUTE add_order N'2236-25-5 2:47:30', N'Иван', N'8-570-754-26-09', N'Подмостовский', N'Новая', 84, 6, N'Кировский', N'Садовая', 30, 3, 504, N'cashless', 559
GO
INSERT INTO list(date, order_id, status) VALUES(N'2236-25-5 2:53:52', 559, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2236-25-5 3:39:25', 559, N'done')
GO
EXECUTE add_order N'2166-12-5 3:50:28', N'Владислав', N'8-501-029-07-15', N'Васильевский', N'Крестовая', 21, 10, N'Центральный', N'Ленина', 78, 3, 371, N'cash', 560
GO
INSERT INTO list(date, order_id, status) VALUES(N'2166-12-5 4:30:55', 560, N'canceled')
GO
EXECUTE add_order N'2621-25-3 4:50:53', N'Тимофей', N'8-251-607-12-56', N'Запорожский', N'Крестовая', 28, 5, N'Кабельный', N'Садовая', 56, 4, 515, N'cashless', 561
GO
INSERT INTO list(date, order_id, status) VALUES(N'2621-25-3 4:55:23', 561, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2621-25-3 5:35:42', 561, N'done')
GO
EXECUTE add_order N'2216-2-7 4:39:29', N'Владислав', N'8-625-440-98-39', N'Невский', N'Школьная', 48, 8, N'Запорожский', N'Новая', 45, 6, 481, N'cashless', 562
GO
INSERT INTO list(date, order_id, status) VALUES(N'2216-2-7 4:44:13', 562, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2216-2-7 4:52:2', 562, N'done')
GO
EXECUTE add_order N'2161-21-9 1:10:28', N'Александр', N'8-967-275-36-06', N'Кабельный', N'Мира', 86, 8, N'Приморский', N'Серова', 37, 6, 518, N'cash', 563
GO
INSERT INTO list(date, order_id, status) VALUES(N'2161-21-9 1:15:48', 563, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2161-21-9 1:36:44', 563, N'done')
GO
EXECUTE add_order N'2861-19-2 5:31:15', N'Антон', N'8-419-002-90-34', N'Центральный', N'Школьная', 32, 3, N'Подмостовский', N'9мая', 72, 1, 408, N'cash', 564
GO
INSERT INTO list(date, order_id, status) VALUES(N'2861-19-2 5:34:59', 564, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2861-19-2 5:43:53', 564, N'done')
GO
EXECUTE add_order N'2718-13-5 7:31:24', N'Алексей', N'8-244-269-53-86', N'Приморский', N'Балтийская', 65, 10, N'Спальный', N'Серова', 14, 1, 363, N'cash', 565
GO
INSERT INTO list(date, order_id, status) VALUES(N'2718-13-5 7:48:33', 565, N'canceled')
GO
EXECUTE add_order N'2344-18-1 8:40:27', N'Джек', N'8-642-577-49-49', N'Рыбный', N'Набережная', 47, 5, N'Спальный', N'9мая', 92, 2, 175, N'cash', 566
GO
INSERT INTO list(date, order_id, status) VALUES(N'2344-18-1 8:44:29', 566, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2344-18-1 9:9:52', 566, N'done')
GO
EXECUTE add_order N'2617-24-2 8:16:54', N'Александр', N'8-332-608-76-34', N'Подмостовский', N'Ленина', 22, 1, N'Запорожский', N'Серова', 41, 9, 207, N'cash', 567
GO
INSERT INTO list(date, order_id, status) VALUES(N'2617-24-2 8:20:32', 567, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2617-24-2 8:59:16', 567, N'done')
GO
EXECUTE add_order N'2622-10-5 0:15:41', N'Антон', N'8-420-078-41-68', N'Приморский', N'Центральная', 69, 5, N'Спальный', N'Центральная', 61, 9, 266, N'cash', 568
GO
INSERT INTO list(date, order_id, status) VALUES(N'2622-10-5 0:19:48', 568, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2622-10-5 0:28:23', 568, N'done')
GO
EXECUTE add_order N'2541-24-7 0:52:44', N'Тимофей', N'8-633-926-66-20', N'Невский', N'Серова', 33, 9, N'Рыбный', N'Центральная', 97, 3, 212, N'cashless', 569
GO
INSERT INTO list(date, order_id, status) VALUES(N'2541-24-7 1:21:7', 569, N'canceled')
GO
EXECUTE add_order N'2720-22-5 7:19:44', N'Пётр', N'8-646-757-80-91', N'Кабельный', N'Набережная', 72, 5, N'Приморский', N'Центральная', 9, 10, 447, N'cashless', 570
GO
INSERT INTO list(date, order_id, status) VALUES(N'2720-22-5 7:26:9', 570, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2720-22-5 7:58:41', 570, N'done')
GO
EXECUTE add_order N'2631-14-1 0:10:47', N'Пётр', N'8-203-182-55-30', N'Центральный', N'Школьная', 33, 1, N'Васильевский', N'Крестовая', 92, 4, 72, N'cash', 571
GO
INSERT INTO list(date, order_id, status) VALUES(N'2631-14-1 0:17:0', 571, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2631-14-1 1:4:57', 571, N'done')
GO
EXECUTE add_order N'2485-18-3 3:46:31', N'Пётр', N'8-335-239-38-94', N'Центральный', N'Лесная', 43, 10, N'Центральный', N'9мая', 100, 1, 442, N'cashless', 572
GO
INSERT INTO list(date, order_id, status) VALUES(N'2485-18-3 3:52:24', 572, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2485-18-3 4:10:11', 572, N'done')
GO
EXECUTE add_order N'2789-22-10 1:50:35', N'Михаил', N'8-727-762-21-14', N'Невский', N'Серова', 11, 7, N'Спальный', N'Садовая', 34, 8, 409, N'cashless', 573
GO
INSERT INTO list(date, order_id, status) VALUES(N'2789-22-10 1:54:23', 573, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2789-22-10 2:1:0', 573, N'done')
GO
EXECUTE add_order N'2456-14-6 5:14:6', N'Кирилл', N'8-297-628-01-04', N'Невский', N'Балтийская', 82, 9, N'Кировский', N'Советская', 14, 7, 124, N'cash', 574
GO
INSERT INTO list(date, order_id, status) VALUES(N'2456-14-6 5:18:30', 574, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2456-14-6 5:29:39', 574, N'done')
GO
EXECUTE add_order N'2252-7-9 0:43:34', N'Вячеслав', N'8-444-928-16-50', N'Невский', N'Ботаническая', 100, 7, N'Рыбный', N'Школьная', 62, 5, 176, N'cashless', 575
GO
INSERT INTO list(date, order_id, status) VALUES(N'2252-7-9 0:49:14', 575, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2252-7-9 0:59:3', 575, N'done')
GO
EXECUTE add_order N'2870-15-3 4:43:19', N'Александр', N'8-171-638-61-45', N'Кабельный', N'Советская', 25, 4, N'Кировский', N'Серова', 78, 1, 173, N'cashless', 576
GO
INSERT INTO list(date, order_id, status) VALUES(N'2870-15-3 5:8:50', 576, N'canceled')
GO
EXECUTE add_order N'2190-7-3 4:56:58', N'Евгений', N'8-144-621-59-40', N'Запорожский', N'Балтийская', 14, 4, N'Кабельный', N'Набережная', 33, 4, 434, N'cash', 577
GO
INSERT INTO list(date, order_id, status) VALUES(N'2190-7-3 5:0:26', 577, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2190-7-3 5:6:39', 577, N'done')
GO
EXECUTE add_order N'2575-24-7 3:12:39', N'Алексей', N'8-275-298-56-17', N'Приморский', N'Советская', 29, 3, N'Невский', N'Садовая', 40, 9, 125, N'cashless', 578
GO
INSERT INTO list(date, order_id, status) VALUES(N'2575-24-7 3:18:46', 578, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2575-24-7 3:57:54', 578, N'done')
GO
EXECUTE add_order N'2105-9-9 2:41:5', N'Джек', N'8-038-020-69-25', N'Спальный', N'Ботаническая', 80, 6, N'Кировский', N'Молодежная', 43, 3, 254, N'cashless', 579
GO
INSERT INTO list(date, order_id, status) VALUES(N'2105-9-9 2:45:6', 579, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2105-9-9 3:3:39', 579, N'done')
GO
EXECUTE add_order N'2474-16-10 8:10:16', N'Алексей', N'8-999-833-56-22', N'Спальный', N'Крестовая', 87, 1, N'Кабельный', N'Молодежная', 56, 4, 323, N'cash', 580
GO
INSERT INTO list(date, order_id, status) VALUES(N'2474-16-10 8:14:28', 580, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2474-16-10 8:36:52', 580, N'done')
GO
EXECUTE add_order N'2951-28-9 2:33:15', N'Пётр', N'8-715-116-40-99', N'Кировский', N'Балтийская', 59, 7, N'Спальный', N'9мая', 62, 6, 64, N'cashless', 581
GO
INSERT INTO list(date, order_id, status) VALUES(N'2951-28-9 2:58:5', 581, N'canceled')
GO
EXECUTE add_order N'2985-24-7 3:55:56', N'Михаил', N'8-060-369-34-41', N'Подмостовский', N'Набережная', 23, 4, N'Кировский', N'Крестовая', 62, 3, 496, N'cashless', 582
GO
INSERT INTO list(date, order_id, status) VALUES(N'2985-24-7 4:1:17', 582, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2985-24-7 4:23:6', 582, N'done')
GO
EXECUTE add_order N'2401-21-8 0:53:35', N'Евгений', N'8-117-580-52-45', N'Приморский', N'Балтийская', 58, 3, N'Запорожский', N'Серова', 93, 10, 75, N'cash', 583
GO
INSERT INTO list(date, order_id, status) VALUES(N'2401-21-8 0:58:31', 583, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2401-21-8 1:28:49', 583, N'done')
GO
EXECUTE add_order N'2000-19-3 4:39:51', N'Антон', N'8-719-452-21-96', N'Кабельный', N'Крестовая', 90, 1, N'Невский', N'Новая', 2, 4, 193, N'cashless', 584
GO
INSERT INTO list(date, order_id, status) VALUES(N'2000-19-3 4:45:46', 584, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2000-19-3 5:19:43', 584, N'done')
GO
EXECUTE add_order N'2891-23-3 1:19:27', N'Тимофей', N'8-734-643-98-55', N'Васильевский', N'Садовая', 19, 10, N'Центральный', N'Крестовая', 58, 6, 266, N'cash', 585
GO
INSERT INTO list(date, order_id, status) VALUES(N'2891-23-3 1:25:32', 585, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2891-23-3 1:51:45', 585, N'done')
GO
EXECUTE add_order N'2397-5-5 0:6:0', N'Александр', N'8-999-081-18-90', N'Центральный', N'Мира', 47, 10, N'Центральный', N'Новая', 3, 9, 358, N'cashless', 586
GO
INSERT INTO list(date, order_id, status) VALUES(N'2397-5-5 0:12:33', 586, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2397-5-5 0:57:5', 586, N'done')
GO
EXECUTE add_order N'2929-23-11 1:22:33', N'Джек', N'8-843-341-75-91', N'Кировский', N'9мая', 2, 10, N'Рыбный', N'Лесная', 79, 4, 463, N'cash', 587
GO
INSERT INTO list(date, order_id, status) VALUES(N'2929-23-11 1:28:15', 587, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2929-23-11 1:50:55', 587, N'done')
GO
EXECUTE add_order N'2883-5-2 6:19:1', N'Кирилл', N'8-039-775-25-55', N'Васильевский', N'Садовая', 25, 8, N'Запорожский', N'Набережная', 63, 10, 314, N'cash', 588
GO
INSERT INTO list(date, order_id, status) VALUES(N'2883-5-2 7:15:53', 588, N'canceled')
GO
EXECUTE add_order N'2886-1-5 8:23:16', N'Никита', N'8-098-380-27-10', N'Запорожский', N'Новая', 52, 1, N'Подмостовский', N'Ленина', 97, 7, 86, N'cash', 589
GO
INSERT INTO list(date, order_id, status) VALUES(N'2886-1-5 9:13:9', 589, N'canceled')
GO
EXECUTE add_order N'2343-28-12 1:52:19', N'Вячеслав', N'8-365-389-84-92', N'Рыбный', N'Молодежная', 31, 1, N'Кировский', N'Новая', 22, 2, 519, N'cash', 590
GO
INSERT INTO list(date, order_id, status) VALUES(N'2343-28-12 1:57:12', 590, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2343-28-12 2:46:59', 590, N'done')
GO
EXECUTE add_order N'2971-2-6 7:27:56', N'Никита', N'8-528-863-72-58', N'Приморский', N'Лесная', 1, 6, N'Рыбный', N'Новая', 71, 2, 374, N'cash', 591
GO
INSERT INTO list(date, order_id, status) VALUES(N'2971-2-6 7:32:14', 591, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2971-2-6 8:4:39', 591, N'done')
GO
EXECUTE add_order N'2664-19-5 7:1:21', N'Джек', N'8-583-690-56-18', N'Центральный', N'Ботаническая', 90, 5, N'Спальный', N'Набережная', 33, 10, 432, N'cashless', 592
GO
INSERT INTO list(date, order_id, status) VALUES(N'2664-19-5 7:6:40', 592, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2664-19-5 7:13:52', 592, N'done')
GO
EXECUTE add_order N'2592-2-3 5:58:46', N'Алексей', N'8-506-962-18-71', N'Спальный', N'Новая', 73, 4, N'Спальный', N'Лесная', 41, 1, 93, N'cash', 593
GO
INSERT INTO list(date, order_id, status) VALUES(N'2592-2-3 6:3:55', 593, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2592-2-3 6:7:29', 593, N'done')
GO
EXECUTE add_order N'2446-14-12 2:37:36', N'Пётр', N'8-449-566-76-68', N'Кировский', N'Балтийская', 64, 5, N'Рыбный', N'Школьная', 62, 4, 468, N'cashless', 594
GO
INSERT INTO list(date, order_id, status) VALUES(N'2446-14-12 2:42:10', 594, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2446-14-12 2:57:53', 594, N'done')
GO
EXECUTE add_order N'2337-11-6 6:45:14', N'Николай', N'8-534-552-11-97', N'Васильевский', N'Школьная', 53, 6, N'Рыбный', N'Серова', 9, 9, 455, N'cash', 595
GO
INSERT INTO list(date, order_id, status) VALUES(N'2337-11-6 6:50:26', 595, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2337-11-6 7:30:17', 595, N'done')
GO
EXECUTE add_order N'2698-9-11 7:2:46', N'Иван', N'8-614-814-45-39', N'Подмостовский', N'Лесная', 80, 6, N'Запорожский', N'Молодежная', 49, 10, 514, N'cash', 596
GO
INSERT INTO list(date, order_id, status) VALUES(N'2698-9-11 7:9:15', 596, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2698-9-11 7:28:29', 596, N'done')
GO
EXECUTE add_order N'2017-2-8 7:32:38', N'Михаил', N'8-438-985-19-27', N'Спальный', N'Молодежная', 43, 8, N'Кировский', N'Новая', 17, 7, 499, N'cash', 597
GO
INSERT INTO list(date, order_id, status) VALUES(N'2017-2-8 7:36:2', 597, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2017-2-8 8:0:4', 597, N'done')
GO
EXECUTE add_order N'2719-9-2 3:10:52', N'Антон', N'8-940-410-45-72', N'Кировский', N'Новая', 26, 2, N'Рыбный', N'Мира', 56, 8, 107, N'cashless', 598
GO
INSERT INTO list(date, order_id, status) VALUES(N'2719-9-2 3:15:52', 598, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2719-9-2 3:36:32', 598, N'done')
GO
EXECUTE add_order N'2623-9-10 5:36:48', N'Виталий', N'8-831-462-83-66', N'Рыбный', N'Новая', 7, 8, N'Рыбный', N'9мая', 57, 1, 483, N'cash', 599
GO
INSERT INTO list(date, order_id, status) VALUES(N'2623-9-10 5:43:2', 599, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2623-9-10 6:36:11', 599, N'done')
GO
EXECUTE add_order N'2246-20-10 7:33:22', N'Владислав', N'8-368-174-63-65', N'Кабельный', N'Серова', 44, 8, N'Запорожский', N'Советская', 92, 3, 384, N'cash', 600
GO
INSERT INTO list(date, order_id, status) VALUES(N'2246-20-10 7:39:34', 600, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2246-20-10 8:32:32', 600, N'done')
GO
EXECUTE add_order N'2356-13-2 5:56:48', N'Дмитрий', N'8-741-807-48-78', N'Запорожский', N'Центральная', 88, 8, N'Кабельный', N'Центральная', 69, 8, 172, N'cashless', 601
GO
INSERT INTO list(date, order_id, status) VALUES(N'2356-13-2 6:2:17', 601, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2356-13-2 6:13:34', 601, N'done')
GO
EXECUTE add_order N'2603-7-8 8:33:28', N'Вячеслав', N'8-752-741-44-12', N'Центральный', N'Балтийская', 75, 6, N'Подмостовский', N'Ленина', 63, 2, 214, N'cashless', 602
GO
INSERT INTO list(date, order_id, status) VALUES(N'2603-7-8 8:37:15', 602, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2603-7-8 9:15:13', 602, N'done')
GO
EXECUTE add_order N'2992-19-3 7:50:40', N'Вячеслав', N'8-815-999-68-35', N'Кабельный', N'Центральная', 58, 5, N'Подмостовский', N'Набережная', 47, 10, 304, N'cashless', 603
GO
INSERT INTO list(date, order_id, status) VALUES(N'2992-19-3 7:55:12', 603, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2992-19-3 8:24:50', 603, N'done')
GO
EXECUTE add_order N'2735-7-9 1:23:16', N'Владимир', N'8-016-822-76-12', N'Спальный', N'Крестовая', 6, 3, N'Центральный', N'Советская', 58, 8, 487, N'cash', 604
GO
INSERT INTO list(date, order_id, status) VALUES(N'2735-7-9 1:29:48', 604, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2735-7-9 2:17:37', 604, N'done')
GO
EXECUTE add_order N'2564-25-11 6:18:41', N'Владимир', N'8-112-111-37-85', N'Подмостовский', N'Серова', 31, 2, N'Приморский', N'Мира', 4, 1, 498, N'cash', 605
GO
INSERT INTO list(date, order_id, status) VALUES(N'2564-25-11 6:24:7', 605, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2564-25-11 6:50:29', 605, N'done')
GO
EXECUTE add_order N'2086-15-9 1:23:45', N'Владимир', N'8-677-246-78-74', N'Рыбный', N'Серова', 16, 10, N'Спальный', N'Серова', 87, 3, 412, N'cash', 606
GO
INSERT INTO list(date, order_id, status) VALUES(N'2086-15-9 1:29:26', 606, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2086-15-9 2:12:5', 606, N'done')
GO
EXECUTE add_order N'2990-3-7 8:13:59', N'Пётр', N'8-600-498-82-32', N'Запорожский', N'Серова', 65, 4, N'Спальный', N'Школьная', 23, 8, 247, N'cashless', 607
GO
INSERT INTO list(date, order_id, status) VALUES(N'2990-3-7 8:51:51', 607, N'canceled')
GO
EXECUTE add_order N'2395-15-10 2:1:21', N'Виталий', N'8-939-068-65-71', N'Приморский', N'Ботаническая', 83, 5, N'Невский', N'Набережная', 11, 1, 179, N'cashless', 608
GO
INSERT INTO list(date, order_id, status) VALUES(N'2395-15-10 2:6:10', 608, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2395-15-10 2:27:24', 608, N'done')
GO
EXECUTE add_order N'2836-3-3 0:5:40', N'Кирилл', N'8-029-023-62-34', N'Рыбный', N'Молодежная', 44, 8, N'Рыбный', N'9мая', 93, 5, 99, N'cash', 609
GO
INSERT INTO list(date, order_id, status) VALUES(N'2836-3-3 0:9:12', 609, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2836-3-3 0:23:59', 609, N'done')
GO
EXECUTE add_order N'2420-5-8 1:20:23', N'Владислав', N'8-907-129-95-30', N'Васильевский', N'Молодежная', 86, 7, N'Центральный', N'Крестовая', 15, 7, 411, N'cashless', 610
GO
INSERT INTO list(date, order_id, status) VALUES(N'2420-5-8 1:56:5', 610, N'canceled')
GO
EXECUTE add_order N'2026-6-7 5:29:15', N'Джек', N'8-013-574-18-21', N'Васильевский', N'Серова', 62, 10, N'Приморский', N'9мая', 45, 10, 70, N'cash', 611
GO
INSERT INTO list(date, order_id, status) VALUES(N'2026-6-7 6:14:47', 611, N'canceled')
GO
EXECUTE add_order N'2177-21-6 8:47:42', N'Иван', N'8-366-326-23-92', N'Васильевский', N'Крестовая', 6, 9, N'Невский', N'Ботаническая', 23, 2, 238, N'cash', 612
GO
INSERT INTO list(date, order_id, status) VALUES(N'2177-21-6 9:14:3', 612, N'canceled')
GO
EXECUTE add_order N'2276-3-6 4:20:28', N'Евгений', N'8-412-070-53-17', N'Запорожский', N'Набережная', 25, 4, N'Приморский', N'Серова', 61, 8, 410, N'cash', 613
GO
INSERT INTO list(date, order_id, status) VALUES(N'2276-3-6 4:26:5', 613, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2276-3-6 4:52:6', 613, N'done')
GO
EXECUTE add_order N'2338-4-2 5:7:33', N'Егор', N'8-682-115-58-51', N'Приморский', N'Садовая', 31, 3, N'Васильевский', N'Крестовая', 62, 8, 328, N'cash', 614
GO
INSERT INTO list(date, order_id, status) VALUES(N'2338-4-2 5:12:35', 614, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2338-4-2 5:35:54', 614, N'done')
GO
EXECUTE add_order N'2598-24-5 4:12:23', N'Алексей', N'8-951-042-83-22', N'Запорожский', N'Крестовая', 34, 6, N'Кабельный', N'Ботаническая', 77, 2, 90, N'cash', 615
GO
INSERT INTO list(date, order_id, status) VALUES(N'2598-24-5 4:18:34', 615, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2598-24-5 5:2:47', 615, N'done')
GO
EXECUTE add_order N'2785-15-6 6:19:29', N'Иван', N'8-457-633-92-51', N'Приморский', N'9мая', 10, 9, N'Центральный', N'Новая', 78, 8, 56, N'cashless', 616
GO
INSERT INTO list(date, order_id, status) VALUES(N'2785-15-6 6:24:3', 616, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2785-15-6 6:55:40', 616, N'done')
GO
EXECUTE add_order N'2583-24-8 8:6:54', N'Никита', N'8-690-402-17-29', N'Невский', N'Советская', 24, 8, N'Невский', N'Мира', 5, 8, 494, N'cashless', 617
GO
INSERT INTO list(date, order_id, status) VALUES(N'2583-24-8 8:10:31', 617, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2583-24-8 8:58:37', 617, N'done')
GO
EXECUTE add_order N'2062-9-6 7:4:49', N'Владислав', N'8-205-851-13-12', N'Рыбный', N'Садовая', 84, 7, N'Запорожский', N'Крестовая', 70, 5, 509, N'cashless', 618
GO
INSERT INTO list(date, order_id, status) VALUES(N'2062-9-6 7:10:57', 618, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2062-9-6 7:36:10', 618, N'done')
GO
EXECUTE add_order N'2031-4-5 4:49:41', N'Джек', N'8-517-979-79-61', N'Запорожский', N'Мира', 78, 5, N'Центральный', N'Набережная', 93, 7, 415, N'cashless', 619
GO
INSERT INTO list(date, order_id, status) VALUES(N'2031-4-5 4:55:25', 619, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2031-4-5 5:4:18', 619, N'done')
GO
EXECUTE add_order N'2452-24-11 6:33:8', N'Евгений', N'8-146-371-23-53', N'Кировский', N'Крестовая', 17, 2, N'Васильевский', N'Крестовая', 44, 7, 67, N'cashless', 620
GO
INSERT INTO list(date, order_id, status) VALUES(N'2452-24-11 6:37:33', 620, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2452-24-11 7:5:53', 620, N'done')
GO
EXECUTE add_order N'2315-17-8 5:6:15', N'Александр', N'8-158-117-25-97', N'Центральный', N'Мира', 40, 5, N'Невский', N'Крестовая', 7, 2, 511, N'cashless', 621
GO
INSERT INTO list(date, order_id, status) VALUES(N'2315-17-8 5:10:35', 621, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2315-17-8 5:22:35', 621, N'done')
GO
EXECUTE add_order N'2697-20-2 6:15:11', N'Николай', N'8-186-428-92-53', N'Невский', N'Советская', 66, 6, N'Подмостовский', N'9мая', 21, 7, 66, N'cashless', 622
GO
INSERT INTO list(date, order_id, status) VALUES(N'2697-20-2 6:20:50', 622, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2697-20-2 6:28:44', 622, N'done')
GO
EXECUTE add_order N'2522-25-10 1:33:22', N'Никита', N'8-866-819-17-21', N'Кировский', N'Советская', 69, 9, N'Спальный', N'Лесная', 29, 3, 345, N'cash', 623
GO
INSERT INTO list(date, order_id, status) VALUES(N'2522-25-10 1:43:27', 623, N'canceled')
GO
EXECUTE add_order N'2041-28-9 4:55:38', N'Алексей', N'8-191-754-38-69', N'Невский', N'Серова', 80, 9, N'Приморский', N'Школьная', 29, 9, 516, N'cashless', 624
GO
INSERT INTO list(date, order_id, status) VALUES(N'2041-28-9 5:0:31', 624, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2041-28-9 5:25:1', 624, N'done')
GO
EXECUTE add_order N'2878-12-3 1:21:8', N'Дмитрий', N'8-866-863-78-34', N'Невский', N'Ботаническая', 17, 3, N'Спальный', N'Новая', 70, 9, 376, N'cash', 625
GO
INSERT INTO list(date, order_id, status) VALUES(N'2878-12-3 1:25:19', 625, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2878-12-3 2:4:13', 625, N'done')
GO
EXECUTE add_order N'2406-23-12 1:24:13', N'Сергей', N'8-393-708-00-10', N'Спальный', N'9мая', 35, 4, N'Рыбный', N'Ленина', 2, 4, 386, N'cashless', 626
GO
INSERT INTO list(date, order_id, status) VALUES(N'2406-23-12 1:28:4', 626, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2406-23-12 2:7:41', 626, N'done')
GO
EXECUTE add_order N'2625-19-8 5:19:46', N'Иван', N'8-312-930-47-19', N'Васильевский', N'Ботаническая', 76, 3, N'Васильевский', N'Лесная', 91, 7, 108, N'cash', 627
GO
INSERT INTO list(date, order_id, status) VALUES(N'2625-19-8 6:2:30', 627, N'canceled')
GO
EXECUTE add_order N'2271-26-7 4:33:9', N'Михаил', N'8-362-579-51-83', N'Кабельный', N'9мая', 3, 1, N'Приморский', N'Серова', 75, 5, 514, N'cash', 628
GO
INSERT INTO list(date, order_id, status) VALUES(N'2271-26-7 5:0:56', 628, N'canceled')
GO
EXECUTE add_order N'2931-23-1 8:5:37', N'Андрей', N'8-538-469-77-20', N'Кабельный', N'Балтийская', 86, 10, N'Спальный', N'Ленина', 33, 7, 325, N'cashless', 629
GO
INSERT INTO list(date, order_id, status) VALUES(N'2931-23-1 8:35:17', 629, N'canceled')
GO
EXECUTE add_order N'2807-27-5 0:42:8', N'Дмитрий', N'8-854-650-21-89', N'Подмостовский', N'Серова', 93, 5, N'Подмостовский', N'Набережная', 1, 10, 337, N'cash', 630
GO
INSERT INTO list(date, order_id, status) VALUES(N'2807-27-5 0:46:50', 630, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2807-27-5 0:56:28', 630, N'done')
GO
EXECUTE add_order N'2425-26-9 6:12:53', N'Пётр', N'8-541-851-18-49', N'Центральный', N'Лесная', 46, 5, N'Невский', N'Мира', 22, 1, 70, N'cashless', 631
GO
INSERT INTO list(date, order_id, status) VALUES(N'2425-26-9 7:5:55', 631, N'canceled')
GO
EXECUTE add_order N'2677-12-11 8:23:43', N'Егор', N'8-045-433-68-84', N'Рыбный', N'Ботаническая', 50, 2, N'Запорожский', N'Серова', 91, 8, 308, N'cashless', 632
GO
INSERT INTO list(date, order_id, status) VALUES(N'2677-12-11 8:28:4', 632, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2677-12-11 9:4:40', 632, N'done')
GO
EXECUTE add_order N'2453-6-7 8:57:57', N'Александр', N'8-651-190-93-53', N'Васильевский', N'Ботаническая', 37, 2, N'Невский', N'Центральная', 29, 10, 173, N'cash', 633
GO
INSERT INTO list(date, order_id, status) VALUES(N'2453-6-7 9:2:29', 633, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2453-6-7 9:26:6', 633, N'done')
GO
EXECUTE add_order N'2943-3-1 5:13:14', N'Джек', N'8-203-561-88-17', N'Запорожский', N'Крестовая', 87, 2, N'Запорожский', N'9мая', 72, 8, 95, N'cashless', 634
GO
INSERT INTO list(date, order_id, status) VALUES(N'2943-3-1 6:5:31', 634, N'canceled')
GO
EXECUTE add_order N'2780-13-2 8:24:57', N'Андрей', N'8-539-829-15-42', N'Подмостовский', N'Крестовая', 69, 6, N'Подмостовский', N'Ленина', 53, 8, 426, N'cash', 635
GO
INSERT INTO list(date, order_id, status) VALUES(N'2780-13-2 8:29:50', 635, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2780-13-2 9:6:2', 635, N'done')
GO
EXECUTE add_order N'2571-23-3 7:32:48', N'Кирилл', N'8-736-882-84-00', N'Васильевский', N'Мира', 39, 7, N'Спальный', N'Молодежная', 3, 8, 263, N'cash', 636
GO
INSERT INTO list(date, order_id, status) VALUES(N'2571-23-3 7:37:29', 636, N'canceled')
GO
EXECUTE add_order N'2803-1-11 2:42:18', N'Кирилл', N'8-051-421-46-76', N'Приморский', N'Крестовая', 30, 2, N'Невский', N'Балтийская', 92, 5, 154, N'cash', 637
GO
INSERT INTO list(date, order_id, status) VALUES(N'2803-1-11 2:47:6', 637, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2803-1-11 3:15:32', 637, N'done')
GO
EXECUTE add_order N'2125-4-4 2:53:57', N'Александр', N'8-050-762-29-10', N'Запорожский', N'Серова', 65, 6, N'Невский', N'Мира', 57, 7, 423, N'cash', 638
GO
INSERT INTO list(date, order_id, status) VALUES(N'2125-4-4 2:59:45', 638, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2125-4-4 3:41:59', 638, N'done')
GO
EXECUTE add_order N'2878-5-6 3:48:51', N'Егор', N'8-604-081-33-36', N'Невский', N'Садовая', 99, 3, N'Кировский', N'Ботаническая', 43, 1, 346, N'cashless', 639
GO
INSERT INTO list(date, order_id, status) VALUES(N'2878-5-6 3:54:28', 639, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2878-5-6 4:3:5', 639, N'done')
GO
EXECUTE add_order N'2408-18-9 5:54:40', N'Виталий', N'8-254-874-69-19', N'Центральный', N'Балтийская', 71, 9, N'Подмостовский', N'Советская', 3, 3, 260, N'cashless', 640
GO
INSERT INTO list(date, order_id, status) VALUES(N'2408-18-9 6:47:50', 640, N'canceled')
GO
EXECUTE add_order N'2593-9-6 7:50:58', N'Владислав', N'8-565-879-23-73', N'Приморский', N'Серова', 9, 1, N'Спальный', N'Набережная', 76, 9, 351, N'cash', 641
GO
INSERT INTO list(date, order_id, status) VALUES(N'2593-9-6 7:54:33', 641, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2593-9-6 8:34:24', 641, N'done')
GO
EXECUTE add_order N'2680-2-2 0:9:20', N'Сергей', N'8-697-816-41-29', N'Кировский', N'Балтийская', 78, 6, N'Подмостовский', N'Лесная', 89, 9, 211, N'cash', 642
GO
INSERT INTO list(date, order_id, status) VALUES(N'2680-2-2 0:15:33', 642, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2680-2-2 0:30:37', 642, N'done')
GO
EXECUTE add_order N'2280-16-3 8:40:36', N'Владислав', N'8-416-519-65-94', N'Васильевский', N'Лесная', 2, 9, N'Невский', N'Набережная', 60, 1, 361, N'cash', 643
GO
INSERT INTO list(date, order_id, status) VALUES(N'2280-16-3 8:46:20', 643, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2280-16-3 9:2:58', 643, N'done')
GO
EXECUTE add_order N'2642-9-3 1:26:27', N'Виталий', N'8-665-891-41-78', N'Центральный', N'Центральная', 99, 7, N'Кировский', N'Балтийская', 7, 1, 169, N'cash', 644
GO
INSERT INTO list(date, order_id, status) VALUES(N'2642-9-3 1:31:2', 644, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2642-9-3 2:2:8', 644, N'done')
GO
EXECUTE add_order N'2258-3-10 6:57:25', N'Пётр', N'8-749-050-62-86', N'Рыбный', N'Ботаническая', 58, 5, N'Кировский', N'Серова', 79, 2, 223, N'cashless', 645
GO
INSERT INTO list(date, order_id, status) VALUES(N'2258-3-10 7:13:33', 645, N'canceled')
GO
EXECUTE add_order N'2776-17-10 3:20:48', N'Вячеслав', N'8-205-780-75-86', N'Запорожский', N'Садовая', 31, 8, N'Запорожский', N'Садовая', 51, 1, 527, N'cash', 646
GO
INSERT INTO list(date, order_id, status) VALUES(N'2776-17-10 3:24:42', 646, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2776-17-10 3:50:15', 646, N'done')
GO
EXECUTE add_order N'2465-26-1 4:53:59', N'Михаил', N'8-264-866-42-37', N'Центральный', N'Крестовая', 92, 1, N'Невский', N'Центральная', 25, 5, 79, N'cash', 647
GO
INSERT INTO list(date, order_id, status) VALUES(N'2465-26-1 4:59:14', 647, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2465-26-1 5:16:46', 647, N'done')
GO
EXECUTE add_order N'2532-28-5 8:51:57', N'Никита', N'8-955-634-25-01', N'Спальный', N'Мира', 81, 10, N'Кабельный', N'Школьная', 9, 3, 423, N'cash', 648
GO
INSERT INTO list(date, order_id, status) VALUES(N'2532-28-5 9:15:42', 648, N'canceled')
GO
EXECUTE add_order N'2187-7-12 1:4:48', N'Кирилл', N'8-798-309-56-24', N'Спальный', N'Молодежная', 94, 10, N'Рыбный', N'Ботаническая', 58, 7, 454, N'cash', 649
GO
INSERT INTO list(date, order_id, status) VALUES(N'2187-7-12 1:9:54', 649, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2187-7-12 1:51:29', 649, N'done')
GO
EXECUTE add_order N'2939-18-1 0:18:13', N'Вячеслав', N'8-745-073-63-29', N'Васильевский', N'Мира', 87, 6, N'Невский', N'Ботаническая', 26, 6, 143, N'cashless', 650
GO
INSERT INTO list(date, order_id, status) VALUES(N'2939-18-1 1:8:55', 650, N'canceled')
GO
EXECUTE add_order N'2522-6-1 4:4:37', N'Джек', N'8-344-455-49-95', N'Подмостовский', N'Новая', 54, 7, N'Центральный', N'Молодежная', 5, 5, 270, N'cashless', 651
GO
INSERT INTO list(date, order_id, status) VALUES(N'2522-6-1 4:48:16', 651, N'canceled')
GO
EXECUTE add_order N'2083-6-5 3:23:40', N'Сергей', N'8-179-547-43-53', N'Рыбный', N'Молодежная', 20, 7, N'Кабельный', N'Молодежная', 37, 10, 333, N'cashless', 652
GO
INSERT INTO list(date, order_id, status) VALUES(N'2083-6-5 3:28:2', 652, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2083-6-5 3:49:3', 652, N'done')
GO
EXECUTE add_order N'2272-20-12 0:31:35', N'Егор', N'8-417-440-39-09', N'Подмостовский', N'Балтийская', 16, 4, N'Приморский', N'Ботаническая', 94, 3, 295, N'cash', 653
GO
INSERT INTO list(date, order_id, status) VALUES(N'2272-20-12 0:37:32', 653, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2272-20-12 1:29:34', 653, N'done')
GO
EXECUTE add_order N'2620-16-5 1:41:44', N'Владимир', N'8-532-338-28-92', N'Запорожский', N'Набережная', 62, 2, N'Подмостовский', N'Школьная', 89, 3, 246, N'cash', 654
GO
INSERT INTO list(date, order_id, status) VALUES(N'2620-16-5 1:47:35', 654, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2620-16-5 2:19:39', 654, N'done')
GO
EXECUTE add_order N'2316-22-1 2:2:28', N'Михаил', N'8-909-862-23-09', N'Центральный', N'Советская', 13, 10, N'Рыбный', N'Советская', 33, 3, 351, N'cashless', 655
GO
INSERT INTO list(date, order_id, status) VALUES(N'2316-22-1 2:6:42', 655, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2316-22-1 2:43:30', 655, N'done')
GO
EXECUTE add_order N'2139-8-4 1:5:25', N'Александр', N'8-850-154-68-51', N'Запорожский', N'Набережная', 75, 10, N'Невский', N'Ботаническая', 4, 2, 389, N'cashless', 656
GO
INSERT INTO list(date, order_id, status) VALUES(N'2139-8-4 1:11:26', 656, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2139-8-4 1:50:14', 656, N'done')
GO
EXECUTE add_order N'2410-20-4 6:47:33', N'Джек', N'8-299-471-91-38', N'Подмостовский', N'Ботаническая', 94, 3, N'Кабельный', N'Балтийская', 27, 3, 442, N'cashless', 657
GO
INSERT INTO list(date, order_id, status) VALUES(N'2410-20-4 6:52:56', 657, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2410-20-4 7:27:4', 657, N'done')
GO
EXECUTE add_order N'2559-5-12 5:56:12', N'Кирилл', N'8-157-911-46-16', N'Спальный', N'Советская', 84, 2, N'Центральный', N'Набережная', 34, 3, 187, N'cash', 658
GO
INSERT INTO list(date, order_id, status) VALUES(N'2559-5-12 6:43:25', 658, N'canceled')
GO
EXECUTE add_order N'2209-13-12 7:48:10', N'Егор', N'8-958-055-57-93', N'Рыбный', N'9мая', 16, 6, N'Подмостовский', N'Мира', 48, 8, 224, N'cashless', 659
GO
INSERT INTO list(date, order_id, status) VALUES(N'2209-13-12 8:3:27', 659, N'canceled')
GO
EXECUTE add_order N'2488-23-12 0:42:23', N'Пётр', N'8-031-975-50-27', N'Приморский', N'Лесная', 32, 2, N'Спальный', N'Лесная', 7, 6, 345, N'cashless', 660
GO
INSERT INTO list(date, order_id, status) VALUES(N'2488-23-12 1:5:51', 660, N'canceled')
GO
EXECUTE add_order N'2347-28-7 2:9:25', N'Антон', N'8-310-093-69-66', N'Запорожский', N'Ленина', 11, 1, N'Кировский', N'Советская', 64, 10, 261, N'cash', 661
GO
INSERT INTO list(date, order_id, status) VALUES(N'2347-28-7 2:13:57', 661, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2347-28-7 2:33:50', 661, N'done')
GO
EXECUTE add_order N'2269-10-8 2:26:45', N'Александр', N'8-597-407-40-47', N'Кировский', N'Набережная', 14, 9, N'Кировский', N'9мая', 42, 2, 114, N'cash', 662
GO
INSERT INTO list(date, order_id, status) VALUES(N'2269-10-8 2:30:18', 662, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2269-10-8 3:20:47', 662, N'done')
GO
EXECUTE add_order N'2338-23-3 7:17:56', N'Дмитрий', N'8-665-729-77-49', N'Рыбный', N'Ботаническая', 42, 8, N'Невский', N'9мая', 22, 7, 221, N'cash', 663
GO
INSERT INTO list(date, order_id, status) VALUES(N'2338-23-3 7:39:18', 663, N'canceled')
GO
EXECUTE add_order N'2176-22-6 6:11:57', N'Владимир', N'8-725-909-85-84', N'Кировский', N'Крестовая', 72, 6, N'Кабельный', N'Ленина', 60, 4, 98, N'cashless', 664
GO
INSERT INTO list(date, order_id, status) VALUES(N'2176-22-6 7:9:13', 664, N'canceled')
GO
EXECUTE add_order N'2541-25-5 6:7:26', N'Николай', N'8-941-302-18-87', N'Васильевский', N'Советская', 52, 1, N'Рыбный', N'Лесная', 100, 5, 482, N'cashless', 665
GO
INSERT INTO list(date, order_id, status) VALUES(N'2541-25-5 6:11:41', 665, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2541-25-5 6:40:29', 665, N'done')
GO
EXECUTE add_order N'2474-11-2 5:38:19', N'Никита', N'8-967-848-78-25', N'Спальный', N'Балтийская', 16, 8, N'Запорожский', N'9мая', 52, 5, 167, N'cashless', 666
GO
INSERT INTO list(date, order_id, status) VALUES(N'2474-11-2 5:41:49', 666, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2474-11-2 6:34:32', 666, N'done')
GO
EXECUTE add_order N'2273-11-12 0:8:53', N'Тимофей', N'8-688-863-75-87', N'Рыбный', N'Серова', 56, 3, N'Васильевский', N'Лесная', 48, 3, 196, N'cashless', 667
GO
INSERT INTO list(date, order_id, status) VALUES(N'2273-11-12 0:12:30', 667, N'canceled')
GO
EXECUTE add_order N'2095-11-9 3:37:9', N'Антон', N'8-563-467-37-95', N'Кабельный', N'Мира', 95, 2, N'Спальный', N'Советская', 6, 10, 431, N'cash', 668
GO
INSERT INTO list(date, order_id, status) VALUES(N'2095-11-9 3:42:35', 668, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2095-11-9 4:13:3', 668, N'done')
GO
EXECUTE add_order N'2451-10-1 8:54:30', N'Михаил', N'8-415-076-53-23', N'Центральный', N'Серова', 38, 2, N'Невский', N'Советская', 50, 9, 248, N'cashless', 669
GO
INSERT INTO list(date, order_id, status) VALUES(N'2451-10-1 8:59:13', 669, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2451-10-1 9:41:44', 669, N'done')
GO
EXECUTE add_order N'2356-27-6 7:14:43', N'Виталий', N'8-416-033-64-83', N'Кабельный', N'Ленина', 7, 6, N'Запорожский', N'Ленина', 2, 5, 380, N'cash', 670
GO
INSERT INTO list(date, order_id, status) VALUES(N'2356-27-6 7:18:33', 670, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2356-27-6 7:51:43', 670, N'done')
GO
EXECUTE add_order N'2121-27-12 6:45:26', N'Антон', N'8-767-405-31-49', N'Центральный', N'Мира', 93, 8, N'Васильевский', N'Ботаническая', 52, 4, 526, N'cash', 671
GO
INSERT INTO list(date, order_id, status) VALUES(N'2121-27-12 6:52:4', 671, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2121-27-12 7:41:21', 671, N'done')
GO
EXECUTE add_order N'2567-1-8 0:18:25', N'Пётр', N'8-206-253-17-56', N'Приморский', N'Набережная', 71, 4, N'Центральный', N'Лесная', 78, 1, 230, N'cashless', 672
GO
INSERT INTO list(date, order_id, status) VALUES(N'2567-1-8 0:23:40', 672, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2567-1-8 1:7:35', 672, N'done')
GO
EXECUTE add_order N'2519-25-5 4:32:22', N'Владислав', N'8-488-969-45-64', N'Центральный', N'Молодежная', 6, 3, N'Приморский', N'Садовая', 58, 4, 469, N'cashless', 673
GO
INSERT INTO list(date, order_id, status) VALUES(N'2519-25-5 4:38:10', 673, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2519-25-5 5:13:22', 673, N'done')
GO
EXECUTE add_order N'2997-7-4 0:36:11', N'Дмитрий', N'8-253-943-40-01', N'Кировский', N'Садовая', 31, 8, N'Подмостовский', N'Школьная', 6, 4, 497, N'cashless', 674
GO
INSERT INTO list(date, order_id, status) VALUES(N'2997-7-4 0:48:42', 674, N'canceled')
GO
EXECUTE add_order N'2029-16-6 7:6:50', N'Иван', N'8-444-967-73-41', N'Запорожский', N'Лесная', 18, 1, N'Кабельный', N'Новая', 6, 5, 286, N'cash', 675
GO
INSERT INTO list(date, order_id, status) VALUES(N'2029-16-6 7:10:37', 675, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2029-16-6 7:57:58', 675, N'done')
GO
EXECUTE add_order N'2805-25-4 4:51:6', N'Вячеслав', N'8-613-678-41-73', N'Центральный', N'Балтийская', 68, 6, N'Васильевский', N'Ботаническая', 58, 9, 306, N'cash', 676
GO
INSERT INTO list(date, order_id, status) VALUES(N'2805-25-4 4:57:19', 676, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2805-25-4 5:4:48', 676, N'done')
GO
EXECUTE add_order N'2650-19-3 8:26:5', N'Михаил', N'8-368-292-84-32', N'Подмостовский', N'Мира', 45, 7, N'Подмостовский', N'Серова', 54, 8, 262, N'cashless', 677
GO
INSERT INTO list(date, order_id, status) VALUES(N'2650-19-3 8:32:40', 677, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2650-19-3 8:55:32', 677, N'done')
GO
EXECUTE add_order N'2977-5-3 8:41:22', N'Сергей', N'8-868-689-49-24', N'Рыбный', N'Центральная', 55, 8, N'Приморский', N'Балтийская', 54, 5, 447, N'cash', 678
GO
INSERT INTO list(date, order_id, status) VALUES(N'2977-5-3 9:29:14', 678, N'canceled')
GO
EXECUTE add_order N'2244-4-10 4:45:18', N'Андрей', N'8-068-116-17-06', N'Спальный', N'Новая', 89, 1, N'Кировский', N'Школьная', 22, 3, 380, N'cash', 679
GO
INSERT INTO list(date, order_id, status) VALUES(N'2244-4-10 4:51:30', 679, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2244-4-10 5:23:48', 679, N'done')
GO
EXECUTE add_order N'2570-26-1 1:23:52', N'Иван', N'8-715-173-28-99', N'Запорожский', N'Крестовая', 5, 10, N'Васильевский', N'Набережная', 85, 2, 51, N'cashless', 680
GO
INSERT INTO list(date, order_id, status) VALUES(N'2570-26-1 1:30:19', 680, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2570-26-1 2:12:47', 680, N'done')
GO
EXECUTE add_order N'2654-26-4 4:50:7', N'Владислав', N'8-819-995-04-62', N'Кировский', N'9мая', 89, 7, N'Приморский', N'Мира', 68, 10, 500, N'cashless', 681
GO
INSERT INTO list(date, order_id, status) VALUES(N'2654-26-4 4:56:36', 681, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2654-26-4 5:30:30', 681, N'done')
GO
EXECUTE add_order N'2859-12-6 8:30:6', N'Евгений', N'8-137-796-64-81', N'Подмостовский', N'Серова', 16, 6, N'Подмостовский', N'9мая', 75, 4, 302, N'cash', 682
GO
INSERT INTO list(date, order_id, status) VALUES(N'2859-12-6 8:33:57', 682, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2859-12-6 9:3:5', 682, N'done')
GO
EXECUTE add_order N'2488-6-8 3:59:57', N'Николай', N'8-880-143-04-48', N'Приморский', N'Лесная', 83, 5, N'Кировский', N'Молодежная', 74, 10, 216, N'cashless', 683
GO
INSERT INTO list(date, order_id, status) VALUES(N'2488-6-8 4:4:41', 683, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2488-6-8 4:26:47', 683, N'done')
GO
EXECUTE add_order N'2021-9-3 8:54:12', N'Андрей', N'8-757-955-68-75', N'Спальный', N'Балтийская', 62, 4, N'Центральный', N'Мира', 73, 10, 265, N'cash', 684
GO
INSERT INTO list(date, order_id, status) VALUES(N'2021-9-3 9:40:58', 684, N'canceled')
GO
EXECUTE add_order N'2454-24-4 0:13:57', N'Вячеслав', N'8-798-960-62-37', N'Приморский', N'Ботаническая', 85, 6, N'Васильевский', N'9мая', 65, 8, 210, N'cashless', 685
GO
INSERT INTO list(date, order_id, status) VALUES(N'2454-24-4 1:7:57', 685, N'canceled')
GO
EXECUTE add_order N'2180-4-3 5:59:10', N'Евгений', N'8-359-250-90-08', N'Рыбный', N'Центральная', 35, 7, N'Невский', N'Молодежная', 80, 6, 257, N'cashless', 686
GO
INSERT INTO list(date, order_id, status) VALUES(N'2180-4-3 6:2:46', 686, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2180-4-3 6:40:59', 686, N'done')
GO
EXECUTE add_order N'2673-4-4 1:38:38', N'Евгений', N'8-413-865-03-86', N'Невский', N'Садовая', 30, 4, N'Кировский', N'Ленина', 69, 8, 297, N'cash', 687
GO
INSERT INTO list(date, order_id, status) VALUES(N'2673-4-4 1:42:55', 687, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2673-4-4 2:29:46', 687, N'done')
GO
EXECUTE add_order N'2673-6-10 8:17:17', N'Дмитрий', N'8-736-310-78-70', N'Центральный', N'Садовая', 92, 9, N'Рыбный', N'Школьная', 30, 7, 514, N'cash', 688
GO
INSERT INTO list(date, order_id, status) VALUES(N'2673-6-10 8:21:2', 688, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2673-6-10 8:41:2', 688, N'done')
GO
EXECUTE add_order N'2114-4-2 5:17:32', N'Михаил', N'8-663-830-77-45', N'Спальный', N'Ленина', 48, 1, N'Запорожский', N'Крестовая', 62, 5, 271, N'cash', 689
GO
INSERT INTO list(date, order_id, status) VALUES(N'2114-4-2 5:22:11', 689, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2114-4-2 6:7:32', 689, N'done')
GO
EXECUTE add_order N'2352-1-1 4:14:49', N'Вячеслав', N'8-219-546-77-46', N'Кировский', N'Крестовая', 42, 10, N'Невский', N'Новая', 93, 2, 95, N'cash', 690
GO
INSERT INTO list(date, order_id, status) VALUES(N'2352-1-1 4:19:6', 690, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2352-1-1 4:33:47', 690, N'done')
GO
EXECUTE add_order N'2136-7-3 1:22:30', N'Михаил', N'8-972-436-88-44', N'Васильевский', N'9мая', 90, 8, N'Подмостовский', N'Школьная', 48, 8, 51, N'cash', 691
GO
INSERT INTO list(date, order_id, status) VALUES(N'2136-7-3 1:25:53', 691, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2136-7-3 1:52:25', 691, N'done')
GO
EXECUTE add_order N'2625-2-12 1:26:4', N'Пётр', N'8-612-323-02-75', N'Кировский', N'Новая', 35, 10, N'Васильевский', N'Молодежная', 89, 1, 96, N'cashless', 692
GO
INSERT INTO list(date, order_id, status) VALUES(N'2625-2-12 1:32:4', 692, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2625-2-12 2:10:30', 692, N'done')
GO
EXECUTE add_order N'2751-15-5 8:8:33', N'Вячеслав', N'8-309-079-67-93', N'Невский', N'Новая', 11, 5, N'Кабельный', N'Новая', 99, 6, 116, N'cash', 693
GO
INSERT INTO list(date, order_id, status) VALUES(N'2751-15-5 8:14:17', 693, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2751-15-5 8:38:33', 693, N'done')
GO
EXECUTE add_order N'2938-20-10 8:8:55', N'Иван', N'8-324-401-15-50', N'Кабельный', N'Центральная', 32, 8, N'Спальный', N'Новая', 26, 7, 72, N'cashless', 694
GO
INSERT INTO list(date, order_id, status) VALUES(N'2938-20-10 8:16:33', 694, N'canceled')
GO
EXECUTE add_order N'2851-7-8 4:28:54', N'Евгений', N'8-083-632-63-45', N'Васильевский', N'Серова', 49, 7, N'Невский', N'9мая', 45, 3, 169, N'cashless', 695
GO
INSERT INTO list(date, order_id, status) VALUES(N'2851-7-8 4:32:15', 695, N'canceled')
GO
EXECUTE add_order N'2149-14-8 3:14:19', N'Николай', N'8-165-194-35-47', N'Спальный', N'Ботаническая', 27, 8, N'Центральный', N'Крестовая', 98, 5, 266, N'cashless', 696
GO
INSERT INTO list(date, order_id, status) VALUES(N'2149-14-8 3:20:0', 696, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2149-14-8 3:58:29', 696, N'done')
GO
EXECUTE add_order N'2161-20-1 8:41:27', N'Вячеслав', N'8-820-603-31-97', N'Приморский', N'Советская', 89, 2, N'Запорожский', N'Лесная', 41, 2, 51, N'cash', 697
GO
INSERT INTO list(date, order_id, status) VALUES(N'2161-20-1 9:12:53', 697, N'canceled')
GO
EXECUTE add_order N'2262-9-4 8:26:31', N'Владислав', N'8-979-850-24-64', N'Центральный', N'Крестовая', 71, 6, N'Приморский', N'Ленина', 71, 10, 164, N'cashless', 698
GO
INSERT INTO list(date, order_id, status) VALUES(N'2262-9-4 9:1:32', 698, N'canceled')
GO
EXECUTE add_order N'2535-13-1 1:25:53', N'Владимир', N'8-742-926-66-58', N'Кабельный', N'Советская', 14, 2, N'Васильевский', N'Школьная', 42, 2, 186, N'cashless', 699
GO
INSERT INTO list(date, order_id, status) VALUES(N'2535-13-1 1:35:58', 699, N'canceled')
GO
EXECUTE add_order N'2608-7-4 5:29:53', N'Сергей', N'8-653-733-80-33', N'Центральный', N'Мира', 71, 7, N'Рыбный', N'Серова', 28, 4, 471, N'cash', 700
GO
INSERT INTO list(date, order_id, status) VALUES(N'2608-7-4 5:33:54', 700, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2608-7-4 6:16:20', 700, N'done')
GO
EXECUTE add_order N'2970-27-5 2:1:20', N'Николай', N'8-669-260-59-72', N'Кабельный', N'Мира', 99, 3, N'Приморский', N'Садовая', 8, 1, 268, N'cashless', 701
GO
INSERT INTO list(date, order_id, status) VALUES(N'2970-27-5 2:5:17', 701, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2970-27-5 2:58:9', 701, N'done')
GO
EXECUTE add_order N'2884-17-3 7:43:13', N'Вячеслав', N'8-895-767-89-23', N'Запорожский', N'Молодежная', 68, 1, N'Запорожский', N'Серова', 32, 6, 114, N'cash', 702
GO
INSERT INTO list(date, order_id, status) VALUES(N'2884-17-3 7:48:0', 702, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2884-17-3 8:22:22', 702, N'done')
GO
EXECUTE add_order N'2625-11-12 4:7:17', N'Александр', N'8-112-338-88-45', N'Кировский', N'9мая', 16, 6, N'Невский', N'Лесная', 81, 4, 355, N'cash', 703
GO
INSERT INTO list(date, order_id, status) VALUES(N'2625-11-12 4:11:16', 703, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2625-11-12 4:58:10', 703, N'done')
GO
EXECUTE add_order N'2948-27-5 7:3:6', N'Николай', N'8-936-218-03-76', N'Спальный', N'Набережная', 59, 10, N'Приморский', N'Балтийская', 66, 1, 99, N'cashless', 704
GO
INSERT INTO list(date, order_id, status) VALUES(N'2948-27-5 7:8:17', 704, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2948-27-5 7:16:52', 704, N'done')
GO
EXECUTE add_order N'2609-1-12 3:41:19', N'Сергей', N'8-648-180-84-66', N'Кировский', N'Серова', 57, 5, N'Подмостовский', N'Центральная', 45, 8, 351, N'cashless', 705
GO
INSERT INTO list(date, order_id, status) VALUES(N'2609-1-12 3:45:22', 705, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2609-1-12 4:9:54', 705, N'done')
GO
EXECUTE add_order N'2153-2-9 7:31:51', N'Егор', N'8-107-742-00-16', N'Невский', N'Мира', 14, 1, N'Рыбный', N'Ботаническая', 60, 1, 109, N'cashless', 706
GO
INSERT INTO list(date, order_id, status) VALUES(N'2153-2-9 7:37:0', 706, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2153-2-9 7:51:47', 706, N'done')
GO
EXECUTE add_order N'2025-9-11 6:51:55', N'Андрей', N'8-123-665-02-11', N'Центральный', N'9мая', 99, 7, N'Запорожский', N'Балтийская', 13, 1, 514, N'cash', 707
GO
INSERT INTO list(date, order_id, status) VALUES(N'2025-9-11 7:17:39', 707, N'canceled')
GO
EXECUTE add_order N'2225-23-12 4:30:48', N'Иван', N'8-635-441-70-17', N'Спальный', N'Школьная', 10, 4, N'Спальный', N'Новая', 57, 6, 256, N'cashless', 708
GO
INSERT INTO list(date, order_id, status) VALUES(N'2225-23-12 4:34:59', 708, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2225-23-12 5:20:7', 708, N'done')
GO
EXECUTE add_order N'2285-7-9 5:32:27', N'Владимир', N'8-467-702-01-46', N'Запорожский', N'Крестовая', 8, 7, N'Кабельный', N'Ленина', 64, 5, 276, N'cashless', 709
GO
INSERT INTO list(date, order_id, status) VALUES(N'2285-7-9 5:46:21', 709, N'canceled')
GO
EXECUTE add_order N'2114-6-3 8:57:25', N'Джек', N'8-854-492-51-05', N'Приморский', N'Мира', 11, 5, N'Кировский', N'Серова', 82, 6, 399, N'cashless', 710
GO
INSERT INTO list(date, order_id, status) VALUES(N'2114-6-3 9:3:23', 710, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2114-6-3 9:6:55', 710, N'done')
GO
EXECUTE add_order N'2594-5-3 2:24:56', N'Дмитрий', N'8-103-922-00-64', N'Рыбный', N'9мая', 77, 2, N'Подмостовский', N'Садовая', 77, 1, 544, N'cash', 711
GO
INSERT INTO list(date, order_id, status) VALUES(N'2594-5-3 2:49:2', 711, N'canceled')
GO
EXECUTE add_order N'2064-1-3 3:41:1', N'Алексей', N'8-956-358-29-52', N'Приморский', N'Мира', 75, 4, N'Спальный', N'Крестовая', 48, 8, 81, N'cashless', 712
GO
INSERT INTO list(date, order_id, status) VALUES(N'2064-1-3 3:46:57', 712, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2064-1-3 4:19:49', 712, N'done')
GO
EXECUTE add_order N'2526-26-9 1:54:53', N'Евгений', N'8-407-418-76-28', N'Запорожский', N'Ленина', 59, 1, N'Спальный', N'Лесная', 46, 8, 549, N'cashless', 713
GO
INSERT INTO list(date, order_id, status) VALUES(N'2526-26-9 1:59:7', 713, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2526-26-9 2:25:19', 713, N'done')
GO
EXECUTE add_order N'2517-23-4 6:59:27', N'Андрей', N'8-369-634-36-03', N'Васильевский', N'Лесная', 23, 5, N'Васильевский', N'Мира', 7, 1, 481, N'cash', 714
GO
INSERT INTO list(date, order_id, status) VALUES(N'2517-23-4 7:4:29', 714, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2517-23-4 7:23:43', 714, N'done')
GO
EXECUTE add_order N'2828-22-10 7:29:45', N'Алексей', N'8-381-941-26-63', N'Спальный', N'Садовая', 20, 4, N'Кировский', N'9мая', 50, 4, 115, N'cashless', 715
GO
INSERT INTO list(date, order_id, status) VALUES(N'2828-22-10 7:36:17', 715, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2828-22-10 8:28:21', 715, N'done')
GO
EXECUTE add_order N'2405-3-10 7:19:45', N'Виталий', N'8-939-110-48-55', N'Кабельный', N'Мира', 46, 4, N'Невский', N'Советская', 91, 7, 228, N'cashless', 716
GO
INSERT INTO list(date, order_id, status) VALUES(N'2405-3-10 7:25:9', 716, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2405-3-10 7:43:51', 716, N'done')
GO
EXECUTE add_order N'2991-17-8 7:37:52', N'Егор', N'8-443-513-12-24', N'Подмостовский', N'Лесная', 21, 3, N'Приморский', N'Лесная', 31, 3, 478, N'cashless', 717
GO
INSERT INTO list(date, order_id, status) VALUES(N'2991-17-8 7:44:25', 717, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2991-17-8 8:26:53', 717, N'done')
GO
EXECUTE add_order N'2138-8-8 2:10:14', N'Никита', N'8-301-097-96-79', N'Васильевский', N'Серова', 43, 7, N'Подмостовский', N'Балтийская', 42, 1, 375, N'cashless', 718
GO
INSERT INTO list(date, order_id, status) VALUES(N'2138-8-8 2:14:43', 718, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2138-8-8 2:18:31', 718, N'done')
GO
EXECUTE add_order N'2752-9-11 8:39:28', N'Сергей', N'8-988-391-04-62', N'Рыбный', N'Набережная', 69, 5, N'Рыбный', N'Ленина', 21, 6, 53, N'cash', 719
GO
INSERT INTO list(date, order_id, status) VALUES(N'2752-9-11 8:44:43', 719, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2752-9-11 9:18:24', 719, N'done')
GO
EXECUTE add_order N'2842-20-3 8:16:21', N'Евгений', N'8-134-647-26-65', N'Запорожский', N'Садовая', 36, 10, N'Центральный', N'Советская', 70, 9, 155, N'cashless', 720
GO
INSERT INTO list(date, order_id, status) VALUES(N'2842-20-3 8:21:15', 720, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2842-20-3 8:46:38', 720, N'done')
GO
EXECUTE add_order N'2480-28-3 7:1:28', N'Евгений', N'8-456-690-65-19', N'Запорожский', N'Центральная', 34, 5, N'Центральный', N'Лесная', 61, 1, 82, N'cashless', 721
GO
INSERT INTO list(date, order_id, status) VALUES(N'2480-28-3 7:56:37', 721, N'canceled')
GO
EXECUTE add_order N'2851-19-11 7:52:48', N'Михаил', N'8-364-842-23-84', N'Центральный', N'9мая', 34, 10, N'Запорожский', N'Ленина', 48, 3, 470, N'cash', 722
GO
INSERT INTO list(date, order_id, status) VALUES(N'2851-19-11 7:57:4', 722, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2851-19-11 8:34:39', 722, N'done')
GO
EXECUTE add_order N'2861-25-8 1:16:41', N'Михаил', N'8-827-826-58-99', N'Васильевский', N'Набережная', 17, 9, N'Запорожский', N'9мая', 68, 9, 256, N'cash', 723
GO
INSERT INTO list(date, order_id, status) VALUES(N'2861-25-8 1:21:15', 723, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2861-25-8 1:59:16', 723, N'done')
GO
EXECUTE add_order N'2135-23-7 7:2:45', N'Кирилл', N'8-608-129-87-76', N'Кабельный', N'Советская', 37, 9, N'Подмостовский', N'Набережная', 18, 9, 299, N'cashless', 724
GO
INSERT INTO list(date, order_id, status) VALUES(N'2135-23-7 7:54:58', 724, N'canceled')
GO
EXECUTE add_order N'2693-11-6 3:20:37', N'Владислав', N'8-586-361-96-27', N'Приморский', N'Ленина', 44, 5, N'Подмостовский', N'Центральная', 71, 9, 452, N'cashless', 725
GO
INSERT INTO list(date, order_id, status) VALUES(N'2693-11-6 3:42:8', 725, N'canceled')
GO
EXECUTE add_order N'2206-4-10 0:1:30', N'Николай', N'8-742-565-85-50', N'Рыбный', N'Балтийская', 92, 1, N'Невский', N'Школьная', 85, 5, 377, N'cashless', 726
GO
INSERT INTO list(date, order_id, status) VALUES(N'2206-4-10 0:6:46', 726, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2206-4-10 0:49:11', 726, N'done')
GO
EXECUTE add_order N'2866-23-5 7:9:59', N'Джек', N'8-473-170-29-38', N'Запорожский', N'Советская', 40, 5, N'Кировский', N'Ленина', 76, 7, 403, N'cashless', 727
GO
INSERT INTO list(date, order_id, status) VALUES(N'2866-23-5 7:15:22', 727, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2866-23-5 7:21:27', 727, N'done')
GO
EXECUTE add_order N'2340-28-4 7:8:41', N'Владислав', N'8-019-699-97-93', N'Центральный', N'Балтийская', 74, 1, N'Рыбный', N'Мира', 67, 1, 133, N'cash', 728
GO
INSERT INTO list(date, order_id, status) VALUES(N'2340-28-4 7:13:25', 728, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2340-28-4 7:46:50', 728, N'done')
GO
EXECUTE add_order N'2642-28-5 6:17:15', N'Никита', N'8-445-918-51-18', N'Невский', N'Молодежная', 80, 1, N'Подмостовский', N'Центральная', 23, 7, 392, N'cash', 729
GO
INSERT INTO list(date, order_id, status) VALUES(N'2642-28-5 6:20:55', 729, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2642-28-5 7:0:14', 729, N'done')
GO
EXECUTE add_order N'2324-4-4 7:17:13', N'Антон', N'8-396-863-06-26', N'Подмостовский', N'Ленина', 70, 7, N'Кировский', N'Ленина', 37, 7, 427, N'cash', 730
GO
INSERT INTO list(date, order_id, status) VALUES(N'2324-4-4 7:21:59', 730, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2324-4-4 7:46:25', 730, N'done')
GO
EXECUTE add_order N'2078-16-2 6:5:3', N'Виталий', N'8-331-347-60-50', N'Подмостовский', N'Молодежная', 78, 1, N'Подмостовский', N'Молодежная', 60, 6, 383, N'cashless', 731
GO
INSERT INTO list(date, order_id, status) VALUES(N'2078-16-2 6:10:38', 731, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2078-16-2 6:30:33', 731, N'done')
GO
EXECUTE add_order N'2767-10-7 4:24:49', N'Иван', N'8-739-086-54-51', N'Рыбный', N'Серова', 40, 5, N'Рыбный', N'Лесная', 66, 3, 290, N'cashless', 732
GO
INSERT INTO list(date, order_id, status) VALUES(N'2767-10-7 4:31:27', 732, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2767-10-7 4:42:0', 732, N'done')
GO
EXECUTE add_order N'2377-22-10 2:27:22', N'Алексей', N'8-962-123-53-43', N'Центральный', N'Крестовая', 78, 2, N'Приморский', N'Молодежная', 59, 4, 347, N'cashless', 733
GO
INSERT INTO list(date, order_id, status) VALUES(N'2377-22-10 2:32:28', 733, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2377-22-10 3:18:14', 733, N'done')
GO
EXECUTE add_order N'2874-27-12 4:18:32', N'Егор', N'8-606-626-02-93', N'Кабельный', N'Ботаническая', 12, 3, N'Невский', N'9мая', 30, 7, 65, N'cashless', 734
GO
INSERT INTO list(date, order_id, status) VALUES(N'2874-27-12 4:24:28', 734, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2874-27-12 4:56:2', 734, N'done')
GO
EXECUTE add_order N'2555-4-9 0:43:3', N'Сергей', N'8-798-139-57-09', N'Рыбный', N'Молодежная', 11, 3, N'Подмостовский', N'Ботаническая', 90, 8, 313, N'cash', 735
GO
INSERT INTO list(date, order_id, status) VALUES(N'2555-4-9 0:49:35', 735, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2555-4-9 1:9:55', 735, N'done')
GO
EXECUTE add_order N'2488-23-1 7:17:33', N'Джек', N'8-033-779-43-15', N'Центральный', N'Центральная', 89, 8, N'Рыбный', N'Советская', 28, 3, 465, N'cashless', 736
GO
INSERT INTO list(date, order_id, status) VALUES(N'2488-23-1 7:24:4', 736, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2488-23-1 8:9:28', 736, N'done')
GO
EXECUTE add_order N'2632-26-6 4:19:34', N'Джек', N'8-779-706-78-08', N'Запорожский', N'Серова', 60, 2, N'Рыбный', N'Молодежная', 96, 9, 162, N'cashless', 737
GO
INSERT INTO list(date, order_id, status) VALUES(N'2632-26-6 4:25:18', 737, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2632-26-6 4:42:59', 737, N'done')
GO
EXECUTE add_order N'2071-12-9 2:4:0', N'Сергей', N'8-285-823-55-29', N'Приморский', N'Центральная', 14, 6, N'Центральный', N'Ленина', 22, 7, 452, N'cash', 738
GO
INSERT INTO list(date, order_id, status) VALUES(N'2071-12-9 2:9:43', 738, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2071-12-9 2:40:38', 738, N'done')
GO
EXECUTE add_order N'2944-22-10 4:44:57', N'Андрей', N'8-645-708-75-25', N'Невский', N'Ботаническая', 24, 7, N'Рыбный', N'Школьная', 97, 7, 300, N'cashless', 739
GO
INSERT INTO list(date, order_id, status) VALUES(N'2944-22-10 4:50:53', 739, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2944-22-10 5:10:32', 739, N'done')
GO
EXECUTE add_order N'2703-6-9 6:12:56', N'Антон', N'8-184-637-94-05', N'Подмостовский', N'Лесная', 4, 3, N'Кировский', N'Мира', 90, 3, 257, N'cash', 740
GO
INSERT INTO list(date, order_id, status) VALUES(N'2703-6-9 6:18:48', 740, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2703-6-9 6:43:30', 740, N'done')
GO
EXECUTE add_order N'2991-11-6 8:52:42', N'Евгений', N'8-916-363-51-76', N'Запорожский', N'Советская', 97, 9, N'Кировский', N'Лесная', 55, 7, 211, N'cashless', 741
GO
INSERT INTO list(date, order_id, status) VALUES(N'2991-11-6 8:57:18', 741, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2991-11-6 9:45:29', 741, N'done')
GO
EXECUTE add_order N'2728-18-1 7:42:53', N'Михаил', N'8-083-044-09-05', N'Рыбный', N'Балтийская', 89, 1, N'Рыбный', N'Новая', 61, 6, 349, N'cashless', 742
GO
INSERT INTO list(date, order_id, status) VALUES(N'2728-18-1 7:48:40', 742, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2728-18-1 8:3:13', 742, N'done')
GO
EXECUTE add_order N'2781-25-10 3:51:45', N'Вячеслав', N'8-574-693-35-07', N'Рыбный', N'Мира', 30, 10, N'Кабельный', N'Лесная', 32, 5, 326, N'cash', 743
GO
INSERT INTO list(date, order_id, status) VALUES(N'2781-25-10 3:55:16', 743, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2781-25-10 3:59:43', 743, N'done')
GO
EXECUTE add_order N'2476-6-6 7:42:22', N'Никита', N'8-432-980-87-93', N'Васильевский', N'Мира', 85, 5, N'Запорожский', N'Серова', 12, 8, 210, N'cashless', 744
GO
INSERT INTO list(date, order_id, status) VALUES(N'2476-6-6 8:3:41', 744, N'canceled')
GO
EXECUTE add_order N'2781-15-2 8:36:0', N'Егор', N'8-664-111-57-08', N'Васильевский', N'Советская', 99, 1, N'Запорожский', N'Молодежная', 70, 6, 173, N'cashless', 745
GO
INSERT INTO list(date, order_id, status) VALUES(N'2781-15-2 8:39:46', 745, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2781-15-2 9:9:37', 745, N'done')
GO
EXECUTE add_order N'2528-28-4 3:16:52', N'Михаил', N'8-874-968-59-24', N'Запорожский', N'Центральная', 47, 8, N'Невский', N'Центральная', 45, 1, 421, N'cashless', 746
GO
INSERT INTO list(date, order_id, status) VALUES(N'2528-28-4 3:22:37', 746, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2528-28-4 3:28:15', 746, N'done')
GO
EXECUTE add_order N'2213-28-1 8:13:38', N'Кирилл', N'8-620-950-14-78', N'Васильевский', N'Молодежная', 80, 4, N'Центральный', N'Ленина', 18, 4, 451, N'cashless', 747
GO
INSERT INTO list(date, order_id, status) VALUES(N'2213-28-1 8:18:0', 747, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2213-28-1 8:40:19', 747, N'done')
GO
EXECUTE add_order N'2223-19-1 3:45:12', N'Иван', N'8-939-498-14-06', N'Рыбный', N'9мая', 30, 6, N'Подмостовский', N'Мира', 62, 1, 491, N'cash', 748
GO
INSERT INTO list(date, order_id, status) VALUES(N'2223-19-1 3:54:44', 748, N'canceled')
GO
EXECUTE add_order N'2882-25-7 4:20:45', N'Егор', N'8-528-946-56-81', N'Невский', N'Ботаническая', 78, 7, N'Рыбный', N'Лесная', 86, 1, 114, N'cashless', 749
GO
INSERT INTO list(date, order_id, status) VALUES(N'2882-25-7 4:28:39', 749, N'canceled')
GO
EXECUTE add_order N'2002-19-7 8:6:56', N'Тимофей', N'8-652-575-48-67', N'Кировский', N'Лесная', 41, 3, N'Приморский', N'9мая', 80, 2, 78, N'cash', 750
GO
INSERT INTO list(date, order_id, status) VALUES(N'2002-19-7 8:38:15', 750, N'canceled')
GO
EXECUTE add_order N'2375-18-10 0:49:36', N'Никита', N'8-620-439-14-55', N'Запорожский', N'Ленина', 93, 4, N'Невский', N'Набережная', 71, 2, 500, N'cash', 751
GO
INSERT INTO list(date, order_id, status) VALUES(N'2375-18-10 0:53:33', 751, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2375-18-10 0:59:5', 751, N'done')
GO
EXECUTE add_order N'2758-12-5 0:35:15', N'Тимофей', N'8-836-910-10-73', N'Запорожский', N'Крестовая', 74, 6, N'Центральный', N'Молодежная', 12, 5, 61, N'cash', 752
GO
INSERT INTO list(date, order_id, status) VALUES(N'2758-12-5 0:41:10', 752, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2758-12-5 0:46:58', 752, N'done')
GO
EXECUTE add_order N'2033-27-9 1:26:18', N'Джек', N'8-345-330-37-68', N'Кировский', N'Крестовая', 58, 7, N'Запорожский', N'Серова', 14, 5, 230, N'cashless', 753
GO
INSERT INTO list(date, order_id, status) VALUES(N'2033-27-9 1:31:52', 753, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2033-27-9 1:46:45', 753, N'done')
GO
EXECUTE add_order N'2945-26-4 1:10:33', N'Иван', N'8-646-183-73-46', N'Спальный', N'9мая', 50, 8, N'Запорожский', N'Молодежная', 62, 4, 494, N'cash', 754
GO
INSERT INTO list(date, order_id, status) VALUES(N'2945-26-4 1:16:27', 754, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2945-26-4 1:31:18', 754, N'done')
GO
EXECUTE add_order N'2999-12-10 8:49:48', N'Никита', N'8-935-902-03-60', N'Центральный', N'Садовая', 59, 5, N'Невский', N'Центральная', 77, 9, 155, N'cash', 755
GO
INSERT INTO list(date, order_id, status) VALUES(N'2999-12-10 8:54:18', 755, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2999-12-10 9:1:38', 755, N'done')
GO
EXECUTE add_order N'2196-7-11 7:10:0', N'Алексей', N'8-755-441-58-63', N'Невский', N'Центральная', 7, 10, N'Кабельный', N'Центральная', 84, 6, 245, N'cashless', 756
GO
INSERT INTO list(date, order_id, status) VALUES(N'2196-7-11 7:22:11', 756, N'canceled')
GO
EXECUTE add_order N'2097-2-12 6:12:13', N'Владимир', N'8-234-276-39-83', N'Центральный', N'Новая', 51, 1, N'Рыбный', N'Молодежная', 52, 5, 270, N'cash', 757
GO
INSERT INTO list(date, order_id, status) VALUES(N'2097-2-12 6:54:2', 757, N'canceled')
GO
EXECUTE add_order N'2512-6-2 8:10:9', N'Михаил', N'8-763-450-55-87', N'Невский', N'Балтийская', 57, 9, N'Центральный', N'Центральная', 82, 2, 122, N'cash', 758
GO
INSERT INTO list(date, order_id, status) VALUES(N'2512-6-2 8:15:46', 758, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2512-6-2 8:45:33', 758, N'done')
GO
EXECUTE add_order N'2537-22-8 1:56:56', N'Никита', N'8-180-683-24-15', N'Запорожский', N'Садовая', 86, 10, N'Центральный', N'Лесная', 76, 9, 369, N'cashless', 759
GO
INSERT INTO list(date, order_id, status) VALUES(N'2537-22-8 2:3:20', 759, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2537-22-8 2:7:2', 759, N'done')
GO
EXECUTE add_order N'2000-7-9 1:24:1', N'Антон', N'8-196-117-67-80', N'Приморский', N'Центральная', 66, 8, N'Кабельный', N'Крестовая', 74, 7, 473, N'cash', 760
GO
INSERT INTO list(date, order_id, status) VALUES(N'2000-7-9 1:29:8', 760, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2000-7-9 1:34:11', 760, N'done')
GO
EXECUTE add_order N'2411-6-3 5:7:51', N'Александр', N'8-071-884-00-56', N'Приморский', N'Советская', 53, 8, N'Приморский', N'Ботаническая', 90, 1, 259, N'cash', 761
GO
INSERT INTO list(date, order_id, status) VALUES(N'2411-6-3 5:14:14', 761, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2411-6-3 6:4:25', 761, N'done')
GO
EXECUTE add_order N'2550-26-3 4:27:50', N'Михаил', N'8-311-247-00-42', N'Центральный', N'Набережная', 99, 2, N'Кировский', N'Мира', 47, 5, 121, N'cashless', 762
GO
INSERT INTO list(date, order_id, status) VALUES(N'2550-26-3 4:32:15', 762, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2550-26-3 5:22:25', 762, N'done')
GO
EXECUTE add_order N'2587-6-2 0:4:45', N'Владислав', N'8-874-377-81-33', N'Рыбный', N'Мира', 47, 3, N'Спальный', N'Серова', 44, 8, 505, N'cashless', 763
GO
INSERT INTO list(date, order_id, status) VALUES(N'2587-6-2 0:9:44', 763, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2587-6-2 0:46:44', 763, N'done')
GO
EXECUTE add_order N'2664-1-3 2:2:12', N'Тимофей', N'8-362-269-91-88', N'Невский', N'Школьная', 94, 8, N'Приморский', N'Школьная', 88, 8, 411, N'cash', 764
GO
INSERT INTO list(date, order_id, status) VALUES(N'2664-1-3 2:8:15', 764, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2664-1-3 2:31:48', 764, N'done')
GO
EXECUTE add_order N'2313-4-3 2:38:57', N'Виталий', N'8-097-281-41-99', N'Васильевский', N'Школьная', 78, 10, N'Спальный', N'Ленина', 10, 7, 309, N'cashless', 765
GO
INSERT INTO list(date, order_id, status) VALUES(N'2313-4-3 3:1:45', 765, N'canceled')
GO
EXECUTE add_order N'2761-1-12 1:8:24', N'Джек', N'8-778-345-74-25', N'Подмостовский', N'Садовая', 77, 4, N'Приморский', N'Лесная', 5, 6, 462, N'cashless', 766
GO
INSERT INTO list(date, order_id, status) VALUES(N'2761-1-12 1:12:40', 766, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2761-1-12 1:37:49', 766, N'done')
GO
EXECUTE add_order N'2787-28-12 3:3:6', N'Антон', N'8-925-810-81-32', N'Запорожский', N'Советская', 43, 5, N'Подмостовский', N'Набережная', 35, 2, 156, N'cashless', 767
GO
INSERT INTO list(date, order_id, status) VALUES(N'2787-28-12 3:9:23', 767, N'canceled')
GO
EXECUTE add_order N'2554-24-4 5:3:2', N'Иван', N'8-394-730-76-58', N'Невский', N'Лесная', 48, 8, N'Приморский', N'Молодежная', 20, 1, 232, N'cashless', 768
GO
INSERT INTO list(date, order_id, status) VALUES(N'2554-24-4 5:26:43', 768, N'canceled')
GO
EXECUTE add_order N'2283-19-12 5:17:49', N'Евгений', N'8-789-600-00-73', N'Рыбный', N'Школьная', 62, 2, N'Рыбный', N'Лесная', 9, 4, 499, N'cashless', 769
GO
INSERT INTO list(date, order_id, status) VALUES(N'2283-19-12 5:22:56', 769, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2283-19-12 5:26:39', 769, N'done')
GO
EXECUTE add_order N'2215-11-12 6:40:57', N'Владимир', N'8-605-138-59-48', N'Центральный', N'Балтийская', 21, 8, N'Кабельный', N'Садовая', 29, 1, 426, N'cash', 770
GO
INSERT INTO list(date, order_id, status) VALUES(N'2215-11-12 6:44:52', 770, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2215-11-12 7:16:39', 770, N'done')
GO
EXECUTE add_order N'2605-10-6 0:47:9', N'Андрей', N'8-880-156-05-71', N'Запорожский', N'Серова', 20, 10, N'Рыбный', N'Лесная', 26, 1, 359, N'cash', 771
GO
INSERT INTO list(date, order_id, status) VALUES(N'2605-10-6 0:52:2', 771, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2605-10-6 1:21:45', 771, N'done')
GO
EXECUTE add_order N'2688-6-11 1:56:43', N'Николай', N'8-210-094-72-75', N'Приморский', N'Садовая', 2, 7, N'Подмостовский', N'Лесная', 75, 7, 153, N'cashless', 772
GO
INSERT INTO list(date, order_id, status) VALUES(N'2688-6-11 2:2:22', 772, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2688-6-11 2:52:15', 772, N'done')
GO
EXECUTE add_order N'2262-22-8 2:10:22', N'Александр', N'8-597-439-80-73', N'Запорожский', N'Серова', 75, 6, N'Подмостовский', N'Балтийская', 79, 1, 447, N'cashless', 773
GO
INSERT INTO list(date, order_id, status) VALUES(N'2262-22-8 2:15:36', 773, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2262-22-8 2:24:18', 773, N'done')
GO
EXECUTE add_order N'2322-8-8 8:54:20', N'Никита', N'8-954-822-06-93', N'Приморский', N'Садовая', 95, 9, N'Рыбный', N'Мира', 26, 4, 58, N'cash', 774
GO
INSERT INTO list(date, order_id, status) VALUES(N'2322-8-8 9:29:22', 774, N'canceled')
GO
EXECUTE add_order N'2611-25-2 0:47:58', N'Владислав', N'8-184-019-96-71', N'Приморский', N'Лесная', 58, 1, N'Подмостовский', N'Новая', 72, 10, 156, N'cashless', 775
GO
INSERT INTO list(date, order_id, status) VALUES(N'2611-25-2 1:27:57', 775, N'canceled')
GO
EXECUTE add_order N'2962-7-1 4:27:30', N'Михаил', N'8-005-053-52-34', N'Подмостовский', N'Молодежная', 89, 9, N'Рыбный', N'Лесная', 54, 5, 180, N'cash', 776
GO
INSERT INTO list(date, order_id, status) VALUES(N'2962-7-1 4:54:55', 776, N'canceled')
GO
EXECUTE add_order N'2603-20-3 7:34:32', N'Пётр', N'8-199-893-06-13', N'Кабельный', N'Мира', 91, 1, N'Спальный', N'Серова', 52, 6, 520, N'cashless', 777
GO
INSERT INTO list(date, order_id, status) VALUES(N'2603-20-3 7:37:57', 777, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2603-20-3 7:57:52', 777, N'done')
GO
EXECUTE add_order N'2219-3-2 4:49:33', N'Николай', N'8-189-956-61-82', N'Рыбный', N'Центральная', 82, 6, N'Центральный', N'Ленина', 27, 1, 318, N'cash', 778
GO
INSERT INTO list(date, order_id, status) VALUES(N'2219-3-2 4:53:25', 778, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2219-3-2 5:0:13', 778, N'done')
GO
EXECUTE add_order N'2633-5-2 1:18:17', N'Виталий', N'8-779-862-73-59', N'Приморский', N'Новая', 97, 2, N'Подмостовский', N'Ботаническая', 88, 1, 64, N'cashless', 779
GO
INSERT INTO list(date, order_id, status) VALUES(N'2633-5-2 1:23:55', 779, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2633-5-2 1:48:56', 779, N'done')
GO
EXECUTE add_order N'2918-10-6 4:31:53', N'Александр', N'8-445-417-19-19', N'Рыбный', N'Ленина', 16, 3, N'Васильевский', N'Серова', 70, 8, 249, N'cashless', 780
GO
INSERT INTO list(date, order_id, status) VALUES(N'2918-10-6 5:4:41', 780, N'canceled')
GO
EXECUTE add_order N'2836-15-7 2:0:25', N'Егор', N'8-189-151-03-37', N'Подмостовский', N'Ботаническая', 93, 10, N'Васильевский', N'Школьная', 15, 6, 106, N'cashless', 781
GO
INSERT INTO list(date, order_id, status) VALUES(N'2836-15-7 2:25:47', 781, N'canceled')
GO
EXECUTE add_order N'2454-13-7 6:46:5', N'Вячеслав', N'8-391-142-73-23', N'Кировский', N'Советская', 79, 10, N'Кировский', N'Балтийская', 48, 5, 203, N'cash', 782
GO
INSERT INTO list(date, order_id, status) VALUES(N'2454-13-7 6:50:37', 782, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2454-13-7 7:18:55', 782, N'done')
GO
EXECUTE add_order N'2221-7-9 6:38:39', N'Евгений', N'8-157-161-85-17', N'Запорожский', N'Молодежная', 21, 4, N'Васильевский', N'Школьная', 63, 10, 84, N'cash', 783
GO
INSERT INTO list(date, order_id, status) VALUES(N'2221-7-9 7:16:46', 783, N'canceled')
GO
EXECUTE add_order N'2979-2-4 2:33:8', N'Иван', N'8-366-362-42-87', N'Васильевский', N'9мая', 39, 7, N'Спальный', N'9мая', 47, 6, 165, N'cash', 784
GO
INSERT INTO list(date, order_id, status) VALUES(N'2979-2-4 2:38:55', 784, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2979-2-4 2:51:54', 784, N'done')
GO
EXECUTE add_order N'2630-16-8 5:22:21', N'Владислав', N'8-742-260-58-45', N'Подмостовский', N'Набережная', 92, 3, N'Невский', N'Мира', 43, 10, 111, N'cash', 785
GO
INSERT INTO list(date, order_id, status) VALUES(N'2630-16-8 5:26:59', 785, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2630-16-8 5:41:5', 785, N'done')
GO
EXECUTE add_order N'2926-14-2 2:1:46', N'Владислав', N'8-607-088-03-97', N'Рыбный', N'Садовая', 27, 2, N'Центральный', N'Советская', 52, 3, 159, N'cash', 786
GO
INSERT INTO list(date, order_id, status) VALUES(N'2926-14-2 2:6:41', 786, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2926-14-2 2:18:8', 786, N'done')
GO
EXECUTE add_order N'2689-14-4 5:21:27', N'Вячеслав', N'8-506-569-40-30', N'Васильевский', N'9мая', 25, 10, N'Подмостовский', N'Балтийская', 66, 8, 315, N'cashless', 787
GO
INSERT INTO list(date, order_id, status) VALUES(N'2689-14-4 5:24:51', 787, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2689-14-4 6:14:37', 787, N'done')
GO
EXECUTE add_order N'2126-20-10 2:50:55', N'Кирилл', N'8-800-466-59-17', N'Невский', N'Ленина', 48, 9, N'Васильевский', N'Лесная', 85, 6, 391, N'cashless', 788
GO
INSERT INTO list(date, order_id, status) VALUES(N'2126-20-10 2:56:32', 788, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2126-20-10 3:33:29', 788, N'done')
GO
EXECUTE add_order N'2463-14-7 5:4:43', N'Евгений', N'8-853-429-03-55', N'Невский', N'Школьная', 38, 6, N'Подмостовский', N'Крестовая', 34, 4, 252, N'cash', 789
GO
INSERT INTO list(date, order_id, status) VALUES(N'2463-14-7 5:9:59', 789, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2463-14-7 5:41:11', 789, N'done')
GO
EXECUTE add_order N'2529-25-1 2:12:14', N'Николай', N'8-318-681-07-01', N'Кабельный', N'Садовая', 79, 5, N'Подмостовский', N'Школьная', 43, 10, 187, N'cashless', 790
GO
INSERT INTO list(date, order_id, status) VALUES(N'2529-25-1 3:5:22', 790, N'canceled')
GO
EXECUTE add_order N'2881-14-10 4:52:3', N'Александр', N'8-858-657-88-09', N'Центральный', N'Новая', 60, 2, N'Подмостовский', N'Советская', 95, 4, 343, N'cash', 791
GO
INSERT INTO list(date, order_id, status) VALUES(N'2881-14-10 5:33:5', 791, N'canceled')
GO
EXECUTE add_order N'2967-2-9 6:50:31', N'Андрей', N'8-469-485-99-66', N'Запорожский', N'Лесная', 29, 1, N'Кировский', N'Мира', 9, 5, 118, N'cashless', 792
GO
INSERT INTO list(date, order_id, status) VALUES(N'2967-2-9 6:54:42', 792, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2967-2-9 7:9:59', 792, N'done')
GO
EXECUTE add_order N'2084-20-11 6:29:28', N'Егор', N'8-472-361-22-03', N'Запорожский', N'Набережная', 79, 2, N'Невский', N'Серова', 19, 6, 84, N'cashless', 793
GO
INSERT INTO list(date, order_id, status) VALUES(N'2084-20-11 6:34:6', 793, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2084-20-11 7:1:3', 793, N'done')
GO
EXECUTE add_order N'2240-18-7 5:1:58', N'Евгений', N'8-004-087-13-65', N'Невский', N'Ленина', 87, 5, N'Спальный', N'Новая', 93, 2, 479, N'cashless', 794
GO
INSERT INTO list(date, order_id, status) VALUES(N'2240-18-7 5:6:40', 794, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2240-18-7 5:50:17', 794, N'done')
GO
EXECUTE add_order N'2620-15-9 4:13:34', N'Антон', N'8-103-375-54-95', N'Приморский', N'Школьная', 6, 10, N'Невский', N'Молодежная', 84, 6, 293, N'cashless', 795
GO
INSERT INTO list(date, order_id, status) VALUES(N'2620-15-9 4:49:56', 795, N'canceled')
GO
EXECUTE add_order N'2616-18-7 4:8:47', N'Дмитрий', N'8-129-230-87-96', N'Спальный', N'Советская', 99, 4, N'Запорожский', N'Лесная', 62, 5, 430, N'cashless', 796
GO
INSERT INTO list(date, order_id, status) VALUES(N'2616-18-7 4:14:2', 796, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2616-18-7 4:38:45', 796, N'done')
GO
EXECUTE add_order N'2106-12-3 0:27:41', N'Егор', N'8-622-914-04-41', N'Подмостовский', N'Мира', 92, 3, N'Кабельный', N'Крестовая', 10, 5, 339, N'cashless', 797
GO
INSERT INTO list(date, order_id, status) VALUES(N'2106-12-3 1:11:24', 797, N'canceled')
GO
EXECUTE add_order N'2330-25-8 3:48:34', N'Михаил', N'8-013-279-12-26', N'Спальный', N'Советская', 13, 9, N'Невский', N'Центральная', 50, 9, 183, N'cash', 798
GO
INSERT INTO list(date, order_id, status) VALUES(N'2330-25-8 3:54:31', 798, N'canceled')
GO
EXECUTE add_order N'2888-3-5 7:6:24', N'Николай', N'8-835-043-64-14', N'Центральный', N'Ботаническая', 46, 2, N'Центральный', N'Лесная', 8, 2, 307, N'cash', 799
GO
INSERT INTO list(date, order_id, status) VALUES(N'2888-3-5 7:11:1', 799, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2888-3-5 7:42:45', 799, N'done')
GO
EXECUTE add_order N'2163-22-1 0:28:58', N'Виталий', N'8-233-721-70-22', N'Васильевский', N'Новая', 59, 1, N'Центральный', N'Ленина', 54, 4, 408, N'cash', 800
GO
INSERT INTO list(date, order_id, status) VALUES(N'2163-22-1 0:33:43', 800, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2163-22-1 1:26:52', 800, N'done')
GO
EXECUTE add_order N'2986-2-9 4:36:35', N'Виталий', N'8-191-955-50-50', N'Кабельный', N'Молодежная', 79, 9, N'Кабельный', N'Садовая', 30, 1, 168, N'cash', 801
GO
INSERT INTO list(date, order_id, status) VALUES(N'2986-2-9 4:40:54', 801, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2986-2-9 5:13:25', 801, N'done')
GO
EXECUTE add_order N'2298-14-11 1:2:12', N'Виталий', N'8-261-303-58-95', N'Рыбный', N'Центральная', 52, 8, N'Спальный', N'Лесная', 21, 8, 524, N'cashless', 802
GO
INSERT INTO list(date, order_id, status) VALUES(N'2298-14-11 1:7:22', 802, N'canceled')
GO
EXECUTE add_order N'2128-14-5 5:5:1', N'Сергей', N'8-056-451-92-38', N'Приморский', N'Школьная', 22, 7, N'Приморский', N'Школьная', 22, 3, 500, N'cashless', 803
GO
INSERT INTO list(date, order_id, status) VALUES(N'2128-14-5 5:40:58', 803, N'canceled')
GO
EXECUTE add_order N'2819-11-3 6:21:40', N'Егор', N'8-286-353-11-66', N'Рыбный', N'Школьная', 24, 4, N'Кировский', N'9мая', 2, 3, 445, N'cash', 804
GO
INSERT INTO list(date, order_id, status) VALUES(N'2819-11-3 6:26:51', 804, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2819-11-3 6:58:57', 804, N'done')
GO
EXECUTE add_order N'2821-21-12 7:21:41', N'Владислав', N'8-207-794-67-08', N'Невский', N'Балтийская', 92, 8, N'Приморский', N'Лесная', 81, 7, 72, N'cash', 805
GO
INSERT INTO list(date, order_id, status) VALUES(N'2821-21-12 7:26:46', 805, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2821-21-12 7:57:9', 805, N'done')
GO
EXECUTE add_order N'2020-15-9 5:23:50', N'Никита', N'8-320-527-28-62', N'Запорожский', N'Ботаническая', 52, 3, N'Невский', N'Мира', 13, 7, 400, N'cash', 806
GO
INSERT INTO list(date, order_id, status) VALUES(N'2020-15-9 5:29:55', 806, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2020-15-9 6:2:36', 806, N'done')
GO
EXECUTE add_order N'2141-7-6 4:49:32', N'Вячеслав', N'8-973-221-14-01', N'Запорожский', N'Центральная', 6, 1, N'Подмостовский', N'Крестовая', 14, 8, 177, N'cash', 807
GO
INSERT INTO list(date, order_id, status) VALUES(N'2141-7-6 5:14:36', 807, N'canceled')
GO
EXECUTE add_order N'2850-24-1 2:43:17', N'Иван', N'8-271-905-30-31', N'Кировский', N'9мая', 4, 8, N'Кабельный', N'Ленина', 49, 9, 403, N'cashless', 808
GO
INSERT INTO list(date, order_id, status) VALUES(N'2850-24-1 2:54:9', 808, N'canceled')
GO
EXECUTE add_order N'2186-11-12 8:14:1', N'Михаил', N'8-291-667-52-37', N'Васильевский', N'Ботаническая', 65, 6, N'Васильевский', N'Молодежная', 1, 3, 462, N'cash', 809
GO
INSERT INTO list(date, order_id, status) VALUES(N'2186-11-12 8:18:47', 809, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2186-11-12 9:4:16', 809, N'done')
GO
EXECUTE add_order N'2753-8-3 2:29:18', N'Алексей', N'8-699-647-27-42', N'Запорожский', N'Молодежная', 23, 2, N'Запорожский', N'Балтийская', 13, 8, 525, N'cash', 810
GO
INSERT INTO list(date, order_id, status) VALUES(N'2753-8-3 2:32:57', 810, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2753-8-3 3:18:1', 810, N'done')
GO
EXECUTE add_order N'2162-28-4 4:0:47', N'Кирилл', N'8-108-723-09-84', N'Приморский', N'Молодежная', 96, 7, N'Подмостовский', N'Садовая', 87, 2, 430, N'cash', 811
GO
INSERT INTO list(date, order_id, status) VALUES(N'2162-28-4 4:4:56', 811, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2162-28-4 4:28:25', 811, N'done')
GO
EXECUTE add_order N'2602-24-2 3:23:37', N'Вячеслав', N'8-230-432-16-87', N'Невский', N'9мая', 83, 4, N'Приморский', N'Лесная', 82, 1, 427, N'cashless', 812
GO
INSERT INTO list(date, order_id, status) VALUES(N'2602-24-2 3:28:54', 812, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2602-24-2 3:34:9', 812, N'done')
GO
EXECUTE add_order N'2437-15-11 6:15:6', N'Михаил', N'8-500-668-12-81', N'Рыбный', N'Ленина', 71, 2, N'Спальный', N'9мая', 54, 4, 391, N'cashless', 813
GO
INSERT INTO list(date, order_id, status) VALUES(N'2437-15-11 7:14:10', 813, N'canceled')
GO
EXECUTE add_order N'2382-9-3 1:54:32', N'Пётр', N'8-626-186-46-69', N'Подмостовский', N'Школьная', 8, 4, N'Кировский', N'Серова', 78, 2, 483, N'cash', 814
GO
INSERT INTO list(date, order_id, status) VALUES(N'2382-9-3 1:58:29', 814, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2382-9-3 2:15:51', 814, N'done')
GO
EXECUTE add_order N'2252-14-8 2:24:14', N'Иван', N'8-597-966-38-73', N'Невский', N'Мира', 61, 3, N'Подмостовский', N'Ботаническая', 96, 2, 212, N'cash', 815
GO
INSERT INTO list(date, order_id, status) VALUES(N'2252-14-8 2:28:17', 815, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2252-14-8 2:39:25', 815, N'done')
GO
EXECUTE add_order N'2957-20-11 3:2:11', N'Виталий', N'8-540-940-69-30', N'Васильевский', N'Ленина', 46, 8, N'Кабельный', N'Молодежная', 6, 7, 388, N'cashless', 816
GO
INSERT INTO list(date, order_id, status) VALUES(N'2957-20-11 3:7:15', 816, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2957-20-11 3:24:43', 816, N'done')
GO
EXECUTE add_order N'2698-25-9 6:8:23', N'Виталий', N'8-639-711-28-62', N'Спальный', N'Школьная', 57, 8, N'Подмостовский', N'Советская', 66, 7, 388, N'cash', 817
GO
INSERT INTO list(date, order_id, status) VALUES(N'2698-25-9 6:14:13', 817, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2698-25-9 6:47:38', 817, N'done')
GO
EXECUTE add_order N'2364-17-9 8:2:57', N'Тимофей', N'8-368-412-12-89', N'Кировский', N'Мира', 20, 9, N'Спальный', N'Мира', 29, 2, 143, N'cashless', 818
GO
INSERT INTO list(date, order_id, status) VALUES(N'2364-17-9 8:41:10', 818, N'canceled')
GO
EXECUTE add_order N'2886-28-3 0:54:40', N'Александр', N'8-020-689-86-14', N'Спальный', N'Ленина', 71, 7, N'Кировский', N'Набережная', 33, 5, 287, N'cashless', 819
GO
INSERT INTO list(date, order_id, status) VALUES(N'2886-28-3 1:1:6', 819, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2886-28-3 1:23:17', 819, N'done')
GO
EXECUTE add_order N'2268-7-9 4:9:16', N'Вячеслав', N'8-861-826-18-89', N'Невский', N'Новая', 58, 9, N'Невский', N'Набережная', 14, 9, 86, N'cash', 820
GO
INSERT INTO list(date, order_id, status) VALUES(N'2268-7-9 4:53:31', 820, N'canceled')
GO
EXECUTE add_order N'2205-18-2 1:35:45', N'Пётр', N'8-319-080-34-43', N'Центральный', N'Советская', 56, 6, N'Запорожский', N'9мая', 98, 8, 72, N'cash', 821
GO
INSERT INTO list(date, order_id, status) VALUES(N'2205-18-2 1:41:13', 821, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2205-18-2 2:15:32', 821, N'done')
GO
EXECUTE add_order N'2902-16-12 3:36:14', N'Вячеслав', N'8-761-645-13-62', N'Рыбный', N'9мая', 13, 10, N'Рыбный', N'Новая', 74, 8, 479, N'cashless', 822
GO
INSERT INTO list(date, order_id, status) VALUES(N'2902-16-12 4:22:13', 822, N'canceled')
GO
EXECUTE add_order N'2779-5-5 2:42:0', N'Джек', N'8-523-612-91-31', N'Кировский', N'Школьная', 20, 6, N'Центральный', N'Лесная', 6, 2, 155, N'cash', 823
GO
INSERT INTO list(date, order_id, status) VALUES(N'2779-5-5 2:48:5', 823, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2779-5-5 2:52:45', 823, N'done')
GO
EXECUTE add_order N'2005-10-2 2:1:40', N'Евгений', N'8-636-298-65-76', N'Рыбный', N'Мира', 84, 9, N'Центральный', N'Ботаническая', 94, 3, 490, N'cashless', 824
GO
INSERT INTO list(date, order_id, status) VALUES(N'2005-10-2 2:5:18', 824, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2005-10-2 2:53:42', 824, N'done')
GO
EXECUTE add_order N'2604-27-12 8:5:26', N'Владислав', N'8-406-533-02-24', N'Кабельный', N'Ленина', 24, 6, N'Рыбный', N'Новая', 61, 3, 344, N'cash', 825
GO
INSERT INTO list(date, order_id, status) VALUES(N'2604-27-12 8:10:19', 825, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2604-27-12 8:46:16', 825, N'done')
GO
EXECUTE add_order N'2468-18-3 0:48:16', N'Владислав', N'8-869-121-03-25', N'Приморский', N'Ленина', 10, 4, N'Невский', N'Советская', 71, 6, 53, N'cashless', 826
GO
INSERT INTO list(date, order_id, status) VALUES(N'2468-18-3 0:53:45', 826, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2468-18-3 1:24:5', 826, N'done')
GO
EXECUTE add_order N'2904-23-2 6:49:59', N'Николай', N'8-476-995-63-42', N'Кабельный', N'Серова', 32, 3, N'Центральный', N'Центральная', 22, 7, 257, N'cash', 827
GO
INSERT INTO list(date, order_id, status) VALUES(N'2904-23-2 6:53:35', 827, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2904-23-2 6:57:55', 827, N'done')
GO
EXECUTE add_order N'2194-23-5 2:36:13', N'Алексей', N'8-247-446-56-02', N'Невский', N'Крестовая', 22, 3, N'Рыбный', N'Садовая', 12, 1, 468, N'cash', 828
GO
INSERT INTO list(date, order_id, status) VALUES(N'2194-23-5 2:41:52', 828, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2194-23-5 3:4:11', 828, N'done')
GO
EXECUTE add_order N'2497-15-2 5:55:44', N'Егор', N'8-835-849-75-73', N'Спальный', N'9мая', 44, 2, N'Приморский', N'Новая', 72, 6, 57, N'cash', 829
GO
INSERT INTO list(date, order_id, status) VALUES(N'2497-15-2 6:0:20', 829, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2497-15-2 6:31:23', 829, N'done')
GO
EXECUTE add_order N'2216-24-6 2:5:55', N'Кирилл', N'8-365-698-80-90', N'Спальный', N'Набережная', 81, 8, N'Спальный', N'Балтийская', 5, 6, 95, N'cash', 830
GO
INSERT INTO list(date, order_id, status) VALUES(N'2216-24-6 2:9:21', 830, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2216-24-6 2:13:20', 830, N'done')
GO
EXECUTE add_order N'2269-4-2 1:7:8', N'Иван', N'8-829-014-70-16', N'Кировский', N'Крестовая', 16, 10, N'Невский', N'Ботаническая', 87, 6, 384, N'cash', 831
GO
INSERT INTO list(date, order_id, status) VALUES(N'2269-4-2 1:41:1', 831, N'canceled')
GO
EXECUTE add_order N'2082-13-1 1:32:46', N'Иван', N'8-863-857-23-00', N'Запорожский', N'Крестовая', 16, 8, N'Кабельный', N'Ботаническая', 42, 4, 73, N'cash', 832
GO
INSERT INTO list(date, order_id, status) VALUES(N'2082-13-1 1:38:7', 832, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2082-13-1 1:57:34', 832, N'done')
GO
EXECUTE add_order N'2168-11-10 3:36:1', N'Александр', N'8-373-050-95-68', N'Спальный', N'Ленина', 42, 4, N'Запорожский', N'Советская', 1, 5, 339, N'cash', 833
GO
INSERT INTO list(date, order_id, status) VALUES(N'2168-11-10 3:39:36', 833, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2168-11-10 4:23:56', 833, N'done')
GO
EXECUTE add_order N'2992-23-5 6:8:34', N'Тимофей', N'8-269-962-53-58', N'Рыбный', N'Молодежная', 25, 4, N'Кабельный', N'9мая', 17, 1, 422, N'cashless', 834
GO
INSERT INTO list(date, order_id, status) VALUES(N'2992-23-5 6:13:42', 834, N'canceled')
GO
EXECUTE add_order N'2404-5-3 3:52:21', N'Александр', N'8-579-209-62-16', N'Васильевский', N'Набережная', 79, 2, N'Подмостовский', N'Набережная', 98, 10, 307, N'cash', 835
GO
INSERT INTO list(date, order_id, status) VALUES(N'2404-5-3 3:57:42', 835, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2404-5-3 4:22:26', 835, N'done')
GO
EXECUTE add_order N'2501-7-11 4:23:11', N'Вячеслав', N'8-916-804-10-02', N'Кабельный', N'Новая', 34, 6, N'Приморский', N'Балтийская', 29, 7, 468, N'cashless', 836
GO
INSERT INTO list(date, order_id, status) VALUES(N'2501-7-11 4:42:12', 836, N'canceled')
GO
EXECUTE add_order N'2566-5-4 1:26:55', N'Александр', N'8-680-173-58-42', N'Приморский', N'Лесная', 4, 9, N'Приморский', N'Мира', 12, 6, 332, N'cashless', 837
GO
INSERT INTO list(date, order_id, status) VALUES(N'2566-5-4 1:32:7', 837, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2566-5-4 2:14:40', 837, N'done')
GO
EXECUTE add_order N'2163-26-3 1:29:36', N'Пётр', N'8-653-308-98-72', N'Кировский', N'Ботаническая', 33, 3, N'Спальный', N'9мая', 7, 5, 81, N'cash', 838
GO
INSERT INTO list(date, order_id, status) VALUES(N'2163-26-3 1:33:45', 838, N'canceled')
GO
EXECUTE add_order N'2498-9-1 2:44:17', N'Иван', N'8-140-065-86-46', N'Приморский', N'Школьная', 5, 2, N'Невский', N'Центральная', 65, 9, 280, N'cash', 839
GO
INSERT INTO list(date, order_id, status) VALUES(N'2498-9-1 3:22:18', 839, N'canceled')
GO
EXECUTE add_order N'2575-13-5 1:13:56', N'Евгений', N'8-255-992-16-27', N'Запорожский', N'Школьная', 66, 8, N'Кировский', N'Новая', 55, 9, 446, N'cashless', 840
GO
INSERT INTO list(date, order_id, status) VALUES(N'2575-13-5 1:20:33', 840, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2575-13-5 1:41:46', 840, N'done')
GO
EXECUTE add_order N'2116-6-4 3:38:10', N'Никита', N'8-934-018-29-40', N'Васильевский', N'Крестовая', 31, 7, N'Васильевский', N'Балтийская', 62, 3, 276, N'cashless', 841
GO
INSERT INTO list(date, order_id, status) VALUES(N'2116-6-4 3:41:59', 841, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2116-6-4 4:7:52', 841, N'done')
GO
EXECUTE add_order N'2509-1-10 5:58:47', N'Николай', N'8-485-429-51-21', N'Кировский', N'Балтийская', 45, 8, N'Спальный', N'Ботаническая', 43, 9, 274, N'cash', 842
GO
INSERT INTO list(date, order_id, status) VALUES(N'2509-1-10 6:3:10', 842, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2509-1-10 6:23:29', 842, N'done')
GO
EXECUTE add_order N'2966-12-9 6:6:18', N'Евгений', N'8-690-903-90-06', N'Центральный', N'9мая', 1, 5, N'Кабельный', N'Лесная', 44, 5, 532, N'cash', 843
GO
INSERT INTO list(date, order_id, status) VALUES(N'2966-12-9 6:11:13', 843, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2966-12-9 6:32:4', 843, N'done')
GO
EXECUTE add_order N'2691-7-3 7:19:40', N'Егор', N'8-629-724-36-55', N'Невский', N'Мира', 88, 6, N'Спальный', N'Школьная', 92, 4, 441, N'cash', 844
GO
INSERT INTO list(date, order_id, status) VALUES(N'2691-7-3 7:23:42', 844, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2691-7-3 7:51:47', 844, N'done')
GO
EXECUTE add_order N'2504-18-6 3:51:57', N'Егор', N'8-008-623-78-38', N'Рыбный', N'Балтийская', 70, 10, N'Невский', N'Крестовая', 76, 10, 436, N'cash', 845
GO
INSERT INTO list(date, order_id, status) VALUES(N'2504-18-6 3:55:57', 845, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2504-18-6 4:41:39', 845, N'done')
GO
EXECUTE add_order N'2442-17-12 6:45:4', N'Иван', N'8-546-158-86-37', N'Кабельный', N'Школьная', 4, 2, N'Васильевский', N'Набережная', 77, 3, 191, N'cashless', 846
GO
INSERT INTO list(date, order_id, status) VALUES(N'2442-17-12 6:48:34', 846, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2442-17-12 7:11:28', 846, N'done')
GO
EXECUTE add_order N'2575-17-11 0:42:25', N'Владимир', N'8-700-935-91-43', N'Васильевский', N'Ленина', 56, 7, N'Спальный', N'Центральная', 56, 4, 439, N'cash', 847
GO
INSERT INTO list(date, order_id, status) VALUES(N'2575-17-11 0:45:57', 847, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2575-17-11 1:16:1', 847, N'done')
GO
EXECUTE add_order N'2179-18-9 0:6:13', N'Евгений', N'8-637-885-41-44', N'Кабельный', N'Молодежная', 44, 9, N'Центральный', N'Балтийская', 83, 7, 412, N'cash', 848
GO
INSERT INTO list(date, order_id, status) VALUES(N'2179-18-9 0:11:21', 848, N'canceled')
GO
EXECUTE add_order N'2947-23-10 1:59:8', N'Джек', N'8-443-185-51-82', N'Рыбный', N'Серова', 94, 7, N'Подмостовский', N'Балтийская', 2, 7, 136, N'cash', 849
GO
INSERT INTO list(date, order_id, status) VALUES(N'2947-23-10 2:5:44', 849, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2947-23-10 2:32:11', 849, N'done')
GO
EXECUTE add_order N'2461-2-11 6:12:55', N'Александр', N'8-961-428-73-84', N'Кабельный', N'Балтийская', 55, 9, N'Приморский', N'Центральная', 95, 1, 82, N'cash', 850
GO
INSERT INTO list(date, order_id, status) VALUES(N'2461-2-11 6:19:28', 850, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2461-2-11 6:53:39', 850, N'done')
GO
EXECUTE add_order N'2213-6-1 2:35:54', N'Антон', N'8-353-937-93-62', N'Подмостовский', N'Набережная', 62, 4, N'Васильевский', N'9мая', 98, 7, 515, N'cashless', 851
GO
INSERT INTO list(date, order_id, status) VALUES(N'2213-6-1 2:40:5', 851, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2213-6-1 3:0:30', 851, N'done')
GO
EXECUTE add_order N'2651-23-9 7:35:41', N'Егор', N'8-981-275-25-35', N'Невский', N'Серова', 93, 7, N'Центральный', N'Набережная', 91, 9, 419, N'cash', 852
GO
INSERT INTO list(date, order_id, status) VALUES(N'2651-23-9 7:40:32', 852, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2651-23-9 7:44:53', 852, N'done')
GO
EXECUTE add_order N'2282-1-8 7:35:7', N'Джек', N'8-938-304-47-96', N'Васильевский', N'Лесная', 8, 1, N'Подмостовский', N'Набережная', 36, 10, 482, N'cash', 853
GO
INSERT INTO list(date, order_id, status) VALUES(N'2282-1-8 7:41:8', 853, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2282-1-8 7:46:28', 853, N'done')
GO
EXECUTE add_order N'2004-28-4 1:34:40', N'Владислав', N'8-751-207-77-97', N'Рыбный', N'Ботаническая', 93, 1, N'Центральный', N'Советская', 81, 8, 181, N'cashless', 854
GO
INSERT INTO list(date, order_id, status) VALUES(N'2004-28-4 1:38:54', 854, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2004-28-4 1:57:15', 854, N'done')
GO
EXECUTE add_order N'2874-11-11 3:57:57', N'Михаил', N'8-700-161-31-08', N'Невский', N'Молодежная', 67, 1, N'Приморский', N'Ленина', 29, 6, 430, N'cashless', 855
GO
INSERT INTO list(date, order_id, status) VALUES(N'2874-11-11 4:3:27', 855, N'canceled')
GO
EXECUTE add_order N'2539-17-2 7:34:47', N'Тимофей', N'8-111-878-03-54', N'Кабельный', N'Серова', 50, 9, N'Запорожский', N'Молодежная', 86, 9, 187, N'cash', 856
GO
INSERT INTO list(date, order_id, status) VALUES(N'2539-17-2 7:51:31', 856, N'canceled')
GO
EXECUTE add_order N'2802-10-2 7:5:37', N'Тимофей', N'8-068-106-87-97', N'Рыбный', N'Садовая', 42, 6, N'Невский', N'Новая', 10, 7, 485, N'cashless', 857
GO
INSERT INTO list(date, order_id, status) VALUES(N'2802-10-2 7:9:11', 857, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2802-10-2 7:31:52', 857, N'done')
GO
EXECUTE add_order N'2061-5-3 6:12:4', N'Дмитрий', N'8-347-402-90-05', N'Кабельный', N'Крестовая', 74, 3, N'Подмостовский', N'Садовая', 29, 10, 219, N'cash', 858
GO
INSERT INTO list(date, order_id, status) VALUES(N'2061-5-3 6:18:23', 858, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2061-5-3 6:25:25', 858, N'done')
GO
EXECUTE add_order N'2536-15-8 8:36:2', N'Владислав', N'8-654-826-18-40', N'Рыбный', N'Центральная', 8, 2, N'Подмостовский', N'Молодежная', 52, 7, 138, N'cash', 859
GO
INSERT INTO list(date, order_id, status) VALUES(N'2536-15-8 8:41:57', 859, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2536-15-8 9:22:45', 859, N'done')
GO
EXECUTE add_order N'2911-28-4 4:9:46', N'Кирилл', N'8-376-830-04-10', N'Приморский', N'Крестовая', 62, 9, N'Васильевский', N'Набережная', 20, 7, 303, N'cashless', 860
GO
INSERT INTO list(date, order_id, status) VALUES(N'2911-28-4 5:1:1', 860, N'canceled')
GO
EXECUTE add_order N'2287-19-6 5:5:4', N'Михаил', N'8-997-173-30-28', N'Кабельный', N'Лесная', 2, 3, N'Рыбный', N'Садовая', 3, 8, 313, N'cash', 861
GO
INSERT INTO list(date, order_id, status) VALUES(N'2287-19-6 5:9:20', 861, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2287-19-6 5:38:22', 861, N'done')
GO
EXECUTE add_order N'2985-2-11 2:4:10', N'Джек', N'8-991-802-24-43', N'Невский', N'Советская', 93, 2, N'Центральный', N'Набережная', 65, 5, 415, N'cash', 862
GO
INSERT INTO list(date, order_id, status) VALUES(N'2985-2-11 2:14:7', 862, N'canceled')
GO
EXECUTE add_order N'2548-1-7 4:54:16', N'Виталий', N'8-179-684-85-48', N'Рыбный', N'9мая', 67, 2, N'Невский', N'Центральная', 52, 7, 90, N'cash', 863
GO
INSERT INTO list(date, order_id, status) VALUES(N'2548-1-7 5:6:24', 863, N'canceled')
GO
EXECUTE add_order N'2194-26-1 1:2:0', N'Владимир', N'8-589-560-40-79', N'Васильевский', N'Центральная', 74, 7, N'Кабельный', N'Садовая', 46, 10, 322, N'cashless', 864
GO
INSERT INTO list(date, order_id, status) VALUES(N'2194-26-1 1:8:12', 864, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2194-26-1 1:22:22', 864, N'done')
GO
EXECUTE add_order N'2390-8-12 8:55:46', N'Алексей', N'8-413-375-32-86', N'Кировский', N'Серова', 7, 3, N'Кабельный', N'Ленина', 89, 9, 545, N'cash', 865
GO
INSERT INTO list(date, order_id, status) VALUES(N'2390-8-12 8:59:12', 865, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2390-8-12 9:26:38', 865, N'done')
GO
EXECUTE add_order N'2073-3-10 8:44:43', N'Дмитрий', N'8-490-604-87-12', N'Спальный', N'Ленина', 12, 6, N'Центральный', N'9мая', 89, 8, 431, N'cashless', 866
GO
INSERT INTO list(date, order_id, status) VALUES(N'2073-3-10 8:55:25', 866, N'canceled')
GO
EXECUTE add_order N'2102-14-8 4:34:9', N'Михаил', N'8-735-243-40-82', N'Подмостовский', N'Серова', 52, 9, N'Кировский', N'Школьная', 32, 9, 323, N'cashless', 867
GO
INSERT INTO list(date, order_id, status) VALUES(N'2102-14-8 4:53:1', 867, N'canceled')
GO
EXECUTE add_order N'2262-25-9 1:32:8', N'Сергей', N'8-792-746-81-81', N'Подмостовский', N'9мая', 29, 4, N'Невский', N'Лесная', 95, 4, 442, N'cash', 868
GO
INSERT INTO list(date, order_id, status) VALUES(N'2262-25-9 1:37:56', 868, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2262-25-9 1:53:25', 868, N'done')
GO
EXECUTE add_order N'2041-2-4 5:46:53', N'Андрей', N'8-215-891-40-83', N'Подмостовский', N'Лесная', 63, 1, N'Запорожский', N'Набережная', 81, 6, 409, N'cash', 869
GO
INSERT INTO list(date, order_id, status) VALUES(N'2041-2-4 5:51:21', 869, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2041-2-4 6:37:51', 869, N'done')
GO
EXECUTE add_order N'2987-19-11 1:34:52', N'Тимофей', N'8-758-394-63-28', N'Рыбный', N'9мая', 82, 4, N'Приморский', N'Крестовая', 18, 5, 313, N'cash', 870
GO
INSERT INTO list(date, order_id, status) VALUES(N'2987-19-11 1:41:20', 870, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2987-19-11 1:45:42', 870, N'done')
GO
EXECUTE add_order N'2211-12-10 8:54:36', N'Никита', N'8-477-918-59-73', N'Приморский', N'Центральная', 35, 4, N'Кабельный', N'Садовая', 99, 8, 439, N'cashless', 871
GO
INSERT INTO list(date, order_id, status) VALUES(N'2211-12-10 8:58:3', 871, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2211-12-10 9:8:32', 871, N'done')
GO
EXECUTE add_order N'2888-24-7 1:4:38', N'Николай', N'8-689-639-27-34', N'Запорожский', N'9мая', 53, 9, N'Невский', N'Ленина', 22, 10, 172, N'cashless', 872
GO
INSERT INTO list(date, order_id, status) VALUES(N'2888-24-7 1:10:6', 872, N'canceled')
GO
EXECUTE add_order N'2968-21-1 1:27:31', N'Евгений', N'8-331-730-90-66', N'Спальный', N'Мира', 5, 7, N'Кировский', N'Серова', 2, 4, 278, N'cash', 873
GO
INSERT INTO list(date, order_id, status) VALUES(N'2968-21-1 1:31:54', 873, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2968-21-1 2:12:34', 873, N'done')
GO
EXECUTE add_order N'2305-20-6 1:9:20', N'Тимофей', N'8-828-746-68-28', N'Центральный', N'Ботаническая', 36, 1, N'Рыбный', N'Школьная', 13, 3, 403, N'cash', 874
GO
INSERT INTO list(date, order_id, status) VALUES(N'2305-20-6 1:13:12', 874, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2305-20-6 1:58:55', 874, N'done')
GO
EXECUTE add_order N'2383-9-11 2:11:52', N'Виталий', N'8-688-542-13-21', N'Запорожский', N'Набережная', 29, 5, N'Спальный', N'Школьная', 98, 2, 82, N'cashless', 875
GO
INSERT INTO list(date, order_id, status) VALUES(N'2383-9-11 2:24:1', 875, N'canceled')
GO
EXECUTE add_order N'2185-3-1 6:11:54', N'Михаил', N'8-915-662-56-15', N'Рыбный', N'Садовая', 80, 3, N'Подмостовский', N'Ленина', 68, 9, 208, N'cash', 876
GO
INSERT INTO list(date, order_id, status) VALUES(N'2185-3-1 6:48:23', 876, N'canceled')
GO
EXECUTE add_order N'2069-27-12 5:10:47', N'Джек', N'8-785-624-68-53', N'Кабельный', N'Крестовая', 24, 6, N'Спальный', N'Набережная', 76, 1, 434, N'cash', 877
GO
INSERT INTO list(date, order_id, status) VALUES(N'2069-27-12 5:17:18', 877, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2069-27-12 6:9:21', 877, N'done')
GO
EXECUTE add_order N'2468-12-11 3:6:1', N'Владимир', N'8-204-592-09-95', N'Приморский', N'Садовая', 9, 7, N'Невский', N'Новая', 24, 4, 403, N'cashless', 878
GO
INSERT INTO list(date, order_id, status) VALUES(N'2468-12-11 3:11:11', 878, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2468-12-11 3:24:30', 878, N'done')
GO
EXECUTE add_order N'2623-16-4 6:41:3', N'Евгений', N'8-525-765-61-61', N'Невский', N'Серова', 63, 5, N'Спальный', N'Центральная', 13, 9, 475, N'cashless', 879
GO
INSERT INTO list(date, order_id, status) VALUES(N'2623-16-4 6:44:42', 879, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2623-16-4 7:1:14', 879, N'done')
GO
EXECUTE add_order N'2015-10-4 5:1:54', N'Кирилл', N'8-433-721-47-83', N'Центральный', N'Балтийская', 85, 1, N'Центральный', N'Новая', 66, 2, 88, N'cash', 880
GO
INSERT INTO list(date, order_id, status) VALUES(N'2015-10-4 5:7:15', 880, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2015-10-4 5:32:43', 880, N'done')
GO
EXECUTE add_order N'2041-10-9 7:18:13', N'Тимофей', N'8-437-099-58-75', N'Центральный', N'Ленина', 92, 5, N'Рыбный', N'Садовая', 6, 5, 308, N'cash', 881
GO
INSERT INTO list(date, order_id, status) VALUES(N'2041-10-9 7:23:7', 881, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2041-10-9 8:1:4', 881, N'done')
GO
EXECUTE add_order N'2373-15-10 7:55:28', N'Вячеслав', N'8-534-254-29-79', N'Центральный', N'Школьная', 27, 3, N'Приморский', N'Ботаническая', 43, 6, 307, N'cash', 882
GO
INSERT INTO list(date, order_id, status) VALUES(N'2373-15-10 8:2:6', 882, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2373-15-10 8:40:17', 882, N'done')
GO
EXECUTE add_order N'2056-8-11 3:17:21', N'Владимир', N'8-302-870-52-05', N'Центральный', N'Советская', 73, 3, N'Приморский', N'Ленина', 70, 10, 56, N'cash', 883
GO
INSERT INTO list(date, order_id, status) VALUES(N'2056-8-11 3:22:25', 883, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2056-8-11 3:27:37', 883, N'done')
GO
EXECUTE add_order N'2271-24-4 6:12:32', N'Джек', N'8-565-673-36-84', N'Спальный', N'Ленина', 62, 3, N'Спальный', N'Садовая', 8, 7, 523, N'cashless', 884
GO
INSERT INTO list(date, order_id, status) VALUES(N'2271-24-4 6:18:29', 884, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2271-24-4 6:43:17', 884, N'done')
GO
EXECUTE add_order N'2550-2-12 8:53:37', N'Николай', N'8-441-499-65-55', N'Спальный', N'Центральная', 46, 6, N'Подмостовский', N'Центральная', 51, 3, 383, N'cashless', 885
GO
INSERT INTO list(date, order_id, status) VALUES(N'2550-2-12 8:59:52', 885, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2550-2-12 9:40:42', 885, N'done')
GO
EXECUTE add_order N'2153-2-4 4:32:47', N'Виталий', N'8-809-916-90-84', N'Рыбный', N'Садовая', 14, 7, N'Кабельный', N'Школьная', 29, 1, 456, N'cashless', 886
GO
INSERT INTO list(date, order_id, status) VALUES(N'2153-2-4 4:36:22', 886, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2153-2-4 5:7:52', 886, N'done')
GO
EXECUTE add_order N'2921-17-5 0:9:26', N'Иван', N'8-741-303-03-82', N'Рыбный', N'Садовая', 88, 10, N'Невский', N'Новая', 6, 9, 187, N'cashless', 887
GO
INSERT INTO list(date, order_id, status) VALUES(N'2921-17-5 0:15:29', 887, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2921-17-5 0:46:40', 887, N'done')
GO
EXECUTE add_order N'2554-2-2 3:8:50', N'Алексей', N'8-952-280-23-13', N'Васильевский', N'Балтийская', 89, 1, N'Приморский', N'Школьная', 76, 6, 413, N'cash', 888
GO
INSERT INTO list(date, order_id, status) VALUES(N'2554-2-2 4:6:17', 888, N'canceled')
GO
EXECUTE add_order N'2288-26-8 6:9:57', N'Александр', N'8-464-601-51-17', N'Кабельный', N'Ленина', 78, 1, N'Рыбный', N'9мая', 35, 5, 189, N'cash', 889
GO
INSERT INTO list(date, order_id, status) VALUES(N'2288-26-8 6:13:36', 889, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2288-26-8 6:37:5', 889, N'done')
GO
EXECUTE add_order N'2579-2-11 0:40:19', N'Виталий', N'8-515-325-24-55', N'Кировский', N'Ленина', 80, 3, N'Рыбный', N'Мира', 32, 6, 251, N'cashless', 890
GO
INSERT INTO list(date, order_id, status) VALUES(N'2579-2-11 0:45:10', 890, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2579-2-11 0:58:40', 890, N'done')
GO
EXECUTE add_order N'2774-13-7 1:37:12', N'Владислав', N'8-723-445-40-77', N'Спальный', N'Крестовая', 32, 9, N'Кировский', N'Ботаническая', 97, 10, 437, N'cashless', 891
GO
INSERT INTO list(date, order_id, status) VALUES(N'2774-13-7 1:40:34', 891, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2774-13-7 1:47:32', 891, N'done')
GO
EXECUTE add_order N'2033-28-11 0:55:6', N'Антон', N'8-586-738-74-97', N'Подмостовский', N'Набережная', 70, 3, N'Кировский', N'Мира', 47, 8, 236, N'cash', 892
GO
INSERT INTO list(date, order_id, status) VALUES(N'2033-28-11 1:1:20', 892, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2033-28-11 1:43:8', 892, N'done')
GO
EXECUTE add_order N'2187-20-12 7:1:43', N'Никита', N'8-469-715-28-91', N'Кабельный', N'Лесная', 7, 3, N'Запорожский', N'Серова', 17, 6, 391, N'cashless', 893
GO
INSERT INTO list(date, order_id, status) VALUES(N'2187-20-12 7:37:32', 893, N'canceled')
GO
EXECUTE add_order N'2275-25-9 6:57:16', N'Алексей', N'8-648-638-65-55', N'Спальный', N'Школьная', 2, 10, N'Кировский', N'Центральная', 66, 2, 316, N'cash', 894
GO
INSERT INTO list(date, order_id, status) VALUES(N'2275-25-9 7:2:22', 894, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2275-25-9 7:9:47', 894, N'done')
GO
EXECUTE add_order N'2164-14-7 7:30:20', N'Евгений', N'8-419-153-97-01', N'Спальный', N'Мира', 25, 2, N'Кировский', N'Набережная', 80, 2, 244, N'cash', 895
GO
INSERT INTO list(date, order_id, status) VALUES(N'2164-14-7 7:57:25', 895, N'canceled')
GO
EXECUTE add_order N'2591-13-2 5:4:42', N'Никита', N'8-938-909-69-02', N'Васильевский', N'Мира', 87, 9, N'Подмостовский', N'Садовая', 34, 2, 426, N'cash', 896
GO
INSERT INTO list(date, order_id, status) VALUES(N'2591-13-2 5:10:41', 896, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2591-13-2 5:18:42', 896, N'done')
GO
EXECUTE add_order N'2125-5-10 7:33:29', N'Александр', N'8-930-068-60-96', N'Рыбный', N'Садовая', 68, 9, N'Подмостовский', N'Советская', 47, 6, 310, N'cashless', 897
GO
INSERT INTO list(date, order_id, status) VALUES(N'2125-5-10 7:38:43', 897, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2125-5-10 7:55:3', 897, N'done')
GO
EXECUTE add_order N'2654-12-6 4:43:22', N'Никита', N'8-227-814-10-98', N'Кировский', N'Ботаническая', 89, 6, N'Васильевский', N'Ботаническая', 66, 5, 442, N'cashless', 898
GO
INSERT INTO list(date, order_id, status) VALUES(N'2654-12-6 4:52:37', 898, N'canceled')
GO
EXECUTE add_order N'2694-3-4 7:13:38', N'Михаил', N'8-477-558-68-96', N'Спальный', N'Новая', 14, 5, N'Рыбный', N'Советская', 10, 7, 320, N'cashless', 899
GO
INSERT INTO list(date, order_id, status) VALUES(N'2694-3-4 7:17:21', 899, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2694-3-4 7:27:34', 899, N'done')
GO
EXECUTE add_order N'2296-4-5 8:19:35', N'Джек', N'8-817-668-32-10', N'Центральный', N'Набережная', 98, 8, N'Кабельный', N'Садовая', 67, 5, 186, N'cashless', 900
GO
INSERT INTO list(date, order_id, status) VALUES(N'2296-4-5 8:23:29', 900, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2296-4-5 9:8:36', 900, N'done')
GO
EXECUTE add_order N'2805-14-7 6:15:34', N'Пётр', N'8-130-286-31-01', N'Центральный', N'Советская', 2, 9, N'Кабельный', N'Мира', 68, 6, 542, N'cash', 901
GO
INSERT INTO list(date, order_id, status) VALUES(N'2805-14-7 6:20:49', 901, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2805-14-7 6:25:6', 901, N'done')
GO
EXECUTE add_order N'2588-21-12 3:3:45', N'Тимофей', N'8-436-530-55-84', N'Приморский', N'Балтийская', 6, 7, N'Невский', N'Молодежная', 28, 8, 220, N'cashless', 902
GO
INSERT INTO list(date, order_id, status) VALUES(N'2588-21-12 3:19:2', 902, N'canceled')
GO
EXECUTE add_order N'2964-9-3 8:31:33', N'Иван', N'8-576-459-02-91', N'Запорожский', N'Ленина', 89, 8, N'Рыбный', N'Советская', 61, 1, 440, N'cashless', 903
GO
INSERT INTO list(date, order_id, status) VALUES(N'2964-9-3 8:48:10', 903, N'canceled')
GO
EXECUTE add_order N'2947-2-7 1:26:26', N'Михаил', N'8-621-222-97-13', N'Запорожский', N'Садовая', 23, 9, N'Васильевский', N'Центральная', 31, 5, 162, N'cashless', 904
GO
INSERT INTO list(date, order_id, status) VALUES(N'2947-2-7 1:56:44', 904, N'canceled')
GO
EXECUTE add_order N'2500-7-6 4:30:53', N'Никита', N'8-895-498-01-07', N'Запорожский', N'Набережная', 78, 6, N'Кабельный', N'Балтийская', 32, 10, 487, N'cash', 905
GO
INSERT INTO list(date, order_id, status) VALUES(N'2500-7-6 4:36:21', 905, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2500-7-6 5:24:20', 905, N'done')
GO
EXECUTE add_order N'2886-16-2 2:10:13', N'Никита', N'8-992-824-75-77', N'Кабельный', N'Серова', 44, 10, N'Центральный', N'Советская', 12, 10, 323, N'cash', 906
GO
INSERT INTO list(date, order_id, status) VALUES(N'2886-16-2 2:13:54', 906, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2886-16-2 2:24:56', 906, N'done')
GO
EXECUTE add_order N'2685-5-11 5:39:29', N'Дмитрий', N'8-897-988-39-31', N'Кабельный', N'Молодежная', 36, 1, N'Невский', N'Ленина', 72, 5, 181, N'cash', 907
GO
INSERT INTO list(date, order_id, status) VALUES(N'2685-5-11 5:57:34', 907, N'canceled')
GO
EXECUTE add_order N'2366-26-1 6:48:52', N'Тимофей', N'8-652-837-70-10', N'Кабельный', N'Мира', 39, 3, N'Кировский', N'Советская', 99, 1, 135, N'cash', 908
GO
INSERT INTO list(date, order_id, status) VALUES(N'2366-26-1 6:53:13', 908, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2366-26-1 7:33:27', 908, N'done')
GO
EXECUTE add_order N'2644-7-3 4:4:11', N'Николай', N'8-396-600-13-86', N'Рыбный', N'Балтийская', 93, 7, N'Приморский', N'Молодежная', 7, 8, 154, N'cashless', 909
GO
INSERT INTO list(date, order_id, status) VALUES(N'2644-7-3 4:7:51', 909, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2644-7-3 4:58:57', 909, N'done')
GO
EXECUTE add_order N'2179-10-12 5:45:36', N'Антон', N'8-692-860-09-39', N'Кабельный', N'Новая', 70, 5, N'Кабельный', N'Центральная', 82, 4, 512, N'cash', 910
GO
INSERT INTO list(date, order_id, status) VALUES(N'2179-10-12 6:16:28', 910, N'canceled')
GO
EXECUTE add_order N'2895-27-11 8:26:21', N'Алексей', N'8-373-240-22-43', N'Подмостовский', N'Серова', 27, 4, N'Васильевский', N'Крестовая', 18, 6, 412, N'cashless', 911
GO
INSERT INTO list(date, order_id, status) VALUES(N'2895-27-11 8:31:4', 911, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2895-27-11 8:38:44', 911, N'done')
GO
EXECUTE add_order N'2359-9-9 4:45:8', N'Владислав', N'8-002-460-45-81', N'Подмостовский', N'Советская', 99, 8, N'Кабельный', N'Молодежная', 14, 3, 182, N'cash', 912
GO
INSERT INTO list(date, order_id, status) VALUES(N'2359-9-9 4:49:59', 912, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2359-9-9 5:1:3', 912, N'done')
GO
EXECUTE add_order N'2035-17-3 4:32:20', N'Антон', N'8-066-275-00-52', N'Запорожский', N'9мая', 40, 3, N'Подмостовский', N'Школьная', 43, 8, 537, N'cashless', 913
GO
INSERT INTO list(date, order_id, status) VALUES(N'2035-17-3 4:37:22', 913, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2035-17-3 5:12:59', 913, N'done')
GO
EXECUTE add_order N'2139-8-7 2:50:29', N'Владислав', N'8-954-743-91-67', N'Невский', N'Балтийская', 20, 8, N'Рыбный', N'Новая', 80, 6, 490, N'cash', 914
GO
INSERT INTO list(date, order_id, status) VALUES(N'2139-8-7 2:56:12', 914, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2139-8-7 3:37:4', 914, N'done')
GO
EXECUTE add_order N'2361-26-4 3:23:20', N'Андрей', N'8-869-101-47-00', N'Кировский', N'Лесная', 54, 6, N'Спальный', N'Крестовая', 11, 3, 408, N'cash', 915
GO
INSERT INTO list(date, order_id, status) VALUES(N'2361-26-4 3:26:53', 915, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2361-26-4 4:19:7', 915, N'done')
GO
EXECUTE add_order N'2151-5-10 0:6:55', N'Алексей', N'8-294-155-01-98', N'Приморский', N'Серова', 83, 9, N'Кировский', N'Садовая', 44, 8, 168, N'cashless', 916
GO
INSERT INTO list(date, order_id, status) VALUES(N'2151-5-10 0:10:22', 916, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2151-5-10 0:26:46', 916, N'done')
GO
EXECUTE add_order N'2382-13-11 2:34:22', N'Кирилл', N'8-793-726-09-47', N'Кабельный', N'Лесная', 20, 7, N'Подмостовский', N'Серова', 4, 4, 102, N'cashless', 917
GO
INSERT INTO list(date, order_id, status) VALUES(N'2382-13-11 2:38:56', 917, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2382-13-11 2:50:39', 917, N'done')
GO
EXECUTE add_order N'2264-25-1 4:49:37', N'Александр', N'8-728-326-83-65', N'Васильевский', N'Школьная', 51, 3, N'Васильевский', N'Балтийская', 59, 5, 188, N'cash', 918
GO
INSERT INTO list(date, order_id, status) VALUES(N'2264-25-1 4:54:42', 918, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2264-25-1 5:26:32', 918, N'done')
GO
EXECUTE add_order N'2232-8-5 2:13:51', N'Егор', N'8-010-939-25-11', N'Приморский', N'9мая', 11, 6, N'Кировский', N'Молодежная', 84, 1, 331, N'cashless', 919
GO
INSERT INTO list(date, order_id, status) VALUES(N'2232-8-5 2:19:55', 919, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2232-8-5 3:0:9', 919, N'done')
GO
EXECUTE add_order N'2624-8-4 1:10:22', N'Николай', N'8-832-405-80-25', N'Кабельный', N'Балтийская', 51, 3, N'Кабельный', N'Центральная', 65, 10, 288, N'cash', 920
GO
INSERT INTO list(date, order_id, status) VALUES(N'2624-8-4 1:16:17', 920, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2624-8-4 1:41:34', 920, N'done')
GO
EXECUTE add_order N'2155-11-1 7:52:7', N'Михаил', N'8-873-724-65-17', N'Центральный', N'Крестовая', 58, 6, N'Невский', N'Садовая', 15, 8, 525, N'cash', 921
GO
INSERT INTO list(date, order_id, status) VALUES(N'2155-11-1 7:56:51', 921, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2155-11-1 8:23:37', 921, N'done')
GO
EXECUTE add_order N'2492-26-12 5:0:28', N'Алексей', N'8-131-427-93-31', N'Васильевский', N'Центральная', 52, 8, N'Спальный', N'Мира', 6, 6, 325, N'cashless', 922
GO
INSERT INTO list(date, order_id, status) VALUES(N'2492-26-12 5:5:50', 922, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2492-26-12 5:38:22', 922, N'done')
GO
EXECUTE add_order N'2382-26-9 2:26:48', N'Иван', N'8-075-708-02-69', N'Невский', N'Набережная', 99, 5, N'Подмостовский', N'Молодежная', 93, 4, 284, N'cashless', 923
GO
INSERT INTO list(date, order_id, status) VALUES(N'2382-26-9 2:33:13', 923, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2382-26-9 2:42:3', 923, N'done')
GO
EXECUTE add_order N'2789-12-7 6:55:19', N'Алексей', N'8-748-370-88-83', N'Васильевский', N'Набережная', 29, 7, N'Невский', N'Советская', 64, 7, 470, N'cash', 924
GO
INSERT INTO list(date, order_id, status) VALUES(N'2789-12-7 7:0:6', 924, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2789-12-7 7:35:48', 924, N'done')
GO
EXECUTE add_order N'2196-25-6 6:4:38', N'Вячеслав', N'8-143-988-53-51', N'Спальный', N'9мая', 34, 10, N'Кабельный', N'Ботаническая', 94, 8, 261, N'cash', 925
GO
INSERT INTO list(date, order_id, status) VALUES(N'2196-25-6 6:8:19', 925, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2196-25-6 6:34:55', 925, N'done')
GO
EXECUTE add_order N'2360-23-3 2:55:25', N'Сергей', N'8-607-953-40-91', N'Подмостовский', N'9мая', 41, 10, N'Подмостовский', N'Балтийская', 97, 1, 530, N'cashless', 926
GO
INSERT INTO list(date, order_id, status) VALUES(N'2360-23-3 3:23:0', 926, N'canceled')
GO
EXECUTE add_order N'2705-19-6 6:22:13', N'Вячеслав', N'8-938-913-60-93', N'Приморский', N'Школьная', 68, 1, N'Васильевский', N'Советская', 29, 2, 245, N'cashless', 927
GO
INSERT INTO list(date, order_id, status) VALUES(N'2705-19-6 6:53:22', 927, N'canceled')
GO
EXECUTE add_order N'2167-25-2 6:47:53', N'Иван', N'8-200-674-28-46', N'Рыбный', N'Центральная', 13, 7, N'Васильевский', N'Садовая', 67, 3, 521, N'cash', 928
GO
INSERT INTO list(date, order_id, status) VALUES(N'2167-25-2 6:53:29', 928, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2167-25-2 7:1:38', 928, N'done')
GO
EXECUTE add_order N'2448-6-10 2:36:32', N'Кирилл', N'8-493-069-92-63', N'Рыбный', N'Балтийская', 100, 8, N'Запорожский', N'Новая', 72, 5, 246, N'cash', 929
GO
INSERT INTO list(date, order_id, status) VALUES(N'2448-6-10 2:40:13', 929, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2448-6-10 2:46:4', 929, N'done')
GO
EXECUTE add_order N'2338-26-6 1:20:48', N'Егор', N'8-824-044-14-57', N'Кировский', N'Серова', 22, 5, N'Подмостовский', N'Садовая', 41, 9, 460, N'cashless', 930
GO
INSERT INTO list(date, order_id, status) VALUES(N'2338-26-6 1:24:54', 930, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2338-26-6 1:45:39', 930, N'done')
GO
EXECUTE add_order N'2913-3-6 2:9:41', N'Александр', N'8-094-157-71-49', N'Запорожский', N'Школьная', 75, 6, N'Кировский', N'Балтийская', 5, 10, 292, N'cash', 931
GO
INSERT INTO list(date, order_id, status) VALUES(N'2913-3-6 2:15:57', 931, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2913-3-6 2:38:52', 931, N'done')
GO
EXECUTE add_order N'2059-10-3 0:39:47', N'Андрей', N'8-409-324-25-13', N'Кировский', N'Серова', 33, 6, N'Приморский', N'Набережная', 98, 10, 492, N'cash', 932
GO
INSERT INTO list(date, order_id, status) VALUES(N'2059-10-3 1:31:53', 932, N'canceled')
GO
EXECUTE add_order N'2464-8-2 1:54:8', N'Тимофей', N'8-850-693-04-11', N'Приморский', N'Советская', 100, 10, N'Кабельный', N'Школьная', 74, 6, 372, N'cash', 933
GO
INSERT INTO list(date, order_id, status) VALUES(N'2464-8-2 1:59:11', 933, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2464-8-2 2:17:16', 933, N'done')
GO
EXECUTE add_order N'2716-4-6 8:7:53', N'Егор', N'8-710-369-64-57', N'Невский', N'Мира', 9, 3, N'Спальный', N'Мира', 31, 10, 431, N'cashless', 934
GO
INSERT INTO list(date, order_id, status) VALUES(N'2716-4-6 8:11:46', 934, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2716-4-6 8:59:15', 934, N'done')
GO
EXECUTE add_order N'2862-7-5 6:15:50', N'Антон', N'8-589-254-45-07', N'Невский', N'Школьная', 79, 5, N'Кировский', N'Крестовая', 76, 4, 320, N'cash', 935
GO
INSERT INTO list(date, order_id, status) VALUES(N'2862-7-5 6:19:11', 935, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2862-7-5 7:7:26', 935, N'done')
GO
EXECUTE add_order N'2558-9-3 7:4:39', N'Евгений', N'8-276-676-85-16', N'Рыбный', N'9мая', 62, 2, N'Кировский', N'Новая', 55, 4, 422, N'cashless', 936
GO
INSERT INTO list(date, order_id, status) VALUES(N'2558-9-3 7:52:8', 936, N'canceled')
GO
EXECUTE add_order N'2668-1-12 0:37:9', N'Сергей', N'8-558-275-79-53', N'Кабельный', N'Серова', 74, 3, N'Невский', N'Крестовая', 85, 8, 314, N'cashless', 937
GO
INSERT INTO list(date, order_id, status) VALUES(N'2668-1-12 0:40:36', 937, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2668-1-12 1:23:30', 937, N'done')
GO
EXECUTE add_order N'2902-17-11 5:8:43', N'Антон', N'8-260-453-73-88', N'Запорожский', N'Балтийская', 46, 9, N'Рыбный', N'Центральная', 72, 8, 338, N'cash', 938
GO
INSERT INTO list(date, order_id, status) VALUES(N'2902-17-11 6:8:37', 938, N'canceled')
GO
EXECUTE add_order N'2836-27-6 5:10:3', N'Вячеслав', N'8-606-235-08-68', N'Невский', N'Молодежная', 52, 5, N'Рыбный', N'Мира', 46, 8, 208, N'cashless', 939
GO
INSERT INTO list(date, order_id, status) VALUES(N'2836-27-6 5:14:35', 939, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2836-27-6 5:39:11', 939, N'done')
GO
EXECUTE add_order N'2131-3-2 3:24:59', N'Александр', N'8-976-255-30-07', N'Васильевский', N'Лесная', 100, 6, N'Васильевский', N'Школьная', 63, 4, 385, N'cash', 940
GO
INSERT INTO list(date, order_id, status) VALUES(N'2131-3-2 3:39:47', 940, N'canceled')
GO
EXECUTE add_order N'2852-18-4 0:9:47', N'Никита', N'8-774-705-48-61', N'Кировский', N'Ленина', 12, 2, N'Рыбный', N'Центральная', 45, 6, 271, N'cashless', 941
GO
INSERT INTO list(date, order_id, status) VALUES(N'2852-18-4 0:13:50', 941, N'canceled')
GO
EXECUTE add_order N'2933-10-1 5:52:19', N'Виталий', N'8-931-676-81-32', N'Кировский', N'Советская', 75, 9, N'Васильевский', N'Серова', 27, 10, 461, N'cashless', 942
GO
INSERT INTO list(date, order_id, status) VALUES(N'2933-10-1 5:57:12', 942, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2933-10-1 6:0:33', 942, N'done')
GO
EXECUTE add_order N'2450-16-2 1:16:34', N'Вячеслав', N'8-219-350-50-41', N'Приморский', N'Ленина', 35, 10, N'Кировский', N'Садовая', 22, 9, 190, N'cashless', 943
GO
INSERT INTO list(date, order_id, status) VALUES(N'2450-16-2 2:6:34', 943, N'canceled')
GO
EXECUTE add_order N'2249-12-12 7:4:26', N'Алексей', N'8-113-137-33-46', N'Васильевский', N'Ленина', 67, 8, N'Невский', N'Школьная', 86, 9, 59, N'cash', 944
GO
INSERT INTO list(date, order_id, status) VALUES(N'2249-12-12 7:9:15', 944, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2249-12-12 8:0:9', 944, N'done')
GO
EXECUTE add_order N'2561-8-10 1:13:50', N'Егор', N'8-014-919-18-29', N'Кировский', N'Ленина', 7, 1, N'Центральный', N'Советская', 97, 6, 84, N'cashless', 945
GO
INSERT INTO list(date, order_id, status) VALUES(N'2561-8-10 1:19:3', 945, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2561-8-10 2:10:53', 945, N'done')
GO
EXECUTE add_order N'2591-2-11 7:6:53', N'Вячеслав', N'8-360-321-75-23', N'Приморский', N'Серова', 34, 4, N'Подмостовский', N'Балтийская', 33, 10, 437, N'cash', 946
GO
INSERT INTO list(date, order_id, status) VALUES(N'2591-2-11 7:38:41', 946, N'canceled')
GO
EXECUTE add_order N'2619-24-5 0:42:24', N'Тимофей', N'8-117-264-15-37', N'Невский', N'Центральная', 79, 8, N'Приморский', N'Лесная', 80, 9, 194, N'cashless', 947
GO
INSERT INTO list(date, order_id, status) VALUES(N'2619-24-5 0:48:33', 947, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2619-24-5 1:15:9', 947, N'done')
GO
EXECUTE add_order N'2762-24-9 8:43:15', N'Владимир', N'8-877-245-46-28', N'Невский', N'Школьная', 20, 5, N'Кабельный', N'Центральная', 98, 6, 432, N'cash', 948
GO
INSERT INTO list(date, order_id, status) VALUES(N'2762-24-9 8:55:43', 948, N'canceled')
GO
EXECUTE add_order N'2352-27-5 4:45:22', N'Кирилл', N'8-988-169-45-88', N'Кабельный', N'Советская', 61, 4, N'Кировский', N'Садовая', 87, 4, 166, N'cashless', 949
GO
INSERT INTO list(date, order_id, status) VALUES(N'2352-27-5 4:50:10', 949, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2352-27-5 5:38:13', 949, N'done')
GO
EXECUTE add_order N'2941-9-12 3:9:6', N'Сергей', N'8-594-687-32-38', N'Подмостовский', N'Садовая', 16, 7, N'Кировский', N'Центральная', 87, 1, 279, N'cashless', 950
GO
INSERT INTO list(date, order_id, status) VALUES(N'2941-9-12 3:15:14', 950, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2941-9-12 3:52:58', 950, N'done')
GO
EXECUTE add_order N'2422-15-12 3:45:24', N'Никита', N'8-760-331-41-16', N'Подмостовский', N'Ботаническая', 61, 7, N'Спальный', N'Центральная', 52, 3, 228, N'cashless', 951
GO
INSERT INTO list(date, order_id, status) VALUES(N'2422-15-12 4:41:18', 951, N'canceled')
GO
EXECUTE add_order N'2673-13-3 3:11:13', N'Егор', N'8-564-486-51-39', N'Васильевский', N'Крестовая', 43, 3, N'Запорожский', N'Советская', 64, 9, 545, N'cash', 952
GO
INSERT INTO list(date, order_id, status) VALUES(N'2673-13-3 3:14:39', 952, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2673-13-3 3:39:43', 952, N'done')
GO
EXECUTE add_order N'2616-27-4 5:36:15', N'Михаил', N'8-294-797-63-72', N'Запорожский', N'Советская', 93, 5, N'Кировский', N'Советская', 19, 4, 390, N'cashless', 953
GO
INSERT INTO list(date, order_id, status) VALUES(N'2616-27-4 5:41:25', 953, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2616-27-4 5:51:27', 953, N'done')
GO
EXECUTE add_order N'2305-25-10 0:28:16', N'Михаил', N'8-933-831-08-03', N'Васильевский', N'Набережная', 64, 2, N'Невский', N'Молодежная', 75, 8, 381, N'cash', 954
GO
INSERT INTO list(date, order_id, status) VALUES(N'2305-25-10 1:7:12', 954, N'canceled')
GO
EXECUTE add_order N'2828-7-1 7:36:26', N'Пётр', N'8-485-819-67-83', N'Васильевский', N'Садовая', 78, 3, N'Центральный', N'Молодежная', 82, 2, 69, N'cashless', 955
GO
INSERT INTO list(date, order_id, status) VALUES(N'2828-7-1 7:41:15', 955, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2828-7-1 8:30:9', 955, N'done')
GO
EXECUTE add_order N'2216-13-10 4:29:38', N'Николай', N'8-103-585-66-93', N'Центральный', N'Балтийская', 72, 5, N'Рыбный', N'Школьная', 57, 7, 143, N'cash', 956
GO
INSERT INTO list(date, order_id, status) VALUES(N'2216-13-10 4:33:52', 956, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2216-13-10 5:27:5', 956, N'done')
GO
EXECUTE add_order N'2759-18-6 3:47:28', N'Владимир', N'8-542-663-69-24', N'Кабельный', N'Центральная', 18, 8, N'Приморский', N'Мира', 40, 5, 227, N'cashless', 957
GO
INSERT INTO list(date, order_id, status) VALUES(N'2759-18-6 3:53:6', 957, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2759-18-6 4:43:4', 957, N'done')
GO
EXECUTE add_order N'2766-10-4 7:47:8', N'Тимофей', N'8-088-888-19-75', N'Приморский', N'Набережная', 19, 9, N'Приморский', N'9мая', 68, 9, 406, N'cash', 958
GO
INSERT INTO list(date, order_id, status) VALUES(N'2766-10-4 7:53:21', 958, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2766-10-4 8:14:59', 958, N'done')
GO
EXECUTE add_order N'2847-7-3 2:20:56', N'Сергей', N'8-921-609-14-75', N'Васильевский', N'Садовая', 82, 9, N'Кабельный', N'Ботаническая', 1, 2, 532, N'cashless', 959
GO
INSERT INTO list(date, order_id, status) VALUES(N'2847-7-3 2:25:21', 959, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2847-7-3 2:39:8', 959, N'done')
GO
EXECUTE add_order N'2964-21-5 3:4:47', N'Владимир', N'8-874-043-80-74', N'Приморский', N'Серова', 32, 10, N'Спальный', N'Новая', 61, 10, 103, N'cashless', 960
GO
INSERT INTO list(date, order_id, status) VALUES(N'2964-21-5 3:9:5', 960, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2964-21-5 3:24:41', 960, N'done')
GO
EXECUTE add_order N'2115-9-12 2:15:40', N'Виталий', N'8-219-438-06-11', N'Спальный', N'9мая', 55, 9, N'Приморский', N'Лесная', 66, 10, 336, N'cash', 961
GO
INSERT INTO list(date, order_id, status) VALUES(N'2115-9-12 2:21:22', 961, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2115-9-12 2:28:4', 961, N'done')
GO
EXECUTE add_order N'2390-12-4 2:57:2', N'Виталий', N'8-953-200-90-66', N'Запорожский', N'Ботаническая', 41, 10, N'Приморский', N'Новая', 26, 8, 93, N'cash', 962
GO
INSERT INTO list(date, order_id, status) VALUES(N'2390-12-4 3:21:39', 962, N'canceled')
GO
EXECUTE add_order N'2795-21-7 7:9:6', N'Виталий', N'8-836-425-28-67', N'Кабельный', N'Новая', 50, 3, N'Невский', N'Садовая', 30, 10, 408, N'cash', 963
GO
INSERT INTO list(date, order_id, status) VALUES(N'2795-21-7 7:53:40', 963, N'canceled')
GO
EXECUTE add_order N'2749-28-12 2:38:53', N'Дмитрий', N'8-596-836-16-94', N'Кировский', N'Лесная', 31, 8, N'Запорожский', N'Лесная', 27, 9, 496, N'cashless', 964
GO
INSERT INTO list(date, order_id, status) VALUES(N'2749-28-12 2:44:25', 964, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2749-28-12 2:53:52', 964, N'done')
GO
EXECUTE add_order N'2143-6-11 6:43:29', N'Никита', N'8-018-589-52-14', N'Рыбный', N'Крестовая', 63, 9, N'Кабельный', N'Крестовая', 96, 7, 263, N'cashless', 965
GO
INSERT INTO list(date, order_id, status) VALUES(N'2143-6-11 6:49:4', 965, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2143-6-11 7:39:1', 965, N'done')
GO
EXECUTE add_order N'2470-27-2 7:27:33', N'Виталий', N'8-439-377-18-70', N'Подмостовский', N'Ботаническая', 70, 8, N'Спальный', N'Серова', 8, 9, 357, N'cashless', 966
GO
INSERT INTO list(date, order_id, status) VALUES(N'2470-27-2 7:31:1', 966, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2470-27-2 7:45:1', 966, N'done')
GO
EXECUTE add_order N'2185-23-12 6:45:26', N'Пётр', N'8-062-833-01-17', N'Рыбный', N'Лесная', 56, 9, N'Васильевский', N'Крестовая', 21, 9, 343, N'cash', 967
GO
INSERT INTO list(date, order_id, status) VALUES(N'2185-23-12 6:51:50', 967, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2185-23-12 7:27:56', 967, N'done')
GO
EXECUTE add_order N'2790-11-3 5:40:15', N'Тимофей', N'8-964-809-72-57', N'Приморский', N'Ленина', 77, 5, N'Кировский', N'9мая', 97, 1, 389, N'cashless', 968
GO
INSERT INTO list(date, order_id, status) VALUES(N'2790-11-3 5:45:33', 968, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2790-11-3 6:29:46', 968, N'done')
GO
EXECUTE add_order N'2361-22-10 6:32:54', N'Иван', N'8-520-976-57-06', N'Рыбный', N'Балтийская', 54, 3, N'Рыбный', N'Серова', 38, 10, 69, N'cashless', 969
GO
INSERT INTO list(date, order_id, status) VALUES(N'2361-22-10 7:25:6', 969, N'canceled')
GO
EXECUTE add_order N'2599-2-6 9:4:0', N'Николай', N'8-000-444-51-54', N'Кабельный', N'Новая', 83, 7, N'Приморский', N'Лесная', 41, 6, 188, N'cash', 970
GO
INSERT INTO list(date, order_id, status) VALUES(N'2599-2-6 9:7:22', 970, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2599-2-6 9:46:41', 970, N'done')
GO
EXECUTE add_order N'2576-18-8 2:36:57', N'Егор', N'8-863-465-60-53', N'Васильевский', N'Ботаническая', 43, 8, N'Подмостовский', N'Молодежная', 73, 9, 270, N'cash', 971
GO
INSERT INTO list(date, order_id, status) VALUES(N'2576-18-8 2:41:51', 971, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2576-18-8 2:53:21', 971, N'done')
GO
EXECUTE add_order N'2394-19-1 5:30:18', N'Иван', N'8-177-268-79-31', N'Невский', N'Садовая', 48, 8, N'Васильевский', N'Молодежная', 36, 9, 515, N'cash', 972
GO
INSERT INTO list(date, order_id, status) VALUES(N'2394-19-1 5:34:55', 972, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2394-19-1 6:8:52', 972, N'done')
GO
EXECUTE add_order N'2439-3-8 1:36:50', N'Виталий', N'8-079-830-74-94', N'Спальный', N'Балтийская', 85, 1, N'Кабельный', N'Крестовая', 75, 9, 180, N'cashless', 973
GO
INSERT INTO list(date, order_id, status) VALUES(N'2439-3-8 1:43:29', 973, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2439-3-8 2:35:6', 973, N'done')
GO
EXECUTE add_order N'2960-16-4 4:39:44', N'Пётр', N'8-202-786-97-87', N'Подмостовский', N'Советская', 100, 4, N'Кабельный', N'Советская', 58, 7, 490, N'cash', 974
GO
INSERT INTO list(date, order_id, status) VALUES(N'2960-16-4 4:43:31', 974, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2960-16-4 4:51:14', 974, N'done')
GO
EXECUTE add_order N'2717-20-3 5:32:42', N'Андрей', N'8-586-162-60-93', N'Кировский', N'Советская', 19, 4, N'Кировский', N'Крестовая', 53, 1, 67, N'cash', 975
GO
INSERT INTO list(date, order_id, status) VALUES(N'2717-20-3 5:37:50', 975, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2717-20-3 6:18:39', 975, N'done')
GO
EXECUTE add_order N'2709-11-11 1:2:25', N'Андрей', N'8-616-170-36-03', N'Центральный', N'Садовая', 88, 10, N'Запорожский', N'Мира', 89, 5, 465, N'cash', 976
GO
INSERT INTO list(date, order_id, status) VALUES(N'2709-11-11 1:8:19', 976, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2709-11-11 1:38:28', 976, N'done')
GO
EXECUTE add_order N'2070-28-5 0:3:31', N'Вячеслав', N'8-874-842-21-63', N'Подмостовский', N'Центральная', 81, 3, N'Васильевский', N'Молодежная', 20, 4, 439, N'cash', 977
GO
INSERT INTO list(date, order_id, status) VALUES(N'2070-28-5 0:9:52', 977, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2070-28-5 0:57:53', 977, N'done')
GO
EXECUTE add_order N'2392-21-3 8:17:52', N'Антон', N'8-466-509-08-89', N'Подмостовский', N'Мира', 66, 4, N'Запорожский', N'Крестовая', 11, 9, 363, N'cash', 978
GO
INSERT INTO list(date, order_id, status) VALUES(N'2392-21-3 8:21:25', 978, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2392-21-3 8:49:36', 978, N'done')
GO
EXECUTE add_order N'2390-14-2 5:48:1', N'Тимофей', N'8-970-878-12-60', N'Кабельный', N'Советская', 28, 5, N'Подмостовский', N'Молодежная', 25, 10, 396, N'cash', 979
GO
INSERT INTO list(date, order_id, status) VALUES(N'2390-14-2 5:51:27', 979, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2390-14-2 5:56:41', 979, N'done')
GO
EXECUTE add_order N'2493-3-8 0:11:33', N'Сергей', N'8-422-193-77-86', N'Кировский', N'Балтийская', 61, 4, N'Подмостовский', N'Ленина', 12, 10, 288, N'cashless', 980
GO
INSERT INTO list(date, order_id, status) VALUES(N'2493-3-8 0:31:37', 980, N'canceled')
GO
EXECUTE add_order N'2447-15-10 0:56:12', N'Кирилл', N'8-623-928-53-79', N'Рыбный', N'Садовая', 11, 3, N'Рыбный', N'Серова', 83, 3, 489, N'cashless', 981
GO
INSERT INTO list(date, order_id, status) VALUES(N'2447-15-10 1:1:32', 981, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2447-15-10 1:23:26', 981, N'done')
GO
EXECUTE add_order N'2704-15-10 6:30:36', N'Виталий', N'8-458-081-76-77', N'Невский', N'Набережная', 55, 1, N'Васильевский', N'Мира', 88, 2, 519, N'cashless', 982
GO
INSERT INTO list(date, order_id, status) VALUES(N'2704-15-10 6:35:32', 982, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2704-15-10 7:23:48', 982, N'done')
GO
EXECUTE add_order N'2214-8-2 0:11:37', N'Антон', N'8-238-871-96-01', N'Подмостовский', N'Крестовая', 94, 7, N'Спальный', N'Советская', 37, 7, 536, N'cashless', 983
GO
INSERT INTO list(date, order_id, status) VALUES(N'2214-8-2 0:16:49', 983, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2214-8-2 0:42:46', 983, N'done')
GO
EXECUTE add_order N'2477-11-11 2:12:56', N'Вячеслав', N'8-756-179-61-54', N'Приморский', N'Садовая', 43, 6, N'Кировский', N'Ленина', 44, 1, 469, N'cash', 984
GO
INSERT INTO list(date, order_id, status) VALUES(N'2477-11-11 2:17:29', 984, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2477-11-11 2:39:15', 984, N'done')
GO
EXECUTE add_order N'2002-6-11 1:56:30', N'Вячеслав', N'8-224-738-74-99', N'Центральный', N'Садовая', 43, 5, N'Кировский', N'Крестовая', 89, 3, 318, N'cashless', 985
GO
INSERT INTO list(date, order_id, status) VALUES(N'2002-6-11 2:1:28', 985, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2002-6-11 2:39:59', 985, N'done')
GO
EXECUTE add_order N'2272-2-6 0:52:10', N'Андрей', N'8-825-707-14-77', N'Спальный', N'Ленина', 90, 1, N'Спальный', N'Крестовая', 72, 7, 52, N'cash', 986
GO
INSERT INTO list(date, order_id, status) VALUES(N'2272-2-6 0:55:45', 986, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2272-2-6 1:9:24', 986, N'done')
GO
EXECUTE add_order N'2123-20-4 1:5:55', N'Андрей', N'8-430-959-46-97', N'Спальный', N'Ботаническая', 14, 1, N'Невский', N'Мира', 31, 10, 350, N'cash', 987
GO
INSERT INTO list(date, order_id, status) VALUES(N'2123-20-4 1:10:38', 987, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2123-20-4 1:55:25', 987, N'done')
GO
EXECUTE add_order N'2632-3-8 2:42:27', N'Владимир', N'8-252-738-76-48', N'Кировский', N'Центральная', 94, 8, N'Подмостовский', N'Серова', 24, 7, 295, N'cash', 988
GO
INSERT INTO list(date, order_id, status) VALUES(N'2632-3-8 2:46:52', 988, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2632-3-8 3:23:58', 988, N'done')
GO
EXECUTE add_order N'2156-21-5 5:12:5', N'Владимир', N'8-139-281-05-64', N'Подмостовский', N'Серова', 40, 7, N'Васильевский', N'Садовая', 59, 10, 476, N'cash', 989
GO
INSERT INTO list(date, order_id, status) VALUES(N'2156-21-5 5:17:16', 989, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2156-21-5 6:4:15', 989, N'done')
GO
EXECUTE add_order N'2804-15-7 3:38:36', N'Михаил', N'8-480-626-71-50', N'Приморский', N'Ботаническая', 77, 5, N'Невский', N'Серова', 78, 2, 264, N'cashless', 990
GO
INSERT INTO list(date, order_id, status) VALUES(N'2804-15-7 3:42:15', 990, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2804-15-7 4:30:2', 990, N'done')
GO
EXECUTE add_order N'2445-2-11 1:56:37', N'Вячеслав', N'8-178-820-15-00', N'Кабельный', N'Садовая', 12, 4, N'Васильевский', N'9мая', 54, 6, 285, N'cashless', 991
GO
INSERT INTO list(date, order_id, status) VALUES(N'2445-2-11 2:12:40', 991, N'canceled')
GO
EXECUTE add_order N'2210-11-2 3:22:2', N'Владислав', N'8-310-759-54-73', N'Запорожский', N'Школьная', 58, 4, N'Подмостовский', N'Серова', 72, 2, 386, N'cash', 992
GO
INSERT INTO list(date, order_id, status) VALUES(N'2210-11-2 3:27:40', 992, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2210-11-2 3:59:31', 992, N'done')
GO
EXECUTE add_order N'2661-4-2 4:0:49', N'Никита', N'8-963-887-16-55', N'Васильевский', N'Молодежная', 79, 4, N'Запорожский', N'Советская', 84, 8, 504, N'cashless', 993
GO
INSERT INTO list(date, order_id, status) VALUES(N'2661-4-2 4:6:4', 993, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2661-4-2 4:29:2', 993, N'done')
GO
EXECUTE add_order N'2237-21-12 8:23:57', N'Дмитрий', N'8-480-824-08-00', N'Васильевский', N'Серова', 73, 10, N'Кировский', N'Садовая', 75, 8, 483, N'cash', 994
GO
INSERT INTO list(date, order_id, status) VALUES(N'2237-21-12 8:58:2', 994, N'canceled')
GO
EXECUTE add_order N'2369-4-6 5:7:33', N'Александр', N'8-280-037-16-67', N'Запорожский', N'Балтийская', 35, 4, N'Невский', N'Серова', 14, 5, 360, N'cashless', 995
GO
INSERT INTO list(date, order_id, status) VALUES(N'2369-4-6 5:13:27', 995, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2369-4-6 5:27:3', 995, N'done')
GO
EXECUTE add_order N'2874-23-12 3:49:47', N'Виталий', N'8-521-875-09-88', N'Рыбный', N'9мая', 4, 3, N'Кабельный', N'Садовая', 48, 9, 523, N'cashless', 996
GO
INSERT INTO list(date, order_id, status) VALUES(N'2874-23-12 3:54:37', 996, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2874-23-12 4:11:31', 996, N'done')
GO
EXECUTE add_order N'2129-4-5 5:45:53', N'Вячеслав', N'8-621-094-87-31', N'Центральный', N'Ботаническая', 71, 2, N'Васильевский', N'Молодежная', 82, 5, 334, N'cash', 997
GO
INSERT INTO list(date, order_id, status) VALUES(N'2129-4-5 6:28:30', 997, N'canceled')
GO
EXECUTE add_order N'2933-4-11 5:47:9', N'Вячеслав', N'8-744-546-58-44', N'Центральный', N'Серова', 28, 6, N'Рыбный', N'Крестовая', 56, 3, 462, N'cash', 998
GO
INSERT INTO list(date, order_id, status) VALUES(N'2933-4-11 5:53:39', 998, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2933-4-11 6:38:23', 998, N'done')
GO
EXECUTE add_order N'2919-20-8 1:18:20', N'Евгений', N'8-262-552-12-09', N'Приморский', N'9мая', 44, 4, N'Рыбный', N'Школьная', 64, 3, 190, N'cash', 999
GO
INSERT INTO list(date, order_id, status) VALUES(N'2919-20-8 1:21:43', 999, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2919-20-8 1:55:12', 999, N'done')
GO
EXECUTE add_order N'2688-17-5 4:39:59', N'Владимир', N'8-070-107-56-83', N'Подмостовский', N'Садовая', 55, 1, N'Запорожский', N'Набережная', 58, 1, 198, N'cash', 1000
GO
INSERT INTO list(date, order_id, status) VALUES(N'2688-17-5 4:45:49', 1000, N'in progress')
GO
INSERT INTO list(date, order_id, status) VALUES(N'2688-17-5 4:57:16', 1000, N'done')
GO