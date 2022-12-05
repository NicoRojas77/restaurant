--
-- File generated with SQLiteStudio v3.3.3 on ma. nov. 29 23:11:39 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table: auth_group_permissions
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_permission
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_usuario', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_usuario', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_usuario', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_usuario', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_categoria', 'Can add categoria');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_categoria', 'Can change categoria');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_categoria', 'Can delete categoria');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_categoria', 'Can view categoria');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_producto', 'Can add producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_producto', 'Can change producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_producto', 'Can delete producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_producto', 'Can view producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_proveedor', 'Can add proveedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_proveedor', 'Can change proveedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_proveedor', 'Can delete proveedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_proveedor', 'Can view proveedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_mesa', 'Can add mesa');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_mesa', 'Can change mesa');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_mesa', 'Can delete mesa');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_mesa', 'Can view mesa');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_orden', 'Can add orden');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_orden', 'Can change orden');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_orden', 'Can delete orden');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_orden', 'Can view orden');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 12, 'add_pago', 'Can add pago');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 12, 'change_pago', 'Can change pago');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 12, 'delete_pago', 'Can delete pago');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 12, 'view_pago', 'Can view pago');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (49, 13, 'add_ingrediente', 'Can add ingrediente');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (50, 13, 'change_ingrediente', 'Can change ingrediente');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (51, 13, 'delete_ingrediente', 'Can delete ingrediente');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (52, 13, 'view_ingrediente', 'Can view ingrediente');

-- Table: categories_categoria
CREATE TABLE "categories_categoria" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre" varchar(150) NOT NULL, "imagen" varchar(100) NOT NULL);
INSERT INTO categories_categoria (id, nombre, imagen) VALUES (36, 'Platos', 'categories/Cazuela-Dia-Cocina-Chilena-.jpg');
INSERT INTO categories_categoria (id, nombre, imagen) VALUES (37, 'Postres', 'categories/manjarate-casero.jpg');
INSERT INTO categories_categoria (id, nombre, imagen) VALUES (39, 'Bebidas', 'categories/Bebida-lata-Coca-Cola-350-cc.jpg');
INSERT INTO categories_categoria (id, nombre, imagen) VALUES (40, 'Ensaladas', 'categories/ensalada_cesar.jpg');

-- Table: django_admin_log
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" bigint NOT NULL REFERENCES "users_usuario" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (1, '2', '', 1, '[{"added": {}}]', 6, 1, '2022-11-15 06:09:36.419041');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (2, '2', 'staff@staff.cl', 2, '[{"changed": {"fields": ["First name", "Last name", "Email"]}}]', 6, 1, '2022-11-15 06:10:00.540146');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (3, '1', 'Prueba', 1, '[{"added": {}}]', 7, 1, '2022-11-16 19:42:06.021368');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (4, '12', 'sadsadasdsa', 3, '', 7, 1, '2022-11-18 00:56:52.700043');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (5, '11', 'dsadsadsadsadsadsa', 3, '', 7, 1, '2022-11-18 00:56:52.704042');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (6, '10', 'Nicolas', 3, '', 7, 1, '2022-11-18 00:56:52.707041');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (7, '8', 'nicolas', 3, '', 7, 1, '2022-11-18 00:56:52.711044');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (8, '7', 'ahorasi', 3, '', 7, 1, '2022-11-18 00:56:52.714059');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (9, '6', 'sadasasdsadasd', 3, '', 7, 1, '2022-11-18 00:56:52.717060');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (10, '5', 'sdadsadsada', 3, '', 7, 1, '2022-11-18 00:56:52.721058');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (11, '4', 'Cazuela', 3, '', 7, 1, '2022-11-18 00:56:52.724058');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (12, '3', 'dasdasd', 3, '', 7, 1, '2022-11-18 00:56:52.728056');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (13, '2', 'Cazuela', 3, '', 7, 1, '2022-11-18 00:56:52.731058');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (14, '23', 'nicolas', 3, '', 7, 1, '2022-11-18 04:39:32.260987');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (15, '22', 'nicolas', 3, '', 7, 1, '2022-11-18 04:39:32.265986');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (16, '21', 'nicolas', 3, '', 7, 1, '2022-11-18 04:39:32.268984');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (17, '20', 'nicolas', 3, '', 7, 1, '2022-11-18 04:39:32.272985');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (18, '19', 'nicolas', 3, '', 7, 1, '2022-11-18 04:39:32.275986');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (19, '18', 'nicolas', 3, '', 7, 1, '2022-11-18 04:39:32.279987');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (20, '17', 'nicolas', 3, '', 7, 1, '2022-11-18 04:39:32.282986');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (21, '16', 'nicolas', 3, '', 7, 1, '2022-11-18 04:39:32.285986');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (22, '15', 'nicolas', 3, '', 7, 1, '2022-11-18 04:39:32.288984');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (23, '14', 'nicolas', 3, '', 7, 1, '2022-11-18 04:39:32.292985');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (24, '13', 'nicolas', 3, '', 7, 1, '2022-11-18 04:39:32.296985');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (25, '9', 'Prueba3', 3, '', 7, 1, '2022-11-18 04:39:32.299988');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (26, '36', 'comida', 1, '[{"added": {}}]', 7, 1, '2022-11-18 07:30:15.119962');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (27, '1', 'Cazuela', 1, '[{"added": {}}]', 8, 1, '2022-11-18 07:30:17.008488');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (28, '2', 'pasta bolognesa', 1, '[{"added": {}}]', 8, 1, '2022-11-18 07:31:20.155809');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (29, '3', 'pico', 1, '[{"added": {}}]', 8, 1, '2022-11-19 06:10:04.937871');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (30, '1', '1', 1, '[{"added": {}}]', 10, 1, '2022-11-22 06:47:47.897815');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (31, '2', '2', 1, '[{"added": {}}]', 10, 1, '2022-11-22 06:48:00.926819');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (32, '1', '1', 1, '[{"added": {}}]', 11, 1, '2022-11-23 04:51:38.974675');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (33, '1', '4', 2, '[{"changed": {"fields": ["Mesa", "Cerrado"]}}]', 11, 1, '2022-11-24 07:47:07.716406');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (34, '2', '2', 1, '[{"added": {}}]', 11, 1, '2022-11-24 07:55:36.463477');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (35, '3', '2', 1, '[{"added": {}}]', 11, 1, '2022-11-24 07:58:51.486006');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (36, '3', '2', 2, '[{"changed": {"fields": ["Estado"]}}]', 11, 1, '2022-11-24 08:21:05.154625');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (37, '2', '2', 2, '[{"changed": {"fields": ["Estado"]}}]', 11, 1, '2022-11-24 08:21:23.786188');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (38, '4', '3', 1, '[{"added": {}}]', 11, 1, '2022-11-24 08:37:08.726245');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (39, '4', '3', 2, '[{"changed": {"fields": ["Estado"]}}]', 11, 1, '2022-11-24 08:37:31.553448');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (40, '5', '1', 1, '[{"added": {}}]', 11, 1, '2022-11-24 08:47:02.100111');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (41, '5', '1', 2, '[{"changed": {"fields": ["Estado"]}}]', 11, 1, '2022-11-24 08:47:20.613110');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (42, '5', '1', 2, '[{"changed": {"fields": ["Estado"]}}]', 11, 1, '2022-11-24 08:47:57.162626');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (43, '5', '1', 2, '[{"changed": {"fields": ["Estado"]}}]', 11, 1, '2022-11-24 08:48:37.286625');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (44, '5', '1', 2, '[{"changed": {"fields": ["Estado"]}}]', 11, 1, '2022-11-24 08:51:47.893131');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (45, '5', '1', 2, '[{"changed": {"fields": ["Estado"]}}]', 11, 1, '2022-11-24 08:52:03.999527');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (46, '6', '1', 1, '[{"added": {}}]', 11, 1, '2022-11-24 08:52:30.808978');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (47, '7', '3', 1, '[{"added": {}}]', 11, 1, '2022-11-24 08:52:47.055017');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (48, '8', '1', 1, '[{"added": {}}]', 11, 1, '2022-11-25 22:07:15.464467');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (49, '9', '1', 1, '[{"added": {}}]', 11, 1, '2022-11-25 22:07:27.338468');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (50, '1', 'Pago object (1)', 1, '[{"added": {}}]', 12, 1, '2022-11-26 22:19:45.665458');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (51, '10', '3', 1, '[{"added": {}}]', 11, 1, '2022-11-26 23:24:47.356348');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (52, '11', '3', 1, '[{"added": {}}]', 11, 1, '2022-11-26 23:24:57.296350');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (53, '12', '3', 1, '[{"added": {}}]', 11, 1, '2022-11-26 23:25:06.419349');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (54, '9', '1', 2, '[{"changed": {"fields": ["Pago"]}}]', 11, 1, '2022-11-26 23:52:08.087537');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (55, '8', '1', 2, '[{"changed": {"fields": ["Pago"]}}]', 11, 1, '2022-11-26 23:52:16.208538');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (56, '6', '1', 2, '[{"changed": {"fields": ["Pago"]}}]', 11, 1, '2022-11-26 23:52:20.619548');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (57, '9', '1', 2, '[]', 11, 1, '2022-11-26 23:52:35.187551');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (58, '8', '1', 2, '[]', 11, 1, '2022-11-26 23:52:38.010548');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (59, '1', 'Pago object (1)', 2, '[]', 12, 1, '2022-11-26 23:53:02.573547');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (60, '13', '5', 1, '[{"added": {}}]', 11, 1, '2022-11-27 00:55:34.350207');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (61, '14', '5', 1, '[{"added": {}}]', 11, 1, '2022-11-27 00:55:46.570654');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (62, '14', '5', 3, '', 11, 1, '2022-11-28 06:38:27.165710');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (63, '13', '5', 3, '', 11, 1, '2022-11-28 06:38:27.169712');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (64, '12', '3', 3, '', 11, 1, '2022-11-28 06:38:27.173710');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (65, '11', '3', 3, '', 11, 1, '2022-11-28 06:38:27.176711');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (66, '10', '3', 3, '', 11, 1, '2022-11-28 06:38:27.180712');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (67, '9', '1', 3, '', 11, 1, '2022-11-28 06:38:27.184711');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (68, '8', '1', 3, '', 11, 1, '2022-11-28 06:38:27.187712');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (69, '7', '3', 3, '', 11, 1, '2022-11-28 06:38:27.190712');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (70, '6', '1', 3, '', 11, 1, '2022-11-28 06:38:27.194710');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (71, '5', '1', 3, '', 11, 1, '2022-11-28 06:38:27.199713');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (72, '4', '3', 3, '', 11, 1, '2022-11-28 06:38:27.202711');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (73, '3', '2', 3, '', 11, 1, '2022-11-28 06:38:27.205711');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (74, '2', '2', 3, '', 11, 1, '2022-11-28 06:38:27.209713');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (75, '1', '4', 3, '', 11, 1, '2022-11-28 06:38:27.212711');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (76, '20', '105', 2, '[{"changed": {"fields": ["Pago", "Cerrado"]}}]', 11, 1, '2022-11-29 06:44:40.855138');

-- Table: django_content_type
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'users', 'usuario');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'categories', 'categoria');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'products', 'producto');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'supplier', 'proveedor');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'tables', 'mesa');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'orders', 'orden');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'payments', 'pago');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'ingredients', 'ingrediente');

-- Table: django_migrations
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2022-11-09 18:18:16.434878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2022-11-09 18:18:16.443878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'auth', '0001_initial', '2022-11-09 18:18:16.456878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2022-11-09 18:18:16.465877');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'auth', '0003_alter_user_email_max_length', '2022-11-09 18:18:16.471878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'auth', '0004_alter_user_username_opts', '2022-11-09 18:18:16.478878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0005_alter_user_last_login_null', '2022-11-09 18:18:16.485878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0006_require_contenttypes_0002', '2022-11-09 18:18:16.489878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2022-11-09 18:18:16.495878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0008_alter_user_username_max_length', '2022-11-09 18:18:16.502878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2022-11-09 18:18:16.508878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0010_alter_group_name_max_length', '2022-11-09 18:18:16.516879');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0011_update_proxy_permissions', '2022-11-09 18:18:16.523878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2022-11-09 18:18:16.529878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'users', '0001_initial', '2022-11-09 18:18:16.540877');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'admin', '0001_initial', '2022-11-09 18:18:16.553878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2022-11-09 18:18:16.565878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-09 18:18:16.573878');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'sessions', '0001_initial', '2022-11-09 18:18:16.581877');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'categories', '0001_initial', '2022-11-16 19:34:15.293862');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'products', '0001_initial', '2022-11-18 07:29:00.942589');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'products', '0002_rename_active_producto_activo', '2022-11-18 07:49:43.236484');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'supplier', '0001_initial', '2022-11-22 00:25:14.434044');
INSERT INTO django_migrations (id, app, name, applied) VALUES (24, 'tables', '0001_initial', '2022-11-22 06:43:55.950772');
INSERT INTO django_migrations (id, app, name, applied) VALUES (25, 'orders', '0001_initial', '2022-11-23 04:46:37.512634');
INSERT INTO django_migrations (id, app, name, applied) VALUES (26, 'payments', '0001_initial', '2022-11-26 21:21:59.411218');
INSERT INTO django_migrations (id, app, name, applied) VALUES (27, 'orders', '0002_orden_pago', '2022-11-26 21:41:40.470414');
INSERT INTO django_migrations (id, app, name, applied) VALUES (28, 'ingredients', '0001_initial', '2022-11-29 17:48:51.183967');
INSERT INTO django_migrations (id, app, name, applied) VALUES (29, 'orders', '0003_alter_orden_pago', '2022-11-29 17:48:51.190967');

-- Table: django_session
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('sqbxz4ztdwg2bs9pr821kqvkbhryd41x', '.eJxVjEEOwiAQRe_C2pBSKDAu3fcMZGAGWzWQlHZlvLtt0oVu_3vvv0XAbZ3C1ngJM4mrUOLyu0VMTy4HoAeWe5WplnWZozwUedImx0r8up3u38GEbdprQ-wgx0Epr7FLgKBNT6hBUc_WAiqE7HI0HZO1PXqv9M4HTtnA0Dnx-QLk9Dfa:1oup7V:zRSwnwSHZrkG5iCYyhRq1CtrV7eQ2jP6Cx5ahzY6tlw', '2022-11-29 06:08:29.909022');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('qhjmhyoxgtsg4dj3riv51cg42g3l09nd', '.eJxVjEEOwiAQRe_C2pBSKDAu3fcMZGAGWzWQlHZlvLtt0oVu_3vvv0XAbZ3C1ngJM4mrUOLyu0VMTy4HoAeWe5WplnWZozwUedImx0r8up3u38GEbdprQ-wgx0Epr7FLgKBNT6hBUc_WAiqE7HI0HZO1PXqv9M4HTtnA0Dnx-QLk9Dfa:1ozu8Z:Lwc_TzqVobtpnFfpKL2aSjtgXLf9qIrdUwiK4CGDL7o', '2022-12-13 06:30:35.638973');

-- Table: ingredients_ingrediente
CREATE TABLE "ingredients_ingrediente" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre" varchar(150) NOT NULL);

-- Table: orders_orden
CREATE TABLE "orders_orden" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "estado" varchar(250) NOT NULL, "creado_el" datetime NOT NULL, "cerrado" bool NOT NULL, "mesa_id" bigint NULL REFERENCES "tables_mesa" ("id") DEFERRABLE INITIALLY DEFERRED, "producto_id" bigint NULL REFERENCES "products_producto" ("id") DEFERRABLE INITIALLY DEFERRED, "pago_id" bigint NULL REFERENCES "payments_pago" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO orders_orden (id, estado, creado_el, cerrado, mesa_id, producto_id, pago_id) VALUES (15, 'ENTREGADO', '2022-11-28 06:42:35.158005', 1, 3, 1, NULL);
INSERT INTO orders_orden (id, estado, creado_el, cerrado, mesa_id, producto_id, pago_id) VALUES (16, 'PENDIENTE', '2022-11-28 06:42:35.175005', 1, 3, 1, NULL);
INSERT INTO orders_orden (id, estado, creado_el, cerrado, mesa_id, producto_id, pago_id) VALUES (17, 'PENDIENTE', '2022-11-28 06:42:35.190005', 1, 3, 1, NULL);
INSERT INTO orders_orden (id, estado, creado_el, cerrado, mesa_id, producto_id, pago_id) VALUES (18, 'ENTREGADO', '2022-11-29 04:34:33.359623', 1, 12, 17, NULL);
INSERT INTO orders_orden (id, estado, creado_el, cerrado, mesa_id, producto_id, pago_id) VALUES (19, 'ENTREGADO', '2022-11-29 04:34:33.375623', 1, 12, 18, NULL);
INSERT INTO orders_orden (id, estado, creado_el, cerrado, mesa_id, producto_id, pago_id) VALUES (20, 'ENTREGADO', '2022-11-29 05:56:51.081848', 1, 12, 1, 1);
INSERT INTO orders_orden (id, estado, creado_el, cerrado, mesa_id, producto_id, pago_id) VALUES (21, 'ENTREGADO', '2022-11-29 07:22:55.834471', 1, 11, 1, NULL);
INSERT INTO orders_orden (id, estado, creado_el, cerrado, mesa_id, producto_id, pago_id) VALUES (22, 'ENTREGADO', '2022-11-29 17:50:16.602131', 1, 1, 1, NULL);
INSERT INTO orders_orden (id, estado, creado_el, cerrado, mesa_id, producto_id, pago_id) VALUES (23, 'ENTREGADO', '2022-11-29 17:50:16.619132', 1, 1, 1, NULL);
INSERT INTO orders_orden (id, estado, creado_el, cerrado, mesa_id, producto_id, pago_id) VALUES (24, 'ENTREGADO', '2022-11-29 17:50:16.634133', 1, 1, 1, NULL);

-- Table: payments_pago
CREATE TABLE "payments_pago" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "totalPago" integer NOT NULL, "tipoPago" varchar(250) NOT NULL, "estadoPago" varchar(250) NOT NULL, "creado_el" datetime NOT NULL, "mesa_id" bigint NULL REFERENCES "tables_mesa" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (1, 10000, 'TARJETA', 'PAGADO', '2022-11-26 22:19:45.663458', 1);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (2, 3300, 'TARJETA', 'PAGADO', '2022-11-29 05:46:26.883919', 12);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (3, 3300, 'TARJETA', 'PAGADO', '2022-11-29 05:46:54.778314', 12);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (4, 3300, 'EFECTIVO', 'PAGADO', '2022-11-29 05:51:28.419435', 12);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (5, 6800, 'EFECTIVO', 'PAGADO', '2022-11-29 06:40:16.975634', 12);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (6, 9500, 'EFECTIVO', 'PAGADO', '2022-11-29 06:41:10.457264', 12);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (7, 10500, 'TARJETA', 'PAGADO', '2022-11-29 06:50:33.081199', 3);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (8, 10500, 'TARJETA', 'PAGADO', '2022-11-29 06:52:42.345012', 3);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (9, 9500, 'TARJETA', 'PAGADO', '2022-11-29 07:01:57.569871', 12);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (10, 3500, 'TARJETA', 'PAGADO', '2022-11-29 07:33:25.863408', 11);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (11, 10500, 'TARJETA', 'PAGADO', '2022-11-29 07:40:38.444328', 3);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (12, 10500, 'TARJETA', 'PAGADO', '2022-11-29 07:43:54.516883', 3);
INSERT INTO payments_pago (id, totalPago, tipoPago, estadoPago, creado_el, mesa_id) VALUES (13, 10500, 'EFECTIVO', 'PAGADO', '2022-11-29 17:50:39.476149', 1);

-- Table: products_producto
CREATE TABLE "products_producto" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre" varchar(250) NOT NULL, "imagen" varchar(100) NOT NULL, "precio" integer NOT NULL, "activo" bool NOT NULL, "categoria_id" bigint NULL REFERENCES "categories_categoria" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (1, 'Cazuela', 'products/Cazuela-Dia-Cocina-Chilena-.jpg', 3500, 1, 36);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (2, 'Machas a la parmesana', 'products/almejas-a-la-parmesana.jpg', 5000, 1, 36);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (10, 'Agua sin gas', 'products/agua_sin_gas.jpg', 1000, 1, 39);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (11, 'Agua con gas', 'products/agua-mineral-cachantun-500cc-con-gas.jpg', 1000, 1, 39);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (12, 'Arrollado de huaso', 'products/arrollado-de-huaso.jpg', 4000, 1, 36);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (13, 'Coca-cola', 'products/Bebida-lata-Coca-Cola-350-cc.jpg', 1500, 1, 39);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (14, 'Fanta', 'products/Bebida-lata-Fanta-350-cc.jpg', 1500, 1, 39);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (15, 'Chilena', 'products/Ensalada-chilena.jpg', 3000, 1, 40);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (16, 'Ensalada Cesar', 'products/ensalada_cesar.jpg', 4500, 1, 40);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (17, 'Manjarate', 'products/manjarate-casero.jpg', 3000, 1, 37);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (18, 'Pie de limón', 'products/pie_de_limón.jpg', 3000, 1, 37);

-- Table: supplier_proveedor
CREATE TABLE "supplier_proveedor" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre" varchar(250) NOT NULL, "email" varchar(250) NOT NULL, "telefono" integer NOT NULL);

-- Table: tables_mesa
CREATE TABLE "tables_mesa" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "numero" integer NOT NULL UNIQUE);
INSERT INTO tables_mesa (id, numero) VALUES (1, 1);
INSERT INTO tables_mesa (id, numero) VALUES (2, 2);
INSERT INTO tables_mesa (id, numero) VALUES (3, 3);
INSERT INTO tables_mesa (id, numero) VALUES (4, 4);
INSERT INTO tables_mesa (id, numero) VALUES (10, 5);
INSERT INTO tables_mesa (id, numero) VALUES (11, 77);
INSERT INTO tables_mesa (id, numero) VALUES (12, 105);

-- Table: users_usuario
CREATE TABLE "users_usuario" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "first_name" varchar(150) NOT NULL, "last_name" varchar(150) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "email" varchar(254) NOT NULL UNIQUE);
INSERT INTO users_usuario (id, password, last_login, is_superuser, username, first_name, last_name, is_staff, is_active, date_joined, email) VALUES (1, 'pbkdf2_sha256$390000$63xErjkSiZZZ5A2BmoLwpE$0fRU6MwxIDpQMHyCoKh6tqQSyYVe4zIROenG+Lfr+F0=', '2022-11-29 06:30:35.634972', 1, 'admin', '', '', 1, 1, '2022-11-09 18:18:49.642488', 'admin@admin.cl');
INSERT INTO users_usuario (id, password, last_login, is_superuser, username, first_name, last_name, is_staff, is_active, date_joined, email) VALUES (2, 'pbkdf2_sha256$390000$5Ugeq1e8Wv47wrFIGDdgbZ$qc5/49cH5+HaYERhZa7GZ4s7/xy7OBG3uMUkwQicwaI=', NULL, 0, 'staff', 'staff', 'segundo', 0, 1, '2022-11-15 06:09:36', 'staff@staff.cl');

-- Table: users_usuario_groups
CREATE TABLE "users_usuario_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "usuario_id" bigint NOT NULL REFERENCES "users_usuario" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: users_usuario_user_permissions
CREATE TABLE "users_usuario_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "usuario_id" bigint NOT NULL REFERENCES "users_usuario" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

-- Index: orders_orden_mesa_id_990db12e
CREATE INDEX "orders_orden_mesa_id_990db12e" ON "orders_orden" ("mesa_id");

-- Index: orders_orden_pago_id_22d404d6
CREATE INDEX "orders_orden_pago_id_22d404d6" ON "orders_orden" ("pago_id");

-- Index: orders_orden_producto_id_44922fa9
CREATE INDEX "orders_orden_producto_id_44922fa9" ON "orders_orden" ("producto_id");

-- Index: payments_pago_mesa_id_cf83f853
CREATE INDEX "payments_pago_mesa_id_cf83f853" ON "payments_pago" ("mesa_id");

-- Index: products_producto_categoria_id_ed491ca4
CREATE INDEX "products_producto_categoria_id_ed491ca4" ON "products_producto" ("categoria_id");

-- Index: users_usuario_groups_group_id_9d969afd
CREATE INDEX "users_usuario_groups_group_id_9d969afd" ON "users_usuario_groups" ("group_id");

-- Index: users_usuario_groups_usuario_id_3a8a9a06
CREATE INDEX "users_usuario_groups_usuario_id_3a8a9a06" ON "users_usuario_groups" ("usuario_id");

-- Index: users_usuario_groups_usuario_id_group_id_db69fe93_uniq
CREATE UNIQUE INDEX "users_usuario_groups_usuario_id_group_id_db69fe93_uniq" ON "users_usuario_groups" ("usuario_id", "group_id");

-- Index: users_usuario_user_permissions_permission_id_bf5f5453
CREATE INDEX "users_usuario_user_permissions_permission_id_bf5f5453" ON "users_usuario_user_permissions" ("permission_id");

-- Index: users_usuario_user_permissions_usuario_id_75526fda
CREATE INDEX "users_usuario_user_permissions_usuario_id_75526fda" ON "users_usuario_user_permissions" ("usuario_id");

-- Index: users_usuario_user_permissions_usuario_id_permission_id_9b373975_uniq
CREATE UNIQUE INDEX "users_usuario_user_permissions_usuario_id_permission_id_9b373975_uniq" ON "users_usuario_user_permissions" ("usuario_id", "permission_id");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
