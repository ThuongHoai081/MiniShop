DROP TABLE IF EXISTS `i_user`;
create table `i_user`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
   PRIMARY KEY (`id`) USING BTREE
)
create table `san_pham`(
   `id` bigint NOT NULL PRIMARY KEY auto_increment,
   `ten_sp` VARCHAR(255) NULL,
   `so_luong` int not NULL,
   `gia` float not NULL,
   `hinh_anh` VARCHAR(255) NULL,
   `mo_ta` TEXT NULL
   
);
