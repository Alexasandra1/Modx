-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 26 2024 г., 20:01
-- Версия сервера: 5.6.51
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `modxTest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actions`
--

CREATE TABLE `modx_access_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_weblink', 'perm.delete_weblink_desc', 1),
(22, 1, 'delete_symlink', 'perm.delete_symlink_desc', 1),
(23, 1, 'delete_static_resource', 'perm.delete_static_resource_desc', 1),
(24, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(25, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(26, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(27, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(28, 1, 'delete_template', 'perm.delete_template_desc', 1),
(29, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(30, 1, 'delete_role', 'perm.delete_role_desc', 1),
(31, 1, 'delete_user', 'perm.delete_user_desc', 1),
(32, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(33, 1, 'directory_create', 'perm.directory_create_desc', 1),
(34, 1, 'directory_list', 'perm.directory_list_desc', 1),
(35, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(36, 1, 'directory_update', 'perm.directory_update_desc', 1),
(37, 1, 'edit_category', 'perm.edit_category_desc', 1),
(38, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(39, 1, 'edit_context', 'perm.edit_context_desc', 1),
(40, 1, 'edit_document', 'perm.edit_document_desc', 1),
(41, 1, 'edit_weblink', 'perm.edit_weblink_desc', 1),
(42, 1, 'edit_symlink', 'perm.edit_symlink_desc', 1),
(43, 1, 'edit_static_resource', 'perm.edit_static_resource_desc', 1),
(44, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(45, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(46, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(47, 1, 'edit_role', 'perm.edit_role_desc', 1),
(48, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(49, 1, 'edit_template', 'perm.edit_template_desc', 1),
(50, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(51, 1, 'edit_user', 'perm.edit_user_desc', 1),
(52, 1, 'element_tree', 'perm.element_tree_desc', 1),
(53, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(54, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(55, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(56, 1, 'export_static', 'perm.export_static_desc', 1),
(57, 1, 'file_create', 'perm.file_create_desc', 1),
(58, 1, 'file_list', 'perm.file_list_desc', 1),
(59, 1, 'file_manager', 'perm.file_manager_desc', 1),
(60, 1, 'file_remove', 'perm.file_remove_desc', 1),
(61, 1, 'file_tree', 'perm.file_tree_desc', 1),
(62, 1, 'file_update', 'perm.file_update_desc', 1),
(63, 1, 'file_upload', 'perm.file_upload_desc', 1),
(64, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(65, 1, 'file_view', 'perm.file_view_desc', 1),
(66, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(67, 1, 'frames', 'perm.frames_desc', 1),
(68, 1, 'help', 'perm.help_desc', 1),
(69, 1, 'home', 'perm.home_desc', 1),
(70, 1, 'import_static', 'perm.import_static_desc', 1),
(71, 1, 'languages', 'perm.languages_desc', 1),
(72, 1, 'lexicons', 'perm.lexicons_desc', 1),
(73, 1, 'list', 'perm.list_desc', 1),
(74, 1, 'load', 'perm.load_desc', 1),
(75, 1, 'logout', 'perm.logout_desc', 1),
(76, 1, 'logs', 'perm.logs_desc', 1),
(77, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(78, 1, 'menu_security', 'perm.menu_security_desc', 1),
(79, 1, 'menu_site', 'perm.menu_site_desc', 1),
(80, 1, 'menu_support', 'perm.menu_support_desc', 1),
(81, 1, 'menu_system', 'perm.menu_system_desc', 1),
(82, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(83, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(84, 1, 'menu_user', 'perm.menu_user_desc', 1),
(85, 1, 'menus', 'perm.menus_desc', 1),
(86, 1, 'messages', 'perm.messages_desc', 1),
(87, 1, 'namespaces', 'perm.namespaces_desc', 1),
(88, 1, 'new_category', 'perm.new_category_desc', 1),
(89, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(90, 1, 'new_context', 'perm.new_context_desc', 1),
(91, 1, 'new_document', 'perm.new_document_desc', 1),
(92, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(93, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(94, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(95, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(96, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(97, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(98, 1, 'new_role', 'perm.new_role_desc', 1),
(99, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(100, 1, 'new_template', 'perm.new_template_desc', 1),
(101, 1, 'new_tv', 'perm.new_tv_desc', 1),
(102, 1, 'new_user', 'perm.new_user_desc', 1),
(103, 1, 'packages', 'perm.packages_desc', 1),
(104, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(105, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(106, 1, 'policy_new', 'perm.policy_new_desc', 1),
(107, 1, 'policy_save', 'perm.policy_save_desc', 1),
(108, 1, 'policy_view', 'perm.policy_view_desc', 1),
(109, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(110, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(111, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(112, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(113, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(114, 1, 'property_sets', 'perm.property_sets_desc', 1),
(115, 1, 'providers', 'perm.providers_desc', 1),
(116, 1, 'publish_document', 'perm.publish_document_desc', 1),
(117, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(118, 1, 'remove', 'perm.remove_desc', 1),
(119, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(120, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(121, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(122, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(123, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(124, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(125, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(126, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(127, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(128, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(129, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(130, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(131, 1, 'save', 'perm.save_desc', 1),
(132, 1, 'save_category', 'perm.save_category_desc', 1),
(133, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(134, 1, 'save_context', 'perm.save_context_desc', 1),
(135, 1, 'save_document', 'perm.save_document_desc', 1),
(136, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(137, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(138, 1, 'save_role', 'perm.save_role_desc', 1),
(139, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(140, 1, 'save_template', 'perm.save_template_desc', 1),
(141, 1, 'save_tv', 'perm.save_tv_desc', 1),
(142, 1, 'save_user', 'perm.save_user_desc', 1),
(143, 1, 'search', 'perm.search_desc', 1),
(144, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(145, 1, 'settings', 'perm.settings_desc', 1),
(146, 1, 'events', 'perm.events_desc', 1),
(147, 1, 'source_save', 'perm.source_save_desc', 1),
(148, 1, 'source_delete', 'perm.source_delete_desc', 1),
(149, 1, 'source_edit', 'perm.source_edit_desc', 1),
(150, 1, 'source_view', 'perm.source_view_desc', 1),
(151, 1, 'sources', 'perm.sources_desc', 1),
(152, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(153, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(154, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(155, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(156, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(157, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(158, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(159, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(160, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(161, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(162, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(163, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(164, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(165, 1, 'view', 'perm.view_desc', 1),
(166, 1, 'view_category', 'perm.view_category_desc', 1),
(167, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(168, 1, 'view_context', 'perm.view_context_desc', 1),
(169, 1, 'view_document', 'perm.view_document_desc', 1),
(170, 1, 'view_element', 'perm.view_element_desc', 1),
(171, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(172, 1, 'view_offline', 'perm.view_offline_desc', 1),
(173, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(174, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(175, 1, 'view_role', 'perm.view_role_desc', 1),
(176, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(177, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(178, 1, 'view_template', 'perm.view_template_desc', 1),
(179, 1, 'view_tv', 'perm.view_tv_desc', 1),
(180, 1, 'view_user', 'perm.view_user_desc', 1),
(181, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(182, 1, 'workspaces', 'perm.workspaces_desc', 1),
(183, 2, 'add_children', 'perm.add_children_desc', 1),
(184, 2, 'copy', 'perm.copy_desc', 1),
(185, 2, 'create', 'perm.create_desc', 1),
(186, 2, 'delete', 'perm.delete_desc', 1),
(187, 2, 'list', 'perm.list_desc', 1),
(188, 2, 'load', 'perm.load_desc', 1),
(189, 2, 'move', 'perm.move_desc', 1),
(190, 2, 'publish', 'perm.publish_desc', 1),
(191, 2, 'remove', 'perm.remove_desc', 1),
(192, 2, 'save', 'perm.save_desc', 1),
(193, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(194, 2, 'undelete', 'perm.undelete_desc', 1),
(195, 2, 'unpublish', 'perm.unpublish_desc', 1),
(196, 2, 'view', 'perm.view_desc', 1),
(197, 3, 'load', 'perm.load_desc', 1),
(198, 3, 'list', 'perm.list_desc', 1),
(199, 3, 'view', 'perm.view_desc', 1),
(200, 3, 'save', 'perm.save_desc', 1),
(201, 3, 'remove', 'perm.remove_desc', 1),
(202, 4, 'add_children', 'perm.add_children_desc', 1),
(203, 4, 'create', 'perm.create_desc', 1),
(204, 4, 'copy', 'perm.copy_desc', 1),
(205, 4, 'delete', 'perm.delete_desc', 1),
(206, 4, 'list', 'perm.list_desc', 1),
(207, 4, 'load', 'perm.load_desc', 1),
(208, 4, 'remove', 'perm.remove_desc', 1),
(209, 4, 'save', 'perm.save_desc', 1),
(210, 4, 'view', 'perm.view_desc', 1),
(211, 5, 'create', 'perm.create_desc', 1),
(212, 5, 'copy', 'perm.copy_desc', 1),
(213, 5, 'list', 'perm.list_desc', 1),
(214, 5, 'load', 'perm.load_desc', 1),
(215, 5, 'remove', 'perm.remove_desc', 1),
(216, 5, 'save', 'perm.save_desc', 1),
(217, 5, 'view', 'perm.view_desc', 1),
(218, 6, 'load', 'perm.load_desc', 1),
(219, 6, 'list', 'perm.list_desc', 1),
(220, 6, 'view', 'perm.view_desc', 1),
(221, 6, 'save', 'perm.save_desc', 1),
(222, 6, 'remove', 'perm.remove_desc', 1),
(223, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(224, 6, 'copy', 'perm.copy_desc', 1),
(225, 7, 'list', 'perm.list_desc', 1),
(226, 7, 'load', 'perm.load_desc', 1),
(227, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_weblink\":true,\"delete_symlink\":true,\"delete_static_resource\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"new_document\":true,\"new_weblink\":true,\"new_symlink\":true,\"new_static_resource\":true,\"delete_document\":true,\"delete_weblink\":true,\"delete_symlink\":true,\"delete_static_resource\":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions`
--

CREATE TABLE `modx_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(33, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(34, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(35, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(36, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(37, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(38, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(39, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(40, 'resource/update', 'modx-symlink-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 1),
(41, 'resource/update', 'modx-weblink-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 2),
(42, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(43, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(44, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(45, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(46, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(48, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(49, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(51, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(52, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(53, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(56, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(57, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(58, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(59, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(60, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(61, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(62, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(63, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(64, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(65, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(66, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(67, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(68, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(69, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(70, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(71, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(72, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(73, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(74, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(75, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(76, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(77, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(78, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(79, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(80, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`, `rank`) VALUES
(1, 0, 'template', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 1, 0),
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_class_map`
--

CREATE TABLE `modx_class_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `widget` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2024-10-25 22:59:07', 'login', 'modContext', 'mgr'),
(2, 1, '2024-10-25 23:09:46', 'setting_update', 'modSystemSetting', 'friendly_alias_realtime'),
(3, 1, '2024-10-25 23:10:27', 'setting_update', 'modSystemSetting', 'friendly_alias_translit'),
(4, 1, '2024-10-25 23:10:50', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(5, 1, '2024-10-25 23:11:01', 'setting_update', 'modSystemSetting', 'friendly_urls_strict'),
(6, 1, '2024-10-25 23:11:13', 'setting_update', 'modSystemSetting', 'global_duplicate_uri_check'),
(7, 1, '2024-10-25 23:11:31', 'setting_update', 'modSystemSetting', 'use_alias_path'),
(8, 1, '2024-10-25 23:11:34', 'setting_update', 'modSystemSetting', 'use_alias_path'),
(9, 1, '2024-10-25 23:12:01', 'setting_update', 'modSystemSetting', 'use_frozen_parent_uris'),
(10, 1, '2024-10-25 23:12:04', 'setting_update', 'modSystemSetting', 'use_frozen_parent_uris'),
(11, 1, '2024-10-26 12:55:35', 'category_create', 'modCategory', '1'),
(12, 1, '2024-10-26 12:55:49', 'chunk_create', 'modChunk', '1'),
(13, 1, '2024-10-26 12:58:16', 'chunk_create', 'modChunk', '2'),
(14, 1, '2024-10-26 13:00:44', 'chunk_create', 'modChunk', '3'),
(15, 1, '2024-10-26 13:02:30', 'chunk_create', 'modChunk', '4'),
(16, 1, '2024-10-26 13:03:31', 'chunk_create', 'modChunk', '5'),
(17, 1, '2024-10-26 13:04:27', 'chunk_create', 'modChunk', '6'),
(18, 1, '2024-10-26 13:06:50', 'chunk_create', 'modChunk', '7'),
(19, 1, '2024-10-26 13:08:41', 'chunk_create', 'modChunk', '8'),
(20, 1, '2024-10-26 13:09:51', 'chunk_create', 'modChunk', '9'),
(21, 1, '2024-10-26 13:10:52', 'chunk_create', 'modChunk', '10'),
(22, 1, '2024-10-26 13:12:04', 'chunk_create', 'modChunk', '11'),
(23, 1, '2024-10-26 13:14:22', 'chunk_create', 'modChunk', '12'),
(24, 1, '2024-10-26 13:17:35', 'chunk_update', 'modChunk', '1'),
(25, 1, '2024-10-26 13:17:36', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(26, 1, '2024-10-26 13:20:17', 'chunk_update', 'modChunk', '1'),
(27, 1, '2024-10-26 13:20:17', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(28, 1, '2024-10-26 13:23:24', 'chunk_update', 'modChunk', '8'),
(29, 1, '2024-10-26 13:23:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(30, 1, '2024-10-26 13:24:32', 'chunk_update', 'modChunk', '10'),
(31, 1, '2024-10-26 13:24:32', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 10 Default'),
(32, 1, '2024-10-26 13:26:44', 'chunk_update', 'modChunk', '5'),
(33, 1, '2024-10-26 13:26:44', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(34, 1, '2024-10-26 13:27:54', 'chunk_update', 'modChunk', '3'),
(35, 1, '2024-10-26 13:27:54', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(36, 1, '2024-10-26 13:30:35', 'chunk_update', 'modChunk', '2'),
(37, 1, '2024-10-26 13:30:35', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(38, 1, '2024-10-26 13:31:15', 'chunk_update', 'modChunk', '11'),
(39, 1, '2024-10-26 13:31:15', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(40, 1, '2024-10-26 13:31:18', 'chunk_update', 'modChunk', '11'),
(41, 1, '2024-10-26 13:31:18', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(42, 1, '2024-10-26 13:32:14', 'chunk_update', 'modChunk', '7'),
(43, 1, '2024-10-26 13:32:14', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(44, 1, '2024-10-26 13:34:01', 'template_update', 'modTemplate', '1'),
(45, 1, '2024-10-26 13:34:01', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(46, 1, '2024-10-26 13:38:40', 'chunk_update', 'modChunk', '3'),
(47, 1, '2024-10-26 13:38:40', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(48, 1, '2024-10-26 13:42:54', 'chunk_update', 'modChunk', '3'),
(49, 1, '2024-10-26 13:42:54', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(50, 1, '2024-10-26 13:45:32', 'template_update', 'modTemplate', '1'),
(51, 1, '2024-10-26 13:45:32', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(52, 1, '2024-10-26 13:46:25', 'template_update', 'modTemplate', '1'),
(53, 1, '2024-10-26 13:46:25', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(54, 1, '2024-10-26 13:47:05', 'template_update', 'modTemplate', '1'),
(55, 1, '2024-10-26 13:47:05', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(56, 1, '2024-10-26 13:49:33', 'chunk_delete', 'modChunk', '2'),
(57, 1, '2024-10-26 13:50:16', 'chunk_create', 'modChunk', '13'),
(58, 1, '2024-10-26 13:50:41', 'chunk_delete', 'modChunk', '13'),
(59, 1, '2024-10-26 13:51:05', 'chunk_create', 'modChunk', '14'),
(60, 1, '2024-10-26 13:51:18', 'chunk_update', 'modChunk', '14'),
(61, 1, '2024-10-26 13:51:18', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 14 Default'),
(62, 1, '2024-10-26 13:52:23', 'chunk_update', 'modChunk', '14'),
(63, 1, '2024-10-26 13:52:23', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 14 Default'),
(64, 1, '2024-10-26 13:53:50', 'chunk_update', 'modChunk', '3'),
(65, 1, '2024-10-26 13:53:50', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(66, 1, '2024-10-26 13:59:24', 'chunk_update', 'modChunk', '11'),
(67, 1, '2024-10-26 13:59:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(68, 1, '2024-10-26 14:00:54', 'chunk_update', 'modChunk', '8'),
(69, 1, '2024-10-26 14:00:54', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(70, 1, '2024-10-26 14:02:23', 'chunk_update', 'modChunk', '5'),
(71, 1, '2024-10-26 14:02:23', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(72, 1, '2024-10-26 14:10:59', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/style.css'),
(73, 1, '2024-10-26 14:12:33', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/style.css'),
(74, 1, '2024-10-26 14:12:45', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/style.css'),
(75, 1, '2024-10-26 14:12:58', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/style.css'),
(76, 1, '2024-10-26 14:13:21', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/style.css'),
(77, 1, '2024-10-26 14:13:25', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/style.css'),
(78, 1, '2024-10-26 14:13:27', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/style.css'),
(79, 1, '2024-10-26 14:13:46', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/style.css'),
(80, 1, '2024-10-26 19:01:23', 'chunk_update', 'modChunk', '12'),
(81, 1, '2024-10-26 19:01:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 12 Default'),
(82, 1, '2024-10-26 19:01:49', 'chunk_update', 'modChunk', '11'),
(83, 1, '2024-10-26 19:01:49', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(84, 1, '2024-10-26 19:03:14', 'chunk_update', 'modChunk', '11'),
(85, 1, '2024-10-26 19:03:14', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(86, 1, '2024-10-26 19:04:27', 'chunk_update', 'modChunk', '10'),
(87, 1, '2024-10-26 19:04:27', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 10 Default'),
(88, 1, '2024-10-26 19:05:22', 'chunk_update', 'modChunk', '9'),
(89, 1, '2024-10-26 19:05:22', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 9 Default'),
(90, 1, '2024-10-26 19:07:09', 'chunk_update', 'modChunk', '8'),
(91, 1, '2024-10-26 19:07:09', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(92, 1, '2024-10-26 19:10:14', 'chunk_update', 'modChunk', '7'),
(93, 1, '2024-10-26 19:10:15', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(94, 1, '2024-10-26 19:11:18', 'chunk_update', 'modChunk', '6'),
(95, 1, '2024-10-26 19:11:18', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(96, 1, '2024-10-26 19:12:53', 'chunk_update', 'modChunk', '5'),
(97, 1, '2024-10-26 19:12:53', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(98, 1, '2024-10-26 19:13:18', 'chunk_update', 'modChunk', '4'),
(99, 1, '2024-10-26 19:13:18', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(100, 1, '2024-10-26 19:14:05', 'chunk_update', 'modChunk', '3'),
(101, 1, '2024-10-26 19:14:05', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(102, 1, '2024-10-26 19:14:55', 'chunk_update', 'modChunk', '14'),
(103, 1, '2024-10-26 19:14:55', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 14 Default'),
(104, 1, '2024-10-26 19:16:43', 'template_update', 'modTemplate', '1'),
(105, 1, '2024-10-26 19:16:43', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(106, 1, '2024-10-26 19:18:37', 'chunk_update', 'modChunk', '8'),
(107, 1, '2024-10-26 19:18:37', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(108, 1, '2024-10-26 19:19:47', 'chunk_update', 'modChunk', '10'),
(109, 1, '2024-10-26 19:19:47', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 10 Default'),
(110, 1, '2024-10-26 19:20:18', 'chunk_update', 'modChunk', '5'),
(111, 1, '2024-10-26 19:20:18', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(112, 1, '2024-10-26 19:20:44', 'chunk_update', 'modChunk', '3'),
(113, 1, '2024-10-26 19:20:44', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(114, 1, '2024-10-26 19:21:09', 'chunk_update', 'modChunk', '14'),
(115, 1, '2024-10-26 19:21:09', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 14 Default'),
(116, 1, '2024-10-26 19:21:28', 'chunk_update', 'modChunk', '11'),
(117, 1, '2024-10-26 19:21:28', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(118, 1, '2024-10-26 19:21:51', 'chunk_update', 'modChunk', '7'),
(119, 1, '2024-10-26 19:21:51', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(120, 1, '2024-10-26 19:25:07', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/style.css'),
(121, 1, '2024-10-26 19:28:16', 'chunk_update', 'modChunk', '1'),
(122, 1, '2024-10-26 19:28:16', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(123, 1, '2024-10-26 19:30:49', 'chunk_update', 'modChunk', '11'),
(124, 1, '2024-10-26 19:30:49', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 11 Default'),
(125, 1, '2024-10-26 19:31:34', 'chunk_update', 'modChunk', '10'),
(126, 1, '2024-10-26 19:31:34', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 10 Default'),
(127, 1, '2024-10-26 19:34:45', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/styleTest.css'),
(128, 1, '2024-10-26 19:35:51', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/styleTest.css'),
(129, 1, '2024-10-26 19:36:47', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/styleTest.css'),
(130, 1, '2024-10-26 19:37:55', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/styleTest.css'),
(131, 1, '2024-10-26 19:39:33', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/styleTest.css'),
(132, 1, '2024-10-26 19:40:07', 'chunk_update', 'modChunk', '14'),
(133, 1, '2024-10-26 19:40:07', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 14 Default'),
(134, 1, '2024-10-26 19:45:20', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/styleTest.css'),
(135, 1, '2024-10-26 19:48:57', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/styleTest.css'),
(136, 1, '2024-10-26 19:56:11', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/styleTest.css'),
(137, 1, '2024-10-26 19:56:28', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/styleTest.css'),
(138, 1, '2024-10-26 19:56:30', 'file_update', '', 'D:/APPS/OSPanel/domains/modx.local/assets/styleTest.css');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('ace', '{core_path}components/ace/', ''),
('core', '{core_path}', '{assets_path}'),
('translit', '{core_path}components/translit/', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('k6enfve2kgnmnkrleeepd94p03n8n0k2', 1729886347, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx671bf7865a59e1.48012955_1671bf88b153657.35413163\";modx.mgr.session.cookie.lifetime|i:604800;modx.mgr.user.config|a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `alias_visible` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `alias_visible`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Главная', 'Поздравляем!', '', 'index', 1, '', 1, 0, 0, 0, 0, NULL, '<p>You have successfully installed MODX Revolution&nbsp;[[++settings_version]]!</p>\n<p>Now that MODX is installed you can login to the manager to create your templates, manage content and install third party extras to add functionality to your&nbsp;website. </p>\n\n<h2>New to&nbsp;MODX?</h2>\n\n<p>Pages on a MODX site are called <a href=\"https://docs.modx.com/current/en/building-sites/resources\">Resources</a>, and are visible on the left-hand side of the manager in the Resources tab. Resources can be nested under other resources, making it easy to create a tree of resources. There are different types of resources for different use&nbsp;cases.</p>\n\n<p>Building your website is done through a combination of <b>Templates</b>, <b>Template Variables</b>, <b>Chunks</b>, <b>Snippets</b> and <b>Plugins</b>. Collectively these are known as <b>Elements</b>, and can also be found in the left-hand side of the manager, in the Elements&nbsp;tab.</p>\n\n<p><a href=\"https://docs.modx.com/current/en/building-sites/elements/templates\">Templates</a> contain the outer markup of any page. Each resource can only be assigned to a single template at a time. By adding <a href=\"https://docs.modx.com/current/en/building-sites/elements/template-variables\">Template Variables</a> to a template, you can add custom fields for any resource using that particular&nbsp;template.</p>\n\n<p>With <a href=\"https://docs.modx.com/current/en/building-sites/elements/chunks\">Chunks</a> you can share parts of the markup, such as a header, across different templates. <a href=\"https://docs.modx.com/current/en/building-sites/elements/snippets\">Snippets</a> are pieces of PHP that return dynamic content, such as summaries of other resources or the current date. With snippets, you will often use Chunks to mark up the pieces of content it returns, instead of mixing the PHP and&nbsp;HTML.</p>\n\n<p>Finally, <a href=\"https://docs.modx.com/current/en/extending-modx/plugins\">Plugins</a> enable more advanced features by hooking into the extensive events system provided by&nbsp;MODX.</p>\n\n<p>To learn more about MODX, be sure to check out the <a href=\"https://docs.modx.com/current/en/getting-started\">Getting Started</a> section in the official&nbsp;documentation.</p>\n', 1, 1, 0, 1, 1, 1, 1729886088, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'index.html', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'head', '', 0, 1, 0, '<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href=\"[[!++site_url]]\" />\n    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n    <link href=\"https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap\"\n        rel=\"stylesheet\">\n    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n    <link\n        href=\"https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap\"\n        rel=\"stylesheet\">\n    <link rel=\"stylesheet\" href=\"/assets/styleTest.css\">\n</head>', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'greenBackground', '', 0, 1, 0, '<div class=\"greenBackground\">\n        <div class=\"underline\">Главная</div>\n        <div><b>Кейсы</b> и услуги</div>\n        <div>Блог</div>\n        <div>Моя история — о Собственнике </div>\n        <div>Контакты</div>\n        <div>Скачать тех. задание и шаблон договора <svg width=\"15\" height=\"18\" viewBox=\"0 0 20 18\" fill=\"none\"\n                xmlns=\"http://www.w3.org/2000/svg\">\n                <path\n                    d=\"M18.3917 0.766602H1.60833C1.31449 0.766937 1.03277 0.883815 0.824994 1.0916C0.617213 1.29938 0.500335 1.58109 0.5 1.87494V13.5916C0.500335 13.8854 0.617213 14.1672 0.824994 14.3749C1.03277 14.5827 1.31449 14.6996 1.60833 14.6999H15.697L17.3113 16.459L17.7395 16.9256C17.8239 17.0175 17.9255 17.0919 18.0386 17.1446C18.1517 17.1972 18.2741 17.2271 18.3988 17.2324C18.5234 17.2378 18.6479 17.2185 18.7651 17.1757C18.8823 17.133 18.9899 17.0676 19.0818 16.9832C19.1737 16.8988 19.2481 16.7972 19.3008 16.6841C19.3534 16.571 19.3833 16.4486 19.3886 16.324C19.394 16.1993 19.3747 16.0749 19.3319 15.9577C19.2892 15.8405 19.2238 15.7328 19.1394 15.6409L18.7111 15.1743L18.2757 14.6999H18.3917C18.6855 14.6996 18.9672 14.5827 19.175 14.3749C19.3828 14.1672 19.4997 13.8854 19.5 13.5916V1.87494C19.4997 1.58109 19.3828 1.29938 19.175 1.0916C18.9672 0.883815 18.6855 0.766937 18.3917 0.766602ZM1.13333 1.87494C1.13347 1.749 1.18356 1.62826 1.27261 1.53921C1.36166 1.45016 1.4824 1.40007 1.60833 1.39993H18.3917C18.5176 1.40007 18.6383 1.45016 18.7274 1.53921C18.8164 1.62826 18.8665 1.749 18.8667 1.87494V2.6666H1.13333V1.87494ZM3.98333 14.0666V4.5666H16.0167V12.2382L14.4289 10.5081C14.425 10.5037 14.4206 10.4998 14.4164 10.4957C14.4137 10.493 14.4111 10.4902 14.4082 10.4878C14.4 10.4803 14.3913 10.4732 14.3823 10.4666L14.1087 10.2666H15.0667C15.1507 10.2666 15.2312 10.2332 15.2906 10.1739C15.35 10.1145 15.3833 10.0339 15.3833 9.94994C15.3833 9.86595 15.35 9.78541 15.2906 9.72602C15.2312 9.66663 15.1507 9.63327 15.0667 9.63327H13.2197C13.0831 9.56867 12.9294 9.54981 12.7813 9.57947C12.6331 9.60914 12.4985 9.68576 12.3974 9.79797C12.2962 9.91018 12.2339 10.052 12.2197 10.2024C12.2055 10.3528 12.2402 10.5038 12.3186 10.6329L12.9901 11.7403L12.9915 11.7426V11.7428C12.9917 11.7433 12.992 11.7436 12.9923 11.7441C12.9978 11.753 13.0038 11.7617 13.0102 11.7701C13.0127 11.7735 13.0155 11.7765 13.0181 11.7798C13.0216 11.7841 13.025 11.7886 13.0288 11.7928L13.3721 12.1666H5.56667C5.48268 12.1666 5.40214 12.2 5.34275 12.2594C5.28336 12.3187 5.25 12.3993 5.25 12.4833C5.25 12.5673 5.28336 12.6478 5.34275 12.7072C5.40214 12.7666 5.48268 12.7999 5.56667 12.7999H13.9533L15.1158 14.0666H3.98333ZM17.7971 15.5833L17.5636 15.7975L17.1354 15.3308L17.602 14.9026L18.0302 15.3692L17.7971 15.5833ZM16.7074 14.8642L13.7098 11.5978L14.1764 11.1696L17.174 14.436L16.7074 14.8642ZM12.8726 10.2171C12.8844 10.2063 12.8997 10.1998 12.9157 10.1989C12.9318 10.198 12.9477 10.2027 12.9607 10.2122L13.6969 10.75L13.3328 11.0841L12.86 10.3045C12.8517 10.2907 12.8484 10.2745 12.8507 10.2586C12.853 10.2427 12.8607 10.2281 12.8726 10.2172V10.2171ZM18.6536 16.5166C18.5917 16.5732 18.5098 16.603 18.426 16.5994C18.3421 16.5958 18.2631 16.5591 18.2063 16.4974L17.9922 16.2641L18.4586 15.836L18.6728 16.0693C18.7295 16.1312 18.7594 16.2131 18.7558 16.2969C18.7522 16.3808 18.7154 16.4598 18.6536 16.5166V16.5166ZM18.3917 14.0666H17.6946L16.65 12.9283V4.24994C16.65 4.16595 16.6166 4.0854 16.5573 4.02602C16.4979 3.96663 16.4173 3.93327 16.3333 3.93327H3.66667C3.58268 3.93327 3.50214 3.96663 3.44275 4.02602C3.38336 4.0854 3.35 4.16595 3.35 4.24994V14.0666H1.60833C1.4824 14.0665 1.36166 14.0164 1.27261 13.9273C1.18356 13.8383 1.13347 13.7175 1.13333 13.5916V3.29994H18.8667V13.5916C18.8665 13.7175 18.8164 13.8383 18.7274 13.9273C18.6383 14.0164 18.5176 14.0665 18.3917 14.0666Z\"\n                    fill=\"white\" />\n                <path\n                    d=\"M2.08327 2.34989C2.25816 2.34989 2.39993 2.20811 2.39993 2.03322C2.39993 1.85833 2.25816 1.71655 2.08327 1.71655C1.90838 1.71655 1.7666 1.85833 1.7666 2.03322C1.7666 2.20811 1.90838 2.34989 2.08327 2.34989Z\"\n                    fill=\"white\" />\n                <path\n                    d=\"M3.34987 2.34989C3.52476 2.34989 3.66654 2.20811 3.66654 2.03322C3.66654 1.85833 3.52476 1.71655 3.34987 1.71655C3.17498 1.71655 3.0332 1.85833 3.0332 2.03322C3.0332 2.20811 3.17498 2.34989 3.34987 2.34989Z\"\n                    fill=\"white\" />\n                <path\n                    d=\"M4.61647 2.34989C4.79136 2.34989 4.93314 2.20811 4.93314 2.03322C4.93314 1.85833 4.79136 1.71655 4.61647 1.71655C4.44158 1.71655 4.2998 1.85833 4.2998 2.03322C4.2998 2.20811 4.44158 2.34989 4.61647 2.34989Z\"\n                    fill=\"white\" />\n                <path\n                    d=\"M11.9 11.2166V5.51662C11.9 5.43263 11.8667 5.35209 11.8073 5.2927C11.7479 5.23331 11.6674 5.19995 11.5834 5.19995H4.93337C4.84938 5.19995 4.76884 5.23331 4.70945 5.2927C4.65006 5.35209 4.6167 5.43263 4.6167 5.51662V11.2166C4.6167 11.3006 4.65006 11.3811 4.70945 11.4405C4.76884 11.4999 4.84938 11.5333 4.93337 11.5333H11.5834C11.6674 11.5333 11.7479 11.4999 11.8073 11.4405C11.8667 11.3811 11.9 11.3006 11.9 11.2166ZM11.2667 10.9H5.25003V5.83328H11.2667V10.9Z\"\n                    fill=\"white\" />\n                <path\n                    d=\"M6.8333 9.31657H6.83449C6.84027 9.48074 6.89932 9.63857 7.00272 9.76622C7.10612 9.89386 7.24826 9.98439 7.40766 10.0241L7.79122 10.1201C7.8519 10.1353 7.91422 10.143 7.97678 10.1431C8.17763 10.1425 8.37003 10.0622 8.51184 9.92001C8.65364 9.77778 8.73328 9.58514 8.7333 9.3843V9.35948L9.93129 9.62572C9.97758 9.636 10.0256 9.63576 10.0718 9.625C10.118 9.61425 10.1611 9.59326 10.1981 9.56359C10.2351 9.53392 10.265 9.49631 10.2855 9.45356C10.306 9.4108 10.3166 9.36399 10.3166 9.31657V6.78324C10.3166 6.73582 10.306 6.689 10.2855 6.64625C10.265 6.60349 10.2351 6.56589 10.1981 6.53622C10.1611 6.50654 10.118 6.48555 10.0718 6.4748C10.0256 6.46405 9.97758 6.46381 9.93129 6.47409L7.46287 7.02264C7.32601 6.90113 7.15694 6.82178 6.97602 6.79414C6.79511 6.76649 6.61006 6.79173 6.44315 6.86682C6.27625 6.9419 6.13461 7.06363 6.03528 7.21735C5.93595 7.37107 5.88317 7.55022 5.8833 7.73324V8.36657C5.88358 8.61844 5.98376 8.85991 6.16186 9.03801C6.33996 9.21611 6.58143 9.31629 6.8333 9.31657V9.31657ZM8.09997 9.3843C8.09997 9.40328 8.09564 9.42202 8.08732 9.43909C8.07899 9.45615 8.06689 9.4711 8.05192 9.48278C8.03695 9.49447 8.01952 9.50259 8.00095 9.50652C7.98237 9.51046 7.96314 9.51011 7.94472 9.5055L7.56128 9.40967C7.53423 9.40294 7.51022 9.38735 7.49306 9.36538C7.47591 9.34341 7.46661 9.31634 7.46663 9.28847V9.078L8.09997 9.21872V9.3843ZM9.6833 8.9218L7.77408 8.49751C7.78016 8.45413 7.78324 8.41038 7.7833 8.36657V7.73324C7.78324 7.68943 7.78016 7.64568 7.77408 7.60229L9.6833 7.178V8.9218ZM6.51663 7.73324C6.51663 7.64925 6.55 7.5687 6.60938 7.50932C6.66877 7.44993 6.74932 7.41657 6.8333 7.41657C6.91729 7.41657 6.99783 7.44993 7.05722 7.50932C7.11661 7.5687 7.14997 7.64925 7.14997 7.73324V8.36657C7.14997 8.45055 7.11661 8.5311 7.05722 8.59049C6.99783 8.64987 6.91729 8.68324 6.8333 8.68324C6.74932 8.68324 6.66877 8.64987 6.60938 8.59049C6.55 8.5311 6.51663 8.45055 6.51663 8.36657V7.73324Z\"\n                    fill=\"white\" />\n                <path\n                    d=\"M13.4832 6.46659H15.0665C15.1505 6.46659 15.231 6.43322 15.2904 6.37384C15.3498 6.31445 15.3832 6.2339 15.3832 6.14992C15.3832 6.06593 15.3498 5.98539 15.2904 5.926C15.231 5.86661 15.1505 5.83325 15.0665 5.83325H13.4832C13.3992 5.83325 13.3186 5.86661 13.2593 5.926C13.1999 5.98539 13.1665 6.06593 13.1665 6.14992C13.1665 6.2339 13.1999 6.31445 13.2593 6.37384C13.3186 6.43322 13.3992 6.46659 13.4832 6.46659Z\"\n                    fill=\"white\" />\n                <path\n                    d=\"M12.8499 8.36673H15.0665C15.1505 8.36673 15.2311 8.33337 15.2905 8.27398C15.3498 8.2146 15.3832 8.13405 15.3832 8.05007C15.3832 7.96608 15.3498 7.88553 15.2905 7.82615C15.2311 7.76676 15.1505 7.7334 15.0665 7.7334H12.8499C12.7659 7.7334 12.6853 7.76676 12.626 7.82615C12.5666 7.88553 12.5332 7.96608 12.5332 8.05007C12.5332 8.13405 12.5666 8.2146 12.626 8.27398C12.6853 8.33337 12.7659 8.36673 12.8499 8.36673Z\"\n                    fill=\"white\" />\n            </svg>\n        </div>\n        <div class=\"underline\"><svg width=\"24\" height=\"17\" viewBox=\"0 0 24 17\" fill=\"none\"\n                xmlns=\"http://www.w3.org/2000/svg\">\n                <path\n                    d=\"M11.9578 0H12.09C13.3108 0.00445576 19.4969 0.0490136 21.1649 0.49756C21.6691 0.634454 22.1286 0.901286 22.4974 1.27139C22.8662 1.64149 23.1314 2.10191 23.2665 2.60662C23.4165 3.17102 23.522 3.9181 23.5933 4.68895L23.6081 4.84341L23.6408 5.22958L23.6527 5.38405C23.7492 6.74157 23.7611 8.01295 23.7626 8.29069V8.40208C23.7611 8.69022 23.7477 10.0477 23.6408 11.4617L23.6289 11.6177L23.6155 11.7721C23.5413 12.6217 23.4314 13.4653 23.2665 14.0862C23.1318 14.5911 22.8667 15.0517 22.4979 15.4219C22.129 15.792 21.6693 16.0587 21.1649 16.1952C19.442 16.6586 12.8935 16.6913 11.986 16.6928H11.7751C11.3161 16.6928 9.418 16.6839 7.42775 16.6155L7.17526 16.6066L7.04604 16.6007L6.79207 16.5903L6.53809 16.5799C4.88946 16.5071 3.31954 16.3898 2.59622 16.1937C2.09196 16.0574 1.63239 15.7909 1.26354 15.421C0.894693 15.0511 0.62952 14.5908 0.49459 14.0862C0.329726 13.4668 0.219818 12.6217 0.145555 11.7721L0.133673 11.6162L0.121791 11.4617C0.04849 10.4553 0.00787165 9.44677 0 8.43773L0 8.25504C0.00297051 7.93571 0.0148525 6.83217 0.0950563 5.61426L0.105453 5.46128L0.109909 5.38405L0.121791 5.22958L0.154466 4.84341L0.169319 4.68895C0.240611 3.9181 0.346064 3.16953 0.496075 2.60662C0.630778 2.10171 0.895849 1.64107 1.26471 1.27091C1.63358 0.900738 2.09327 0.634044 2.59771 0.49756C3.32103 0.304477 4.89094 0.185657 6.53957 0.111394L6.79207 0.100997L7.04753 0.092086L7.17526 0.0876302L7.42924 0.0772335C8.84277 0.0317469 10.2569 0.00649481 11.6711 0.00148532H11.9578V0ZM9.50563 4.76767V11.9236L15.6798 8.34713L9.50563 4.76767Z\"\n                    fill=\"#B8A04D\" />\n            </svg><span class=\"goldColor\">Видео</span>-кейс от Встречи до строительства дома</div>\n        <div class=\"greenBackground_media\">\n            <img src=\"/assets/image/inst.png\" alt=\"\">\n            <img src=\"/assets/image/facebook.png\" alt=\"\">\n            <img src=\"/assets/image/youtube.png\" alt=\"\">\n        </div>\n    </div>', 0, 'a:0:{}', 0, ''),
(4, 1, 0, 'linkBlock', '', 0, 1, 0, '<div class=\"linkBlock\">\r\n            <svg width=\"52\" height=\"32\" viewBox=\"0 0 32 32\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                <path\r\n                    d=\"M11.8554 13.7349L20.7954 9.71269M20.7616 22.3461L11.0103 17.9768M30 25C30 27.7614 27.7614 30 25 30C22.2386 30 20 27.7614 20 25C20 22.2386 22.2386 20 25 20C27.7614 20 30 22.2386 30 25ZM30 7C30 9.76142 27.7614 12 25 12C22.2386 12 20 9.76142 20 7C20 4.23858 22.2386 2 25 2C27.7614 2 30 4.23858 30 7ZM12 15C12 17.7614 9.76142 20 7 20C4.23858 20 2 17.7614 2 15C2 12.2386 4.23858 10 7 10C9.76142 10 12 12.2386 12 15Z\"\r\n                    stroke=\"#498837\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" />\r\n            </svg>\r\n            <div class=\"linkBlock_text\">Сделай репост и получи расчёт стоимости в подарок!</div>\r\n        </div>', 0, 'a:0:{}', 0, ''),
(5, 1, 0, 'firstBlock', '', 0, 1, 0, '<div class=\"firstBlock\">\n            <div class=\"firstBlock_textImg\">\n                <div class=\"firstBlock_textImg_text\">Построим дом по проекту КД —1 в любой точке Беларуси без срывов\n                    сроков\n                    <span id=\"gradient\">со всеми коммуникациями под ключ</span>\n                </div>\n                <div class=\"firstBlock_textImg_img\">\n                    <div class=\"firstBlock_textImg_img_elips\">←</div>\n                    <div class=\"firstBlock_textImg_img_img\"><img src=\"/assets/image/house.png\"></div>\n                    <div class=\"firstBlock_textImg_img_elips\">→</div>\n                </div>\n            </div>\n            <div class=\"firstBlock_query\">\n                <div class=\"firstBlock_query_text\"><span id=\"gradient\">ЭТО БЕСПЛАТНО!</span></div>\n                <div class=\"firstBlock_query_query\"><b>Оставь заявку</b> и мы рассчитаем стоимость вашего дома\n                </div>\n                <input class=\"inputText\" placeholder=\"Введите имя\" type=\"text\">\n                <input class=\"inputText\" placeholder=\"Введите телефон\" type=\"text\">\n                <input class=\"inputText\" placeholder=\" @Username в Telegram ( если есть)\" type=\"text\">\n                <div class=\"firstBlock_query_media\">\n                    <svg width=\"85\" height=\"56\" viewBox=\"0 0 74 56\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n                        <g filter=\"url(#filter0_d_0_362)\">\n                            <rect x=\"9.76868\" y=\"8.94772\" width=\"80\" height=\"33.2684\" rx=\"4.43578\" fill=\"#F8FBF6\" />\n                            <rect x=\"10.3231\" y=\"9.5022\" width=\"49.8\" height=\"32.1594\" rx=\"3.88131\" stroke=\"#79856F\"\n                                stroke-width=\"1.10895\" />\n                        </g>\n                        <path\n                            d=\"M42.8546 31.4626L40.5094 33.789C40.1632 34.144 39.7043 34.2643 39.2574 34.2648C37.2811 34.2056 35.4131 33.2348 33.8793 32.238C31.3617 30.4065 29.0517 28.1354 27.6019 25.3909C27.0458 24.2401 26.3934 22.7717 26.4557 21.4871C26.4613 21.0039 26.5915 20.5297 26.9318 20.2182L29.277 17.8741C29.764 17.4599 30.235 17.6031 30.5466 18.0856L32.4334 21.6634C32.632 22.0872 32.518 22.5414 32.2218 22.8442L31.3577 23.7078C31.3044 23.7809 31.2704 23.8641 31.2696 23.9546C31.6009 25.2371 32.6046 26.4192 33.4914 27.2327C34.3781 28.0462 35.3312 29.1484 36.5684 29.4093C36.7213 29.452 36.9086 29.467 37.018 29.3652L38.0231 28.343C38.3696 28.0804 38.8699 27.9521 39.2398 28.1668H39.2574L42.6606 30.176C43.1602 30.4891 43.2123 31.0943 42.8546 31.4626Z\"\n                            fill=\"#79856F\" />\n                        <path\n                            d=\"M22.0078 52.6519V48.2871L22.1409 48.4201H20.371V47.9943H24.1304V48.4201H22.3671L22.4936 48.2871V52.6519H22.0078ZM26.0147 52.6852C25.651 52.6852 25.3316 52.6097 25.0566 52.4589C24.7816 52.3037 24.5664 52.093 24.4112 51.8268C24.2559 51.5562 24.1783 51.248 24.1783 50.902C24.1783 50.556 24.2515 50.2499 24.3979 49.9838C24.5487 49.7176 24.7527 49.5091 25.01 49.3583C25.2717 49.2031 25.5645 49.1254 25.8883 49.1254C26.2165 49.1254 26.5071 49.2008 26.7599 49.3517C27.0172 49.498 27.219 49.7065 27.3654 49.9771C27.5118 50.2433 27.585 50.5515 27.585 50.902C27.585 50.9241 27.5828 50.9485 27.5783 50.9752C27.5783 50.9973 27.5783 51.0217 27.5783 51.0483H24.5376V50.6957H27.3255L27.1392 50.8354C27.1392 50.5826 27.0837 50.3586 26.9728 50.1634C26.8664 49.9638 26.72 49.8085 26.5337 49.6977C26.3474 49.5868 26.1323 49.5313 25.8883 49.5313C25.6488 49.5313 25.4336 49.5868 25.2429 49.6977C25.0521 49.8085 24.9035 49.9638 24.7971 50.1634C24.6906 50.363 24.6374 50.5915 24.6374 50.8487V50.9219C24.6374 51.1881 24.6951 51.4232 24.8104 51.6272C24.9302 51.8268 25.0943 51.9843 25.3028 52.0996C25.5157 52.2105 25.7574 52.266 26.028 52.266C26.2409 52.266 26.4383 52.2283 26.6202 52.1529C26.8065 52.0775 26.9662 51.9621 27.0993 51.8069L27.3654 52.1129C27.2101 52.2992 27.015 52.4412 26.7799 52.5388C26.5492 52.6364 26.2942 52.6852 26.0147 52.6852ZM27.9205 52.6452L27.9537 52.2394C27.9848 52.2438 28.0136 52.2504 28.0402 52.2593C28.0713 52.2638 28.0979 52.266 28.1201 52.266C28.262 52.266 28.3751 52.2127 28.4594 52.1063C28.5481 51.9998 28.6147 51.8579 28.659 51.6804C28.7034 51.503 28.7344 51.3034 28.7522 51.0816C28.7699 50.8554 28.7854 50.6292 28.7987 50.4029L28.8586 49.1587H31.4203V52.6519H30.9479V49.4315L31.0677 49.5712H29.1647L29.2778 49.4249L29.2246 50.4362C29.2113 50.7378 29.1869 51.0262 29.1514 51.3012C29.1203 51.5762 29.0693 51.818 28.9984 52.0264C28.9318 52.2349 28.8387 52.399 28.7189 52.5188C28.5991 52.6341 28.4461 52.6918 28.2598 52.6918C28.2066 52.6918 28.1511 52.6874 28.0935 52.6785C28.0402 52.6696 27.9826 52.6585 27.9205 52.6452ZM34.2603 52.6852C33.8966 52.6852 33.5772 52.6097 33.3022 52.4589C33.0272 52.3037 32.812 52.093 32.6568 51.8268C32.5015 51.5562 32.4239 51.248 32.4239 50.902C32.4239 50.556 32.4971 50.2499 32.6435 49.9838C32.7943 49.7176 32.9983 49.5091 33.2556 49.3583C33.5173 49.2031 33.8101 49.1254 34.1339 49.1254C34.4622 49.1254 34.7527 49.2008 35.0055 49.3517C35.2628 49.498 35.4646 49.7065 35.611 49.9771C35.7574 50.2433 35.8306 50.5515 35.8306 50.902C35.8306 50.9241 35.8284 50.9485 35.8239 50.9752C35.8239 50.9973 35.8239 51.0217 35.8239 51.0483H32.7832V50.6957H35.5711L35.3848 50.8354C35.3848 50.5826 35.3293 50.3586 35.2185 50.1634C35.112 49.9638 34.9656 49.8085 34.7793 49.6977C34.593 49.5868 34.3779 49.5313 34.1339 49.5313C33.8944 49.5313 33.6792 49.5868 33.4885 49.6977C33.2978 49.8085 33.1492 49.9638 33.0427 50.1634C32.9362 50.363 32.883 50.5915 32.883 50.8487V50.9219C32.883 51.1881 32.9407 51.4232 33.056 51.6272C33.1758 51.8268 33.3399 51.9843 33.5484 52.0996C33.7613 52.2105 34.003 52.266 34.2736 52.266C34.4865 52.266 34.6839 52.2283 34.8658 52.1529C35.0521 52.0775 35.2118 51.9621 35.3449 51.8069L35.611 52.1129C35.4558 52.2992 35.2606 52.4412 35.0255 52.5388C34.7948 52.6364 34.5398 52.6852 34.2603 52.6852ZM38.8391 52.6918C38.8391 52.6918 38.8303 52.6918 38.8125 52.6918C38.7948 52.6918 38.777 52.6918 38.7593 52.6918C38.746 52.6918 38.7349 52.6918 38.726 52.6918C38.034 52.6874 37.4951 52.5299 37.1092 52.2194C36.7233 51.9089 36.5303 51.4675 36.5303 50.8953C36.5303 50.332 36.7233 49.8973 37.1092 49.5912C37.4995 49.2807 38.0474 49.1232 38.7526 49.1188C38.7571 49.1188 38.766 49.1188 38.7793 49.1188C38.797 49.1188 38.8125 49.1188 38.8258 49.1188C38.8391 49.1188 38.848 49.1188 38.8525 49.1188C39.5622 49.1232 40.1144 49.2807 40.5092 49.5912C40.904 49.8973 41.1014 50.332 41.1014 50.8953C41.1014 51.472 40.9018 51.9155 40.5026 52.2261C40.1078 52.5366 39.5533 52.6918 38.8391 52.6918ZM38.8325 52.2793C39.2273 52.2793 39.5577 52.2261 39.8239 52.1196C40.09 52.0087 40.2919 51.8512 40.4294 51.6472C40.5669 51.4431 40.6356 51.1925 40.6356 50.8953C40.6356 50.607 40.5669 50.363 40.4294 50.1634C40.2919 49.9594 40.09 49.8041 39.8239 49.6977C39.5577 49.5912 39.2273 49.538 38.8325 49.538C38.8281 49.538 38.8147 49.538 38.7926 49.538C38.7748 49.538 38.7637 49.538 38.7593 49.538C38.3734 49.538 38.0496 49.5934 37.7879 49.7043C37.5262 49.8108 37.3288 49.9638 37.1957 50.1634C37.0626 50.363 36.9961 50.607 36.9961 50.8953C36.9961 51.1881 37.0626 51.4365 37.1957 51.6405C37.3332 51.8446 37.5328 52.002 37.7945 52.1129C38.0562 52.2194 38.3778 52.2748 38.7593 52.2793C38.7682 52.2793 38.7815 52.2793 38.7992 52.2793C38.817 52.2793 38.8281 52.2793 38.8325 52.2793ZM38.5797 53.9427V47.7149H39.0388V53.9427H38.5797ZM43.5377 52.6852C43.2006 52.6852 42.8967 52.6097 42.6261 52.4589C42.36 52.3037 42.1493 52.093 41.994 51.8268C41.8388 51.5562 41.7611 51.248 41.7611 50.902C41.7611 50.5515 41.8388 50.2433 41.994 49.9771C42.1493 49.711 42.36 49.5025 42.6261 49.3517C42.8923 49.2008 43.1961 49.1254 43.5377 49.1254C43.8837 49.1254 44.1897 49.2008 44.4559 49.3517C44.7265 49.5025 44.9372 49.711 45.088 49.9771C45.2432 50.2433 45.3209 50.5515 45.3209 50.902C45.3209 51.248 45.2432 51.5562 45.088 51.8268C44.9372 52.093 44.7265 52.3037 44.4559 52.4589C44.1853 52.6097 43.8792 52.6852 43.5377 52.6852ZM43.5377 52.266C43.7905 52.266 44.0145 52.2105 44.2097 52.0996C44.4049 51.9843 44.5579 51.8246 44.6688 51.6206C44.7841 51.4121 44.8418 51.1726 44.8418 50.902C44.8418 50.627 44.7841 50.3874 44.6688 50.1834C44.5579 49.9793 44.4049 49.8219 44.2097 49.711C44.0145 49.5956 43.7927 49.538 43.5443 49.538C43.2959 49.538 43.0741 49.5956 42.879 49.711C42.6838 49.8219 42.5285 49.9793 42.4132 50.1834C42.2979 50.3874 42.2402 50.627 42.2402 50.902C42.2402 51.1726 42.2979 51.4121 42.4132 51.6206C42.5285 51.8246 42.6838 51.9843 42.879 52.0996C43.0741 52.2105 43.2937 52.266 43.5377 52.266ZM46.3305 52.6519V49.1587H46.8029V50.7024H49.0053V49.1587H49.4777V52.6519H49.0053V51.1082H46.8029V52.6519H46.3305Z\"\n                            fill=\"#79856F\" />\n                    </svg>\n                    <svg width=\"85\" height=\"56\" viewBox=\"0 0 74 56\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n                        <g filter=\"url(#filter0_d_0_363)\">\n                            <rect x=\"9.16248\" y=\"8.94772\" width=\"50.9089\" height=\"33.2684\" rx=\"4.43578\" fill=\"white\" />\n                        </g>\n                        <path\n                            d=\"M41.8081 20.7069L39.319 32.4453C39.1311 33.2736 38.6415 33.4798 37.9457 33.0898L34.1529 30.295L32.3231 32.0553C32.1204 32.258 31.9514 32.427 31.5608 32.427L31.8335 28.5647L38.8624 22.2133C39.1682 21.9412 38.7958 21.7898 38.3876 22.0625L29.6979 27.5343L25.957 26.3632C25.1434 26.1092 25.1287 25.5496 26.1267 25.159L40.7588 19.5216C41.4363 19.2677 42.029 19.6724 41.8081 20.7075V20.7069Z\"\n                            fill=\"#D0D0D0\" />\n                        <path\n                            d=\"M20.6955 52.6519V48.4201H19.0587V47.9943H22.8247V48.4201H21.1879V52.6519H20.6955ZM24.6314 52.6852C24.2677 52.6852 23.9483 52.6097 23.6733 52.4589C23.3983 52.3037 23.1831 52.093 23.0279 51.8268C22.8726 51.5562 22.795 51.248 22.795 50.902C22.795 50.556 22.8682 50.2499 23.0146 49.9838C23.1654 49.7176 23.3694 49.5091 23.6267 49.3583C23.8884 49.2031 24.1812 49.1254 24.505 49.1254C24.8332 49.1254 25.1238 49.2008 25.3766 49.3517C25.6339 49.498 25.8357 49.7065 25.9821 49.9771C26.1285 50.2433 26.2017 50.5515 26.2017 50.902C26.2017 50.9241 26.1994 50.9485 26.195 50.9752C26.195 50.9973 26.195 51.0217 26.195 51.0483H23.1543V50.6957H25.9422L25.7559 50.8354C25.7559 50.5826 25.7004 50.3586 25.5895 50.1634C25.4831 49.9638 25.3367 49.8085 25.1504 49.6977C24.9641 49.5868 24.7489 49.5313 24.505 49.5313C24.2654 49.5313 24.0503 49.5868 23.8596 49.6977C23.6688 49.8085 23.5202 49.9638 23.4138 50.1634C23.3073 50.363 23.2541 50.5915 23.2541 50.8487V50.9219C23.2541 51.1881 23.3118 51.4232 23.4271 51.6272C23.5469 51.8268 23.711 51.9843 23.9195 52.0996C24.1324 52.2105 24.3741 52.266 24.6447 52.266C24.8576 52.266 25.055 52.2283 25.2369 52.1529C25.4232 52.0775 25.5829 51.9621 25.7159 51.8069L25.9821 52.1129C25.8268 52.2992 25.6317 52.4412 25.3966 52.5388C25.1659 52.6364 24.9109 52.6852 24.6314 52.6852ZM27.1632 52.6519V47.7149H27.6356V52.6519H27.1632ZM30.4339 52.6852C30.0701 52.6852 29.7508 52.6097 29.4757 52.4589C29.2007 52.3037 28.9856 52.093 28.8303 51.8268C28.6751 51.5562 28.5975 51.248 28.5975 50.902C28.5975 50.556 28.6706 50.2499 28.817 49.9838C28.9678 49.7176 29.1719 49.5091 29.4292 49.3583C29.6909 49.2031 29.9836 49.1254 30.3075 49.1254C30.6357 49.1254 30.9262 49.2008 31.1791 49.3517C31.4364 49.498 31.6382 49.7065 31.7846 49.9771C31.931 50.2433 32.0041 50.5515 32.0041 50.902C32.0041 50.9241 32.0019 50.9485 31.9975 50.9752C31.9975 50.9973 31.9975 51.0217 31.9975 51.0483H28.9568V50.6957H31.7446L31.5583 50.8354C31.5583 50.5826 31.5029 50.3586 31.392 50.1634C31.2855 49.9638 31.1392 49.8085 30.9529 49.6977C30.7666 49.5868 30.5514 49.5313 30.3075 49.5313C30.0679 49.5313 29.8528 49.5868 29.662 49.6977C29.4713 49.8085 29.3227 49.9638 29.2163 50.1634C29.1098 50.363 29.0566 50.5915 29.0566 50.8487V50.9219C29.0566 51.1881 29.1142 51.4232 29.2296 51.6272C29.3493 51.8268 29.5134 51.9843 29.7219 52.0996C29.9348 52.2105 30.1766 52.266 30.4472 52.266C30.6601 52.266 30.8575 52.2283 31.0394 52.1529C31.2257 52.0775 31.3853 51.9621 31.5184 51.8069L31.7846 52.1129C31.6293 52.2992 31.4341 52.4412 31.199 52.5388C30.9684 52.6364 30.7133 52.6852 30.4339 52.6852ZM34.4561 53.976C34.1367 53.976 33.8307 53.9294 33.5379 53.8362C33.2452 53.7431 33.0078 53.61 32.826 53.437L33.0655 53.0777C33.2296 53.2241 33.4315 53.3394 33.671 53.4237C33.915 53.5124 34.1722 53.5568 34.4428 53.5568C34.8864 53.5568 35.2124 53.4525 35.4209 53.2441C35.6294 53.04 35.7336 52.7206 35.7336 52.2859V51.4143L35.8002 50.8155L35.7536 50.2166V49.1587H36.206V52.2261C36.206 52.8293 36.0574 53.2707 35.7602 53.5501C35.4675 53.834 35.0328 53.976 34.4561 53.976ZM34.3696 52.5188C34.0369 52.5188 33.7375 52.4478 33.4714 52.3059C33.2052 52.1595 32.9945 51.9577 32.8393 51.7004C32.6885 51.4431 32.6131 51.1482 32.6131 50.8155C32.6131 50.4828 32.6885 50.19 32.8393 49.9372C32.9945 49.6799 33.2052 49.4803 33.4714 49.3384C33.7375 49.1964 34.0369 49.1254 34.3696 49.1254C34.6801 49.1254 34.9596 49.1898 35.208 49.3184C35.4564 49.447 35.6538 49.6378 35.8002 49.8906C35.9465 50.1435 36.0197 50.4517 36.0197 50.8155C36.0197 51.1792 35.9465 51.4875 35.8002 51.7403C35.6538 51.9932 35.4564 52.1861 35.208 52.3192C34.9596 52.4523 34.6801 52.5188 34.3696 52.5188ZM34.4162 52.0996C34.6735 52.0996 34.9019 52.0464 35.1015 51.9399C35.3011 51.829 35.4586 51.6782 35.5739 51.4875C35.6893 51.2923 35.7469 51.0683 35.7469 50.8155C35.7469 50.5626 35.6893 50.3408 35.5739 50.1501C35.4586 49.9594 35.3011 49.8108 35.1015 49.7043C34.9019 49.5934 34.6735 49.538 34.4162 49.538C34.1634 49.538 33.9349 49.5934 33.7309 49.7043C33.5313 49.8108 33.3738 49.9594 33.2585 50.1501C33.1476 50.3408 33.0921 50.5626 33.0921 50.8155C33.0921 51.0683 33.1476 51.2923 33.2585 51.4875C33.3738 51.6782 33.5313 51.829 33.7309 51.9399C33.9349 52.0464 34.1634 52.0996 34.4162 52.0996ZM37.5206 52.6519V49.1587H37.9731V50.1102L37.9265 49.9438C38.0241 49.6777 38.1882 49.4759 38.4189 49.3384C38.6495 49.1964 38.9356 49.1254 39.2772 49.1254V49.5845C39.2594 49.5845 39.2417 49.5845 39.224 49.5845C39.2062 49.5801 39.1885 49.5779 39.1707 49.5779C38.8026 49.5779 38.5142 49.691 38.3057 49.9172C38.0973 50.139 37.993 50.4562 37.993 50.8687V52.6519H37.5206ZM42.0683 52.6519V51.8801L42.0484 51.7536V50.4628C42.0484 50.1656 41.9641 49.9372 41.7955 49.7775C41.6314 49.6178 41.3852 49.538 41.057 49.538C40.8308 49.538 40.6156 49.5757 40.4116 49.6511C40.2075 49.7265 40.0345 49.8263 39.8926 49.9505L39.6797 49.5978C39.8571 49.447 40.07 49.3317 40.3184 49.2519C40.5668 49.1676 40.8285 49.1254 41.1036 49.1254C41.556 49.1254 41.9042 49.2385 42.1482 49.4648C42.3966 49.6866 42.5208 50.0259 42.5208 50.4828V52.6519H42.0683ZM40.864 52.6852C40.6023 52.6852 40.3739 52.643 40.1787 52.5587C39.988 52.47 39.8416 52.3503 39.7396 52.1994C39.6375 52.0442 39.5865 51.8668 39.5865 51.6671C39.5865 51.4853 39.6287 51.3212 39.7129 51.1748C39.8017 51.024 39.9436 50.9042 40.1388 50.8155C40.3384 50.7223 40.6045 50.6757 40.9372 50.6757H42.1415V51.0284H40.9505C40.6134 51.0284 40.3783 51.0883 40.2452 51.208C40.1166 51.3278 40.0523 51.4764 40.0523 51.6538C40.0523 51.8534 40.1299 52.0131 40.2852 52.1329C40.4404 52.2527 40.6578 52.3125 40.9372 52.3125C41.2034 52.3125 41.4318 52.2527 41.6225 52.1329C41.8177 52.0087 41.9597 51.8313 42.0484 51.6006L42.1548 51.9266C42.0661 52.1573 41.9109 52.3414 41.6891 52.4789C41.4717 52.6164 41.1967 52.6852 40.864 52.6852ZM48.1687 49.1254C48.4526 49.1254 48.6988 49.1809 48.9073 49.2918C49.1202 49.3982 49.2843 49.5624 49.3997 49.7842C49.5194 50.0059 49.5793 50.2854 49.5793 50.6225V52.6519H49.1069V50.6691C49.1069 50.3009 49.0182 50.0237 48.8407 49.8374C48.6678 49.6466 48.4216 49.5513 48.1022 49.5513C47.8627 49.5513 47.6542 49.6023 47.4767 49.7043C47.3038 49.8019 47.1685 49.9461 47.0709 50.1368C46.9777 50.3231 46.9311 50.5493 46.9311 50.8155V52.6519H46.4587V50.6691C46.4587 50.3009 46.37 50.0237 46.1926 49.8374C46.0152 49.6466 45.7668 49.5513 45.4474 49.5513C45.2123 49.5513 45.006 49.6023 44.8286 49.7043C44.6512 49.8019 44.5136 49.9461 44.4161 50.1368C44.3229 50.3231 44.2763 50.5493 44.2763 50.8155V52.6519H43.8039V49.1587H44.2564V50.1035L44.1832 49.9372C44.2896 49.6843 44.4604 49.487 44.6955 49.345C44.935 49.1986 45.2167 49.1254 45.5405 49.1254C45.8821 49.1254 46.1726 49.2119 46.4122 49.3849C46.6517 49.5535 46.8069 49.8085 46.8779 50.1501L46.6916 50.0769C46.7936 49.793 46.9733 49.5646 47.2306 49.3916C47.4923 49.2142 47.805 49.1254 48.1687 49.1254Z\"\n                            fill=\"#6F706F\" />\n                    </svg>\n                    <svg width=\"85\" height=\"57\" viewBox=\"0 0 74 57\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n                        <g filter=\"url(#filter0_d_0_364)\">\n                            <rect x=\"9.47916\" y=\"9.63644\" width=\"50.9089\" height=\"33.2684\" rx=\"4.43578\" fill=\"white\" />\n                        </g>\n                        <path\n                            d=\"M39.8686 25.7915C39.8864 23.6534 38.0655 21.6935 35.8099 21.4222C35.7612 21.4161 35.7126 21.4087 35.6642 21.4C35.5509 21.3783 35.4359 21.366 35.3205 21.3631C34.8577 21.3631 34.7342 21.6884 34.7017 21.8813C34.6699 22.0698 34.7002 22.2288 34.7911 22.3522C34.9442 22.56 35.214 22.597 35.4306 22.6265C35.4935 22.6354 35.5534 22.6435 35.6036 22.6546C37.6308 23.1078 38.3131 23.8198 38.6466 25.8299C38.6547 25.8787 38.6584 25.9393 38.6628 26.0036C38.6776 26.2439 38.7072 26.7437 39.2447 26.7437C39.289 26.7437 39.3378 26.74 39.3881 26.7326C39.8879 26.6564 39.8723 26.1996 39.8649 25.98C39.8627 25.9179 39.8605 25.8595 39.8664 25.8203C39.8676 25.8105 39.8681 25.8006 39.8679 25.7907L39.8686 25.7915Z\"\n                            fill=\"#D0D0D0\" />\n                        <path\n                            d=\"M35.1889 20.6378C35.2495 20.6422 35.3057 20.6467 35.353 20.6533C38.6821 21.1657 40.2131 22.7426 40.6368 26.0975C40.6442 26.1544 40.6456 26.2239 40.6464 26.2971C40.6508 26.5596 40.6597 27.1052 41.2452 27.1163H41.2629C41.447 27.1163 41.5927 27.0608 41.6977 26.9514C41.8795 26.7614 41.8677 26.4783 41.8566 26.2505C41.8544 26.1944 41.8522 26.1419 41.8522 26.0953C41.895 22.665 38.9246 19.5533 35.4972 19.4379C35.4824 19.4379 35.4691 19.4379 35.4558 19.4401C35.4423 19.4418 35.4287 19.4426 35.4151 19.4424C35.3804 19.4424 35.339 19.4394 35.2939 19.4364C35.2406 19.4328 35.1793 19.4283 35.1164 19.4283C34.5708 19.4283 34.4673 19.8164 34.454 20.0478C34.4237 20.5824 34.9405 20.6201 35.1889 20.6378ZM40.4763 30.4335C40.4049 30.3792 40.3342 30.324 40.2642 30.2679C39.9004 29.9751 39.5138 29.706 39.1404 29.4451L38.9075 29.2824C38.4285 28.946 37.9982 28.7826 37.5916 28.7826C37.043 28.7826 36.5655 29.0858 36.1707 29.6824C35.9962 29.947 35.784 30.0757 35.523 30.0757C35.3418 30.0693 35.1639 30.0247 35.0011 29.9448C33.456 29.244 32.3515 28.169 31.7201 26.7503C31.4148 26.0642 31.5138 25.6162 32.0506 25.251C32.3559 25.044 32.9229 24.6588 32.8838 23.9203C32.8379 23.0827 30.9889 20.5609 30.2097 20.2748C29.8766 20.1533 29.5115 20.1523 29.1777 20.2719C28.2824 20.5727 27.6407 21.1021 27.3191 21.8007C27.0086 22.4764 27.0233 23.2697 27.359 24.0948C28.3312 26.4805 29.6974 28.5609 31.4207 30.2775C33.107 31.9579 35.18 33.3338 37.5812 34.368C37.7979 34.4612 38.0248 34.5122 38.1912 34.5492C38.2474 34.5617 38.2961 34.5728 38.3316 34.5824C38.3512 34.5877 38.3713 34.5904 38.3915 34.5906H38.4107C39.5404 34.5906 40.897 33.5585 41.3132 32.3823C41.6784 31.3517 41.0116 30.8423 40.4763 30.4335ZM35.6886 23.3636C35.4957 23.368 35.0928 23.3784 34.9516 23.788C34.885 23.9802 34.8932 24.1458 34.9752 24.2825C35.095 24.4822 35.3249 24.5443 35.5334 24.5783C36.2912 24.6995 36.6808 25.1179 36.7584 25.8964C36.7946 26.2587 37.0393 26.5123 37.3521 26.5123C37.3758 26.5122 37.3995 26.5107 37.423 26.5078C37.8001 26.4635 37.9827 26.1862 37.9664 25.6842C37.9723 25.1608 37.6988 24.5664 37.2323 24.0933C36.7651 23.6187 36.2017 23.351 35.6886 23.3636Z\"\n                            fill=\"#D0D0D0\" />\n                        <path\n                            d=\"M28.2605 53.3406L26.1979 48.683H26.7302L28.6597 53.0678H28.367L30.3099 48.683H30.8089L28.7462 53.3406H28.2605ZM31.3656 53.3406V49.8474H31.838V53.3406H31.3656ZM31.6051 49.0756C31.5075 49.0756 31.4254 49.0423 31.3589 48.9758C31.2924 48.9093 31.2591 48.8294 31.2591 48.7363C31.2591 48.6431 31.2924 48.5655 31.3589 48.5034C31.4254 48.4368 31.5075 48.4036 31.6051 48.4036C31.7027 48.4036 31.7847 48.4346 31.8513 48.4967C31.9178 48.5588 31.9511 48.6365 31.9511 48.7296C31.9511 48.8272 31.9178 48.9093 31.8513 48.9758C31.7892 49.0423 31.7071 49.0756 31.6051 49.0756ZM34.9556 53.3739C34.6495 53.3739 34.3745 53.3051 34.1305 53.1676C33.8865 53.0257 33.6936 52.8216 33.5516 52.5555C33.4097 52.2893 33.3387 51.9677 33.3387 51.5907C33.3387 51.2092 33.4097 50.8876 33.5516 50.6259C33.698 50.3598 33.8932 50.1579 34.1372 50.0204C34.3811 49.8829 34.6539 49.8142 34.9556 49.8142C35.2883 49.8142 35.5855 49.8896 35.8472 50.0404C36.1133 50.1868 36.3218 50.393 36.4726 50.6592C36.6234 50.9253 36.6988 51.2358 36.6988 51.5907C36.6988 51.9411 36.6234 52.2516 36.4726 52.5222C36.3218 52.7884 36.1133 52.9968 35.8472 53.1477C35.5855 53.2985 35.2883 53.3739 34.9556 53.3739ZM33.1524 53.3406V48.4036H33.6248V50.8787L33.5583 51.584L33.6049 52.2893V53.3406H33.1524ZM34.9223 52.9547C35.1707 52.9547 35.3925 52.8992 35.5877 52.7884C35.7828 52.673 35.9381 52.5133 36.0534 52.3093C36.1688 52.1008 36.2264 51.8613 36.2264 51.5907C36.2264 51.3157 36.1688 51.0761 36.0534 50.8721C35.9381 50.668 35.7828 50.5106 35.5877 50.3997C35.3925 50.2844 35.1707 50.2267 34.9223 50.2267C34.6739 50.2267 34.4499 50.2844 34.2503 50.3997C34.0551 50.5106 33.8999 50.668 33.7845 50.8721C33.6736 51.0761 33.6182 51.3157 33.6182 51.5907C33.6182 51.8613 33.6736 52.1008 33.7845 52.3093C33.8999 52.5133 34.0551 52.673 34.2503 52.7884C34.4499 52.8992 34.6739 52.9547 34.9223 52.9547ZM39.1456 53.3739C38.7819 53.3739 38.4625 53.2985 38.1875 53.1477C37.9125 52.9924 37.6973 52.7817 37.5421 52.5156C37.3868 52.245 37.3092 51.9367 37.3092 51.5907C37.3092 51.2447 37.3824 50.9386 37.5288 50.6725C37.6796 50.4063 37.8836 50.1979 38.1409 50.047C38.4026 49.8918 38.6954 49.8142 39.0192 49.8142C39.3475 49.8142 39.638 49.8896 39.8908 50.0404C40.1481 50.1868 40.3499 50.3952 40.4963 50.6658C40.6427 50.932 40.7159 51.2403 40.7159 51.5907C40.7159 51.6129 40.7137 51.6373 40.7092 51.6639C40.7092 51.6861 40.7092 51.7105 40.7092 51.7371H37.6685V51.3844H40.4564L40.2701 51.5242C40.2701 51.2713 40.2146 51.0473 40.1038 50.8521C39.9973 50.6525 39.8509 50.4973 39.6646 50.3864C39.4783 50.2755 39.2632 50.22 39.0192 50.22C38.7797 50.22 38.5645 50.2755 38.3738 50.3864C38.1831 50.4973 38.0345 50.6525 37.928 50.8521C37.8215 51.0517 37.7683 51.2802 37.7683 51.5375V51.6107C37.7683 51.8768 37.826 52.1119 37.9413 52.3159C38.0611 52.5156 38.2252 52.673 38.4337 52.7884C38.6466 52.8992 38.8883 52.9547 39.1589 52.9547C39.3718 52.9547 39.5692 52.917 39.7511 52.8416C39.9374 52.7662 40.0971 52.6508 40.2302 52.4956L40.4963 52.8017C40.3411 52.988 40.1459 53.1299 39.9108 53.2275C39.6801 53.3251 39.4251 53.3739 39.1456 53.3739ZM41.6774 53.3406V49.8474H42.1299V50.7989L42.0833 50.6326C42.1809 50.3664 42.345 50.1646 42.5757 50.0271C42.8064 49.8851 43.0925 49.8142 43.434 49.8142V50.2733C43.4163 50.2733 43.3985 50.2733 43.3808 50.2733C43.363 50.2688 43.3453 50.2666 43.3276 50.2666C42.9594 50.2666 42.6711 50.3797 42.4626 50.6059C42.2541 50.8277 42.1499 51.1449 42.1499 51.5574V53.3406H41.6774Z\"\n                            fill=\"#5A6253\" />\n                    </svg>\n                    <svg width=\"85\" height=\"57\" viewBox=\"0 0 74 57\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n                        <g filter=\"url(#filter0_d_0_276)\">\n                            <rect x=\"9.47876\" y=\"9.63641\" width=\"50.9089\" height=\"33.2684\" rx=\"4.43578\" fill=\"white\" />\n                        </g>\n                        <path\n                            d=\"M18.9719 53.3406L17.4016 48.683H17.9073L19.3778 53.0678H19.1249L20.642 48.683H21.0944L22.5915 53.0678H22.3519L23.8357 48.683H24.3081L22.7379 53.3406H22.2189L20.7883 49.182H20.9214L19.4842 53.3406H18.9719ZM26.9917 49.8141C27.2756 49.8141 27.524 49.8696 27.737 49.9805C27.9543 50.0869 28.1229 50.2511 28.2426 50.4728C28.3668 50.6946 28.4289 50.9741 28.4289 51.3112V53.3406H27.9565V51.3578C27.9565 50.9896 27.8634 50.7124 27.6771 50.5261C27.4952 50.3353 27.2379 50.24 26.9052 50.24C26.6568 50.24 26.4395 50.291 26.2532 50.393C26.0713 50.4906 25.9294 50.6347 25.8273 50.8255C25.7298 51.0118 25.681 51.238 25.681 51.5042V53.3406H25.2086V48.4035H25.681V50.8055L25.5878 50.6259C25.6987 50.373 25.8761 50.1756 26.1201 50.0337C26.3641 49.8873 26.6546 49.8141 26.9917 49.8141ZM31.894 53.3406V52.5687L31.8741 52.4423V51.1515C31.8741 50.8543 31.7898 50.6259 31.6212 50.4662C31.4571 50.3065 31.2109 50.2267 30.8827 50.2267C30.6565 50.2267 30.4413 50.2644 30.2373 50.3398C30.0332 50.4152 29.8602 50.515 29.7183 50.6392L29.5054 50.2865C29.6828 50.1357 29.8957 50.0204 30.1441 49.9405C30.3925 49.8563 30.6542 49.8141 30.9293 49.8141C31.3817 49.8141 31.7299 49.9272 31.9739 50.1535C32.2223 50.3753 32.3465 50.7146 32.3465 51.1715V53.3406H31.894ZM30.6897 53.3738C30.428 53.3738 30.1996 53.3317 30.0044 53.2474C29.8137 53.1587 29.6673 53.0389 29.5653 52.8881C29.4632 52.7329 29.4122 52.5554 29.4122 52.3558C29.4122 52.174 29.4544 52.0098 29.5386 51.8635C29.6274 51.7126 29.7693 51.5929 29.9645 51.5042C30.1641 51.411 30.4302 51.3644 30.7629 51.3644H31.9672V51.7171H30.7762C30.4391 51.7171 30.204 51.777 30.0709 51.8967C29.9423 52.0165 29.878 52.1651 29.878 52.3425C29.878 52.5421 29.9556 52.7018 30.1109 52.8216C30.2661 52.9414 30.4835 53.0012 30.7629 53.0012C31.0291 53.0012 31.2575 52.9414 31.4482 52.8216C31.6434 52.6974 31.7854 52.52 31.8741 52.2893L31.9805 52.6153C31.8918 52.846 31.7366 53.0301 31.5148 53.1676C31.2974 53.3051 31.0224 53.3738 30.6897 53.3738ZM34.7341 53.3738C34.4059 53.3738 34.153 53.2851 33.9756 53.1077C33.7982 52.9303 33.7095 52.6796 33.7095 52.3558V49.0756H34.1819V52.3292C34.1819 52.5333 34.2329 52.6907 34.3349 52.8016C34.4414 52.9125 34.5922 52.968 34.7874 52.968C34.9958 52.968 35.1688 52.9081 35.3063 52.7883L35.4727 53.1277C35.3795 53.2119 35.2664 53.274 35.1333 53.314C35.0047 53.3539 34.8716 53.3738 34.7341 53.3738ZM33.084 50.24V49.8474H35.2465V50.24H33.084ZM37.2708 53.3738C36.9825 53.3738 36.7097 53.3339 36.4524 53.2541C36.1952 53.1698 35.9933 53.0656 35.847 52.9414L36.0599 52.5687C36.2018 52.6752 36.3837 52.7684 36.6055 52.8482C36.8273 52.9236 37.0601 52.9613 37.3041 52.9613C37.6368 52.9613 37.8763 52.9103 38.0227 52.8083C38.1691 52.7018 38.2423 52.5621 38.2423 52.3891C38.2423 52.2605 38.2001 52.1607 38.1159 52.0897C38.036 52.0143 37.9296 51.9588 37.7965 51.9233C37.6634 51.8834 37.5148 51.8502 37.3507 51.8235C37.1866 51.7969 37.0224 51.7659 36.8583 51.7304C36.6986 51.6949 36.5522 51.6439 36.4192 51.5774C36.2861 51.5064 36.1774 51.411 36.0931 51.2912C36.0133 51.1715 35.9734 51.0118 35.9734 50.8122C35.9734 50.6214 36.0266 50.4507 36.1331 50.2998C36.2395 50.149 36.3948 50.0315 36.5988 49.9472C36.8073 49.8585 37.0601 49.8141 37.3573 49.8141C37.5836 49.8141 37.8098 49.8452 38.036 49.9073C38.2622 49.9649 38.4485 50.0426 38.5949 50.1402L38.3887 50.5194C38.2334 50.413 38.0671 50.3376 37.8896 50.2932C37.7122 50.2444 37.5348 50.22 37.3573 50.22C37.0424 50.22 36.8095 50.2754 36.6587 50.3863C36.5123 50.4928 36.4391 50.6303 36.4391 50.7989C36.4391 50.9319 36.4791 51.0362 36.5589 51.1116C36.6432 51.187 36.7519 51.2469 36.8849 51.2912C37.0224 51.3312 37.171 51.3644 37.3307 51.391C37.4948 51.4177 37.6568 51.4509 37.8164 51.4909C37.9806 51.5263 38.1292 51.5774 38.2622 51.6439C38.3997 51.706 38.5084 51.7969 38.5883 51.9167C38.6725 52.032 38.7147 52.1851 38.7147 52.3758C38.7147 52.5798 38.657 52.7573 38.5417 52.9081C38.4308 53.0545 38.2667 53.1698 38.0493 53.2541C37.8364 53.3339 37.5769 53.3738 37.2708 53.3738ZM38.9361 53.3406L41.0653 48.683H41.551L43.6802 53.3406H43.1612L41.205 48.9691H41.4046L39.4485 53.3406H38.9361ZM39.7745 52.0963L39.9209 51.6971H42.6289L42.7753 52.0963H39.7745ZM46.154 53.3738C45.8524 53.3738 45.5796 53.3051 45.3356 53.1676C45.0916 53.0256 44.8965 52.8238 44.7501 52.5621C44.6081 52.2959 44.5372 51.9721 44.5372 51.5907C44.5372 51.2092 44.6081 50.8876 44.7501 50.6259C44.892 50.3597 45.085 50.1579 45.329 50.0204C45.5729 49.8829 45.8479 49.8141 46.154 49.8141C46.4867 49.8141 46.7839 49.8895 47.0456 50.0404C47.3118 50.1867 47.5202 50.3952 47.6711 50.6658C47.8219 50.9319 47.8973 51.2402 47.8973 51.5907C47.8973 51.9455 47.8219 52.256 47.6711 52.5222C47.5202 52.7883 47.3118 52.9968 47.0456 53.1476C46.7839 53.2984 46.4867 53.3738 46.154 53.3738ZM44.3509 54.6314V49.8474H44.8033V50.8987L44.7567 51.5973L44.8233 52.3026V54.6314H44.3509ZM46.1207 52.9547C46.3691 52.9547 46.5909 52.8992 46.7861 52.7883C46.9813 52.673 47.1365 52.5133 47.2519 52.3093C47.3672 52.1008 47.4249 51.8612 47.4249 51.5907C47.4249 51.3201 47.3672 51.0828 47.2519 50.8787C47.1365 50.6747 46.9813 50.515 46.7861 50.3997C46.5909 50.2843 46.3691 50.2267 46.1207 50.2267C45.8723 50.2267 45.6483 50.2843 45.4487 50.3997C45.2535 50.515 45.0983 50.6747 44.983 50.8787C44.8721 51.0828 44.8166 51.3201 44.8166 51.5907C44.8166 51.8612 44.8721 52.1008 44.983 52.3093C45.0983 52.5133 45.2535 52.673 45.4487 52.7883C45.6483 52.8992 45.8723 52.9547 46.1207 52.9547ZM50.6634 53.3738C50.3618 53.3738 50.089 53.3051 49.845 53.1676C49.6011 53.0256 49.4059 52.8238 49.2595 52.5621C49.1176 52.2959 49.0466 51.9721 49.0466 51.5907C49.0466 51.2092 49.1176 50.8876 49.2595 50.6259C49.4015 50.3597 49.5944 50.1579 49.8384 50.0204C50.0824 49.8829 50.3574 49.8141 50.6634 49.8141C50.9961 49.8141 51.2933 49.8895 51.555 50.0404C51.8212 50.1867 52.0297 50.3952 52.1805 50.6658C52.3313 50.9319 52.4067 51.2402 52.4067 51.5907C52.4067 51.9455 52.3313 52.256 52.1805 52.5222C52.0297 52.7883 51.8212 52.9968 51.555 53.1476C51.2933 53.2984 50.9961 53.3738 50.6634 53.3738ZM48.8603 54.6314V49.8474H49.3127V50.8987L49.2662 51.5973L49.3327 52.3026V54.6314H48.8603ZM50.6302 52.9547C50.8786 52.9547 51.1004 52.8992 51.2955 52.7883C51.4907 52.673 51.646 52.5133 51.7613 52.3093C51.8766 52.1008 51.9343 51.8612 51.9343 51.5907C51.9343 51.3201 51.8766 51.0828 51.7613 50.8787C51.646 50.6747 51.4907 50.515 51.2955 50.3997C51.1004 50.2843 50.8786 50.2267 50.6302 50.2267C50.3818 50.2267 50.1578 50.2843 49.9582 50.3997C49.763 50.515 49.6077 50.6747 49.4924 50.8787C49.3815 51.0828 49.3261 51.3201 49.3261 51.5907C49.3261 51.8612 49.3815 52.1008 49.4924 52.3093C49.6077 52.5133 49.763 52.673 49.9582 52.7883C50.1578 52.8992 50.3818 52.9547 50.6302 52.9547Z\"\n                            fill=\"#A7A7A7\" />\n                        <g clip-path=\"url(#clip0_0_276)\">\n                            <path\n                                d=\"M38.542 28.398C38.3196 28.2854 37.2368 27.757 37.0344 27.6816C36.832 27.6095 36.6851 27.5718 36.5376 27.7941C36.3934 28.0109 35.9687 28.5072 35.8389 28.6519C35.7092 28.7966 35.5817 28.8077 35.3626 28.7096C35.1403 28.597 34.43 28.3658 33.5867 27.6095C32.9279 27.0234 32.4894 26.3015 32.3591 26.0792C32.2293 25.8596 32.3446 25.7354 32.4544 25.6256C32.5553 25.5247 32.6768 25.3716 32.7893 25.2386C32.8963 25.1055 32.9307 25.0162 33.0089 24.8721C33.081 24.7163 33.0438 24.5948 32.9889 24.485C32.934 24.3753 32.4921 23.2868 32.3075 22.8532C32.1312 22.423 31.9465 22.4779 31.8107 22.4779C31.6837 22.4662 31.5362 22.4662 31.3893 22.4662C31.2423 22.4662 31.0023 22.5211 30.7999 22.7318C30.5975 22.9541 30.0258 23.4853 30.0258 24.5599C30.0258 25.6372 30.8171 26.6796 30.9269 26.8355C31.0394 26.9796 32.4833 29.1975 34.6984 30.1506C35.2268 30.373 35.6371 30.5061 35.9576 30.6159C36.486 30.7833 36.9684 30.76 37.3493 30.7051C37.7707 30.6358 38.6545 30.1706 38.8397 29.6511C39.0277 29.1282 39.0277 28.6952 38.9728 28.597C38.9179 28.4961 38.7738 28.4412 38.5514 28.3431L38.542 28.398ZM34.5248 33.8445H34.5132C33.2019 33.8445 31.9055 33.4891 30.7733 32.8249L30.5077 32.6663L27.7353 33.3882L28.4805 30.6907L28.3014 30.4135C27.5692 29.2493 27.1808 27.9019 27.1808 26.5266C27.1808 22.5011 30.4761 19.2176 34.5304 19.2176C36.4943 19.2176 38.3368 19.9827 39.723 21.3689C40.4068 22.0446 40.9492 22.8497 41.3186 23.7372C41.688 24.6247 41.8769 25.5769 41.8744 26.5383C41.8688 30.561 38.5764 33.8445 34.5276 33.8445H34.5248ZM40.7771 20.3149C39.0904 18.6858 36.8725 17.7648 34.5132 17.7648C29.6471 17.7648 25.6849 21.7099 25.6821 26.5582C25.6821 28.1063 26.0863 29.6167 26.8603 30.9535L25.6072 35.508L30.2914 34.2865C31.5891 34.9861 33.0395 35.3541 34.5137 35.3577H34.5165C39.3853 35.3577 43.3476 31.4126 43.3504 26.561C43.3504 24.2134 42.4349 22.0038 40.766 20.3431L40.7771 20.3149Z\"\n                                fill=\"#D0D0D0\" />\n                        </g>\n                    </svg>\n                </div>\n                <button class=\"firstBlock_query_media_button\">Оставить заявку</button>\n            </div>\n        </div>', 0, 'a:0:{}', 0, '');
INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(6, 1, 0, 'benefitBlock', '', 0, 1, 0, '<div class=\"benefitBlock\">\r\n                    <div class=\"miniBlock\">\r\n                        <div class=\"miniBlock_text\"><b>Соблюдаем сроки</b></div>\r\n                        <div class=\"miniBlock_containe\">\r\n                            <div><svg width=\"33\" height=\"33\" viewBox=\"0 0 33 33\" fill=\"none\"\r\n                                    xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path\r\n                                        d=\"M16.5401 0.229719C7.72994 0.229719 0.587463 7.3722 0.587463 16.1823C0.587463 24.9925 7.72994 32.135 16.5401 32.135C25.3502 32.135 32.4927 24.9925 32.4927 16.1823C32.4927 7.3722 25.3502 0.229719 16.5401 0.229719ZM16.5401 2.68397C23.9949 2.68397 30.0385 8.72756 30.0385 16.1823C30.0385 23.6371 23.9949 29.6807 16.5401 29.6807C9.0853 29.6807 3.04171 23.6371 3.04171 16.1823C3.04171 8.72756 9.0853 2.68397 16.5401 2.68397ZM15.6197 5.13822L15.9265 7.59247H17.1536L17.4604 5.13822H15.6197ZM23.916 7.93879L17.307 13.8527C17.0596 13.7707 16.8007 13.7286 16.5401 13.7281C15.8892 13.7281 15.2649 13.9867 14.8047 14.4469C14.3444 14.9072 14.0858 15.5314 14.0858 16.1823C14.0858 16.8332 14.3444 17.4575 14.8047 17.9178C15.2649 18.378 15.8892 18.6366 16.5401 18.6366C16.6888 18.6361 16.8373 18.622 16.9835 18.5946L21.9495 22.7098L23.0688 21.5918L18.9524 16.6245C19.0263 16.2209 18.9979 15.8052 18.8697 15.4154L24.7836 8.80641L23.916 7.93879ZM5.49596 15.262V17.1027L7.95021 16.7959V15.5688L5.49596 15.262ZM27.5842 15.262L25.13 15.5688V16.7959L27.5842 17.1027V15.262ZM15.9265 24.7722L15.6197 27.2265H17.4604L17.1536 24.7722H15.9265Z\"\r\n                                        fill=\"#498837\" />\r\n                                </svg></div>\r\n                            <div>от 2.5 до 5 месяцев, всё согласно договора</div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"miniBlock\">\r\n                        <div class=\"miniBlock_text\"><b>Гарантия до 50 лет</b></div>\r\n                        <div class=\"miniBlock_containe\">\r\n                            <div><svg width=\"34\" height=\"34\" viewBox=\"0 0 34 34\" fill=\"none\"\r\n                                    xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <path\r\n                                        d=\"M16.0316 2.25064L28.4246 5.52981C28.7162 5.60697 28.9193 5.87078 28.9193 6.17239V21.2422C28.9193 22.5808 28.2478 23.83 27.1314 24.5685L15.8883 32.0058C15.6659 32.1529 15.3772 32.1529 15.1548 32.0058L3.91168 24.5685C2.79531 23.83 2.12384 22.5808 2.12384 21.2422V6.17239C2.12384 5.87078 2.32692 5.60697 2.61851 5.52981L15.0115 2.25064C15.3458 2.16219 15.6973 2.16219 16.0316 2.25064Z\"\r\n                                        stroke=\"#498837\" stroke-width=\"2.65877\" stroke-linecap=\"round\" />\r\n                                    <path\r\n                                        d=\"M11.0551 16.2968L14.5108 19.7257C14.5755 19.79 14.6801 19.79 14.7448 19.7257L20.8801 13.638\"\r\n                                        stroke=\"#498837\" stroke-width=\"2.65877\" stroke-linecap=\"round\" />\r\n                                </svg></div>\r\n                            <div>Опытная команда мастеров с профессиональным оборудованием</div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"miniBlock\">\r\n                        <div class=\"miniBlock_text\"><b>Стоимость строительства</b></div>\r\n                        <div class=\"miniBlock_containe\">\r\n                            <div><svg width=\"33\" height=\"33\" viewBox=\"0 0 33 33\" fill=\"none\"\r\n                                    xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <g clip-path=\"url(#clip0_0_328)\">\r\n                                        <path\r\n                                            d=\"M11.7183 22.0307V28.4897C12.5882 29.0453 14.8518 30.0785 20.0335 30.5182C21.0329 30.603 22.0485 30.4626 22.971 30.113C26.4382 28.7988 29.4225 26.0529 30.8978 24.5258L31.0173 24.6412L30.8978 24.5258C31.3455 24.0624 31.3711 23.3414 30.9574 22.8481L30.9574 22.848C30.609 22.4321 30.0364 22.2877 29.5322 22.4882L24.7747 24.3808C24.7747 24.3808 24.7747 24.3808 24.7747 24.3808C24.5005 24.4899 24.2159 24.5661 23.9273 24.6103C24.0481 24.9451 24.0856 25.3134 24.0197 25.6843L24.0197 25.6844L24.0091 25.7443C23.8298 26.7516 22.9383 27.4816 21.9328 27.4816C21.8681 27.4816 21.8033 27.4785 21.7381 27.4724C21.7381 27.4723 21.738 27.4723 21.738 27.4723L15.6958 26.9046L15.6958 26.9046L15.7113 26.7392C15.4614 26.7157 15.2778 26.4942 15.3015 26.2443L11.7183 22.0307ZM11.7183 22.0307H13.8361C14.1846 22.0307 14.5296 22.0837 14.8622 22.188L14.8622 22.188L22.165 24.4777L22.1664 24.4782L22.1804 24.4827L22.1804 24.4827L22.1825 24.4834C22.6118 24.6159 22.8732 25.041 22.7975 25.4669L22.7868 25.5267C22.7868 25.5267 22.7868 25.5268 22.7868 25.5268C22.7085 25.9656 22.2979 26.2775 21.854 26.2365C21.854 26.2365 21.8539 26.2365 21.8539 26.2365L11.7183 22.0307ZM10.7532 20.362H9.26704C9.19563 19.8909 8.78808 19.5292 8.29739 19.5292H6.32249H2.12256C1.95382 19.5292 1.81889 19.6075 1.71838 19.7164C1.62072 19.8222 1.5512 19.9607 1.50116 20.1013C1.40094 20.3829 1.3634 20.7179 1.3634 20.9555V29.589C1.3634 29.8267 1.40095 30.1598 1.50129 30.4396C1.55141 30.5793 1.62106 30.7168 1.7189 30.8219C1.81962 30.9301 1.95442 31.0073 2.12256 31.0073H8.29762C8.78813 31.0073 9.19563 30.6456 9.26704 30.1745H10.7532C11.0597 30.1745 11.3329 30.031 11.5095 29.8084C12.6621 30.4305 14.1763 30.864 15.6742 31.1669C17.2345 31.4823 18.7906 31.6585 19.9285 31.755C20.1526 31.7741 20.3774 31.7835 20.6018 31.7835C21.5632 31.7835 22.5225 31.6106 23.4109 31.2739L23.352 31.1185L23.4109 31.2739C27.1143 29.8702 30.2536 26.9793 31.7907 25.3881C32.6804 24.4672 32.7314 23.0321 31.9091 22.0508C31.216 21.2234 30.0761 20.9356 29.0733 21.3346L24.3158 23.2273C23.7513 23.4518 23.1207 23.4756 22.5408 23.2946L15.2336 21.0033C14.7808 20.8613 14.3106 20.7894 13.8361 20.7894H11.5538C11.3807 20.5324 11.087 20.362 10.7532 20.362ZM5.72695 19.9747C5.71067 20.0302 5.70194 20.0889 5.70194 20.1497C5.70194 20.1946 5.70671 20.2384 5.71576 20.2807C5.49214 20.2459 5.27681 20.2069 5.10745 20.1653C5.0721 20.1566 5.03963 20.148 5.01016 20.1396C5.01846 20.1368 5.02703 20.134 5.03588 20.1312C5.19794 20.08 5.41659 20.0326 5.63428 19.9917C5.66539 19.9858 5.69634 19.9802 5.72695 19.9747ZM6.84732 20.7705C6.84744 20.7705 6.84757 20.7705 6.8477 20.7705H8.03655V29.766H3.02513V20.7705H6.32249H6.84711H6.84732Z\"\r\n                                            fill=\"#498837\" stroke=\"#498837\" stroke-width=\"0.332346\" />\r\n                                        <path\r\n                                            d=\"M21.0824 11.7493C20.0238 11.7142 19.1594 11.1672 19.1594 10.6028C19.1594 10.3028 19.4243 9.8619 19.7594 9.8619C20.1296 9.8619 20.4296 10.3823 21.0824 10.497V9.0678C20.2709 8.75932 19.3185 8.37984 19.3185 7.25099C19.3185 6.13066 20.1474 5.59286 21.0824 5.46045V5.21338C21.0824 5.08985 21.2237 4.97519 21.4178 4.97519C21.5854 4.97519 21.753 5.08985 21.753 5.21338V5.43383C22.3 5.45158 23.3319 5.59286 23.3319 6.2013C23.3319 6.4395 23.1729 6.92441 22.7849 6.92441C22.4938 6.92441 22.3263 6.64255 21.753 6.59818V7.88606C22.5556 8.18602 23.4902 8.60029 23.4902 9.79126C23.4902 10.885 22.7849 11.5467 21.753 11.7142V11.9698C21.753 12.0933 21.585 12.208 21.4175 12.208C21.2237 12.208 21.0824 12.0933 21.0824 11.9698V11.7493ZM21.1704 7.67413V6.6248C20.7736 6.70396 20.606 6.90701 20.606 7.11858C20.606 7.37453 20.8353 7.5332 21.1704 7.67413ZM21.6646 9.30599V10.4881C21.9645 10.4174 22.2027 10.2499 22.2027 9.93254C22.2027 9.6411 21.9819 9.45615 21.6646 9.30599Z\"\r\n                                            fill=\"#498837\" />\r\n                                        <path\r\n                                            d=\"M18.8255 1.28968L18.8255 1.2897L19.0906 1.20744C19.0961 1.20566 19.103 1.2035 19.1106 1.20149C19.8314 0.993448 20.5803 0.887847 21.3366 0.887847C25.7538 0.887847 29.3472 4.4812 29.3472 8.89846C29.3472 13.3157 25.7538 16.9091 21.3366 16.9091C16.9193 16.9091 13.326 13.3157 13.326 8.89846C13.326 7.01888 13.99 5.19158 15.1965 3.75337L15.1966 3.7533C15.4975 3.395 16.0322 3.34751 16.3909 3.64873L18.8255 1.28968ZM18.8255 1.28968L18.8235 1.29034M18.8255 1.28968L18.8235 1.29034M18.8235 1.29034C18.8101 1.29468 18.7938 1.30005 18.7767 1.30669L18.2403 1.50912L18.2396 1.50938M18.8235 1.29034L18.2396 1.50938M18.2396 1.50938C18.2252 1.51489 18.2102 1.52105 18.1951 1.52788C18.1949 1.52799 18.1946 1.52811 18.1944 1.52822L17.982 1.62238L17.9819 1.62245L18.2396 1.50938ZM16.4959 4.84305L16.4959 4.84307C15.5452 5.97635 15.0218 7.41668 15.0218 8.89846C15.0218 12.3803 17.8547 15.2132 21.3366 15.2132C24.8181 15.2132 27.651 12.3803 27.651 8.89846C27.651 5.41661 24.8181 2.58404 21.3366 2.58404C20.7408 2.58404 20.1527 2.66624 19.587 2.8291L19.3527 2.90202L18.8619 3.0871L18.6708 3.17208L18.6707 3.17212L18.6032 3.02028L16.4959 4.84305ZM16.4959 4.84305C16.7966 4.48448 16.7497 3.94985 16.391 3.64879L16.4959 4.84305Z\"\r\n                                            fill=\"#498837\" stroke=\"#498837\" stroke-width=\"0.332346\" />\r\n                                    </g>\r\n                                </svg></div>\r\n                            <div>от 800$ м2 в зависимости от того что необходимо построить</div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"miniBlock\">\r\n                        <div class=\"miniBlock_text\"><b>Стоимость строительства</b></div>\r\n                        <div class=\"miniBlock_containe\">\r\n                            <div><svg width=\"33\" height=\"33\" viewBox=\"0 0 33 33\" fill=\"none\"\r\n                                    xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <g clip-path=\"url(#clip0_0_328)\">\r\n                                        <path\r\n                                            d=\"M11.7183 22.0307V28.4897C12.5882 29.0453 14.8518 30.0785 20.0335 30.5182C21.0329 30.603 22.0485 30.4626 22.971 30.113C26.4382 28.7988 29.4225 26.0529 30.8978 24.5258L31.0173 24.6412L30.8978 24.5258C31.3455 24.0624 31.3711 23.3414 30.9574 22.8481L30.9574 22.848C30.609 22.4321 30.0364 22.2877 29.5322 22.4882L24.7747 24.3808C24.7747 24.3808 24.7747 24.3808 24.7747 24.3808C24.5005 24.4899 24.2159 24.5661 23.9273 24.6103C24.0481 24.9451 24.0856 25.3134 24.0197 25.6843L24.0197 25.6844L24.0091 25.7443C23.8298 26.7516 22.9383 27.4816 21.9328 27.4816C21.8681 27.4816 21.8033 27.4785 21.7381 27.4724C21.7381 27.4723 21.738 27.4723 21.738 27.4723L15.6958 26.9046L15.6958 26.9046L15.7113 26.7392C15.4614 26.7157 15.2778 26.4942 15.3015 26.2443L11.7183 22.0307ZM11.7183 22.0307H13.8361C14.1846 22.0307 14.5296 22.0837 14.8622 22.188L14.8622 22.188L22.165 24.4777L22.1664 24.4782L22.1804 24.4827L22.1804 24.4827L22.1825 24.4834C22.6118 24.6159 22.8732 25.041 22.7975 25.4669L22.7868 25.5267C22.7868 25.5267 22.7868 25.5268 22.7868 25.5268C22.7085 25.9656 22.2979 26.2775 21.854 26.2365C21.854 26.2365 21.8539 26.2365 21.8539 26.2365L11.7183 22.0307ZM10.7532 20.362H9.26704C9.19563 19.8909 8.78808 19.5292 8.29739 19.5292H6.32249H2.12256C1.95382 19.5292 1.81889 19.6075 1.71838 19.7164C1.62072 19.8222 1.5512 19.9607 1.50116 20.1013C1.40094 20.3829 1.3634 20.7179 1.3634 20.9555V29.589C1.3634 29.8267 1.40095 30.1598 1.50129 30.4396C1.55141 30.5793 1.62106 30.7168 1.7189 30.8219C1.81962 30.9301 1.95442 31.0073 2.12256 31.0073H8.29762C8.78813 31.0073 9.19563 30.6456 9.26704 30.1745H10.7532C11.0597 30.1745 11.3329 30.031 11.5095 29.8084C12.6621 30.4305 14.1763 30.864 15.6742 31.1669C17.2345 31.4823 18.7906 31.6585 19.9285 31.755C20.1526 31.7741 20.3774 31.7835 20.6018 31.7835C21.5632 31.7835 22.5225 31.6106 23.4109 31.2739L23.352 31.1185L23.4109 31.2739C27.1143 29.8702 30.2536 26.9793 31.7907 25.3881C32.6804 24.4672 32.7314 23.0321 31.9091 22.0508C31.216 21.2234 30.0761 20.9356 29.0733 21.3346L24.3158 23.2273C23.7513 23.4518 23.1207 23.4756 22.5408 23.2946L15.2336 21.0033C14.7808 20.8613 14.3106 20.7894 13.8361 20.7894H11.5538C11.3807 20.5324 11.087 20.362 10.7532 20.362ZM5.72695 19.9747C5.71067 20.0302 5.70194 20.0889 5.70194 20.1497C5.70194 20.1946 5.70671 20.2384 5.71576 20.2807C5.49214 20.2459 5.27681 20.2069 5.10745 20.1653C5.0721 20.1566 5.03963 20.148 5.01016 20.1396C5.01846 20.1368 5.02703 20.134 5.03588 20.1312C5.19794 20.08 5.41659 20.0326 5.63428 19.9917C5.66539 19.9858 5.69634 19.9802 5.72695 19.9747ZM6.84732 20.7705C6.84744 20.7705 6.84757 20.7705 6.8477 20.7705H8.03655V29.766H3.02513V20.7705H6.32249H6.84711H6.84732Z\"\r\n                                            fill=\"#498837\" stroke=\"#498837\" stroke-width=\"0.332346\" />\r\n                                        <path\r\n                                            d=\"M21.0824 11.7493C20.0238 11.7142 19.1594 11.1672 19.1594 10.6028C19.1594 10.3028 19.4243 9.8619 19.7594 9.8619C20.1296 9.8619 20.4296 10.3823 21.0824 10.497V9.0678C20.2709 8.75932 19.3185 8.37984 19.3185 7.25099C19.3185 6.13066 20.1474 5.59286 21.0824 5.46045V5.21338C21.0824 5.08985 21.2237 4.97519 21.4178 4.97519C21.5854 4.97519 21.753 5.08985 21.753 5.21338V5.43383C22.3 5.45158 23.3319 5.59286 23.3319 6.2013C23.3319 6.4395 23.1729 6.92441 22.7849 6.92441C22.4938 6.92441 22.3263 6.64255 21.753 6.59818V7.88606C22.5556 8.18602 23.4902 8.60029 23.4902 9.79126C23.4902 10.885 22.7849 11.5467 21.753 11.7142V11.9698C21.753 12.0933 21.585 12.208 21.4175 12.208C21.2237 12.208 21.0824 12.0933 21.0824 11.9698V11.7493ZM21.1704 7.67413V6.6248C20.7736 6.70396 20.606 6.90701 20.606 7.11858C20.606 7.37453 20.8353 7.5332 21.1704 7.67413ZM21.6646 9.30599V10.4881C21.9645 10.4174 22.2027 10.2499 22.2027 9.93254C22.2027 9.6411 21.9819 9.45615 21.6646 9.30599Z\"\r\n                                            fill=\"#498837\" />\r\n                                        <path\r\n                                            d=\"M18.8255 1.28968L18.8255 1.2897L19.0906 1.20744C19.0961 1.20566 19.103 1.2035 19.1106 1.20149C19.8314 0.993448 20.5803 0.887847 21.3366 0.887847C25.7538 0.887847 29.3472 4.4812 29.3472 8.89846C29.3472 13.3157 25.7538 16.9091 21.3366 16.9091C16.9193 16.9091 13.326 13.3157 13.326 8.89846C13.326 7.01888 13.99 5.19158 15.1965 3.75337L15.1966 3.7533C15.4975 3.395 16.0322 3.34751 16.3909 3.64873L18.8255 1.28968ZM18.8255 1.28968L18.8235 1.29034M18.8255 1.28968L18.8235 1.29034M18.8235 1.29034C18.8101 1.29468 18.7938 1.30005 18.7767 1.30669L18.2403 1.50912L18.2396 1.50938M18.8235 1.29034L18.2396 1.50938M18.2396 1.50938C18.2252 1.51489 18.2102 1.52105 18.1951 1.52788C18.1949 1.52799 18.1946 1.52811 18.1944 1.52822L17.982 1.62238L17.9819 1.62245L18.2396 1.50938ZM16.4959 4.84305L16.4959 4.84307C15.5452 5.97635 15.0218 7.41668 15.0218 8.89846C15.0218 12.3803 17.8547 15.2132 21.3366 15.2132C24.8181 15.2132 27.651 12.3803 27.651 8.89846C27.651 5.41661 24.8181 2.58404 21.3366 2.58404C20.7408 2.58404 20.1527 2.66624 19.587 2.8291L19.3527 2.90202L18.8619 3.0871L18.6708 3.17208L18.6707 3.17212L18.6032 3.02028L16.4959 4.84305ZM16.4959 4.84305C16.7966 4.48448 16.7497 3.94985 16.391 3.64879L16.4959 4.84305Z\"\r\n                                            fill=\"#498837\" stroke=\"#498837\" stroke-width=\"0.332346\" />\r\n                                    </g>\r\n                                </svg></div>\r\n                            <div>от 800$ м2 в зависимости от того что необходимо построить</div>\r\n                        </div>\r\n                    </div>\r\n                </div>', 0, 'a:0:{}', 0, ''),
(7, 1, 0, 'outerBlock', '', 0, 1, 0, '<div class=\"outerBlock\">\n                    <div class=\"innerBlock\">\n                        <div class=\"innerBlock_text\"> <span id=\"gradient\">Планировка дома по проекту — КД 1</span></div>\n                        <div class=\"innerBlock_container\">\n                            <div><img src=\"/assets/image/planing.png\" alt=\"planing\" class=\"planing\"></div>\n                            <div class=\"innerBlock_container_text\">\n                                <div>\n                                    <b>Планировка дома интересная и продуманная: </b>\n                                    <p>Дом состоит из двух этажей и включает в себя большую гостиную, рабочий кабинет,\n                                        коридор,\n                                        жилую комнату душевую и тамбур.</p>\n                                    <p>Проектом предусматривается выход на задний двор, что очень удобно.</p>\n                                </div>\n                                <div>\n                                    <b>План Цокольного этажа</b>\n                                    <ul>\n                                        <li><span>Кухня-гостиная: 40,0 м2</span></li>\n                                        <li><span>Спальня: 11,3 м2</span></li>\n                                        <li><span>Гардеробная: 9,0 м2</span></li>\n                                    </ul>\n                                </div>\n                                <button class=\"innerBlock_container_button\"><b>Связаться с проектировщиком</b></button>\n\n\n                            </div>\n                        </div>\n                    </div>\n                </div>', 0, 'a:0:{}', 0, '');
INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(8, 1, 0, 'cardContainer', '', 0, 1, 0, '<div class=\"cardContainer\">\n                        <div class=\"outerCard\">\n                            <div class=\"innerCard\">\n                                <div class=\"innerCard_text\"><span id=\"gradient\">ПРОЕКТУ — КД 1</span></div>\n                                <div class=\"note\"><b>Оставьте заявку</b> и получите расчёт архитектора в подарок\n                                </div>\n                                <div>\n                                    <img class=\"house\" src=\"/assets/image/house.png\" alt=\"\">\n                                </div>\n                                <div>\n                                    <svg width=\"55\" height=\"56\" viewBox=\"0 0 74 56\" fill=\"none\"\n                                        xmlns=\"http://www.w3.org/2000/svg\">\n                                        <g filter=\"url(#filter0_d_0_362)\">\n                                            <rect x=\"9.76868\" y=\"8.94772\" width=\"50.9089\" height=\"33.2684\" rx=\"4.43578\"\n                                                fill=\"#F8FBF6\" />\n                                            <rect x=\"10.3231\" y=\"9.5022\" width=\"49.8\" height=\"32.1594\" rx=\"3.88131\"\n                                                stroke=\"#79856F\" stroke-width=\"1.10895\" />\n                                        </g>\n                                        <path\n                                            d=\"M42.8546 31.4626L40.5094 33.789C40.1632 34.144 39.7043 34.2643 39.2574 34.2648C37.2811 34.2056 35.4131 33.2348 33.8793 32.238C31.3617 30.4065 29.0517 28.1354 27.6019 25.3909C27.0458 24.2401 26.3934 22.7717 26.4557 21.4871C26.4613 21.0039 26.5915 20.5297 26.9318 20.2182L29.277 17.8741C29.764 17.4599 30.235 17.6031 30.5466 18.0856L32.4334 21.6634C32.632 22.0872 32.518 22.5414 32.2218 22.8442L31.3577 23.7078C31.3044 23.7809 31.2704 23.8641 31.2696 23.9546C31.6009 25.2371 32.6046 26.4192 33.4914 27.2327C34.3781 28.0462 35.3312 29.1484 36.5684 29.4093C36.7213 29.452 36.9086 29.467 37.018 29.3652L38.0231 28.343C38.3696 28.0804 38.8699 27.9521 39.2398 28.1668H39.2574L42.6606 30.176C43.1602 30.4891 43.2123 31.0943 42.8546 31.4626Z\"\n                                            fill=\"#79856F\" />\n                                        <path\n                                            d=\"M22.0078 52.6519V48.2871L22.1409 48.4201H20.371V47.9943H24.1304V48.4201H22.3671L22.4936 48.2871V52.6519H22.0078ZM26.0147 52.6852C25.651 52.6852 25.3316 52.6097 25.0566 52.4589C24.7816 52.3037 24.5664 52.093 24.4112 51.8268C24.2559 51.5562 24.1783 51.248 24.1783 50.902C24.1783 50.556 24.2515 50.2499 24.3979 49.9838C24.5487 49.7176 24.7527 49.5091 25.01 49.3583C25.2717 49.2031 25.5645 49.1254 25.8883 49.1254C26.2165 49.1254 26.5071 49.2008 26.7599 49.3517C27.0172 49.498 27.219 49.7065 27.3654 49.9771C27.5118 50.2433 27.585 50.5515 27.585 50.902C27.585 50.9241 27.5828 50.9485 27.5783 50.9752C27.5783 50.9973 27.5783 51.0217 27.5783 51.0483H24.5376V50.6957H27.3255L27.1392 50.8354C27.1392 50.5826 27.0837 50.3586 26.9728 50.1634C26.8664 49.9638 26.72 49.8085 26.5337 49.6977C26.3474 49.5868 26.1323 49.5313 25.8883 49.5313C25.6488 49.5313 25.4336 49.5868 25.2429 49.6977C25.0521 49.8085 24.9035 49.9638 24.7971 50.1634C24.6906 50.363 24.6374 50.5915 24.6374 50.8487V50.9219C24.6374 51.1881 24.6951 51.4232 24.8104 51.6272C24.9302 51.8268 25.0943 51.9843 25.3028 52.0996C25.5157 52.2105 25.7574 52.266 26.028 52.266C26.2409 52.266 26.4383 52.2283 26.6202 52.1529C26.8065 52.0775 26.9662 51.9621 27.0993 51.8069L27.3654 52.1129C27.2101 52.2992 27.015 52.4412 26.7799 52.5388C26.5492 52.6364 26.2942 52.6852 26.0147 52.6852ZM27.9205 52.6452L27.9537 52.2394C27.9848 52.2438 28.0136 52.2504 28.0402 52.2593C28.0713 52.2638 28.0979 52.266 28.1201 52.266C28.262 52.266 28.3751 52.2127 28.4594 52.1063C28.5481 51.9998 28.6147 51.8579 28.659 51.6804C28.7034 51.503 28.7344 51.3034 28.7522 51.0816C28.7699 50.8554 28.7854 50.6292 28.7987 50.4029L28.8586 49.1587H31.4203V52.6519H30.9479V49.4315L31.0677 49.5712H29.1647L29.2778 49.4249L29.2246 50.4362C29.2113 50.7378 29.1869 51.0262 29.1514 51.3012C29.1203 51.5762 29.0693 51.818 28.9984 52.0264C28.9318 52.2349 28.8387 52.399 28.7189 52.5188C28.5991 52.6341 28.4461 52.6918 28.2598 52.6918C28.2066 52.6918 28.1511 52.6874 28.0935 52.6785C28.0402 52.6696 27.9826 52.6585 27.9205 52.6452ZM34.2603 52.6852C33.8966 52.6852 33.5772 52.6097 33.3022 52.4589C33.0272 52.3037 32.812 52.093 32.6568 51.8268C32.5015 51.5562 32.4239 51.248 32.4239 50.902C32.4239 50.556 32.4971 50.2499 32.6435 49.9838C32.7943 49.7176 32.9983 49.5091 33.2556 49.3583C33.5173 49.2031 33.8101 49.1254 34.1339 49.1254C34.4622 49.1254 34.7527 49.2008 35.0055 49.3517C35.2628 49.498 35.4646 49.7065 35.611 49.9771C35.7574 50.2433 35.8306 50.5515 35.8306 50.902C35.8306 50.9241 35.8284 50.9485 35.8239 50.9752C35.8239 50.9973 35.8239 51.0217 35.8239 51.0483H32.7832V50.6957H35.5711L35.3848 50.8354C35.3848 50.5826 35.3293 50.3586 35.2185 50.1634C35.112 49.9638 34.9656 49.8085 34.7793 49.6977C34.593 49.5868 34.3779 49.5313 34.1339 49.5313C33.8944 49.5313 33.6792 49.5868 33.4885 49.6977C33.2978 49.8085 33.1492 49.9638 33.0427 50.1634C32.9362 50.363 32.883 50.5915 32.883 50.8487V50.9219C32.883 51.1881 32.9407 51.4232 33.056 51.6272C33.1758 51.8268 33.3399 51.9843 33.5484 52.0996C33.7613 52.2105 34.003 52.266 34.2736 52.266C34.4865 52.266 34.6839 52.2283 34.8658 52.1529C35.0521 52.0775 35.2118 51.9621 35.3449 51.8069L35.611 52.1129C35.4558 52.2992 35.2606 52.4412 35.0255 52.5388C34.7948 52.6364 34.5398 52.6852 34.2603 52.6852ZM38.8391 52.6918C38.8391 52.6918 38.8303 52.6918 38.8125 52.6918C38.7948 52.6918 38.777 52.6918 38.7593 52.6918C38.746 52.6918 38.7349 52.6918 38.726 52.6918C38.034 52.6874 37.4951 52.5299 37.1092 52.2194C36.7233 51.9089 36.5303 51.4675 36.5303 50.8953C36.5303 50.332 36.7233 49.8973 37.1092 49.5912C37.4995 49.2807 38.0474 49.1232 38.7526 49.1188C38.7571 49.1188 38.766 49.1188 38.7793 49.1188C38.797 49.1188 38.8125 49.1188 38.8258 49.1188C38.8391 49.1188 38.848 49.1188 38.8525 49.1188C39.5622 49.1232 40.1144 49.2807 40.5092 49.5912C40.904 49.8973 41.1014 50.332 41.1014 50.8953C41.1014 51.472 40.9018 51.9155 40.5026 52.2261C40.1078 52.5366 39.5533 52.6918 38.8391 52.6918ZM38.8325 52.2793C39.2273 52.2793 39.5577 52.2261 39.8239 52.1196C40.09 52.0087 40.2919 51.8512 40.4294 51.6472C40.5669 51.4431 40.6356 51.1925 40.6356 50.8953C40.6356 50.607 40.5669 50.363 40.4294 50.1634C40.2919 49.9594 40.09 49.8041 39.8239 49.6977C39.5577 49.5912 39.2273 49.538 38.8325 49.538C38.8281 49.538 38.8147 49.538 38.7926 49.538C38.7748 49.538 38.7637 49.538 38.7593 49.538C38.3734 49.538 38.0496 49.5934 37.7879 49.7043C37.5262 49.8108 37.3288 49.9638 37.1957 50.1634C37.0626 50.363 36.9961 50.607 36.9961 50.8953C36.9961 51.1881 37.0626 51.4365 37.1957 51.6405C37.3332 51.8446 37.5328 52.002 37.7945 52.1129C38.0562 52.2194 38.3778 52.2748 38.7593 52.2793C38.7682 52.2793 38.7815 52.2793 38.7992 52.2793C38.817 52.2793 38.8281 52.2793 38.8325 52.2793ZM38.5797 53.9427V47.7149H39.0388V53.9427H38.5797ZM43.5377 52.6852C43.2006 52.6852 42.8967 52.6097 42.6261 52.4589C42.36 52.3037 42.1493 52.093 41.994 51.8268C41.8388 51.5562 41.7611 51.248 41.7611 50.902C41.7611 50.5515 41.8388 50.2433 41.994 49.9771C42.1493 49.711 42.36 49.5025 42.6261 49.3517C42.8923 49.2008 43.1961 49.1254 43.5377 49.1254C43.8837 49.1254 44.1897 49.2008 44.4559 49.3517C44.7265 49.5025 44.9372 49.711 45.088 49.9771C45.2432 50.2433 45.3209 50.5515 45.3209 50.902C45.3209 51.248 45.2432 51.5562 45.088 51.8268C44.9372 52.093 44.7265 52.3037 44.4559 52.4589C44.1853 52.6097 43.8792 52.6852 43.5377 52.6852ZM43.5377 52.266C43.7905 52.266 44.0145 52.2105 44.2097 52.0996C44.4049 51.9843 44.5579 51.8246 44.6688 51.6206C44.7841 51.4121 44.8418 51.1726 44.8418 50.902C44.8418 50.627 44.7841 50.3874 44.6688 50.1834C44.5579 49.9793 44.4049 49.8219 44.2097 49.711C44.0145 49.5956 43.7927 49.538 43.5443 49.538C43.2959 49.538 43.0741 49.5956 42.879 49.711C42.6838 49.8219 42.5285 49.9793 42.4132 50.1834C42.2979 50.3874 42.2402 50.627 42.2402 50.902C42.2402 51.1726 42.2979 51.4121 42.4132 51.6206C42.5285 51.8246 42.6838 51.9843 42.879 52.0996C43.0741 52.2105 43.2937 52.266 43.5377 52.266ZM46.3305 52.6519V49.1587H46.8029V50.7024H49.0053V49.1587H49.4777V52.6519H49.0053V51.1082H46.8029V52.6519H46.3305Z\"\n                                            fill=\"#79856F\" />\n                                    </svg>\n                                    <svg width=\"55\" height=\"56\" viewBox=\"0 0 74 56\" fill=\"none\"\n                                        xmlns=\"http://www.w3.org/2000/svg\">\n                                        <g filter=\"url(#filter0_d_0_363)\">\n                                            <rect x=\"9.16248\" y=\"8.94772\" width=\"50.9089\" height=\"33.2684\" rx=\"4.43578\"\n                                                fill=\"white\" />\n                                        </g>\n                                        <path\n                                            d=\"M41.8081 20.7069L39.319 32.4453C39.1311 33.2736 38.6415 33.4798 37.9457 33.0898L34.1529 30.295L32.3231 32.0553C32.1204 32.258 31.9514 32.427 31.5608 32.427L31.8335 28.5647L38.8624 22.2133C39.1682 21.9412 38.7958 21.7898 38.3876 22.0625L29.6979 27.5343L25.957 26.3632C25.1434 26.1092 25.1287 25.5496 26.1267 25.159L40.7588 19.5216C41.4363 19.2677 42.029 19.6724 41.8081 20.7075V20.7069Z\"\n                                            fill=\"#D0D0D0\" />\n                                        <path\n                                            d=\"M20.6955 52.6519V48.4201H19.0587V47.9943H22.8247V48.4201H21.1879V52.6519H20.6955ZM24.6314 52.6852C24.2677 52.6852 23.9483 52.6097 23.6733 52.4589C23.3983 52.3037 23.1831 52.093 23.0279 51.8268C22.8726 51.5562 22.795 51.248 22.795 50.902C22.795 50.556 22.8682 50.2499 23.0146 49.9838C23.1654 49.7176 23.3694 49.5091 23.6267 49.3583C23.8884 49.2031 24.1812 49.1254 24.505 49.1254C24.8332 49.1254 25.1238 49.2008 25.3766 49.3517C25.6339 49.498 25.8357 49.7065 25.9821 49.9771C26.1285 50.2433 26.2017 50.5515 26.2017 50.902C26.2017 50.9241 26.1994 50.9485 26.195 50.9752C26.195 50.9973 26.195 51.0217 26.195 51.0483H23.1543V50.6957H25.9422L25.7559 50.8354C25.7559 50.5826 25.7004 50.3586 25.5895 50.1634C25.4831 49.9638 25.3367 49.8085 25.1504 49.6977C24.9641 49.5868 24.7489 49.5313 24.505 49.5313C24.2654 49.5313 24.0503 49.5868 23.8596 49.6977C23.6688 49.8085 23.5202 49.9638 23.4138 50.1634C23.3073 50.363 23.2541 50.5915 23.2541 50.8487V50.9219C23.2541 51.1881 23.3118 51.4232 23.4271 51.6272C23.5469 51.8268 23.711 51.9843 23.9195 52.0996C24.1324 52.2105 24.3741 52.266 24.6447 52.266C24.8576 52.266 25.055 52.2283 25.2369 52.1529C25.4232 52.0775 25.5829 51.9621 25.7159 51.8069L25.9821 52.1129C25.8268 52.2992 25.6317 52.4412 25.3966 52.5388C25.1659 52.6364 24.9109 52.6852 24.6314 52.6852ZM27.1632 52.6519V47.7149H27.6356V52.6519H27.1632ZM30.4339 52.6852C30.0701 52.6852 29.7508 52.6097 29.4757 52.4589C29.2007 52.3037 28.9856 52.093 28.8303 51.8268C28.6751 51.5562 28.5975 51.248 28.5975 50.902C28.5975 50.556 28.6706 50.2499 28.817 49.9838C28.9678 49.7176 29.1719 49.5091 29.4292 49.3583C29.6909 49.2031 29.9836 49.1254 30.3075 49.1254C30.6357 49.1254 30.9262 49.2008 31.1791 49.3517C31.4364 49.498 31.6382 49.7065 31.7846 49.9771C31.931 50.2433 32.0041 50.5515 32.0041 50.902C32.0041 50.9241 32.0019 50.9485 31.9975 50.9752C31.9975 50.9973 31.9975 51.0217 31.9975 51.0483H28.9568V50.6957H31.7446L31.5583 50.8354C31.5583 50.5826 31.5029 50.3586 31.392 50.1634C31.2855 49.9638 31.1392 49.8085 30.9529 49.6977C30.7666 49.5868 30.5514 49.5313 30.3075 49.5313C30.0679 49.5313 29.8528 49.5868 29.662 49.6977C29.4713 49.8085 29.3227 49.9638 29.2163 50.1634C29.1098 50.363 29.0566 50.5915 29.0566 50.8487V50.9219C29.0566 51.1881 29.1142 51.4232 29.2296 51.6272C29.3493 51.8268 29.5134 51.9843 29.7219 52.0996C29.9348 52.2105 30.1766 52.266 30.4472 52.266C30.6601 52.266 30.8575 52.2283 31.0394 52.1529C31.2257 52.0775 31.3853 51.9621 31.5184 51.8069L31.7846 52.1129C31.6293 52.2992 31.4341 52.4412 31.199 52.5388C30.9684 52.6364 30.7133 52.6852 30.4339 52.6852ZM34.4561 53.976C34.1367 53.976 33.8307 53.9294 33.5379 53.8362C33.2452 53.7431 33.0078 53.61 32.826 53.437L33.0655 53.0777C33.2296 53.2241 33.4315 53.3394 33.671 53.4237C33.915 53.5124 34.1722 53.5568 34.4428 53.5568C34.8864 53.5568 35.2124 53.4525 35.4209 53.2441C35.6294 53.04 35.7336 52.7206 35.7336 52.2859V51.4143L35.8002 50.8155L35.7536 50.2166V49.1587H36.206V52.2261C36.206 52.8293 36.0574 53.2707 35.7602 53.5501C35.4675 53.834 35.0328 53.976 34.4561 53.976ZM34.3696 52.5188C34.0369 52.5188 33.7375 52.4478 33.4714 52.3059C33.2052 52.1595 32.9945 51.9577 32.8393 51.7004C32.6885 51.4431 32.6131 51.1482 32.6131 50.8155C32.6131 50.4828 32.6885 50.19 32.8393 49.9372C32.9945 49.6799 33.2052 49.4803 33.4714 49.3384C33.7375 49.1964 34.0369 49.1254 34.3696 49.1254C34.6801 49.1254 34.9596 49.1898 35.208 49.3184C35.4564 49.447 35.6538 49.6378 35.8002 49.8906C35.9465 50.1435 36.0197 50.4517 36.0197 50.8155C36.0197 51.1792 35.9465 51.4875 35.8002 51.7403C35.6538 51.9932 35.4564 52.1861 35.208 52.3192C34.9596 52.4523 34.6801 52.5188 34.3696 52.5188ZM34.4162 52.0996C34.6735 52.0996 34.9019 52.0464 35.1015 51.9399C35.3011 51.829 35.4586 51.6782 35.5739 51.4875C35.6893 51.2923 35.7469 51.0683 35.7469 50.8155C35.7469 50.5626 35.6893 50.3408 35.5739 50.1501C35.4586 49.9594 35.3011 49.8108 35.1015 49.7043C34.9019 49.5934 34.6735 49.538 34.4162 49.538C34.1634 49.538 33.9349 49.5934 33.7309 49.7043C33.5313 49.8108 33.3738 49.9594 33.2585 50.1501C33.1476 50.3408 33.0921 50.5626 33.0921 50.8155C33.0921 51.0683 33.1476 51.2923 33.2585 51.4875C33.3738 51.6782 33.5313 51.829 33.7309 51.9399C33.9349 52.0464 34.1634 52.0996 34.4162 52.0996ZM37.5206 52.6519V49.1587H37.9731V50.1102L37.9265 49.9438C38.0241 49.6777 38.1882 49.4759 38.4189 49.3384C38.6495 49.1964 38.9356 49.1254 39.2772 49.1254V49.5845C39.2594 49.5845 39.2417 49.5845 39.224 49.5845C39.2062 49.5801 39.1885 49.5779 39.1707 49.5779C38.8026 49.5779 38.5142 49.691 38.3057 49.9172C38.0973 50.139 37.993 50.4562 37.993 50.8687V52.6519H37.5206ZM42.0683 52.6519V51.8801L42.0484 51.7536V50.4628C42.0484 50.1656 41.9641 49.9372 41.7955 49.7775C41.6314 49.6178 41.3852 49.538 41.057 49.538C40.8308 49.538 40.6156 49.5757 40.4116 49.6511C40.2075 49.7265 40.0345 49.8263 39.8926 49.9505L39.6797 49.5978C39.8571 49.447 40.07 49.3317 40.3184 49.2519C40.5668 49.1676 40.8285 49.1254 41.1036 49.1254C41.556 49.1254 41.9042 49.2385 42.1482 49.4648C42.3966 49.6866 42.5208 50.0259 42.5208 50.4828V52.6519H42.0683ZM40.864 52.6852C40.6023 52.6852 40.3739 52.643 40.1787 52.5587C39.988 52.47 39.8416 52.3503 39.7396 52.1994C39.6375 52.0442 39.5865 51.8668 39.5865 51.6671C39.5865 51.4853 39.6287 51.3212 39.7129 51.1748C39.8017 51.024 39.9436 50.9042 40.1388 50.8155C40.3384 50.7223 40.6045 50.6757 40.9372 50.6757H42.1415V51.0284H40.9505C40.6134 51.0284 40.3783 51.0883 40.2452 51.208C40.1166 51.3278 40.0523 51.4764 40.0523 51.6538C40.0523 51.8534 40.1299 52.0131 40.2852 52.1329C40.4404 52.2527 40.6578 52.3125 40.9372 52.3125C41.2034 52.3125 41.4318 52.2527 41.6225 52.1329C41.8177 52.0087 41.9597 51.8313 42.0484 51.6006L42.1548 51.9266C42.0661 52.1573 41.9109 52.3414 41.6891 52.4789C41.4717 52.6164 41.1967 52.6852 40.864 52.6852ZM48.1687 49.1254C48.4526 49.1254 48.6988 49.1809 48.9073 49.2918C49.1202 49.3982 49.2843 49.5624 49.3997 49.7842C49.5194 50.0059 49.5793 50.2854 49.5793 50.6225V52.6519H49.1069V50.6691C49.1069 50.3009 49.0182 50.0237 48.8407 49.8374C48.6678 49.6466 48.4216 49.5513 48.1022 49.5513C47.8627 49.5513 47.6542 49.6023 47.4767 49.7043C47.3038 49.8019 47.1685 49.9461 47.0709 50.1368C46.9777 50.3231 46.9311 50.5493 46.9311 50.8155V52.6519H46.4587V50.6691C46.4587 50.3009 46.37 50.0237 46.1926 49.8374C46.0152 49.6466 45.7668 49.5513 45.4474 49.5513C45.2123 49.5513 45.006 49.6023 44.8286 49.7043C44.6512 49.8019 44.5136 49.9461 44.4161 50.1368C44.3229 50.3231 44.2763 50.5493 44.2763 50.8155V52.6519H43.8039V49.1587H44.2564V50.1035L44.1832 49.9372C44.2896 49.6843 44.4604 49.487 44.6955 49.345C44.935 49.1986 45.2167 49.1254 45.5405 49.1254C45.8821 49.1254 46.1726 49.2119 46.4122 49.3849C46.6517 49.5535 46.8069 49.8085 46.8779 50.1501L46.6916 50.0769C46.7936 49.793 46.9733 49.5646 47.2306 49.3916C47.4923 49.2142 47.805 49.1254 48.1687 49.1254Z\"\n                                            fill=\"#6F706F\" />\n                                    </svg>\n                                    <svg width=\"55\" height=\"57\" viewBox=\"0 0 74 57\" fill=\"none\"\n                                        xmlns=\"http://www.w3.org/2000/svg\">\n                                        <g filter=\"url(#filter0_d_0_364)\">\n                                            <rect x=\"9.47916\" y=\"9.63644\" width=\"50.9089\" height=\"33.2684\" rx=\"4.43578\"\n                                                fill=\"white\" />\n                                        </g>\n                                        <path\n                                            d=\"M39.8686 25.7915C39.8864 23.6534 38.0655 21.6935 35.8099 21.4222C35.7612 21.4161 35.7126 21.4087 35.6642 21.4C35.5509 21.3783 35.4359 21.366 35.3205 21.3631C34.8577 21.3631 34.7342 21.6884 34.7017 21.8813C34.6699 22.0698 34.7002 22.2288 34.7911 22.3522C34.9442 22.56 35.214 22.597 35.4306 22.6265C35.4935 22.6354 35.5534 22.6435 35.6036 22.6546C37.6308 23.1078 38.3131 23.8198 38.6466 25.8299C38.6547 25.8787 38.6584 25.9393 38.6628 26.0036C38.6776 26.2439 38.7072 26.7437 39.2447 26.7437C39.289 26.7437 39.3378 26.74 39.3881 26.7326C39.8879 26.6564 39.8723 26.1996 39.8649 25.98C39.8627 25.9179 39.8605 25.8595 39.8664 25.8203C39.8676 25.8105 39.8681 25.8006 39.8679 25.7907L39.8686 25.7915Z\"\n                                            fill=\"#D0D0D0\" />\n                                        <path\n                                            d=\"M35.1889 20.6378C35.2495 20.6422 35.3057 20.6467 35.353 20.6533C38.6821 21.1657 40.2131 22.7426 40.6368 26.0975C40.6442 26.1544 40.6456 26.2239 40.6464 26.2971C40.6508 26.5596 40.6597 27.1052 41.2452 27.1163H41.2629C41.447 27.1163 41.5927 27.0608 41.6977 26.9514C41.8795 26.7614 41.8677 26.4783 41.8566 26.2505C41.8544 26.1944 41.8522 26.1419 41.8522 26.0953C41.895 22.665 38.9246 19.5533 35.4972 19.4379C35.4824 19.4379 35.4691 19.4379 35.4558 19.4401C35.4423 19.4418 35.4287 19.4426 35.4151 19.4424C35.3804 19.4424 35.339 19.4394 35.2939 19.4364C35.2406 19.4328 35.1793 19.4283 35.1164 19.4283C34.5708 19.4283 34.4673 19.8164 34.454 20.0478C34.4237 20.5824 34.9405 20.6201 35.1889 20.6378ZM40.4763 30.4335C40.4049 30.3792 40.3342 30.324 40.2642 30.2679C39.9004 29.9751 39.5138 29.706 39.1404 29.4451L38.9075 29.2824C38.4285 28.946 37.9982 28.7826 37.5916 28.7826C37.043 28.7826 36.5655 29.0858 36.1707 29.6824C35.9962 29.947 35.784 30.0757 35.523 30.0757C35.3418 30.0693 35.1639 30.0247 35.0011 29.9448C33.456 29.244 32.3515 28.169 31.7201 26.7503C31.4148 26.0642 31.5138 25.6162 32.0506 25.251C32.3559 25.044 32.9229 24.6588 32.8838 23.9203C32.8379 23.0827 30.9889 20.5609 30.2097 20.2748C29.8766 20.1533 29.5115 20.1523 29.1777 20.2719C28.2824 20.5727 27.6407 21.1021 27.3191 21.8007C27.0086 22.4764 27.0233 23.2697 27.359 24.0948C28.3312 26.4805 29.6974 28.5609 31.4207 30.2775C33.107 31.9579 35.18 33.3338 37.5812 34.368C37.7979 34.4612 38.0248 34.5122 38.1912 34.5492C38.2474 34.5617 38.2961 34.5728 38.3316 34.5824C38.3512 34.5877 38.3713 34.5904 38.3915 34.5906H38.4107C39.5404 34.5906 40.897 33.5585 41.3132 32.3823C41.6784 31.3517 41.0116 30.8423 40.4763 30.4335ZM35.6886 23.3636C35.4957 23.368 35.0928 23.3784 34.9516 23.788C34.885 23.9802 34.8932 24.1458 34.9752 24.2825C35.095 24.4822 35.3249 24.5443 35.5334 24.5783C36.2912 24.6995 36.6808 25.1179 36.7584 25.8964C36.7946 26.2587 37.0393 26.5123 37.3521 26.5123C37.3758 26.5122 37.3995 26.5107 37.423 26.5078C37.8001 26.4635 37.9827 26.1862 37.9664 25.6842C37.9723 25.1608 37.6988 24.5664 37.2323 24.0933C36.7651 23.6187 36.2017 23.351 35.6886 23.3636Z\"\n                                            fill=\"#D0D0D0\" />\n                                        <path\n                                            d=\"M28.2605 53.3406L26.1979 48.683H26.7302L28.6597 53.0678H28.367L30.3099 48.683H30.8089L28.7462 53.3406H28.2605ZM31.3656 53.3406V49.8474H31.838V53.3406H31.3656ZM31.6051 49.0756C31.5075 49.0756 31.4254 49.0423 31.3589 48.9758C31.2924 48.9093 31.2591 48.8294 31.2591 48.7363C31.2591 48.6431 31.2924 48.5655 31.3589 48.5034C31.4254 48.4368 31.5075 48.4036 31.6051 48.4036C31.7027 48.4036 31.7847 48.4346 31.8513 48.4967C31.9178 48.5588 31.9511 48.6365 31.9511 48.7296C31.9511 48.8272 31.9178 48.9093 31.8513 48.9758C31.7892 49.0423 31.7071 49.0756 31.6051 49.0756ZM34.9556 53.3739C34.6495 53.3739 34.3745 53.3051 34.1305 53.1676C33.8865 53.0257 33.6936 52.8216 33.5516 52.5555C33.4097 52.2893 33.3387 51.9677 33.3387 51.5907C33.3387 51.2092 33.4097 50.8876 33.5516 50.6259C33.698 50.3598 33.8932 50.1579 34.1372 50.0204C34.3811 49.8829 34.6539 49.8142 34.9556 49.8142C35.2883 49.8142 35.5855 49.8896 35.8472 50.0404C36.1133 50.1868 36.3218 50.393 36.4726 50.6592C36.6234 50.9253 36.6988 51.2358 36.6988 51.5907C36.6988 51.9411 36.6234 52.2516 36.4726 52.5222C36.3218 52.7884 36.1133 52.9968 35.8472 53.1477C35.5855 53.2985 35.2883 53.3739 34.9556 53.3739ZM33.1524 53.3406V48.4036H33.6248V50.8787L33.5583 51.584L33.6049 52.2893V53.3406H33.1524ZM34.9223 52.9547C35.1707 52.9547 35.3925 52.8992 35.5877 52.7884C35.7828 52.673 35.9381 52.5133 36.0534 52.3093C36.1688 52.1008 36.2264 51.8613 36.2264 51.5907C36.2264 51.3157 36.1688 51.0761 36.0534 50.8721C35.9381 50.668 35.7828 50.5106 35.5877 50.3997C35.3925 50.2844 35.1707 50.2267 34.9223 50.2267C34.6739 50.2267 34.4499 50.2844 34.2503 50.3997C34.0551 50.5106 33.8999 50.668 33.7845 50.8721C33.6736 51.0761 33.6182 51.3157 33.6182 51.5907C33.6182 51.8613 33.6736 52.1008 33.7845 52.3093C33.8999 52.5133 34.0551 52.673 34.2503 52.7884C34.4499 52.8992 34.6739 52.9547 34.9223 52.9547ZM39.1456 53.3739C38.7819 53.3739 38.4625 53.2985 38.1875 53.1477C37.9125 52.9924 37.6973 52.7817 37.5421 52.5156C37.3868 52.245 37.3092 51.9367 37.3092 51.5907C37.3092 51.2447 37.3824 50.9386 37.5288 50.6725C37.6796 50.4063 37.8836 50.1979 38.1409 50.047C38.4026 49.8918 38.6954 49.8142 39.0192 49.8142C39.3475 49.8142 39.638 49.8896 39.8908 50.0404C40.1481 50.1868 40.3499 50.3952 40.4963 50.6658C40.6427 50.932 40.7159 51.2403 40.7159 51.5907C40.7159 51.6129 40.7137 51.6373 40.7092 51.6639C40.7092 51.6861 40.7092 51.7105 40.7092 51.7371H37.6685V51.3844H40.4564L40.2701 51.5242C40.2701 51.2713 40.2146 51.0473 40.1038 50.8521C39.9973 50.6525 39.8509 50.4973 39.6646 50.3864C39.4783 50.2755 39.2632 50.22 39.0192 50.22C38.7797 50.22 38.5645 50.2755 38.3738 50.3864C38.1831 50.4973 38.0345 50.6525 37.928 50.8521C37.8215 51.0517 37.7683 51.2802 37.7683 51.5375V51.6107C37.7683 51.8768 37.826 52.1119 37.9413 52.3159C38.0611 52.5156 38.2252 52.673 38.4337 52.7884C38.6466 52.8992 38.8883 52.9547 39.1589 52.9547C39.3718 52.9547 39.5692 52.917 39.7511 52.8416C39.9374 52.7662 40.0971 52.6508 40.2302 52.4956L40.4963 52.8017C40.3411 52.988 40.1459 53.1299 39.9108 53.2275C39.6801 53.3251 39.4251 53.3739 39.1456 53.3739ZM41.6774 53.3406V49.8474H42.1299V50.7989L42.0833 50.6326C42.1809 50.3664 42.345 50.1646 42.5757 50.0271C42.8064 49.8851 43.0925 49.8142 43.434 49.8142V50.2733C43.4163 50.2733 43.3985 50.2733 43.3808 50.2733C43.363 50.2688 43.3453 50.2666 43.3276 50.2666C42.9594 50.2666 42.6711 50.3797 42.4626 50.6059C42.2541 50.8277 42.1499 51.1449 42.1499 51.5574V53.3406H41.6774Z\"\n                                            fill=\"#5A6253\" />\n                                    </svg>\n                                    <svg width=\"55\" height=\"57\" viewBox=\"0 0 74 57\" fill=\"none\"\n                                        xmlns=\"http://www.w3.org/2000/svg\">\n                                        <g filter=\"url(#filter0_d_0_276)\">\n                                            <rect x=\"9.47876\" y=\"9.63641\" width=\"50.9089\" height=\"33.2684\" rx=\"4.43578\"\n                                                fill=\"white\" />\n                                        </g>\n                                        <path\n                                            d=\"M18.9719 53.3406L17.4016 48.683H17.9073L19.3778 53.0678H19.1249L20.642 48.683H21.0944L22.5915 53.0678H22.3519L23.8357 48.683H24.3081L22.7379 53.3406H22.2189L20.7883 49.182H20.9214L19.4842 53.3406H18.9719ZM26.9917 49.8141C27.2756 49.8141 27.524 49.8696 27.737 49.9805C27.9543 50.0869 28.1229 50.2511 28.2426 50.4728C28.3668 50.6946 28.4289 50.9741 28.4289 51.3112V53.3406H27.9565V51.3578C27.9565 50.9896 27.8634 50.7124 27.6771 50.5261C27.4952 50.3353 27.2379 50.24 26.9052 50.24C26.6568 50.24 26.4395 50.291 26.2532 50.393C26.0713 50.4906 25.9294 50.6347 25.8273 50.8255C25.7298 51.0118 25.681 51.238 25.681 51.5042V53.3406H25.2086V48.4035H25.681V50.8055L25.5878 50.6259C25.6987 50.373 25.8761 50.1756 26.1201 50.0337C26.3641 49.8873 26.6546 49.8141 26.9917 49.8141ZM31.894 53.3406V52.5687L31.8741 52.4423V51.1515C31.8741 50.8543 31.7898 50.6259 31.6212 50.4662C31.4571 50.3065 31.2109 50.2267 30.8827 50.2267C30.6565 50.2267 30.4413 50.2644 30.2373 50.3398C30.0332 50.4152 29.8602 50.515 29.7183 50.6392L29.5054 50.2865C29.6828 50.1357 29.8957 50.0204 30.1441 49.9405C30.3925 49.8563 30.6542 49.8141 30.9293 49.8141C31.3817 49.8141 31.7299 49.9272 31.9739 50.1535C32.2223 50.3753 32.3465 50.7146 32.3465 51.1715V53.3406H31.894ZM30.6897 53.3738C30.428 53.3738 30.1996 53.3317 30.0044 53.2474C29.8137 53.1587 29.6673 53.0389 29.5653 52.8881C29.4632 52.7329 29.4122 52.5554 29.4122 52.3558C29.4122 52.174 29.4544 52.0098 29.5386 51.8635C29.6274 51.7126 29.7693 51.5929 29.9645 51.5042C30.1641 51.411 30.4302 51.3644 30.7629 51.3644H31.9672V51.7171H30.7762C30.4391 51.7171 30.204 51.777 30.0709 51.8967C29.9423 52.0165 29.878 52.1651 29.878 52.3425C29.878 52.5421 29.9556 52.7018 30.1109 52.8216C30.2661 52.9414 30.4835 53.0012 30.7629 53.0012C31.0291 53.0012 31.2575 52.9414 31.4482 52.8216C31.6434 52.6974 31.7854 52.52 31.8741 52.2893L31.9805 52.6153C31.8918 52.846 31.7366 53.0301 31.5148 53.1676C31.2974 53.3051 31.0224 53.3738 30.6897 53.3738ZM34.7341 53.3738C34.4059 53.3738 34.153 53.2851 33.9756 53.1077C33.7982 52.9303 33.7095 52.6796 33.7095 52.3558V49.0756H34.1819V52.3292C34.1819 52.5333 34.2329 52.6907 34.3349 52.8016C34.4414 52.9125 34.5922 52.968 34.7874 52.968C34.9958 52.968 35.1688 52.9081 35.3063 52.7883L35.4727 53.1277C35.3795 53.2119 35.2664 53.274 35.1333 53.314C35.0047 53.3539 34.8716 53.3738 34.7341 53.3738ZM33.084 50.24V49.8474H35.2465V50.24H33.084ZM37.2708 53.3738C36.9825 53.3738 36.7097 53.3339 36.4524 53.2541C36.1952 53.1698 35.9933 53.0656 35.847 52.9414L36.0599 52.5687C36.2018 52.6752 36.3837 52.7684 36.6055 52.8482C36.8273 52.9236 37.0601 52.9613 37.3041 52.9613C37.6368 52.9613 37.8763 52.9103 38.0227 52.8083C38.1691 52.7018 38.2423 52.5621 38.2423 52.3891C38.2423 52.2605 38.2001 52.1607 38.1159 52.0897C38.036 52.0143 37.9296 51.9588 37.7965 51.9233C37.6634 51.8834 37.5148 51.8502 37.3507 51.8235C37.1866 51.7969 37.0224 51.7659 36.8583 51.7304C36.6986 51.6949 36.5522 51.6439 36.4192 51.5774C36.2861 51.5064 36.1774 51.411 36.0931 51.2912C36.0133 51.1715 35.9734 51.0118 35.9734 50.8122C35.9734 50.6214 36.0266 50.4507 36.1331 50.2998C36.2395 50.149 36.3948 50.0315 36.5988 49.9472C36.8073 49.8585 37.0601 49.8141 37.3573 49.8141C37.5836 49.8141 37.8098 49.8452 38.036 49.9073C38.2622 49.9649 38.4485 50.0426 38.5949 50.1402L38.3887 50.5194C38.2334 50.413 38.0671 50.3376 37.8896 50.2932C37.7122 50.2444 37.5348 50.22 37.3573 50.22C37.0424 50.22 36.8095 50.2754 36.6587 50.3863C36.5123 50.4928 36.4391 50.6303 36.4391 50.7989C36.4391 50.9319 36.4791 51.0362 36.5589 51.1116C36.6432 51.187 36.7519 51.2469 36.8849 51.2912C37.0224 51.3312 37.171 51.3644 37.3307 51.391C37.4948 51.4177 37.6568 51.4509 37.8164 51.4909C37.9806 51.5263 38.1292 51.5774 38.2622 51.6439C38.3997 51.706 38.5084 51.7969 38.5883 51.9167C38.6725 52.032 38.7147 52.1851 38.7147 52.3758C38.7147 52.5798 38.657 52.7573 38.5417 52.9081C38.4308 53.0545 38.2667 53.1698 38.0493 53.2541C37.8364 53.3339 37.5769 53.3738 37.2708 53.3738ZM38.9361 53.3406L41.0653 48.683H41.551L43.6802 53.3406H43.1612L41.205 48.9691H41.4046L39.4485 53.3406H38.9361ZM39.7745 52.0963L39.9209 51.6971H42.6289L42.7753 52.0963H39.7745ZM46.154 53.3738C45.8524 53.3738 45.5796 53.3051 45.3356 53.1676C45.0916 53.0256 44.8965 52.8238 44.7501 52.5621C44.6081 52.2959 44.5372 51.9721 44.5372 51.5907C44.5372 51.2092 44.6081 50.8876 44.7501 50.6259C44.892 50.3597 45.085 50.1579 45.329 50.0204C45.5729 49.8829 45.8479 49.8141 46.154 49.8141C46.4867 49.8141 46.7839 49.8895 47.0456 50.0404C47.3118 50.1867 47.5202 50.3952 47.6711 50.6658C47.8219 50.9319 47.8973 51.2402 47.8973 51.5907C47.8973 51.9455 47.8219 52.256 47.6711 52.5222C47.5202 52.7883 47.3118 52.9968 47.0456 53.1476C46.7839 53.2984 46.4867 53.3738 46.154 53.3738ZM44.3509 54.6314V49.8474H44.8033V50.8987L44.7567 51.5973L44.8233 52.3026V54.6314H44.3509ZM46.1207 52.9547C46.3691 52.9547 46.5909 52.8992 46.7861 52.7883C46.9813 52.673 47.1365 52.5133 47.2519 52.3093C47.3672 52.1008 47.4249 51.8612 47.4249 51.5907C47.4249 51.3201 47.3672 51.0828 47.2519 50.8787C47.1365 50.6747 46.9813 50.515 46.7861 50.3997C46.5909 50.2843 46.3691 50.2267 46.1207 50.2267C45.8723 50.2267 45.6483 50.2843 45.4487 50.3997C45.2535 50.515 45.0983 50.6747 44.983 50.8787C44.8721 51.0828 44.8166 51.3201 44.8166 51.5907C44.8166 51.8612 44.8721 52.1008 44.983 52.3093C45.0983 52.5133 45.2535 52.673 45.4487 52.7883C45.6483 52.8992 45.8723 52.9547 46.1207 52.9547ZM50.6634 53.3738C50.3618 53.3738 50.089 53.3051 49.845 53.1676C49.6011 53.0256 49.4059 52.8238 49.2595 52.5621C49.1176 52.2959 49.0466 51.9721 49.0466 51.5907C49.0466 51.2092 49.1176 50.8876 49.2595 50.6259C49.4015 50.3597 49.5944 50.1579 49.8384 50.0204C50.0824 49.8829 50.3574 49.8141 50.6634 49.8141C50.9961 49.8141 51.2933 49.8895 51.555 50.0404C51.8212 50.1867 52.0297 50.3952 52.1805 50.6658C52.3313 50.9319 52.4067 51.2402 52.4067 51.5907C52.4067 51.9455 52.3313 52.256 52.1805 52.5222C52.0297 52.7883 51.8212 52.9968 51.555 53.1476C51.2933 53.2984 50.9961 53.3738 50.6634 53.3738ZM48.8603 54.6314V49.8474H49.3127V50.8987L49.2662 51.5973L49.3327 52.3026V54.6314H48.8603ZM50.6302 52.9547C50.8786 52.9547 51.1004 52.8992 51.2955 52.7883C51.4907 52.673 51.646 52.5133 51.7613 52.3093C51.8766 52.1008 51.9343 51.8612 51.9343 51.5907C51.9343 51.3201 51.8766 51.0828 51.7613 50.8787C51.646 50.6747 51.4907 50.515 51.2955 50.3997C51.1004 50.2843 50.8786 50.2267 50.6302 50.2267C50.3818 50.2267 50.1578 50.2843 49.9582 50.3997C49.763 50.515 49.6077 50.6747 49.4924 50.8787C49.3815 51.0828 49.3261 51.3201 49.3261 51.5907C49.3261 51.8612 49.3815 52.1008 49.4924 52.3093C49.6077 52.5133 49.763 52.673 49.9582 52.7883C50.1578 52.8992 50.3818 52.9547 50.6302 52.9547Z\"\n                                            fill=\"#A7A7A7\" />\n                                        <g clip-path=\"url(#clip0_0_276)\">\n                                            <path\n                                                d=\"M38.542 28.398C38.3196 28.2854 37.2368 27.757 37.0344 27.6816C36.832 27.6095 36.6851 27.5718 36.5376 27.7941C36.3934 28.0109 35.9687 28.5072 35.8389 28.6519C35.7092 28.7966 35.5817 28.8077 35.3626 28.7096C35.1403 28.597 34.43 28.3658 33.5867 27.6095C32.9279 27.0234 32.4894 26.3015 32.3591 26.0792C32.2293 25.8596 32.3446 25.7354 32.4544 25.6256C32.5553 25.5247 32.6768 25.3716 32.7893 25.2386C32.8963 25.1055 32.9307 25.0162 33.0089 24.8721C33.081 24.7163 33.0438 24.5948 32.9889 24.485C32.934 24.3753 32.4921 23.2868 32.3075 22.8532C32.1312 22.423 31.9465 22.4779 31.8107 22.4779C31.6837 22.4662 31.5362 22.4662 31.3893 22.4662C31.2423 22.4662 31.0023 22.5211 30.7999 22.7318C30.5975 22.9541 30.0258 23.4853 30.0258 24.5599C30.0258 25.6372 30.8171 26.6796 30.9269 26.8355C31.0394 26.9796 32.4833 29.1975 34.6984 30.1506C35.2268 30.373 35.6371 30.5061 35.9576 30.6159C36.486 30.7833 36.9684 30.76 37.3493 30.7051C37.7707 30.6358 38.6545 30.1706 38.8397 29.6511C39.0277 29.1282 39.0277 28.6952 38.9728 28.597C38.9179 28.4961 38.7738 28.4412 38.5514 28.3431L38.542 28.398ZM34.5248 33.8445H34.5132C33.2019 33.8445 31.9055 33.4891 30.7733 32.8249L30.5077 32.6663L27.7353 33.3882L28.4805 30.6907L28.3014 30.4135C27.5692 29.2493 27.1808 27.9019 27.1808 26.5266C27.1808 22.5011 30.4761 19.2176 34.5304 19.2176C36.4943 19.2176 38.3368 19.9827 39.723 21.3689C40.4068 22.0446 40.9492 22.8497 41.3186 23.7372C41.688 24.6247 41.8769 25.5769 41.8744 26.5383C41.8688 30.561 38.5764 33.8445 34.5276 33.8445H34.5248ZM40.7771 20.3149C39.0904 18.6858 36.8725 17.7648 34.5132 17.7648C29.6471 17.7648 25.6849 21.7099 25.6821 26.5582C25.6821 28.1063 26.0863 29.6167 26.8603 30.9535L25.6072 35.508L30.2914 34.2865C31.5891 34.9861 33.0395 35.3541 34.5137 35.3577H34.5165C39.3853 35.3577 43.3476 31.4126 43.3504 26.561C43.3504 24.2134 42.4349 22.0038 40.766 20.3431L40.7771 20.3149Z\"\n                                                fill=\"#D0D0D0\" />\n                                        </g>\n                                    </svg>\n                                </div>\n                                <div>\n                                    <button class=\"cardButton\">Подробнее о проекте</button>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"outerCard\">\n                            <div class=\"innerCard\">\n                                <div class=\"innerCard_text\"><span id=\"gradient\">ПРОЕКТУ — КД 1</span></div>\n                                <div class=\"note\"><b>Оставьте заявку</b> и получите расчёт архитектора в подарок\n                                </div>\n                                <div>\n                                    <img class=\"house\" src=\"/assets/image/house.png\" alt=\"\">\n                                </div>\n                                <div>\n                                    <svg width=\"55\" height=\"56\" viewBox=\"0 0 74 56\" fill=\"none\"\n                                        xmlns=\"http://www.w3.org/2000/svg\">\n                                        <g filter=\"url(#filter0_d_0_362)\">\n                                            <rect x=\"9.76868\" y=\"8.94772\" width=\"50.9089\" height=\"33.2684\" rx=\"4.43578\"\n                                                fill=\"#F8FBF6\" />\n                                            <rect x=\"10.3231\" y=\"9.5022\" width=\"49.8\" height=\"32.1594\" rx=\"3.88131\"\n                                                stroke=\"#79856F\" stroke-width=\"1.10895\" />\n                                        </g>\n                                        <path\n                                            d=\"M42.8546 31.4626L40.5094 33.789C40.1632 34.144 39.7043 34.2643 39.2574 34.2648C37.2811 34.2056 35.4131 33.2348 33.8793 32.238C31.3617 30.4065 29.0517 28.1354 27.6019 25.3909C27.0458 24.2401 26.3934 22.7717 26.4557 21.4871C26.4613 21.0039 26.5915 20.5297 26.9318 20.2182L29.277 17.8741C29.764 17.4599 30.235 17.6031 30.5466 18.0856L32.4334 21.6634C32.632 22.0872 32.518 22.5414 32.2218 22.8442L31.3577 23.7078C31.3044 23.7809 31.2704 23.8641 31.2696 23.9546C31.6009 25.2371 32.6046 26.4192 33.4914 27.2327C34.3781 28.0462 35.3312 29.1484 36.5684 29.4093C36.7213 29.452 36.9086 29.467 37.018 29.3652L38.0231 28.343C38.3696 28.0804 38.8699 27.9521 39.2398 28.1668H39.2574L42.6606 30.176C43.1602 30.4891 43.2123 31.0943 42.8546 31.4626Z\"\n                                            fill=\"#79856F\" />\n                                        <path\n                                            d=\"M22.0078 52.6519V48.2871L22.1409 48.4201H20.371V47.9943H24.1304V48.4201H22.3671L22.4936 48.2871V52.6519H22.0078ZM26.0147 52.6852C25.651 52.6852 25.3316 52.6097 25.0566 52.4589C24.7816 52.3037 24.5664 52.093 24.4112 51.8268C24.2559 51.5562 24.1783 51.248 24.1783 50.902C24.1783 50.556 24.2515 50.2499 24.3979 49.9838C24.5487 49.7176 24.7527 49.5091 25.01 49.3583C25.2717 49.2031 25.5645 49.1254 25.8883 49.1254C26.2165 49.1254 26.5071 49.2008 26.7599 49.3517C27.0172 49.498 27.219 49.7065 27.3654 49.9771C27.5118 50.2433 27.585 50.5515 27.585 50.902C27.585 50.9241 27.5828 50.9485 27.5783 50.9752C27.5783 50.9973 27.5783 51.0217 27.5783 51.0483H24.5376V50.6957H27.3255L27.1392 50.8354C27.1392 50.5826 27.0837 50.3586 26.9728 50.1634C26.8664 49.9638 26.72 49.8085 26.5337 49.6977C26.3474 49.5868 26.1323 49.5313 25.8883 49.5313C25.6488 49.5313 25.4336 49.5868 25.2429 49.6977C25.0521 49.8085 24.9035 49.9638 24.7971 50.1634C24.6906 50.363 24.6374 50.5915 24.6374 50.8487V50.9219C24.6374 51.1881 24.6951 51.4232 24.8104 51.6272C24.9302 51.8268 25.0943 51.9843 25.3028 52.0996C25.5157 52.2105 25.7574 52.266 26.028 52.266C26.2409 52.266 26.4383 52.2283 26.6202 52.1529C26.8065 52.0775 26.9662 51.9621 27.0993 51.8069L27.3654 52.1129C27.2101 52.2992 27.015 52.4412 26.7799 52.5388C26.5492 52.6364 26.2942 52.6852 26.0147 52.6852ZM27.9205 52.6452L27.9537 52.2394C27.9848 52.2438 28.0136 52.2504 28.0402 52.2593C28.0713 52.2638 28.0979 52.266 28.1201 52.266C28.262 52.266 28.3751 52.2127 28.4594 52.1063C28.5481 51.9998 28.6147 51.8579 28.659 51.6804C28.7034 51.503 28.7344 51.3034 28.7522 51.0816C28.7699 50.8554 28.7854 50.6292 28.7987 50.4029L28.8586 49.1587H31.4203V52.6519H30.9479V49.4315L31.0677 49.5712H29.1647L29.2778 49.4249L29.2246 50.4362C29.2113 50.7378 29.1869 51.0262 29.1514 51.3012C29.1203 51.5762 29.0693 51.818 28.9984 52.0264C28.9318 52.2349 28.8387 52.399 28.7189 52.5188C28.5991 52.6341 28.4461 52.6918 28.2598 52.6918C28.2066 52.6918 28.1511 52.6874 28.0935 52.6785C28.0402 52.6696 27.9826 52.6585 27.9205 52.6452ZM34.2603 52.6852C33.8966 52.6852 33.5772 52.6097 33.3022 52.4589C33.0272 52.3037 32.812 52.093 32.6568 51.8268C32.5015 51.5562 32.4239 51.248 32.4239 50.902C32.4239 50.556 32.4971 50.2499 32.6435 49.9838C32.7943 49.7176 32.9983 49.5091 33.2556 49.3583C33.5173 49.2031 33.8101 49.1254 34.1339 49.1254C34.4622 49.1254 34.7527 49.2008 35.0055 49.3517C35.2628 49.498 35.4646 49.7065 35.611 49.9771C35.7574 50.2433 35.8306 50.5515 35.8306 50.902C35.8306 50.9241 35.8284 50.9485 35.8239 50.9752C35.8239 50.9973 35.8239 51.0217 35.8239 51.0483H32.7832V50.6957H35.5711L35.3848 50.8354C35.3848 50.5826 35.3293 50.3586 35.2185 50.1634C35.112 49.9638 34.9656 49.8085 34.7793 49.6977C34.593 49.5868 34.3779 49.5313 34.1339 49.5313C33.8944 49.5313 33.6792 49.5868 33.4885 49.6977C33.2978 49.8085 33.1492 49.9638 33.0427 50.1634C32.9362 50.363 32.883 50.5915 32.883 50.8487V50.9219C32.883 51.1881 32.9407 51.4232 33.056 51.6272C33.1758 51.8268 33.3399 51.9843 33.5484 52.0996C33.7613 52.2105 34.003 52.266 34.2736 52.266C34.4865 52.266 34.6839 52.2283 34.8658 52.1529C35.0521 52.0775 35.2118 51.9621 35.3449 51.8069L35.611 52.1129C35.4558 52.2992 35.2606 52.4412 35.0255 52.5388C34.7948 52.6364 34.5398 52.6852 34.2603 52.6852ZM38.8391 52.6918C38.8391 52.6918 38.8303 52.6918 38.8125 52.6918C38.7948 52.6918 38.777 52.6918 38.7593 52.6918C38.746 52.6918 38.7349 52.6918 38.726 52.6918C38.034 52.6874 37.4951 52.5299 37.1092 52.2194C36.7233 51.9089 36.5303 51.4675 36.5303 50.8953C36.5303 50.332 36.7233 49.8973 37.1092 49.5912C37.4995 49.2807 38.0474 49.1232 38.7526 49.1188C38.7571 49.1188 38.766 49.1188 38.7793 49.1188C38.797 49.1188 38.8125 49.1188 38.8258 49.1188C38.8391 49.1188 38.848 49.1188 38.8525 49.1188C39.5622 49.1232 40.1144 49.2807 40.5092 49.5912C40.904 49.8973 41.1014 50.332 41.1014 50.8953C41.1014 51.472 40.9018 51.9155 40.5026 52.2261C40.1078 52.5366 39.5533 52.6918 38.8391 52.6918ZM38.8325 52.2793C39.2273 52.2793 39.5577 52.2261 39.8239 52.1196C40.09 52.0087 40.2919 51.8512 40.4294 51.6472C40.5669 51.4431 40.6356 51.1925 40.6356 50.8953C40.6356 50.607 40.5669 50.363 40.4294 50.1634C40.2919 49.9594 40.09 49.8041 39.8239 49.6977C39.5577 49.5912 39.2273 49.538 38.8325 49.538C38.8281 49.538 38.8147 49.538 38.7926 49.538C38.7748 49.538 38.7637 49.538 38.7593 49.538C38.3734 49.538 38.0496 49.5934 37.7879 49.7043C37.5262 49.8108 37.3288 49.9638 37.1957 50.1634C37.0626 50.363 36.9961 50.607 36.9961 50.8953C36.9961 51.1881 37.0626 51.4365 37.1957 51.6405C37.3332 51.8446 37.5328 52.002 37.7945 52.1129C38.0562 52.2194 38.3778 52.2748 38.7593 52.2793C38.7682 52.2793 38.7815 52.2793 38.7992 52.2793C38.817 52.2793 38.8281 52.2793 38.8325 52.2793ZM38.5797 53.9427V47.7149H39.0388V53.9427H38.5797ZM43.5377 52.6852C43.2006 52.6852 42.8967 52.6097 42.6261 52.4589C42.36 52.3037 42.1493 52.093 41.994 51.8268C41.8388 51.5562 41.7611 51.248 41.7611 50.902C41.7611 50.5515 41.8388 50.2433 41.994 49.9771C42.1493 49.711 42.36 49.5025 42.6261 49.3517C42.8923 49.2008 43.1961 49.1254 43.5377 49.1254C43.8837 49.1254 44.1897 49.2008 44.4559 49.3517C44.7265 49.5025 44.9372 49.711 45.088 49.9771C45.2432 50.2433 45.3209 50.5515 45.3209 50.902C45.3209 51.248 45.2432 51.5562 45.088 51.8268C44.9372 52.093 44.7265 52.3037 44.4559 52.4589C44.1853 52.6097 43.8792 52.6852 43.5377 52.6852ZM43.5377 52.266C43.7905 52.266 44.0145 52.2105 44.2097 52.0996C44.4049 51.9843 44.5579 51.8246 44.6688 51.6206C44.7841 51.4121 44.8418 51.1726 44.8418 50.902C44.8418 50.627 44.7841 50.3874 44.6688 50.1834C44.5579 49.9793 44.4049 49.8219 44.2097 49.711C44.0145 49.5956 43.7927 49.538 43.5443 49.538C43.2959 49.538 43.0741 49.5956 42.879 49.711C42.6838 49.8219 42.5285 49.9793 42.4132 50.1834C42.2979 50.3874 42.2402 50.627 42.2402 50.902C42.2402 51.1726 42.2979 51.4121 42.4132 51.6206C42.5285 51.8246 42.6838 51.9843 42.879 52.0996C43.0741 52.2105 43.2937 52.266 43.5377 52.266ZM46.3305 52.6519V49.1587H46.8029V50.7024H49.0053V49.1587H49.4777V52.6519H49.0053V51.1082H46.8029V52.6519H46.3305Z\"\n                                            fill=\"#79856F\" />\n                                    </svg>\n                                    <svg width=\"55\" height=\"56\" viewBox=\"0 0 74 56\" fill=\"none\"\n                                        xmlns=\"http://www.w3.org/2000/svg\">\n                                        <g filter=\"url(#filter0_d_0_363)\">\n                                            <rect x=\"9.16248\" y=\"8.94772\" width=\"50.9089\" height=\"33.2684\" rx=\"4.43578\"\n                                                fill=\"white\" />\n                                        </g>\n                                        <path\n                                            d=\"M41.8081 20.7069L39.319 32.4453C39.1311 33.2736 38.6415 33.4798 37.9457 33.0898L34.1529 30.295L32.3231 32.0553C32.1204 32.258 31.9514 32.427 31.5608 32.427L31.8335 28.5647L38.8624 22.2133C39.1682 21.9412 38.7958 21.7898 38.3876 22.0625L29.6979 27.5343L25.957 26.3632C25.1434 26.1092 25.1287 25.5496 26.1267 25.159L40.7588 19.5216C41.4363 19.2677 42.029 19.6724 41.8081 20.7075V20.7069Z\"\n                                            fill=\"#D0D0D0\" />\n                                        <path\n                                            d=\"M20.6955 52.6519V48.4201H19.0587V47.9943H22.8247V48.4201H21.1879V52.6519H20.6955ZM24.6314 52.6852C24.2677 52.6852 23.9483 52.6097 23.6733 52.4589C23.3983 52.3037 23.1831 52.093 23.0279 51.8268C22.8726 51.5562 22.795 51.248 22.795 50.902C22.795 50.556 22.8682 50.2499 23.0146 49.9838C23.1654 49.7176 23.3694 49.5091 23.6267 49.3583C23.8884 49.2031 24.1812 49.1254 24.505 49.1254C24.8332 49.1254 25.1238 49.2008 25.3766 49.3517C25.6339 49.498 25.8357 49.7065 25.9821 49.9771C26.1285 50.2433 26.2017 50.5515 26.2017 50.902C26.2017 50.9241 26.1994 50.9485 26.195 50.9752C26.195 50.9973 26.195 51.0217 26.195 51.0483H23.1543V50.6957H25.9422L25.7559 50.8354C25.7559 50.5826 25.7004 50.3586 25.5895 50.1634C25.4831 49.9638 25.3367 49.8085 25.1504 49.6977C24.9641 49.5868 24.7489 49.5313 24.505 49.5313C24.2654 49.5313 24.0503 49.5868 23.8596 49.6977C23.6688 49.8085 23.5202 49.9638 23.4138 50.1634C23.3073 50.363 23.2541 50.5915 23.2541 50.8487V50.9219C23.2541 51.1881 23.3118 51.4232 23.4271 51.6272C23.5469 51.8268 23.711 51.9843 23.9195 52.0996C24.1324 52.2105 24.3741 52.266 24.6447 52.266C24.8576 52.266 25.055 52.2283 25.2369 52.1529C25.4232 52.0775 25.5829 51.9621 25.7159 51.8069L25.9821 52.1129C25.8268 52.2992 25.6317 52.4412 25.3966 52.5388C25.1659 52.6364 24.9109 52.6852 24.6314 52.6852ZM27.1632 52.6519V47.7149H27.6356V52.6519H27.1632ZM30.4339 52.6852C30.0701 52.6852 29.7508 52.6097 29.4757 52.4589C29.2007 52.3037 28.9856 52.093 28.8303 51.8268C28.6751 51.5562 28.5975 51.248 28.5975 50.902C28.5975 50.556 28.6706 50.2499 28.817 49.9838C28.9678 49.7176 29.1719 49.5091 29.4292 49.3583C29.6909 49.2031 29.9836 49.1254 30.3075 49.1254C30.6357 49.1254 30.9262 49.2008 31.1791 49.3517C31.4364 49.498 31.6382 49.7065 31.7846 49.9771C31.931 50.2433 32.0041 50.5515 32.0041 50.902C32.0041 50.9241 32.0019 50.9485 31.9975 50.9752C31.9975 50.9973 31.9975 51.0217 31.9975 51.0483H28.9568V50.6957H31.7446L31.5583 50.8354C31.5583 50.5826 31.5029 50.3586 31.392 50.1634C31.2855 49.9638 31.1392 49.8085 30.9529 49.6977C30.7666 49.5868 30.5514 49.5313 30.3075 49.5313C30.0679 49.5313 29.8528 49.5868 29.662 49.6977C29.4713 49.8085 29.3227 49.9638 29.2163 50.1634C29.1098 50.363 29.0566 50.5915 29.0566 50.8487V50.9219C29.0566 51.1881 29.1142 51.4232 29.2296 51.6272C29.3493 51.8268 29.5134 51.9843 29.7219 52.0996C29.9348 52.2105 30.1766 52.266 30.4472 52.266C30.6601 52.266 30.8575 52.2283 31.0394 52.1529C31.2257 52.0775 31.3853 51.9621 31.5184 51.8069L31.7846 52.1129C31.6293 52.2992 31.4341 52.4412 31.199 52.5388C30.9684 52.6364 30.7133 52.6852 30.4339 52.6852ZM34.4561 53.976C34.1367 53.976 33.8307 53.9294 33.5379 53.8362C33.2452 53.7431 33.0078 53.61 32.826 53.437L33.0655 53.0777C33.2296 53.2241 33.4315 53.3394 33.671 53.4237C33.915 53.5124 34.1722 53.5568 34.4428 53.5568C34.8864 53.5568 35.2124 53.4525 35.4209 53.2441C35.6294 53.04 35.7336 52.7206 35.7336 52.2859V51.4143L35.8002 50.8155L35.7536 50.2166V49.1587H36.206V52.2261C36.206 52.8293 36.0574 53.2707 35.7602 53.5501C35.4675 53.834 35.0328 53.976 34.4561 53.976ZM34.3696 52.5188C34.0369 52.5188 33.7375 52.4478 33.4714 52.3059C33.2052 52.1595 32.9945 51.9577 32.8393 51.7004C32.6885 51.4431 32.6131 51.1482 32.6131 50.8155C32.6131 50.4828 32.6885 50.19 32.8393 49.9372C32.9945 49.6799 33.2052 49.4803 33.4714 49.3384C33.7375 49.1964 34.0369 49.1254 34.3696 49.1254C34.6801 49.1254 34.9596 49.1898 35.208 49.3184C35.4564 49.447 35.6538 49.6378 35.8002 49.8906C35.9465 50.1435 36.0197 50.4517 36.0197 50.8155C36.0197 51.1792 35.9465 51.4875 35.8002 51.7403C35.6538 51.9932 35.4564 52.1861 35.208 52.3192C34.9596 52.4523 34.6801 52.5188 34.3696 52.5188ZM34.4162 52.0996C34.6735 52.0996 34.9019 52.0464 35.1015 51.9399C35.3011 51.829 35.4586 51.6782 35.5739 51.4875C35.6893 51.2923 35.7469 51.0683 35.7469 50.8155C35.7469 50.5626 35.6893 50.3408 35.5739 50.1501C35.4586 49.9594 35.3011 49.8108 35.1015 49.7043C34.9019 49.5934 34.6735 49.538 34.4162 49.538C34.1634 49.538 33.9349 49.5934 33.7309 49.7043C33.5313 49.8108 33.3738 49.9594 33.2585 50.1501C33.1476 50.3408 33.0921 50.5626 33.0921 50.8155C33.0921 51.0683 33.1476 51.2923 33.2585 51.4875C33.3738 51.6782 33.5313 51.829 33.7309 51.9399C33.9349 52.0464 34.1634 52.0996 34.4162 52.0996ZM37.5206 52.6519V49.1587H37.9731V50.1102L37.9265 49.9438C38.0241 49.6777 38.1882 49.4759 38.4189 49.3384C38.6495 49.1964 38.9356 49.1254 39.2772 49.1254V49.5845C39.2594 49.5845 39.2417 49.5845 39.224 49.5845C39.2062 49.5801 39.1885 49.5779 39.1707 49.5779C38.8026 49.5779 38.5142 49.691 38.3057 49.9172C38.0973 50.139 37.993 50.4562 37.993 50.8687V52.6519H37.5206ZM42.0683 52.6519V51.8801L42.0484 51.7536V50.4628C42.0484 50.1656 41.9641 49.9372 41.7955 49.7775C41.6314 49.6178 41.3852 49.538 41.057 49.538C40.8308 49.538 40.6156 49.5757 40.4116 49.6511C40.2075 49.7265 40.0345 49.8263 39.8926 49.9505L39.6797 49.5978C39.8571 49.447 40.07 49.3317 40.3184 49.2519C40.5668 49.1676 40.8285 49.1254 41.1036 49.1254C41.556 49.1254 41.9042 49.2385 42.1482 49.4648C42.3966 49.6866 42.5208 50.0259 42.5208 50.4828V52.6519H42.0683ZM40.864 52.6852C40.6023 52.6852 40.3739 52.643 40.1787 52.5587C39.988 52.47 39.8416 52.3503 39.7396 52.1994C39.6375 52.0442 39.5865 51.8668 39.5865 51.6671C39.5865 51.4853 39.6287 51.3212 39.7129 51.1748C39.8017 51.024 39.9436 50.9042 40.1388 50.8155C40.3384 50.7223 40.6045 50.6757 40.9372 50.6757H42.1415V51.0284H40.9505C40.6134 51.0284 40.3783 51.0883 40.2452 51.208C40.1166 51.3278 40.0523 51.4764 40.0523 51.6538C40.0523 51.8534 40.1299 52.0131 40.2852 52.1329C40.4404 52.2527 40.6578 52.3125 40.9372 52.3125C41.2034 52.3125 41.4318 52.2527 41.6225 52.1329C41.8177 52.0087 41.9597 51.8313 42.0484 51.6006L42.1548 51.9266C42.0661 52.1573 41.9109 52.3414 41.6891 52.4789C41.4717 52.6164 41.1967 52.6852 40.864 52.6852ZM48.1687 49.1254C48.4526 49.1254 48.6988 49.1809 48.9073 49.2918C49.1202 49.3982 49.2843 49.5624 49.3997 49.7842C49.5194 50.0059 49.5793 50.2854 49.5793 50.6225V52.6519H49.1069V50.6691C49.1069 50.3009 49.0182 50.0237 48.8407 49.8374C48.6678 49.6466 48.4216 49.5513 48.1022 49.5513C47.8627 49.5513 47.6542 49.6023 47.4767 49.7043C47.3038 49.8019 47.1685 49.9461 47.0709 50.1368C46.9777 50.3231 46.9311 50.5493 46.9311 50.8155V52.6519H46.4587V50.6691C46.4587 50.3009 46.37 50.0237 46.1926 49.8374C46.0152 49.6466 45.7668 49.5513 45.4474 49.5513C45.2123 49.5513 45.006 49.6023 44.8286 49.7043C44.6512 49.8019 44.5136 49.9461 44.4161 50.1368C44.3229 50.3231 44.2763 50.5493 44.2763 50.8155V52.6519H43.8039V49.1587H44.2564V50.1035L44.1832 49.9372C44.2896 49.6843 44.4604 49.487 44.6955 49.345C44.935 49.1986 45.2167 49.1254 45.5405 49.1254C45.8821 49.1254 46.1726 49.2119 46.4122 49.3849C46.6517 49.5535 46.8069 49.8085 46.8779 50.1501L46.6916 50.0769C46.7936 49.793 46.9733 49.5646 47.2306 49.3916C47.4923 49.2142 47.805 49.1254 48.1687 49.1254Z\"\n                                            fill=\"#6F706F\" />\n                                    </svg>\n                                    <svg width=\"55\" height=\"57\" viewBox=\"0 0 74 57\" fill=\"none\"\n                                        xmlns=\"http://www.w3.org/2000/svg\">\n                                        <g filter=\"url(#filter0_d_0_364)\">\n                                            <rect x=\"9.47916\" y=\"9.63644\" width=\"50.9089\" height=\"33.2684\" rx=\"4.43578\"\n                                                fill=\"white\" />\n                                        </g>\n                                        <path\n                                            d=\"M39.8686 25.7915C39.8864 23.6534 38.0655 21.6935 35.8099 21.4222C35.7612 21.4161 35.7126 21.4087 35.6642 21.4C35.5509 21.3783 35.4359 21.366 35.3205 21.3631C34.8577 21.3631 34.7342 21.6884 34.7017 21.8813C34.6699 22.0698 34.7002 22.2288 34.7911 22.3522C34.9442 22.56 35.214 22.597 35.4306 22.6265C35.4935 22.6354 35.5534 22.6435 35.6036 22.6546C37.6308 23.1078 38.3131 23.8198 38.6466 25.8299C38.6547 25.8787 38.6584 25.9393 38.6628 26.0036C38.6776 26.2439 38.7072 26.7437 39.2447 26.7437C39.289 26.7437 39.3378 26.74 39.3881 26.7326C39.8879 26.6564 39.8723 26.1996 39.8649 25.98C39.8627 25.9179 39.8605 25.8595 39.8664 25.8203C39.8676 25.8105 39.8681 25.8006 39.8679 25.7907L39.8686 25.7915Z\"\n                                            fill=\"#D0D0D0\" />\n                                        <path\n                                            d=\"M35.1889 20.6378C35.2495 20.6422 35.3057 20.6467 35.353 20.6533C38.6821 21.1657 40.2131 22.7426 40.6368 26.0975C40.6442 26.1544 40.6456 26.2239 40.6464 26.2971C40.6508 26.5596 40.6597 27.1052 41.2452 27.1163H41.2629C41.447 27.1163 41.5927 27.0608 41.6977 26.9514C41.8795 26.7614 41.8677 26.4783 41.8566 26.2505C41.8544 26.1944 41.8522 26.1419 41.8522 26.0953C41.895 22.665 38.9246 19.5533 35.4972 19.4379C35.4824 19.4379 35.4691 19.4379 35.4558 19.4401C35.4423 19.4418 35.4287 19.4426 35.4151 19.4424C35.3804 19.4424 35.339 19.4394 35.2939 19.4364C35.2406 19.4328 35.1793 19.4283 35.1164 19.4283C34.5708 19.4283 34.4673 19.8164 34.454 20.0478C34.4237 20.5824 34.9405 20.6201 35.1889 20.6378ZM40.4763 30.4335C40.4049 30.3792 40.3342 30.324 40.2642 30.2679C39.9004 29.9751 39.5138 29.706 39.1404 29.4451L38.9075 29.2824C38.4285 28.946 37.9982 28.7826 37.5916 28.7826C37.043 28.7826 36.5655 29.0858 36.1707 29.6824C35.9962 29.947 35.784 30.0757 35.523 30.0757C35.3418 30.0693 35.1639 30.0247 35.0011 29.9448C33.456 29.244 32.3515 28.169 31.7201 26.7503C31.4148 26.0642 31.5138 25.6162 32.0506 25.251C32.3559 25.044 32.9229 24.6588 32.8838 23.9203C32.8379 23.0827 30.9889 20.5609 30.2097 20.2748C29.8766 20.1533 29.5115 20.1523 29.1777 20.2719C28.2824 20.5727 27.6407 21.1021 27.3191 21.8007C27.0086 22.4764 27.0233 23.2697 27.359 24.0948C28.3312 26.4805 29.6974 28.5609 31.4207 30.2775C33.107 31.9579 35.18 33.3338 37.5812 34.368C37.7979 34.4612 38.0248 34.5122 38.1912 34.5492C38.2474 34.5617 38.2961 34.5728 38.3316 34.5824C38.3512 34.5877 38.3713 34.5904 38.3915 34.5906H38.4107C39.5404 34.5906 40.897 33.5585 41.3132 32.3823C41.6784 31.3517 41.0116 30.8423 40.4763 30.4335ZM35.6886 23.3636C35.4957 23.368 35.0928 23.3784 34.9516 23.788C34.885 23.9802 34.8932 24.1458 34.9752 24.2825C35.095 24.4822 35.3249 24.5443 35.5334 24.5783C36.2912 24.6995 36.6808 25.1179 36.7584 25.8964C36.7946 26.2587 37.0393 26.5123 37.3521 26.5123C37.3758 26.5122 37.3995 26.5107 37.423 26.5078C37.8001 26.4635 37.9827 26.1862 37.9664 25.6842C37.9723 25.1608 37.6988 24.5664 37.2323 24.0933C36.7651 23.6187 36.2017 23.351 35.6886 23.3636Z\"\n                                            fill=\"#D0D0D0\" />\n                                        <path\n                                            d=\"M28.2605 53.3406L26.1979 48.683H26.7302L28.6597 53.0678H28.367L30.3099 48.683H30.8089L28.7462 53.3406H28.2605ZM31.3656 53.3406V49.8474H31.838V53.3406H31.3656ZM31.6051 49.0756C31.5075 49.0756 31.4254 49.0423 31.3589 48.9758C31.2924 48.9093 31.2591 48.8294 31.2591 48.7363C31.2591 48.6431 31.2924 48.5655 31.3589 48.5034C31.4254 48.4368 31.5075 48.4036 31.6051 48.4036C31.7027 48.4036 31.7847 48.4346 31.8513 48.4967C31.9178 48.5588 31.9511 48.6365 31.9511 48.7296C31.9511 48.8272 31.9178 48.9093 31.8513 48.9758C31.7892 49.0423 31.7071 49.0756 31.6051 49.0756ZM34.9556 53.3739C34.6495 53.3739 34.3745 53.3051 34.1305 53.1676C33.8865 53.0257 33.6936 52.8216 33.5516 52.5555C33.4097 52.2893 33.3387 51.9677 33.3387 51.5907C33.3387 51.2092 33.4097 50.8876 33.5516 50.6259C33.698 50.3598 33.8932 50.1579 34.1372 50.0204C34.3811 49.8829 34.6539 49.8142 34.9556 49.8142C35.2883 49.8142 35.5855 49.8896 35.8472 50.0404C36.1133 50.1868 36.3218 50.393 36.4726 50.6592C36.6234 50.9253 36.6988 51.2358 36.6988 51.5907C36.6988 51.9411 36.6234 52.2516 36.4726 52.5222C36.3218 52.7884 36.1133 52.9968 35.8472 53.1477C35.5855 53.2985 35.2883 53.3739 34.9556 53.3739ZM33.1524 53.3406V48.4036H33.6248V50.8787L33.5583 51.584L33.6049 52.2893V53.3406H33.1524ZM34.9223 52.9547C35.1707 52.9547 35.3925 52.8992 35.5877 52.7884C35.7828 52.673 35.9381 52.5133 36.0534 52.3093C36.1688 52.1008 36.2264 51.8613 36.2264 51.5907C36.2264 51.3157 36.1688 51.0761 36.0534 50.8721C35.9381 50.668 35.7828 50.5106 35.5877 50.3997C35.3925 50.2844 35.1707 50.2267 34.9223 50.2267C34.6739 50.2267 34.4499 50.2844 34.2503 50.3997C34.0551 50.5106 33.8999 50.668 33.7845 50.8721C33.6736 51.0761 33.6182 51.3157 33.6182 51.5907C33.6182 51.8613 33.6736 52.1008 33.7845 52.3093C33.8999 52.5133 34.0551 52.673 34.2503 52.7884C34.4499 52.8992 34.6739 52.9547 34.9223 52.9547ZM39.1456 53.3739C38.7819 53.3739 38.4625 53.2985 38.1875 53.1477C37.9125 52.9924 37.6973 52.7817 37.5421 52.5156C37.3868 52.245 37.3092 51.9367 37.3092 51.5907C37.3092 51.2447 37.3824 50.9386 37.5288 50.6725C37.6796 50.4063 37.8836 50.1979 38.1409 50.047C38.4026 49.8918 38.6954 49.8142 39.0192 49.8142C39.3475 49.8142 39.638 49.8896 39.8908 50.0404C40.1481 50.1868 40.3499 50.3952 40.4963 50.6658C40.6427 50.932 40.7159 51.2403 40.7159 51.5907C40.7159 51.6129 40.7137 51.6373 40.7092 51.6639C40.7092 51.6861 40.7092 51.7105 40.7092 51.7371H37.6685V51.3844H40.4564L40.2701 51.5242C40.2701 51.2713 40.2146 51.0473 40.1038 50.8521C39.9973 50.6525 39.8509 50.4973 39.6646 50.3864C39.4783 50.2755 39.2632 50.22 39.0192 50.22C38.7797 50.22 38.5645 50.2755 38.3738 50.3864C38.1831 50.4973 38.0345 50.6525 37.928 50.8521C37.8215 51.0517 37.7683 51.2802 37.7683 51.5375V51.6107C37.7683 51.8768 37.826 52.1119 37.9413 52.3159C38.0611 52.5156 38.2252 52.673 38.4337 52.7884C38.6466 52.8992 38.8883 52.9547 39.1589 52.9547C39.3718 52.9547 39.5692 52.917 39.7511 52.8416C39.9374 52.7662 40.0971 52.6508 40.2302 52.4956L40.4963 52.8017C40.3411 52.988 40.1459 53.1299 39.9108 53.2275C39.6801 53.3251 39.4251 53.3739 39.1456 53.3739ZM41.6774 53.3406V49.8474H42.1299V50.7989L42.0833 50.6326C42.1809 50.3664 42.345 50.1646 42.5757 50.0271C42.8064 49.8851 43.0925 49.8142 43.434 49.8142V50.2733C43.4163 50.2733 43.3985 50.2733 43.3808 50.2733C43.363 50.2688 43.3453 50.2666 43.3276 50.2666C42.9594 50.2666 42.6711 50.3797 42.4626 50.6059C42.2541 50.8277 42.1499 51.1449 42.1499 51.5574V53.3406H41.6774Z\"\n                                            fill=\"#5A6253\" />\n                                    </svg>\n                                    <svg width=\"55\" height=\"57\" viewBox=\"0 0 74 57\" fill=\"none\"\n                                        xmlns=\"http://www.w3.org/2000/svg\">\n                                        <g filter=\"url(#filter0_d_0_276)\">\n                                            <rect x=\"9.47876\" y=\"9.63641\" width=\"50.9089\" height=\"33.2684\" rx=\"4.43578\"\n                                                fill=\"white\" />\n                                        </g>\n                                        <path\n                                            d=\"M18.9719 53.3406L17.4016 48.683H17.9073L19.3778 53.0678H19.1249L20.642 48.683H21.0944L22.5915 53.0678H22.3519L23.8357 48.683H24.3081L22.7379 53.3406H22.2189L20.7883 49.182H20.9214L19.4842 53.3406H18.9719ZM26.9917 49.8141C27.2756 49.8141 27.524 49.8696 27.737 49.9805C27.9543 50.0869 28.1229 50.2511 28.2426 50.4728C28.3668 50.6946 28.4289 50.9741 28.4289 51.3112V53.3406H27.9565V51.3578C27.9565 50.9896 27.8634 50.7124 27.6771 50.5261C27.4952 50.3353 27.2379 50.24 26.9052 50.24C26.6568 50.24 26.4395 50.291 26.2532 50.393C26.0713 50.4906 25.9294 50.6347 25.8273 50.8255C25.7298 51.0118 25.681 51.238 25.681 51.5042V53.3406H25.2086V48.4035H25.681V50.8055L25.5878 50.6259C25.6987 50.373 25.8761 50.1756 26.1201 50.0337C26.3641 49.8873 26.6546 49.8141 26.9917 49.8141ZM31.894 53.3406V52.5687L31.8741 52.4423V51.1515C31.8741 50.8543 31.7898 50.6259 31.6212 50.4662C31.4571 50.3065 31.2109 50.2267 30.8827 50.2267C30.6565 50.2267 30.4413 50.2644 30.2373 50.3398C30.0332 50.4152 29.8602 50.515 29.7183 50.6392L29.5054 50.2865C29.6828 50.1357 29.8957 50.0204 30.1441 49.9405C30.3925 49.8563 30.6542 49.8141 30.9293 49.8141C31.3817 49.8141 31.7299 49.9272 31.9739 50.1535C32.2223 50.3753 32.3465 50.7146 32.3465 51.1715V53.3406H31.894ZM30.6897 53.3738C30.428 53.3738 30.1996 53.3317 30.0044 53.2474C29.8137 53.1587 29.6673 53.0389 29.5653 52.8881C29.4632 52.7329 29.4122 52.5554 29.4122 52.3558C29.4122 52.174 29.4544 52.0098 29.5386 51.8635C29.6274 51.7126 29.7693 51.5929 29.9645 51.5042C30.1641 51.411 30.4302 51.3644 30.7629 51.3644H31.9672V51.7171H30.7762C30.4391 51.7171 30.204 51.777 30.0709 51.8967C29.9423 52.0165 29.878 52.1651 29.878 52.3425C29.878 52.5421 29.9556 52.7018 30.1109 52.8216C30.2661 52.9414 30.4835 53.0012 30.7629 53.0012C31.0291 53.0012 31.2575 52.9414 31.4482 52.8216C31.6434 52.6974 31.7854 52.52 31.8741 52.2893L31.9805 52.6153C31.8918 52.846 31.7366 53.0301 31.5148 53.1676C31.2974 53.3051 31.0224 53.3738 30.6897 53.3738ZM34.7341 53.3738C34.4059 53.3738 34.153 53.2851 33.9756 53.1077C33.7982 52.9303 33.7095 52.6796 33.7095 52.3558V49.0756H34.1819V52.3292C34.1819 52.5333 34.2329 52.6907 34.3349 52.8016C34.4414 52.9125 34.5922 52.968 34.7874 52.968C34.9958 52.968 35.1688 52.9081 35.3063 52.7883L35.4727 53.1277C35.3795 53.2119 35.2664 53.274 35.1333 53.314C35.0047 53.3539 34.8716 53.3738 34.7341 53.3738ZM33.084 50.24V49.8474H35.2465V50.24H33.084ZM37.2708 53.3738C36.9825 53.3738 36.7097 53.3339 36.4524 53.2541C36.1952 53.1698 35.9933 53.0656 35.847 52.9414L36.0599 52.5687C36.2018 52.6752 36.3837 52.7684 36.6055 52.8482C36.8273 52.9236 37.0601 52.9613 37.3041 52.9613C37.6368 52.9613 37.8763 52.9103 38.0227 52.8083C38.1691 52.7018 38.2423 52.5621 38.2423 52.3891C38.2423 52.2605 38.2001 52.1607 38.1159 52.0897C38.036 52.0143 37.9296 51.9588 37.7965 51.9233C37.6634 51.8834 37.5148 51.8502 37.3507 51.8235C37.1866 51.7969 37.0224 51.7659 36.8583 51.7304C36.6986 51.6949 36.5522 51.6439 36.4192 51.5774C36.2861 51.5064 36.1774 51.411 36.0931 51.2912C36.0133 51.1715 35.9734 51.0118 35.9734 50.8122C35.9734 50.6214 36.0266 50.4507 36.1331 50.2998C36.2395 50.149 36.3948 50.0315 36.5988 49.9472C36.8073 49.8585 37.0601 49.8141 37.3573 49.8141C37.5836 49.8141 37.8098 49.8452 38.036 49.9073C38.2622 49.9649 38.4485 50.0426 38.5949 50.1402L38.3887 50.5194C38.2334 50.413 38.0671 50.3376 37.8896 50.2932C37.7122 50.2444 37.5348 50.22 37.3573 50.22C37.0424 50.22 36.8095 50.2754 36.6587 50.3863C36.5123 50.4928 36.4391 50.6303 36.4391 50.7989C36.4391 50.9319 36.4791 51.0362 36.5589 51.1116C36.6432 51.187 36.7519 51.2469 36.8849 51.2912C37.0224 51.3312 37.171 51.3644 37.3307 51.391C37.4948 51.4177 37.6568 51.4509 37.8164 51.4909C37.9806 51.5263 38.1292 51.5774 38.2622 51.6439C38.3997 51.706 38.5084 51.7969 38.5883 51.9167C38.6725 52.032 38.7147 52.1851 38.7147 52.3758C38.7147 52.5798 38.657 52.7573 38.5417 52.9081C38.4308 53.0545 38.2667 53.1698 38.0493 53.2541C37.8364 53.3339 37.5769 53.3738 37.2708 53.3738ZM38.9361 53.3406L41.0653 48.683H41.551L43.6802 53.3406H43.1612L41.205 48.9691H41.4046L39.4485 53.3406H38.9361ZM39.7745 52.0963L39.9209 51.6971H42.6289L42.7753 52.0963H39.7745ZM46.154 53.3738C45.8524 53.3738 45.5796 53.3051 45.3356 53.1676C45.0916 53.0256 44.8965 52.8238 44.7501 52.5621C44.6081 52.2959 44.5372 51.9721 44.5372 51.5907C44.5372 51.2092 44.6081 50.8876 44.7501 50.6259C44.892 50.3597 45.085 50.1579 45.329 50.0204C45.5729 49.8829 45.8479 49.8141 46.154 49.8141C46.4867 49.8141 46.7839 49.8895 47.0456 50.0404C47.3118 50.1867 47.5202 50.3952 47.6711 50.6658C47.8219 50.9319 47.8973 51.2402 47.8973 51.5907C47.8973 51.9455 47.8219 52.256 47.6711 52.5222C47.5202 52.7883 47.3118 52.9968 47.0456 53.1476C46.7839 53.2984 46.4867 53.3738 46.154 53.3738ZM44.3509 54.6314V49.8474H44.8033V50.8987L44.7567 51.5973L44.8233 52.3026V54.6314H44.3509ZM46.1207 52.9547C46.3691 52.9547 46.5909 52.8992 46.7861 52.7883C46.9813 52.673 47.1365 52.5133 47.2519 52.3093C47.3672 52.1008 47.4249 51.8612 47.4249 51.5907C47.4249 51.3201 47.3672 51.0828 47.2519 50.8787C47.1365 50.6747 46.9813 50.515 46.7861 50.3997C46.5909 50.2843 46.3691 50.2267 46.1207 50.2267C45.8723 50.2267 45.6483 50.2843 45.4487 50.3997C45.2535 50.515 45.0983 50.6747 44.983 50.8787C44.8721 51.0828 44.8166 51.3201 44.8166 51.5907C44.8166 51.8612 44.8721 52.1008 44.983 52.3093C45.0983 52.5133 45.2535 52.673 45.4487 52.7883C45.6483 52.8992 45.8723 52.9547 46.1207 52.9547ZM50.6634 53.3738C50.3618 53.3738 50.089 53.3051 49.845 53.1676C49.6011 53.0256 49.4059 52.8238 49.2595 52.5621C49.1176 52.2959 49.0466 51.9721 49.0466 51.5907C49.0466 51.2092 49.1176 50.8876 49.2595 50.6259C49.4015 50.3597 49.5944 50.1579 49.8384 50.0204C50.0824 49.8829 50.3574 49.8141 50.6634 49.8141C50.9961 49.8141 51.2933 49.8895 51.555 50.0404C51.8212 50.1867 52.0297 50.3952 52.1805 50.6658C52.3313 50.9319 52.4067 51.2402 52.4067 51.5907C52.4067 51.9455 52.3313 52.256 52.1805 52.5222C52.0297 52.7883 51.8212 52.9968 51.555 53.1476C51.2933 53.2984 50.9961 53.3738 50.6634 53.3738ZM48.8603 54.6314V49.8474H49.3127V50.8987L49.2662 51.5973L49.3327 52.3026V54.6314H48.8603ZM50.6302 52.9547C50.8786 52.9547 51.1004 52.8992 51.2955 52.7883C51.4907 52.673 51.646 52.5133 51.7613 52.3093C51.8766 52.1008 51.9343 51.8612 51.9343 51.5907C51.9343 51.3201 51.8766 51.0828 51.7613 50.8787C51.646 50.6747 51.4907 50.515 51.2955 50.3997C51.1004 50.2843 50.8786 50.2267 50.6302 50.2267C50.3818 50.2267 50.1578 50.2843 49.9582 50.3997C49.763 50.515 49.6077 50.6747 49.4924 50.8787C49.3815 51.0828 49.3261 51.3201 49.3261 51.5907C49.3261 51.8612 49.3815 52.1008 49.4924 52.3093C49.6077 52.5133 49.763 52.673 49.9582 52.7883C50.1578 52.8992 50.3818 52.9547 50.6302 52.9547Z\"\n                                            fill=\"#A7A7A7\" />\n                                        <g clip-path=\"url(#clip0_0_276)\">\n                                            <path\n                                                d=\"M38.542 28.398C38.3196 28.2854 37.2368 27.757 37.0344 27.6816C36.832 27.6095 36.6851 27.5718 36.5376 27.7941C36.3934 28.0109 35.9687 28.5072 35.8389 28.6519C35.7092 28.7966 35.5817 28.8077 35.3626 28.7096C35.1403 28.597 34.43 28.3658 33.5867 27.6095C32.9279 27.0234 32.4894 26.3015 32.3591 26.0792C32.2293 25.8596 32.3446 25.7354 32.4544 25.6256C32.5553 25.5247 32.6768 25.3716 32.7893 25.2386C32.8963 25.1055 32.9307 25.0162 33.0089 24.8721C33.081 24.7163 33.0438 24.5948 32.9889 24.485C32.934 24.3753 32.4921 23.2868 32.3075 22.8532C32.1312 22.423 31.9465 22.4779 31.8107 22.4779C31.6837 22.4662 31.5362 22.4662 31.3893 22.4662C31.2423 22.4662 31.0023 22.5211 30.7999 22.7318C30.5975 22.9541 30.0258 23.4853 30.0258 24.5599C30.0258 25.6372 30.8171 26.6796 30.9269 26.8355C31.0394 26.9796 32.4833 29.1975 34.6984 30.1506C35.2268 30.373 35.6371 30.5061 35.9576 30.6159C36.486 30.7833 36.9684 30.76 37.3493 30.7051C37.7707 30.6358 38.6545 30.1706 38.8397 29.6511C39.0277 29.1282 39.0277 28.6952 38.9728 28.597C38.9179 28.4961 38.7738 28.4412 38.5514 28.3431L38.542 28.398ZM34.5248 33.8445H34.5132C33.2019 33.8445 31.9055 33.4891 30.7733 32.8249L30.5077 32.6663L27.7353 33.3882L28.4805 30.6907L28.3014 30.4135C27.5692 29.2493 27.1808 27.9019 27.1808 26.5266C27.1808 22.5011 30.4761 19.2176 34.5304 19.2176C36.4943 19.2176 38.3368 19.9827 39.723 21.3689C40.4068 22.0446 40.9492 22.8497 41.3186 23.7372C41.688 24.6247 41.8769 25.5769 41.8744 26.5383C41.8688 30.561 38.5764 33.8445 34.5276 33.8445H34.5248ZM40.7771 20.3149C39.0904 18.6858 36.8725 17.7648 34.5132 17.7648C29.6471 17.7648 25.6849 21.7099 25.6821 26.5582C25.6821 28.1063 26.0863 29.6167 26.8603 30.9535L25.6072 35.508L30.2914 34.2865C31.5891 34.9861 33.0395 35.3541 34.5137 35.3577H34.5165C39.3853 35.3577 43.3476 31.4126 43.3504 26.561C43.3504 24.2134 42.4349 22.0038 40.766 20.3431L40.7771 20.3149Z\"\n                                                fill=\"#D0D0D0\" />\n                                        </g>\n                                    </svg>\n                                </div>\n                                <div>\n                                    <button class=\"cardButton\">Подробнее о проекте</button>\n                                </div>\n                            </div>\n                        </div>\n                    </div>', 0, 'a:0:{}', 0, '');
INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(9, 1, 0, 'threeNumbers', '', 0, 1, 0, '<div class=\"threeNumbers\">\r\n            <div class=\"threeNumbers_numbers\">1</div>\r\n            <div class=\"threeNumbers_numbers\">2</div>\r\n            <div class=\"threeNumbers_numbers\">3</div>\r\n            <div class=\"threeNumbers_numbers\">></div>\r\n        </div>', 0, 'a:0:{}', 0, ''),
(10, 1, 0, 'contactBlock', '', 0, 1, 0, '<div class=\"contactBlock\">\n        <div class=\"contactBlock_media\">\n            <div class=\"contactBlock_media_text\">Свяжитесь с нами любым удобным для вас способом</div>\n            <div class=\"contactBlock_media_media\">\n                <div><img src=\"/assets/image/telegram.png\" alt=\"\"></div>\n                <div><img src=\"/assets/image/whats.png\" alt=\"\"></div>\n                <div><img src=\"/assets/image/inst.png\" alt=\"\"></div>\n                <div><img src=\"/assets/image/facebook.png\" alt=\"\"></div>\n                <div><img src=\"/assets/image/youtube.png\" alt=\"\"></div>\n            </div>\n        </div>\n        <div class=\"contactBlock_container\">\n            <div><img src=\"/assets/image/webSite.png\" alt=\"\">\n            </div>\n            <div class=\"contactBlock_container_subscribe\">\n                <div><b><span class=\"goldColor\">Подпишитесь в Instagram</span> и получите чек-лист для привлечения\n                        клиентов\n                        <span class=\"goldColor\">БЕСПЛАТНО</b></span>\n                </div>\n                <img class=\"contactBlock_container_subscribe_arrow\" src=\"./image/arrow.png\" alt=\"\">\n                <div><button class=\"contactBlock_container_subscribe_button\">Подписаться <img src=\"/assets/image/inst.png\"\n                            alt=\"\"></button>\n                </div>\n            </div>\n            <div>\n                <b>Главня</b>\n                <p><b>Услуги</b></p>\n                <p><b>Примеры работ</b></p>\n                <p><b>О компании</b></p>\n                <p><b>Сотрудничество</b></p>\n                <p><b>Контакты</b></p>\n                <p><b>Блог</b></p>\n            </div>\n            <div class=\"contactBlock_container_fourthBlock\">\n                <div><b>Видеоотзывы от наших довольных клиентов</b></div>\n                <div class=\"images-row\">\n                    <div class=\"image-container\">\n                        <img src=\"/assets/image/firstFeedback.png\" class=\"main-img\" />\n                        <img src=\"/assets/image/click.png\" class=\"overlay-img\" />\n                    </div>\n                    <div class=\"image-container\">\n                        <img src=\"/assets/image/secondFeedback.png\" class=\"main-img\" />\n                        <img src=\"/assets/image/click.png\" class=\"overlay-img\" />\n                    </div>\n                    <div class=\"image-container\">\n                        <img src=\"/assets/image/thirdFeedback.png\" class=\"main-img\" />\n                        <img src=\"/assets/image/click.png\" class=\"overlay-img\" />\n                    </div>\n                </div>\n                <div class=\"fiveElips\">\n                    <div class=\"fiveElips_elips\"></div>\n                    <div class=\"fiveElips_elips\"></div>\n                    <div class=\"fiveElips_elips\"></div>\n                    <div class=\"fiveElips_elips\"></div>\n                    <div class=\"fiveElips_elips\"></div>\n                </div>\n            </div>\n        </div>\n    </div>', 0, 'a:0:{}', 0, ''),
(11, 1, 0, 'headerBottom', '', 0, 1, 0, ' <header class=\"headerBottom\">\n        <div class=\"firstBlockInHeader topHeader\">\n            <div class=\"header_column\">\n                <div class=\"firstBlockInHeader_container\">\n                    <div><img src=\"/assets/image/greenHouse.png\"></div>\n                    <div class=\"firstBlockInHeader_container_text\">\n                        <span class=\"firstBlockInHeader_container_text_gradient\">House-stroy group</span>\n                        <p class=\"firstBlockInHeader_container_text_p\">Строим как для себя с душой и на века</p>\n                    </div>\n                </div>\n                <div class=\"header_column_100\">БОЛЕЕ 100 ПОСТРОЕННЫХ ДОМОВ</div>\n            </div>\n            <div id=\"secondhiddenContent\">\n                <div class=\"senondBlockInHeader\">\n                    <div>\n                        <svg width=\"38\" height=\"50\" viewBox=\"0 0 38 50\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n                            <path d=\"M26.2312 3L3 30.3604H13.1005V46.3992L35.3217 20.9257H25.2211L26.2312 3Z\"\n                                stroke=\"#437433\" stroke-width=\"1.98801\" stroke-linecap=\"round\" />\n                        </svg>\n                    </div>\n                    <div class=\"senondBlockInHeader_text\">Построим ваш идеальный дом <br> в любой точке страны от 45\n                        000$</div>\n                </div>\n                <button class=\"headerButton\">Оставить заявку прорабу</button>\n                <div class=\"fourthBlockInHeader\">\n                    <div>Отдел продаж работает <br><span class=\"fourthBlockInHeader__boldText\">с 11 до 19:00 без.\n                            вых.</span></div>\n                </div>\n                <div class=\"fifthBlockInHeader\">\n                    <div class=\"fifthBlockInHeader_container\">\n                        <div><img src=\"/assets/image/imgPropab.png\"></div>\n                        <div>\n                            <div class=\"elips\"></div>Прораб сейчас Online\n                            <p class=\"phoneNumber\">+375 00 000 00</p>\n                            <p class=\"guestion\">ЗАДАЙТЕ МНЕ ВАШ ВОПРОС</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n        <button id=\"secondtoggleButton\" class=\"toggle-arrow\">∨</button>\n    </header>', 0, 'a:0:{}', 0, ''),
(12, 1, 0, 'footer', '', 0, 1, 0, ' <footer>\r\n        <div id=\"textFooter\">Разработка <span id=\"gradient\">сильных сайтов</span> с ориентацией на прибыль со <span\r\n                id=\"gradient\">строительными компаниями работаем за результат</span></div>\r\n    </footer>', 0, 'a:0:{}', 0, ''),
(14, 1, 0, 'header', '', 0, 1, 0, '<header>\n        <div class=\"firstBlockInHeader topHeader\">\n            <div class=\"header_column\">\n                <div class=\"firstBlockInHeader_container\">\n                    <div><img src=\"/assets/image/greenHouse.png\"></div>\n                    <div class=\"firstBlockInHeader_container_text\">\n                        <span class=\"firstBlockInHeader_container_text_gradient\">House-stroy group</span>\n                        <p class=\"firstBlockInHeader_container_text_p\">Строим как для себя с душой и на века</p>\n                    </div>\n                </div>\n                <div class=\"header_column_100\">БОЛЕЕ 100 ПОСТРОЕННЫХ ДОМОВ</div>\n            </div>\n            <div id=\"hiddenContent\">\n                <div class=\"senondBlockInHeader\">\n                    <div>\n                        <svg width=\"38\" height=\"50\" viewBox=\"0 0 38 50\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n                            <path d=\"M26.2312 3L3 30.3604H13.1005V46.3992L35.3217 20.9257H25.2211L26.2312 3Z\"\n                                stroke=\"#437433\" stroke-width=\"1.98801\" stroke-linecap=\"round\" />\n                        </svg>\n                    </div>\n                    <div class=\"senondBlockInHeader_text\">Построим ваш идеальный дом <br> в любой точке страны от 45\n                        000$</div>\n                </div>\n                <button class=\"headerButton\">Оставить заявку прорабу</button>\n                <div class=\"fourthBlockInHeader\">\n                    <div>Отдел продаж работает <br><span class=\"fourthBlockInHeader__boldText\">с 11 до 19:00 без.\n                            вых.</span></div>\n                </div>\n                <div class=\"fifthBlockInHeader\">\n                    <div class=\"fifthBlockInHeader_container\">\n                        <div><img src=\"/assets/image/imgPropab.png\"></div>\n                        <div>\n                            <div class=\"elips\"></div>Прораб сейчас Online\n                            <p class=\"phoneNumber\">+375 00 000 00</p>\n                            <p class=\"guestion\">ЗАДАЙТЕ МНЕ ВАШ ВОПРОС</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n\n        <button id=\"toggleButton\" class=\"toggle-arrow\">∨</button>\n    </header>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'Ace', 'Ace code editor plugin for MODx Revolution', 0, 0, 0, '/**\n * Ace Source Editor Plugin\n *\n * Events: OnManagerPageBeforeRender, OnRichTextEditorRegister, OnSnipFormPrerender,\n * OnTempFormPrerender, OnChunkFormPrerender, OnPluginFormPrerender,\n * OnFileCreateFormPrerender, OnFileEditFormPrerender, OnDocFormPrerender\n *\n * @author Danil Kostin <danya.postfactum(at)gmail.com>\n *\n * @package ace\n *\n * @var array $scriptProperties\n * @var Ace $ace\n */\nif ($modx->event->name == \'OnRichTextEditorRegister\') {\n    $modx->event->output(\'Ace\');\n    return;\n}\n\nif ($modx->getOption(\'which_element_editor\', null, \'Ace\') !== \'Ace\') {\n    return;\n}\n\n$corePath = $modx->getOption(\'ace.core_path\', null, $modx->getOption(\'core_path\').\'components/ace/\');\n$ace = $modx->getService(\'ace\', \'Ace\', $corePath.\'model/ace/\');\n$ace->initialize();\n\n$extensionMap = array(\n    \'tpl\'   => \'text/x-smarty\',\n    \'htm\'   => \'text/html\',\n    \'html\'  => \'text/html\',\n    \'css\'   => \'text/css\',\n    \'scss\'  => \'text/x-scss\',\n    \'less\'  => \'text/x-less\',\n    \'svg\'   => \'image/svg+xml\',\n    \'xml\'   => \'application/xml\',\n    \'xsl\'   => \'application/xml\',\n    \'js\'    => \'application/javascript\',\n    \'json\'  => \'application/json\',\n    \'php\'   => \'application/x-php\',\n    \'sql\'   => \'text/x-sql\',\n    \'md\'    => \'text/x-markdown\',\n    \'txt\'   => \'text/plain\',\n    \'twig\'  => \'text/x-twig\'\n);\n\n// Define default mime for html elements(templates, chunks and html resources)\n$html_elements_mime=$modx->getOption(\'ace.html_elements_mime\',null,false);\nif(!$html_elements_mime){\n    // this may deprecated in future because components may set ace.html_elements_mime option now\n    switch (true) {\n        case $modx->getOption(\'twiggy_class\'):\n            $html_elements_mime = \'text/x-twig\';\n            break;\n        case $modx->getOption(\'pdotools_fenom_parser\'):\n            $html_elements_mime = \'text/x-smarty\';\n            break;\n        default:\n            $html_elements_mime = \'text/html\';\n    }\n}\n\n// Defines wether we should highlight modx tags\n$modxTags = false;\nswitch ($modx->event->name) {\n    case \'OnSnipFormPrerender\':\n        $field = \'modx-snippet-snippet\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnTempFormPrerender\':\n        $field = \'modx-template-content\';\n        $modxTags = true;\n        $mimeType = $html_elements_mime;\n        break;\n    case \'OnChunkFormPrerender\':\n        $field = \'modx-chunk-snippet\';\n        if ($modx->controller->chunk && $modx->controller->chunk->isStatic()) {\n            $extension = pathinfo($modx->controller->chunk->name, PATHINFO_EXTENSION);\n            if(!$extension||!isset($extensionMap[$extension])){\n                $extension = pathinfo($modx->controller->chunk->getSourceFile(), PATHINFO_EXTENSION);\n            }\n            $mimeType = isset($extensionMap[$extension]) ? $extensionMap[$extension] : \'text/plain\';\n        } else {\n            $mimeType = $html_elements_mime;\n        }\n        $modxTags = true;\n        break;\n    case \'OnPluginFormPrerender\':\n        $field = \'modx-plugin-plugincode\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnFileCreateFormPrerender\':\n        $field = \'modx-file-content\';\n        $mimeType = \'text/plain\';\n        break;\n    case \'OnFileEditFormPrerender\':\n        $field = \'modx-file-content\';\n        $extension = pathinfo($scriptProperties[\'file\'], PATHINFO_EXTENSION);\n        $mimeType = isset($extensionMap[$extension])\n            ? $extensionMap[$extension]\n            : (\'@FILE:\'.pathinfo($scriptProperties[\'file\'], PATHINFO_BASENAME));\n        $modxTags = $extension == \'tpl\';\n        break;\n    case \'OnDocFormPrerender\':\n        if (!$modx->controller->resourceArray) {\n            return;\n        }\n        $field = \'ta\';\n        $mimeType = $modx->getObject(\'modContentType\', $modx->controller->resourceArray[\'content_type\'])->get(\'mime_type\');\n\n        if($mimeType == \'text/html\')$mimeType = $html_elements_mime;\n\n        if ($modx->getOption(\'use_editor\')){\n            $richText = $modx->controller->resourceArray[\'richtext\'];\n            $classKey = $modx->controller->resourceArray[\'class_key\'];\n            if ($richText || in_array($classKey, array(\'modStaticResource\',\'modSymLink\',\'modWebLink\',\'modXMLRPCResource\'))) {\n                $field = false;\n            }\n        }\n        $modxTags = true;\n        break;\n    case \'OnTVInputRenderList\':\n        $modx->event->output($corePath . \'elements/tv/input/\');\n        break;\n    default:\n        return;\n}\n\n$modxTags = (int) $modxTags;\n$script = \'\';\nif (!empty($field)) {\n    $script .= \"MODx.ux.Ace.replaceComponent(\'$field\', \'$mimeType\', $modxTags);\";\n}\n\nif ($modx->event->name == \'OnDocFormPrerender\' && !$modx->getOption(\'use_editor\')) {\n    $script .= \"MODx.ux.Ace.replaceTextAreas(Ext.query(\'.modx-richtext\'));\";\n}\n\nif ($script) {\n    $modx->controller->addHtml(\'<script>Ext.onReady(function() {\' . $script . \'});</script>\');\n}', 0, NULL, 0, '', 0, 'ace/elements/plugins/ace.plugin.php');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnChunkFormPrerender', 0, 0),
(1, 'OnDocFormPrerender', 0, 0),
(1, 'OnFileCreateFormPrerender', 0, 0),
(1, 'OnFileEditFormPrerender', 0, 0),
(1, 'OnManagerPageBeforeRender', 0, 0),
(1, 'OnPluginFormPrerender', 0, 0),
(1, 'OnRichTextEditorRegister', 0, 0),
(1, 'OnSnipFormPrerender', 0, 0),
(1, 'OnTempFormPrerender', 0, 0),
(1, 'OnTVInputRenderList', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'Начальный шаблон', 'Template', 0, 0, '', 0, '<!DOCTYPE html>\r\n<html lang=\"ru\">\r\n\r\n[[$head]]\r\n\r\n<body>\r\n    [[$header]]\r\n\r\n    [[$greenBackground]]\r\n    <main class=\"main\">\r\n\r\n        [[$linkBlock]]\r\n        [[$firstBlock]]\r\n\r\n        <div class=\"outerContainer\">\r\n            <div class=\"benefitBlock_outerBlock\">\r\n                [[$benefitBlock]]\r\n                [[$outerBlock]]\r\n            </div>\r\n\r\n\r\n\r\n            <div class=\"benefitBlock_twoCardContainer\">\r\n                <div class=\"benefitBlock_text\">\r\n                    Другие проекты которые могу вас заинтересовать\r\n                </div>\r\n                <div class=\"twoCardContainer\">\r\n                    [[$cardContainer]]\r\n                    [[$cardContainer]]\r\n\r\n                </div>\r\n            </div>\r\n\r\n\r\n        </div>\r\n\r\n        [[$threeNumbers]]\r\n\r\n    </main>\r\n\r\n\r\n\r\n    [[$contactBlock]]\r\n    [[$headerBottom]]\r\n    [[$footer]]\r\n\r\n</body>\r\n<script>\r\n    const toggleButton = document.getElementById(\"toggleButton\");\r\n    const hiddenContent = document.getElementById(\"hiddenContent\");\r\n\r\n    toggleButton.addEventListener(\"click\", () => {\r\n        hiddenContent.classList.toggle(\"show\");\r\n        if (hiddenContent.classList.contains(\"show\")) {\r\n            toggleButton.innerHTML = \"∧\";\r\n        } else {\r\n            toggleButton.innerHTML = \"∨\";\r\n        }\r\n    });\r\n</script>\r\n<script>\r\n    const secondtoggleButton = document.getElementById(\"secondtoggleButton\");\r\n    const secondhiddenContent = document.getElementById(\"secondhiddenContent\");\r\n\r\n    secondtoggleButton.addEventListener(\"click\", () => {\r\n        secondhiddenContent.classList.toggle(\"show\");\r\n        if (secondhiddenContent.classList.contains(\"show\")) {\r\n            secondtoggleButton.innerHTML = \"∧\";\r\n        } else {\r\n            secondtoggleButton.innerHTML = \"∨\";\r\n        }\r\n    });\r\n</script>\r\n\r\n</html>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('ace.fold_widgets', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.font_size', '13px', 'textfield', 'ace', 'general', NULL),
('ace.grow', '', 'textfield', 'ace', 'general', NULL),
('ace.height', '', 'textfield', 'ace', 'general', NULL),
('ace.html_elements_mime', '', 'textfield', 'ace', 'general', NULL),
('ace.show_invisibles', '0', 'combo-boolean', 'ace', 'general', NULL),
('ace.snippets', '', 'textarea', 'ace', 'general', NULL),
('ace.soft_tabs', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.tab_size', '4', 'textfield', 'ace', 'general', NULL),
('ace.theme', 'chrome', 'textfield', 'ace', 'general', NULL),
('ace.word_wrap', '', 'combo-boolean', 'ace', 'general', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('allow_tv_eval', '1', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'parent', 'textfield', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/help/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_clear_partial', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2024-10-25 19:54:48'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'sources.modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'valeryia.p@mail.ru', 'textfield', 'core', 'authentication', '2024-10-25 19:54:48'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('feed_modx_news', 'https://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'https://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '1', 'combo-boolean', 'core', 'furls', '2024-10-25 20:09:46'),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'russian', 'textfield', 'core', 'furls', '2024-10-25 20:10:27'),
('friendly_alias_translit_class', 'modx.translit.modTransliterate', 'textfield', 'core', 'furls', '2024-10-26 09:45:08'),
('friendly_alias_translit_class_path', '{core_path}components/translit/model/', 'textfield', 'core', 'furls', '2024-10-26 09:45:07'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2024-10-25 20:10:50'),
('friendly_urls_strict', '1', 'combo-boolean', 'core', 'furls', '2024-10-25 20:11:01'),
('global_duplicate_uri_check', '1', 'combo-boolean', 'core', 'furls', '2024-10-25 20:11:13'),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_autotls', '1', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2024-10-25 19:54:48'),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2024-10-25 19:54:48'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('password_generated_length', '10', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_static_allow_absolute', '0', 'combo-boolean', 'core', 'static_resources', NULL),
('resource_static_path', '{assets_path}', 'textfield', 'core', 'static_resources', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '1', 'combo-boolean', 'core', 'system', '2024-10-25 19:54:48'),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_samesite', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '2.8.5-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('static_elements_automate_chunks', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_templates', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('static_elements_html_extension', '.tpl', 'textfield', 'core', 'static_elements', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_check_exists', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_files', 'txt,html,htm,xml,js,js.map,css,scss,less,css.map,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,webp,avif,odt,ods,odp,odb,odg,odf,md,ttf,woff,woff2,eot', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz,webp,avif', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '52428800', 'textfield', 'core', 'file', '2024-10-25 19:54:48'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '1', 'combo-boolean', 'core', 'furls', '2024-10-25 20:11:34'),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '1', 'combo-boolean', 'core', 'furls', '2024-10-25 20:12:04'),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2024-10-25 19:54:48'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2024-10-25 19:59:07'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.28.html', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', 'Ace', 'modx-combo-rte', 'core', 'editor', '2024-10-26 09:47:36'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(191) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('ace-1.9.3-pl', '2024-10-26 12:47:21', '2024-10-26 09:47:36', '2024-10-26 12:47:36', 0, 1, 1, 0, 'ace-1.9.3-pl.transport.zip', NULL, 'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:271:\"--------------------\nExtra: Ace\n--------------------\nSince: March 29th, 2012\nAuthor: Danil Kostin <danya.postfactum@gmail.com>\nLicense: GNU GPLv2 (or later at your option)\n\nIntegrates Ace Code Editor into MODx Revolution.\n\nPress Ctrl+Alt+H to see all available shortcuts.\";s:9:\"changelog\";s:4624:\"Changelog for Ace integration into MODx Revolution.\n\nAce 1.9.3 [15.05.2022]\n====================================\n- Updated: Move settings into an own file [#12]\n- Fixed: Ace TV input [#11]\n- Fixed: Prevent PHP warning: Undefined variable $field [#10]\n\nAce 1.9.2\n====================================\n- Updated: Corrected search form [#8]\n- Added: TV input Ace field [#9]\n\nAce 1.9.1\n====================================\n- Fixed: Changed fonts\n- Updated: emmet.js with the support flex css styles and many other combinations\n\nAce 1.9.0\n====================================\n- Added: autodetecting file mode by modelist.js [#7]\n- Added: new modes from ace-builds for version 1.2.0\n\nAce 1.8.0\n====================================\n- Added: autocompletion for php functions.\n\nAce 1.7.0\n====================================\n- Added: new system setting \"ace.grow\".\n- Added: new system setting \"ace.html_elements_mime\".\n\nAce 1.6.5\n====================================\n- Added: \"Twig\" syntax for support of Twig in chunks.\n- Changed: Plugin is not static anymore.\n\nAce 1.6.4\n====================================\n- Fixed: Support of emmet in smarty mode. Again.\n\nAce 1.6.3\n====================================\n- Fixed: Support of emmet in smarty mode.\n\nAce 1.6.2\n====================================\n- Fixed: Editor mode handling.\n- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".\n\nAce 1.6.1\n====================================\n- Fixed : Work with enabled system setting \"compress_js\".\n\nAce 1.6.0\n====================================\n- Added: \"Smarty\" syntax for support of Fenom in chunks.\n- Updated: Ace to version 1.2.0.\n\nAce 1.5.1\n====================================\n- Fixed: Bug with narrowing of the textarea.\n\nAce 1.5.0\n====================================\n- Changed: Assets are moved back to /assets/\n- Fixed: MODx tag completions (was completely broken)\n- Added: Editor height setting\n\nAce 1.4.3\n====================================\n- Added: MODx tag completions (Ctrl+Space)\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug\n\nAce 1.4.2\n====================================\n- Added: Undo coalescing\n- Changed: Mac fullscreen command is bound to Command+F12\n- Added: Drag delay (allow to start new selection inside current one) for Mac\n- Fixed: Use file extension of static chunks to detect code syntax\n\n\nAce 1.4.1\n====================================\n- Fixed: Tab handling\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\n- Added: Expandable snippets support (see ace.snippets setting)\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\n\nAce 1.4.0\n====================================\n- Added: Emmet (aka Zen Coding) support\n- Added: Terminal dark theme\n- Added: Hotkey table (Ctrl+Alt+H)\n- Fixed: Resource overview fatal error\n- Changed: Assets are moved to /manager/assets/components/\n\nAce 1.3.3\n====================================\n- Added: PHP live syntax check\n- Added: Chaos dark theme\n- Added: Setting show_invisibles\n\n\nAce 1.3.2\n====================================\n- Fixed: The bug while installing the Ace\n- Fixed: Broken word_wrap setting\n- Added: Tab settings (tab size, soft tab)\n- Added: Now completele compatible with AjaxManager extra\n\n\nAce 1.3.1\n====================================\n- Changed: Plugin content now is stored in static file\n\n\nAce 1.3.0\n====================================\n- Added: German translation\n- Added: MODx tags highlighting\n- Added: Ambiance and xcode themes\n- Added: less/scss syntax highlighting\n- Added: Fullwindow mode (Ctrl + F11)\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\n\n\nAce 1.2.1\n====================================\n- Changed: Assets are moved to manager folder\n- Added: Font size setting\n- Added: \"GitHub\" theme\n- Added: Support of html5 drag\'n\'drop (accepting of dropped text)\n- Added: XML / HTML tag autoclosing\n- Fixed: broken en lexicon and php 5.3 incompatibility\n\n\nAce 1.2.0\n====================================\n- Removed: Some unnecessary options\n- Changed: Editor options are moved to system settings\n- Fixed: Multiple little editor bugs\n- Added: Add missing \"OnFileEditFormPrerender\" event to MODx\n- Added: Multiline editing\n- Added: Advanced find/replace window\n\n\nAce 1.1.0\n====================================\n- Fixed: Fatal error on document create event\n- Fixed: Changing of properties has no effect\n- Added: File edition support\n- Added: MODx tree elements drag\'n\'drop support\n- Added: Auto-assigning which_element_editor to Ace\n\n\nAce 1.0.0\n====================================\n- Added: Plugin properties to adjust how Ace behaves\n- Initial commit\";s:9:\"signature\";s:12:\"ace-1.9.3-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:40:\"/workspace/package/install/ace-1.9.3-pl/\";s:14:\"package_action\";i:0;}', 'Ace', 'a:38:{s:2:\"id\";s:36:\"99066886-9dc8-4443-85ae-85953c2cc1b9\";s:7:\"package\";s:36:\"9906673c-127f-4765-ad53-d741a99978c1\";s:12:\"display_name\";s:12:\"ace-1.9.3-pl\";s:4:\"name\";s:3:\"Ace\";s:7:\"version\";s:5:\"1.9.3\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"9\";s:13:\"version_patch\";s:1:\"3\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:16:\"danya_postfactum\";s:11:\"description\";s:376:\"<p>New feature: modx tag code autocompletion! Press Ctrl+Space to get code suggestions with descriptions.</p><p>Works for snippets, chunks, system settings, tvs and resource fields, filters and properties.</p><p>Property sets, lexicon entries are not supported. Unfortunately, I have no idea how to retrieve chunk-specific placeholders, so there is no placeholder support.</p>\";s:12:\"instructions\";s:341:\"<p></p><p>Install via Package Management.</p><p>Set editor theme you wish in system settings (change namespace to \"ace\").</p><p>If you want to use this editor for resources, just set system option <i>use_editor</i> to <b>false</b> (global usage), or <i>richtext</i> setting of certain resource to <b>false</b> (specific usage).</p><p></p>\";s:9:\"changelog\";s:4571:\"Ace 1.9.3 [15.05.2022]\n====================================\n- Updated: Move settings into an own file [#12]\n- Fixed: Ace TV input [#11]\n- Fixed: Prevent PHP warning: Undefined variable $field [#10]\n\nAce 1.9.2\n====================================\n- Updated: Corrected search form [#8]\n- Added: TV input Ace field [#9]\n\nAce 1.9.1\n====================================\n- Fixed: Changed fonts\n- Updated: emmet.js with the support flex css styles and many other combinations\n\nAce 1.9.0\n====================================\n- Added: autodetecting file mode by modelist.js [#7]\n- Added: new modes from ace-builds for version 1.2.0\n\nAce 1.8.0\n====================================\n- Added: autocompletion for php functions.\n\nAce 1.7.0\n====================================\n- Added: new system setting \"ace.grow\".\n- Added: new system setting \"ace.html_elements_mime\".\n\nAce 1.6.5\n====================================\n- Added: \"Twig\" syntax for support of Twig in chunks.\n- Changed: Plugin is not static anymore.\n\nAce 1.6.4\n====================================\n- Fixed: Support of emmet in smarty mode. Again.\n\nAce 1.6.3\n====================================\n- Fixed: Support of emmet in smarty mode.\n\nAce 1.6.2\n====================================\n- Fixed: Editor mode handling.\n- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".\n\nAce 1.6.1\n====================================\n- Fixed : Work with enabled system setting \"compress_js\".\n\nAce 1.6.0\n====================================\n- Added: \"Smarty\" syntax for support of Fenom in chunks.\n- Updated: Ace to version 1.2.0.\n\nAce 1.5.1\n====================================\n- Fixed: Bug with narrowing of the textarea.\n\nAce 1.5.0\n====================================\n- Changed: Assets are moved back to /assets/\n- Fixed: MODx tag completions (was completely broken)\n- Added: Editor height setting\n\nAce 1.4.3\n====================================\n- Added: MODx tag completions (Ctrl+Space)\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug\n\nAce 1.4.2\n====================================\n- Added: Undo coalescing\n- Changed: Mac fullscreen command is bound to Command+F12\n- Added: Drag delay (allow to start new selection inside current one) for Mac\n- Fixed: Use file extension of static chunks to detect code syntax\n\n\nAce 1.4.1\n====================================\n- Fixed: Tab handling\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\n- Added: Expandable snippets support (see ace.snippets setting)\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\n\nAce 1.4.0\n====================================\n- Added: Emmet (aka Zen Coding) support\n- Added: Terminal dark theme\n- Added: Hotkey table (Ctrl+Alt+H)\n- Fixed: Resource overview fatal error\n- Changed: Assets are moved to /manager/assets/components/\n\nAce 1.3.3\n====================================\n- Added: PHP live syntax check\n- Added: Chaos dark theme\n- Added: Setting show_invisibles\n\n\nAce 1.3.2\n====================================\n- Fixed: The bug while installing the Ace\n- Fixed: Broken word_wrap setting\n- Added: Tab settings (tab size, soft tab)\n- Added: Now completele compatible with AjaxManager extra\n\n\nAce 1.3.1\n====================================\n- Changed: Plugin content now is stored in static file\n\n\nAce 1.3.0\n====================================\n- Added: German translation\n- Added: MODx tags highlighting\n- Added: Ambiance and xcode themes\n- Added: less/scss syntax highlighting\n- Added: Fullwindow mode (Ctrl + F11)\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\n\n\nAce 1.2.1\n====================================\n- Changed: Assets are moved to manager folder\n- Added: Font size setting\n- Added: \"GitHub\" theme\n- Added: Support of html5 drag\'n\'drop (accepting of dropped text)\n- Added: XML / HTML tag autoclosing\n- Fixed: broken en lexicon and php 5.3 incompatibility\n\n\nAce 1.2.0\n====================================\n- Removed: Some unnecessary options\n- Changed: Editor options are moved to system settings\n- Fixed: Multiple little editor bugs\n- Added: Add missing \"OnFileEditFormPrerender\" event to MODx\n- Added: Multiline editing\n- Added: Advanced find/replace window\n\n\nAce 1.1.0\n====================================\n- Fixed: Fatal error on document create event\n- Fixed: Changing of properties has no effect\n- Added: File edition support\n- Added: MODx tree elements drag\'n\'drop support\n- Added: Auto-assigning which_element_editor to Ace\n\n\nAce 1.0.0\n====================================\n- Added: Plugin properties to adjust how Ace behaves\n- Initial commit\";s:9:\"createdon\";s:25:\"2022-05-15T03:38:35+00:00\";s:9:\"createdby\";s:10:\"ibochkarev\";s:8:\"editedon\";s:25:\"2023-05-04T19:23:53+00:00\";s:10:\"releasedon\";s:25:\"2022-05-15T03:38:35+00:00\";s:9:\"downloads\";s:6:\"366626\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:4:\"true\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:36:\"9861b09b-7176-455b-a9c1-bb7728924ad8\";s:8:\"supports\";s:3:\"2.0\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99066886-9dc8-4443-85ae-85953c2cc1b9&uuid=d46f7773-8d27-4ba5-807c-12ef43257c72\";s:9:\"signature\";s:12:\"ace-1.9.3-pl\";s:11:\"supports_db\";s:0:\"\";s:16:\"minimum_supports\";s:3:\"2.0\";s:9:\"breaks_at\";s:5:\"100.0\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:36:\"99066886-9dc8-4443-85ae-85953c2cc1b9\";s:7:\"version\";s:36:\"99066886-9dc8-4443-85ae-85953c2cc1b9\";s:8:\"filename\";s:26:\"ace-1.9.3-pl.transport.zip\";s:9:\"downloads\";s:5:\"31991\";s:6:\"lastip\";s:12:\"94.46.148.33\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99066886-9dc8-4443-85ae-85953c2cc1b9&uuid=d46f7773-8d27-4ba5-807c-12ef43257c72\";}s:17:\"package-signature\";s:12:\"ace-1.9.3-pl\";s:10:\"categories\";s:15:\"richtexteditors\";s:4:\"tags\";s:0:\"\";}', 1, 9, 3, 'pl', 0),
('translit-1.0.0-beta', '2024-10-26 12:43:53', '2024-10-26 09:45:08', '2024-10-26 12:45:08', 0, 1, 1, 0, 'translit-1.0.0-beta.transport.zip', NULL, 'a:7:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:453:\"--------------------\nExtension: translit\n--------------------\nVersion: 1.0.0-beta\nReleased: October 20, 2010\nSince: October 20, 2010\nAuthor: Jason Coward <jason@modx.com>\n\nA MODx Revolution Core Extension, the translit package provides a custom transliteration service class. When installed,\nthis is automatically available for the core Friendly URL alias transliteration process for Resources. You can also use\nthe service in your plugins and snippets.\";s:9:\"signature\";s:19:\"translit-1.0.0-beta\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/translit-1.0.0-beta/\";s:14:\"package_action\";i:0;}', 'translit', 'a:38:{s:2:\"id\";s:36:\"99066779-e494-4d6a-b6d9-98937c2b7ed8\";s:7:\"package\";s:36:\"9906672b-1666-4b4d-9324-bfe3ccd1ec0c\";s:12:\"display_name\";s:19:\"translit-1.0.0-beta\";s:4:\"name\";s:8:\"translit\";s:7:\"version\";s:5:\"1.0.0\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:4:\"beta\";s:8:\"vrelease\";s:4:\"beta\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:8:\"opengeek\";s:11:\"description\";s:585:\"<p>A service class that allows custom transliteration tables to be used when auto-creating or sanitizing friendly URL aliases in MODx Revolution. This initial beta release includes three tables that can be specified as the friendly_alias_translit System Setting:</p>\n<p><ol>\n<li>noaccents</li>\n<li>russian</li>\n<li>german</li>\n</ol>\nCustom named transliteration tables can be manually added to the {core_path}components/translit/model/modx/translit/tables/ directory and configured. Additional contributed transliteration tables will be included in future releases of the package.\n</p>\";s:12:\"instructions\";s:37:\"<p>Install via Package Management</p>\";s:9:\"changelog\";s:0:\"\";s:9:\"createdon\";s:25:\"2010-10-20T11:53:35+00:00\";s:9:\"createdby\";s:8:\"opengeek\";s:8:\"editedon\";s:25:\"2023-05-04T19:22:07+00:00\";s:10:\"releasedon\";s:25:\"2010-10-20T11:57:11+00:00\";s:9:\"downloads\";s:6:\"222293\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:4:\"true\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:36:\"9861b09b-7176-455b-a9c1-bb7728924ad8\";s:8:\"supports\";s:3:\"2.0\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99066779-e494-4d6a-b6d9-98937c2b7ed8&uuid=d46f7773-8d27-4ba5-807c-12ef43257c72\";s:9:\"signature\";s:19:\"translit-1.0.0-beta\";s:11:\"supports_db\";s:0:\"\";s:16:\"minimum_supports\";s:3:\"2.0\";s:9:\"breaks_at\";s:5:\"100.0\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:36:\"99066779-e494-4d6a-b6d9-98937c2b7ed8\";s:7:\"version\";s:36:\"99066779-e494-4d6a-b6d9-98937c2b7ed8\";s:8:\"filename\";s:33:\"translit-1.0.0-beta.transport.zip\";s:9:\"downloads\";s:6:\"222438\";s:6:\"lastip\";s:12:\"94.46.148.31\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99066779-e494-4d6a-b6d9-98937c2b7ed8&uuid=d46f7773-8d27-4ba5-807c-12ef43257c72\";}s:17:\"package-signature\";s:19:\"translit-1.0.0-beta\";s:10:\"categories\";s:36:\"internationalization,core-extensions\";s:4:\"tags\";s:15:\"transliteration\";}', 1, 0, 0, 'beta', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2023-03-07 07:16:34', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'admin', '$2y$10$y6KEfD/EsIH7xR.8JfGX4uTAmiOawl1sozOsmp5NrF/2skTazUUSW', '', 'modUser', 1, NULL, NULL, 'hashing.modNative', '3d36f944fc65350ed1e8d68340ef35e4', 1, NULL, 1, 1729886088);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Администратор по умолчанию', 'valeryia.p@mail.ru', '', '', 0, 0, 0, 1, 0, 1729886347, 0, 'k6enfve2kgnmnkrleeepd94p03n8n0k2', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2024-10-25 22:54:47', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Индексы таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Индексы таблицы `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Индексы таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Индексы таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Индексы таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Индексы таблицы `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Индексы таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Индексы таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Индексы таблицы `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Индексы таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Индексы таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Индексы таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Индексы таблицы `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Индексы таблицы `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Индексы таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Индексы таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Индексы таблицы `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Индексы таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Индексы таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Индексы таблицы `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Индексы таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Индексы таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Индексы таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Индексы таблицы `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Индексы таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Индексы таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT для таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT для таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
