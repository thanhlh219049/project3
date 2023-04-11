DROP TABLE IF EXISTS `bill_details`;
CREATE TABLE `bill_details`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` bigint(20) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `bill_id` bigint(20) NULL DEFAULT NULL,
  `product_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK7coossdaxtwjpy23knsjtua2i`(`bill_id`) USING BTREE,
  INDEX `FK4iagdr0uhsq4tj0ag99nmmya1`(`product_id`) USING BTREE,
  CONSTRAINT `FK4iagdr0uhsq4tj0ag99nmmya1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK7coossdaxtwjpy23knsjtua2i` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
