/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : i_tag

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 21/02/2022 17:50:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_brand
-- ----------------------------
DROP TABLE IF EXISTS `pms_brand`;
CREATE TABLE `pms_brand` (
                             `id` bigint NOT NULL AUTO_INCREMENT,
                             `name` varchar(64) DEFAULT NULL,
                             `first_letter` varchar(8) DEFAULT NULL COMMENT '品牌首字母',
                             `sort` int DEFAULT NULL COMMENT '排序（数值越大越靠前）',
                             `show_status` int DEFAULT NULL COMMENT '是否显示：0不显示；1显示',
                             `product_count` int DEFAULT NULL COMMENT '产品数量',
                             `product_comment_count` int DEFAULT NULL COMMENT '产品评论数量',
                             `logo` varchar(255) DEFAULT NULL COMMENT '品牌logo',
                             `big_pic` varchar(255) DEFAULT NULL COMMENT '品牌大图',
                             `brand_remarks` text COMMENT '品牌备注',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COMMENT='商品管理-品牌表';

-- ----------------------------
-- Records of pms_brand
-- ----------------------------
BEGIN;
INSERT INTO `pms_brand` VALUES (1, '李宁', 'L', 10, 1, 1000, 10000, NULL, NULL, '中国李宁');
COMMIT;

-- ----------------------------
-- Table structure for ums_admin
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin`;
CREATE TABLE `ums_admin` (
                             `id` bigint NOT NULL AUTO_INCREMENT,
                             `username` varchar(64) DEFAULT NULL,
                             `password` varchar(64) DEFAULT NULL,
                             `icon` varchar(500) DEFAULT NULL COMMENT '头像',
                             `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
                             `nick_name` varchar(200) DEFAULT NULL COMMENT '昵称',
                             `remarks` varchar(500) DEFAULT NULL COMMENT '用户备注',
                             `created_time` datetime DEFAULT NULL COMMENT '用户创建时间',
                             `login_time` datetime DEFAULT NULL COMMENT '用户最后登录时间',
                             `status` int DEFAULT '1' COMMENT '帐号启用状态：0 禁用；1 启用',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='后台用户表';

-- ----------------------------
-- Records of ums_admin
-- ----------------------------
BEGIN;
INSERT INTO `ums_admin` VALUES (1, 'test', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', NULL, '测试账号', NULL, '2022-02-21 16:58:14', '2022-02-21 16:58:14', 1);
INSERT INTO `ums_admin` VALUES (2, 'admin', '$2a$10$.E1FokumK5GIXWgKlg.Hc.i/0/2.qdAwYFL1zc5QHdyzpXOr38RZO', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/170157_yIl3_1767531.jpg', 'admin@163.com', '系统管理员', '系统管理员', '2022-02-21 16:58:14', '2022-02-21 16:58:14', 1);
COMMIT;

-- ----------------------------
-- Table structure for ums_permission
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE `ums_permission` (
                                  `id` bigint NOT NULL AUTO_INCREMENT,
                                  `pid` bigint DEFAULT NULL COMMENT '父级权限id',
                                  `name` varchar(100) DEFAULT NULL COMMENT '权限名称',
                                  `value` varchar(200) DEFAULT NULL COMMENT '权限值',
                                  `icon` varchar(500) DEFAULT NULL COMMENT '图标',
                                  `type` int DEFAULT NULL COMMENT '权限类型：0 目录；1 菜单；2 按钮（接口绑定权限）',
                                  `uri` varchar(200) DEFAULT NULL COMMENT '前端资源路径',
                                  `status` int DEFAULT NULL COMMENT '启用状态；0 禁用；1 启用',
                                  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
                                  `sort` int DEFAULT NULL COMMENT '排序（数值越大越靠前）',
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='后台权限表';

-- ----------------------------
-- Records of ums_permission
-- ----------------------------
BEGIN;
INSERT INTO `ums_permission` VALUES (1, 0, '商品', NULL, NULL, 0, NULL, 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (2, 1, '商品列表', 'pms:product:read', NULL, 1, '/pms/product/index', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (3, 1, '添加商品', 'pms:product:create', NULL, 1, '/pms/product/add', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (4, 1, '商品分类', 'pms:productCategory:read', NULL, 1, '/pms/productCate/index', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (5, 1, '商品类型', 'pms:productAttribute:read', NULL, 1, '/pms/productAttr/index', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (6, 1, '品牌管理', 'pms:brand:read', NULL, 1, '/pms/brand/index', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (7, 2, '编辑商品', 'pms:product:update', NULL, 2, '/pms/product/updateProduct', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (8, 2, '删除商品', 'pms:product:delete', NULL, 2, '/pms/product/delete', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (9, 4, '添加商品分类', 'pms:productCategory:create', NULL, 2, '/pms/productCate/create', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (10, 4, '修改商品分类', 'pms:productCategory:update', NULL, 2, '/pms/productCate/update', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (11, 4, '删除商品分类', 'pms:productCategory:delete', NULL, 2, '/pms/productAttr/delete', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (12, 5, '添加商品类型', 'pms:productAttribute:create', NULL, 2, '/pms/productAttr/create', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (13, 5, '修改商品类型', 'pms:productAttribute:update', NULL, 2, '/pms/productAttr/update', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (14, 5, '删除商品类型', 'pms:productAttribute:delete', NULL, 2, '/pms/productAttr/delete', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (15, 6, '添加品牌', 'pms:brand:create', NULL, 2, '/pms/brand/add', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (16, 6, '修改品牌', 'pms:brand:update', NULL, 2, '/pms/brand/update', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (17, 6, '删除品牌', 'pms:brand:delete', NULL, 2, '/pms/brand/delete', 1, '2022-02-21 16:58:14', 0);
INSERT INTO `ums_permission` VALUES (18, 0, '首页', NULL, NULL, 0, NULL, 1, '2022-02-21 16:58:14', 0);
COMMIT;

-- ----------------------------
-- Table structure for ums_relation_admin_permission
-- ----------------------------
DROP TABLE IF EXISTS `ums_relation_admin_permission`;
CREATE TABLE `ums_relation_admin_permission` (
                                                 `id` bigint NOT NULL AUTO_INCREMENT,
                                                 `admin_id` bigint DEFAULT NULL,
                                                 `permission_id` bigint DEFAULT NULL,
                                                 `type` int DEFAULT NULL COMMENT '加权限和减权限',
                                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户-权限关联表(角色中定义的权限以外的加减权限)';

-- ----------------------------
-- Records of ums_relation_admin_permission
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ums_relation_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_relation_admin_role`;
CREATE TABLE `ums_relation_admin_role` (
                                           `id` bigint NOT NULL AUTO_INCREMENT,
                                           `admin_id` bigint DEFAULT NULL,
                                           `role_id` bigint DEFAULT NULL,
                                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='用户角色关联表';

-- ----------------------------
-- Records of ums_relation_admin_role
-- ----------------------------
BEGIN;
INSERT INTO `ums_relation_admin_role` VALUES (13, 2, 1);
INSERT INTO `ums_relation_admin_role` VALUES (15, 2, 2);
INSERT INTO `ums_relation_admin_role` VALUES (16, 2, 4);
COMMIT;

-- ----------------------------
-- Table structure for ums_relation_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `ums_relation_role_permission`;
CREATE TABLE `ums_relation_role_permission` (
                                                `id` bigint NOT NULL AUTO_INCREMENT,
                                                `role_id` bigint DEFAULT NULL,
                                                `permission_id` bigint DEFAULT NULL,
                                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='角色-权限关联表';

-- ----------------------------
-- Records of ums_relation_role_permission
-- ----------------------------
BEGIN;
INSERT INTO `ums_relation_role_permission` VALUES (1, 1, 1);
INSERT INTO `ums_relation_role_permission` VALUES (2, 1, 2);
INSERT INTO `ums_relation_role_permission` VALUES (3, 1, 3);
INSERT INTO `ums_relation_role_permission` VALUES (4, 1, 7);
INSERT INTO `ums_relation_role_permission` VALUES (5, 1, 8);
INSERT INTO `ums_relation_role_permission` VALUES (6, 2, 4);
INSERT INTO `ums_relation_role_permission` VALUES (7, 2, 9);
INSERT INTO `ums_relation_role_permission` VALUES (8, 2, 10);
INSERT INTO `ums_relation_role_permission` VALUES (9, 2, 11);
INSERT INTO `ums_relation_role_permission` VALUES (10, 3, 5);
INSERT INTO `ums_relation_role_permission` VALUES (11, 3, 12);
INSERT INTO `ums_relation_role_permission` VALUES (12, 3, 13);
INSERT INTO `ums_relation_role_permission` VALUES (13, 3, 14);
INSERT INTO `ums_relation_role_permission` VALUES (14, 4, 6);
INSERT INTO `ums_relation_role_permission` VALUES (15, 4, 15);
INSERT INTO `ums_relation_role_permission` VALUES (16, 4, 16);
INSERT INTO `ums_relation_role_permission` VALUES (17, 4, 17);
COMMIT;

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role` (
                            `id` bigint NOT NULL AUTO_INCREMENT,
                            `name` varchar(100) DEFAULT NULL COMMENT 'j角色名称',
                            `description` varchar(500) DEFAULT NULL COMMENT '角色描述',
                            `admin_count` int DEFAULT NULL COMMENT '该角色下用户数量',
                            `created_time` datetime DEFAULT NULL COMMENT '角色创建时间',
                            `status` int DEFAULT '1' COMMENT '角色启用状态：0 禁用；1 启用',
                            `sort` int DEFAULT '0' COMMENT '排序（数值越大越靠前）',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='后台角色表';

-- ----------------------------
-- Records of ums_role
-- ----------------------------
BEGIN;
INSERT INTO `ums_role` VALUES (1, '商品管理员', '商品管理员', 0, '2022-02-21 17:00:39', 1, 0);
INSERT INTO `ums_role` VALUES (2, '商品分类管理员', '商品分类管理员', 0, '2022-02-21 17:00:39', 1, 0);
INSERT INTO `ums_role` VALUES (3, '商品类型管理员', '商品类型管理员', 0, '2022-02-21 17:00:39', 1, 0);
INSERT INTO `ums_role` VALUES (4, '品牌管理员', '品牌管理员', 0, '2022-02-21 17:00:39', 1, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
