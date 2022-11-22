--
-- File generated with SQLiteStudio v3.3.3 on vi. nov. 18 19:27:47 2022
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

-- Table: categories_categoria
CREATE TABLE "categories_categoria" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre" varchar(150) NOT NULL, "imagen" varchar(100) NOT NULL);
INSERT INTO categories_categoria (id, nombre, imagen) VALUES (36, 'comida', 'categories/ola.jpeg');

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

-- Table: django_session
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('sqbxz4ztdwg2bs9pr821kqvkbhryd41x', '.eJxVjEEOwiAQRe_C2pBSKDAu3fcMZGAGWzWQlHZlvLtt0oVu_3vvv0XAbZ3C1ngJM4mrUOLyu0VMTy4HoAeWe5WplnWZozwUedImx0r8up3u38GEbdprQ-wgx0Epr7FLgKBNT6hBUc_WAiqE7HI0HZO1PXqv9M4HTtnA0Dnx-QLk9Dfa:1oup7V:zRSwnwSHZrkG5iCYyhRq1CtrV7eQ2jP6Cx5ahzY6tlw', '2022-11-29 06:08:29.909022');

-- Table: products_producto
CREATE TABLE "products_producto" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre" varchar(250) NOT NULL, "imagen" varchar(100) NOT NULL, "precio" integer NOT NULL, "activo" bool NOT NULL, "categoria_id" bigint NULL REFERENCES "categories_categoria" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (1, 'Cazuela', 'products/ola.jpeg', 2000, 1, 36);
INSERT INTO products_producto (id, nombre, imagen, precio, activo, categoria_id) VALUES (2, 'pasta bolognesa', 'products/ola_b50dunf.jpeg', 2000, 1, 36);

-- Table: users_usuario
CREATE TABLE "users_usuario" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "first_name" varchar(150) NOT NULL, "last_name" varchar(150) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "email" varchar(254) NOT NULL UNIQUE);
INSERT INTO users_usuario (id, password, last_login, is_superuser, username, first_name, last_name, is_staff, is_active, date_joined, email) VALUES (1, 'pbkdf2_sha256$390000$63xErjkSiZZZ5A2BmoLwpE$0fRU6MwxIDpQMHyCoKh6tqQSyYVe4zIROenG+Lfr+F0=', '2022-11-15 06:08:29.904020', 1, 'admin', '', '', 1, 1, '2022-11-09 18:18:49.642488', 'admin@admin.cl');
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
