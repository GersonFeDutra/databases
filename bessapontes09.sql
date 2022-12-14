-- phpMyAdmin SQL Dump
-- version 4.3.7
-- http://www.phpmyadmin.net
--
-- Host: mysql04-farm2.uni5.net
-- Tempo de geração: 14/12/2022 às 17:49
-- Versão do servidor: 10.2.36-MariaDB-log
-- Versão do PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `bessapontes09`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `actor_cards`
--

CREATE TABLE IF NOT EXISTS `actor_cards` (
  `actor_id` int(10) unsigned NOT NULL,
  `fko_character_id` int(10) unsigned DEFAULT NULL,
  `fko_support_id` int(10) unsigned DEFAULT NULL,
  `mp` int(2) NOT NULL DEFAULT 0,
  `hp` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `actor_cards`
--

INSERT INTO `actor_cards` (`actor_id`, `fko_character_id`, `fko_support_id`, `mp`, `hp`) VALUES
(1, 1, NULL, 10, 12),
(2, 2, 1, 12, 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cards`
--

CREATE TABLE IF NOT EXISTS `cards` (
  `card_id` int(10) unsigned NOT NULL,
  `fkd_subcard_id` int(10) unsigned DEFAULT NULL,
  `subcard_type` int(10) unsigned DEFAULT NULL,
  `fk_illustration_cover` int(10) unsigned DEFAULT NULL,
  `fk_illustration_frame` int(10) unsigned DEFAULT NULL,
  `fk_illustration_back` int(10) unsigned DEFAULT NULL,
  `groups` text DEFAULT NULL,
  `abilities` text DEFAULT NULL,
  `energy` int(2) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `effect_script` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `cards`
--

INSERT INTO `cards` (`card_id`, `fkd_subcard_id`, `subcard_type`, `fk_illustration_cover`, `fk_illustration_frame`, `fk_illustration_back`, `groups`, `abilities`, `energy`, `name`, `description`, `effect_script`) VALUES
(1, 1, 1, 2, 7, 1, '{ "android": ["blue"], "protagonist": ["megaman"] }', 'A cada projétil disparado e atingido com sucesso o jogador adversário deve escolher uma das opções possíveis: descarte um marcador positivo; descarte um mini; descarte uma arma.\r\n\r\nQuando {name} derrota um adversário, {name} adquire uma de suas habilidades, armas ou itens.', 4, 'X', 'That''s right... It''s begun again... How long must this war go on?', 'var abilities: Dictionary\r\n\r\nfunc _ready() -> void:\r\n    # TODO -> Inserir comportamento das habilidades de X\r\n    set_process(false)\r\n    abilities[""] = {\r\n        "shoot": shoot,\r\n        "kill": kill,\r\n    }\r\n\r\n\r\nfunc shoot() -> void:\r\n    # TODO\r\n    pass\r\n\r\nfunc kill() -> void:\r\n    # TODO\r\n    pass\r\n'),
(2, 2, 1, 1, 8, 2, '{ "android": ["pink"], "protagonist": ["sidekick"] }', 'Ao entrar no campo de batalha, você pode escolher uma carta {type_virus} do adversário, e ela terá todos os seus efeitos anulados até {name} sair do campo. Caso não seja feito, você {name} pode bloquear um ataque vindo de um {type_virus} uma vez por rodada.', 22, 'Alia', 'I''ll try to develop a program resistant to corruption and all viruses. ... Gate and I both longed for this.', 'var abilities: Dictionary\r\n\r\nfunc _ready() -> void:\r\n    # TODO -> Inserir comportamento das habilidades de X\r\n    set_process(false)\r\n    abilities[""] = {\r\n        "share": share,\r\n        "barrier": barrier,\r\n    }\r\n\r\n\r\nfunc share() -> void:\r\n    # TODO\r\n    pass\r\n\r\n\r\nfunc barrier() -> void:\r\n    # TODO\r\n    pass\r\n'),
(3, 1, 2, 4, 9, 1, '{ "building": ["lab", "arena"] }', 'Quando um efeito de {effect_explosion} for ativado, {event_dice_d6}, se {event_dice=5} um evento de {effect_self_destruct} será ativado. Quando ativado, todos as cartas em jogo devem fazer uma {throw_save}.', 4, 'Dr. Thomas Lab', 'The Main Lab where doctor Thomas Light developed all of his protos.', 'var events: Dictionary\r\n\r\nfunc _ready() -> void:\r\n    # TODO -> Inserir comportamento das habilidades de X\r\n    set_process(false)\r\n    events[""] = {\r\n        "science_chaos": science_chaos,\r\n        "self_destruct": self_destruct,\r\n    }\r\n\r\n\r\nfunc science_chaos() -> void:\r\n    # TODO\r\n    pass\r\n\r\n\r\nfunc self_destruct() -> void:\r\n    # TODO\r\n    pass\r\n'),
(4, 1, 4, 5, 10, 1, '{ "resource": ["life"] }', 'Recupera a {life} de um {character_type} em no máximo 2 unidades.', 1, 'Heart Tank', 'Vital life resource.', ''),
(5, 1, 3, 3, 11, 1, NULL, NULL, 7, 'Maverick Virus', 'The {name} Virus is a computer virus that causes {group_reploids} and {group_mechaniloids} to go Maverick.', ''),
(6, 2, 2, 6, 11, 1, '{ "android": ["green"], "armor": ["mega", "bot"] }', NULL, 3, 'Chameleon Sting', '', 'var abilities: Dictionary\r\n\r\nfunc _ready() -> void:\r\n    # TODO -> Inserir comportamento das habilidades de X\r\n    set_process(false)\r\n    abilities[""] = {\r\n        "shoot": shoot,\r\n        "wrap": wrap,\r\n    }\r\n\r\n\r\nfunc shoot() -> void:\r\n    # TODO\r\n    pass\r\n\r\nfunc wrap() -> void:\r\n    # TODO\r\n    pass'),
(7, 3, 2, 4, 11, 1, '{ "building": ["blue", "capsule"], "checkpoint": "full_restore" }', 'Full restore.', 0, 'Light Capsule', 'Dr. Light created several capsules and hid them in different locations, all of them containing a hologram of Dr. Light, which gives a message for {target} and a power-up, usually parts of an armor.', ''),
(8, 0, 1, 1, 1, 1, NULL, NULL, 0, 'TEST', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cards_tokens`
--

CREATE TABLE IF NOT EXISTS `cards_tokens` (
  `card_token_id` int(10) unsigned NOT NULL,
  `card_id` int(10) unsigned NOT NULL,
  `token_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `card_colors`
--

CREATE TABLE IF NOT EXISTS `card_colors` (
  `card_colors_id` int(10) unsigned NOT NULL,
  `fk_card_id` int(10) unsigned NOT NULL,
  `fk_color_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `characters`
--

CREATE TABLE IF NOT EXISTS `characters` (
  `character_id` int(10) unsigned NOT NULL,
  `damage_text` text DEFAULT NULL,
  `damage_value` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `characters`
--

INSERT INTO `characters` (`character_id`, `damage_text`, `damage_value`) VALUES
(1, '{ "fire_bonus": 20, "water_damage": 12, "effect": "# TODO - script vai aqui", "decscription": "Causa dano infalível" }', 10),
(2, '{ "virus_bonus": 18, "electric_bonus": 2, "water_damage": 12, "effect": "# TODO - script vai aqui", "decscription": "barreira anti-vírus" }', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `characters_classes`
--

CREATE TABLE IF NOT EXISTS `characters_classes` (
  `class_id` int(10) unsigned NOT NULL,
  `class` tinytext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `characters_classes`
--

INSERT INTO `characters_classes` (`class_id`, `class`) VALUES
(1, 'mega'),
(2, 'water power'),
(3, 'ice power'),
(4, 'forest power'),
(5, 'dark power'),
(6, 'light power'),
(7, 'electric power'),
(8, 'music power'),
(9, 'iron power'),
(10, 'fire power'),
(11, 'constructor'),
(12, 'scientist'),
(13, 'hero');

-- --------------------------------------------------------

--
-- Estrutura para tabela `character_classes`
--

CREATE TABLE IF NOT EXISTS `character_classes` (
  `character_class_id` int(10) unsigned NOT NULL,
  `fk_character_id` int(10) unsigned NOT NULL,
  `fk_class_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `character_classes`
--

INSERT INTO `character_classes` (`character_class_id`, `fk_character_id`, `fk_class_id`) VALUES
(1, 1, 1),
(2, 1, 13);

-- --------------------------------------------------------

--
-- Estrutura para tabela `charged_cards`
--

CREATE TABLE IF NOT EXISTS `charged_cards` (
  `charged_id` int(10) unsigned NOT NULL,
  `fkd_subcharged_id` int(10) unsigned NOT NULL,
  `fkd_subcharged_type` int(10) unsigned NOT NULL,
  `status` int(9) DEFAULT NULL,
  `damage` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `charged_cards`
--

INSERT INTO `charged_cards` (`charged_id`, `fkd_subcharged_id`, `fkd_subcharged_type`, `status`, `damage`) VALUES
(1, 1, 3, 200, 0),
(2, 1, 2, 100, 1),
(3, 1, 1, 1500, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `color_id` int(10) unsigned NOT NULL,
  `color` tinytext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `colors`
--

INSERT INTO `colors` (`color_id`, `color`) VALUES
(1, 'red'),
(2, 'green'),
(3, 'blue'),
(4, 'yellow'),
(5, 'orange'),
(6, 'red'),
(7, 'purple'),
(8, 'blue'),
(9, 'gray');

-- --------------------------------------------------------

--
-- Estrutura para tabela `decks`
--

CREATE TABLE IF NOT EXISTS `decks` (
  `deck_id` int(10) unsigned NOT NULL,
  `fk_parent_deck_id` int(10) unsigned DEFAULT NULL,
  `name` tinytext NOT NULL,
  `texture_url` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `decks`
--

INSERT INTO `decks` (`deck_id`, `fk_parent_deck_id`, `name`, `texture_url`) VALUES
(1, NULL, 'Mega Man X Starter', 'img/deck/textures/starter/'),
(2, NULL, 'Mega Man X Antagonists', 'img/deck/textures/antagonists/');

-- --------------------------------------------------------

--
-- Estrutura para tabela `deck_cards`
--

CREATE TABLE IF NOT EXISTS `deck_cards` (
  `deck_card_id` int(10) unsigned NOT NULL,
  `fk_deck_id` int(10) unsigned NOT NULL,
  `fk_card_id` int(10) unsigned NOT NULL,
  `fk_player_id` int(10) unsigned NOT NULL,
  `copies` int(3) unsigned NOT NULL DEFAULT 1
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `deck_cards`
--

INSERT INTO `deck_cards` (`deck_card_id`, `fk_deck_id`, `fk_card_id`, `fk_player_id`, `copies`) VALUES
(1, 1, 1, 1, 5),
(2, 1, 2, 1, 5),
(3, 1, 3, 1, 5),
(4, 1, 4, 1, 5),
(5, 1, 5, 1, 5),
(6, 1, 6, 1, 5),
(7, 1, 7, 1, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `duels`
--

CREATE TABLE IF NOT EXISTS `duels` (
  `duel_id` int(10) unsigned NOT NULL,
  `fk_mode` int(10) unsigned NOT NULL DEFAULT 1
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `duels`
--

INSERT INTO `duels` (`duel_id`, `fk_mode`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `duels_opponents`
--

CREATE TABLE IF NOT EXISTS `duels_opponents` (
  `duel_opponent_id` int(10) unsigned NOT NULL,
  `fk_duel_id` int(10) unsigned NOT NULL,
  `fk_player_id` int(10) unsigned NOT NULL,
  `fk_deck_id` int(10) unsigned NOT NULL,
  `fk_state_id` int(10) unsigned NOT NULL,
  `group` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `duel_modes`
--

CREATE TABLE IF NOT EXISTS `duel_modes` (
  `duel_mode_id` int(10) unsigned NOT NULL,
  `mode` varchar(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `duel_modes`
--

INSERT INTO `duel_modes` (`duel_mode_id`, `mode`) VALUES
(1, 'NORMAL'),
(2, 'RANKED'),
(3, 'PVP'),
(4, 'LOCAL'),
(5, 'CUSTOM');

-- --------------------------------------------------------

--
-- Estrutura para tabela `illustrations`
--

CREATE TABLE IF NOT EXISTS `illustrations` (
  `illustration_id` int(10) unsigned NOT NULL,
  `image_url` varchar(2048) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `illustrations`
--

INSERT INTO `illustrations` (`illustration_id`, `image_url`) VALUES
(1, 'img/cards/backs/default.jpg'),
(2, 'img/cards/covers/actor_default.png'),
(3, 'img/cards/covers/virus_default.png'),
(4, 'img/cards/covers/minis_default.png'),
(5, 'img/cards/covers/items_default.png'),
(6, 'img/cards/covers/weapons_default.png'),
(7, 'img/cards/fronts/X.png'),
(8, 'img/cards/fronts/Alia.png'),
(9, 'img/cards/fronts/DoctorThomasLab.png'),
(10, 'img/cards/fronts/HeartTank.png'),
(11, 'img/cards/fronts/placeholder.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `item_id` int(10) unsigned NOT NULL,
  `modifier` text DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `items`
--

INSERT INTO `items` (`item_id`, `modifier`) VALUES
(1, '{ "targets": [ "actor" ], "effects": { "hp_inc": 2 }, "reusable": false }');

-- --------------------------------------------------------

--
-- Estrutura para tabela `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `message_id` int(10) unsigned NOT NULL,
  `fk_session_id` int(10) unsigned NOT NULL,
  `fk_player_id` int(10) unsigned NOT NULL,
  `send_datetime` datetime NOT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `messages`
--

INSERT INTO `messages` (`message_id`, `fk_session_id`, `fk_player_id`, `send_datetime`, `text`) VALUES
(1, 1, 1, '2022-11-30 10:01:24', 'Hello world!'),
(2, 2, 2, '2022-11-30 10:04:01', 'Testeeeeee'),
(3, 1, 1, '2022-11-30 10:06:22', 'Olá! :D'),
(4, 1, 2, '2022-11-30 10:06:31', 'Oia'),
(5, 1, 1, '2022-11-30 10:06:48', 'Funcionou!'),
(6, 1, 2, '2022-11-30 10:07:05', 'yep!'),
(7, 1, 2, '2022-11-30 10:31:11', 'GG!'),
(8, 1, 1, '2022-11-30 10:31:17', 'GG!');

-- --------------------------------------------------------

--
-- Estrutura para tabela `minis`
--

CREATE TABLE IF NOT EXISTS `minis` (
  `mini_id` int(10) unsigned NOT NULL,
  `shield` int(2) NOT NULL,
  `slots` text DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `minis`
--

INSERT INTO `minis` (`mini_id`, `shield`, `slots`) VALUES
(1, 10, 'reload, recharge, recover');

-- --------------------------------------------------------

--
-- Estrutura para tabela `opponent_states`
--

CREATE TABLE IF NOT EXISTS `opponent_states` (
  `opponent_state_id` int(10) unsigned NOT NULL,
  `state` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `opponent_states`
--

INSERT INTO `opponent_states` (`opponent_state_id`, `state`) VALUES
(1, 'WIN'),
(2, 'LOSE'),
(3, 'DRAW');

-- --------------------------------------------------------

--
-- Estrutura para tabela `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `player_id` int(10) unsigned NOT NULL,
  `fk_session` int(10) unsigned NOT NULL,
  `nick` tinytext NOT NULL,
  `password` tinytext NOT NULL,
  `login_datetime` datetime NOT NULL,
  `logup_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `email` tinytext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `players`
--

INSERT INTO `players` (`player_id`, `fk_session`, `nick`, `password`, `login_datetime`, `logup_datetime`, `email`) VALUES
(1, 1, 'linky', 'KfWaPklXtC8iVvo+etUSsvBFkqgzBIZP3NS7TmR9VaY=', '2022-11-30 10:01:33', '2022-11-30 09:45:37', 'gersonfedutra@gmail.com'),
(2, 2, 'idrunk', 'jt6zY5pSttgR8Aaw05PUbsGciiiTSzpus4HjpyoIYNo=', '2022-11-30 10:06:42', '2022-11-30 10:00:15', 'id.roque@outlook.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ranks`
--

CREATE TABLE IF NOT EXISTS `ranks` (
  `rank_id` int(10) unsigned NOT NULL,
  `rank_type` varchar(255) NOT NULL,
  `routine_code` text NOT NULL,
  `rank_description` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ranks_scores`
--

CREATE TABLE IF NOT EXISTS `ranks_scores` (
  `rank_score_id` int(10) unsigned NOT NULL,
  `fk_rank_id` int(10) unsigned NOT NULL,
  `fk_score_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `scenarios`
--

CREATE TABLE IF NOT EXISTS `scenarios` (
  `scenario_id` int(10) unsigned NOT NULL,
  `slot_points` int(2) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `scenarios`
--

INSERT INTO `scenarios` (`scenario_id`, `slot_points`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `score_id` int(10) unsigned NOT NULL,
  `fk_duel_opponent` int(10) unsigned NOT NULL,
  `points` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` int(10) unsigned NOT NULL,
  `session_pass` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `sessions`
--

INSERT INTO `sessions` (`session_id`, `session_pass`) VALUES
(1, 'cRHFlKylCpUNW03UMxGNeXlNm+XKbg3ZWvi4sWi4dCQ='),
(2, '6D27ZOkrQp/6CA3XZS5Te2FI77VVPOCD6smLy3oJ4HI=');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions_logs`
--

CREATE TABLE IF NOT EXISTS `sessions_logs` (
  `log_id` int(10) unsigned NOT NULL,
  `fk_player_id` int(10) unsigned NOT NULL,
  `fk_session_id` int(10) unsigned NOT NULL,
  `login_datetime` datetime NOT NULL,
  `logoff_datetime` datetime DEFAULT NULL,
  `geolocation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `sessions_logs`
--

INSERT INTO `sessions_logs` (`log_id`, `fk_player_id`, `fk_session_id`, `login_datetime`, `logoff_datetime`, `geolocation`) VALUES
(1, 1, 1, '2022-11-30 10:01:33', '2022-11-30 10:35:04', '7°15''23.3"S 39°18''10.4"W'),
(2, 2, 2, '2022-11-30 10:03:42', '2022-11-30 10:05:57', '7°12''19.0"S 39°26''52.6"W'),
(3, 2, 1, '2022-11-30 10:05:57', '2022-11-30 10:33:09', '7°12''19.0"S 39°26''52.6"W');

-- --------------------------------------------------------

--
-- Estrutura para tabela `subcards_types`
--

CREATE TABLE IF NOT EXISTS `subcards_types` (
  `id` int(10) unsigned NOT NULL,
  `type` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `subcards_types`
--

INSERT INTO `subcards_types` (`id`, `type`) VALUES
(1, 'actor_cards'),
(2, 'charged_cards'),
(3, 'virus'),
(4, 'items');

-- --------------------------------------------------------

--
-- Estrutura para tabela `subcharged_types`
--

CREATE TABLE IF NOT EXISTS `subcharged_types` (
  `subcharged_type_id` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `subcharged_types`
--

INSERT INTO `subcharged_types` (`subcharged_type_id`, `type`) VALUES
(1, 'minis'),
(2, 'weapons'),
(3, 'scenarios');

-- --------------------------------------------------------

--
-- Estrutura para tabela `supports`
--

CREATE TABLE IF NOT EXISTS `supports` (
  `support_id` int(10) unsigned NOT NULL,
  `support_kinds` text DEFAULT NULL,
  `skill` text DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `supports`
--

INSERT INTO `supports` (`support_id`, `support_kinds`, `skill`) VALUES
(1, 'protection, anti-virus, barrier, electric, share, energy, hp', '{name} pode recolher energia ou vida, e compartilhar com algum outro {card_char}.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `supports_kinds`
--

CREATE TABLE IF NOT EXISTS `supports_kinds` (
  `kind_id` int(10) unsigned NOT NULL,
  `kind` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `supports_kinds`
--

INSERT INTO `supports_kinds` (`kind_id`, `kind`) VALUES
(1, 'ally'),
(2, 'sidekick'),
(3, 'healer'),
(4, 'tank'),
(5, 'control'),
(6, 'vehicle');

-- --------------------------------------------------------

--
-- Estrutura para tabela `support_kinds`
--

CREATE TABLE IF NOT EXISTS `support_kinds` (
  `support_class_id` int(10) unsigned NOT NULL,
  `fk_support_id` int(10) unsigned NOT NULL,
  `fk_kind_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `support_kinds`
--

INSERT INTO `support_kinds` (`support_class_id`, `fk_support_id`, `fk_kind_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `virus`
--

CREATE TABLE IF NOT EXISTS `virus` (
  `virus_id` int(10) unsigned NOT NULL,
  `virus_effect` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `virus`
--

INSERT INTO `virus` (`virus_id`, `virus_effect`) VALUES
(1, 'transports type:reploids to loc:marevick once');

-- --------------------------------------------------------

--
-- Estrutura para tabela `weapons`
--

CREATE TABLE IF NOT EXISTS `weapons` (
  `weapon_id` int(10) unsigned NOT NULL,
  `utilities` text DEFAULT NULL,
  `is_equipment` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `weapons`
--

INSERT INTO `weapons` (`weapon_id`, `utilities`, `is_equipment`) VALUES
(1, 'When equipped, {user} fires a green shot that splits into three needle-like lasers;\r\nWhen fully charged, {user} mimics Sting Chameleon''s Transparent Movement and becomes temporarily invincible to enemy attacks, flashing rainbow colors.\r\nWhile in effect, {user} cannot change weapons without losing the effect, but he can, however, fire uncharged shots of Chameleon Sting.', 1);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `actor_cards`
--
ALTER TABLE `actor_cards`
  ADD PRIMARY KEY (`actor_id`), ADD KEY `fko_character_id` (`fko_character_id`), ADD KEY `fko_support_id` (`fko_support_id`), ADD KEY `fko_character_id_2` (`fko_character_id`), ADD KEY `fko_support_id_2` (`fko_support_id`), ADD KEY `fko_character_id_3` (`fko_character_id`), ADD KEY `fko_support_id_3` (`fko_support_id`), ADD KEY `fko_character_id_4` (`fko_character_id`), ADD KEY `fko_support_id_4` (`fko_support_id`);

--
-- Índices de tabela `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`card_id`), ADD KEY `fk_illustration_cover` (`fk_illustration_cover`), ADD KEY `fk_illustration_frame` (`fk_illustration_frame`), ADD KEY `fk_illustration_back` (`fk_illustration_back`), ADD KEY `subcard_type` (`subcard_type`);

--
-- Índices de tabela `cards_tokens`
--
ALTER TABLE `cards_tokens`
  ADD PRIMARY KEY (`card_token_id`), ADD KEY `card_id` (`card_id`), ADD KEY `token_id` (`token_id`);

--
-- Índices de tabela `card_colors`
--
ALTER TABLE `card_colors`
  ADD PRIMARY KEY (`card_colors_id`), ADD KEY `fk_card_id` (`fk_card_id`), ADD KEY `fk_color_id` (`fk_color_id`);

--
-- Índices de tabela `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`character_id`);

--
-- Índices de tabela `characters_classes`
--
ALTER TABLE `characters_classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Índices de tabela `character_classes`
--
ALTER TABLE `character_classes`
  ADD PRIMARY KEY (`character_class_id`), ADD KEY `fk_character_id` (`fk_character_id`), ADD KEY `fk_class_id` (`fk_class_id`);

--
-- Índices de tabela `charged_cards`
--
ALTER TABLE `charged_cards`
  ADD PRIMARY KEY (`charged_id`), ADD KEY `fkd_subcharged_type` (`fkd_subcharged_type`), ADD KEY `fkd_subcharged_id` (`fkd_subcharged_id`);

--
-- Índices de tabela `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`color_id`);

--
-- Índices de tabela `decks`
--
ALTER TABLE `decks`
  ADD PRIMARY KEY (`deck_id`), ADD UNIQUE KEY `fk_parent_deck_id` (`fk_parent_deck_id`), ADD UNIQUE KEY `fk_parent_deck_id_2` (`fk_parent_deck_id`);

--
-- Índices de tabela `deck_cards`
--
ALTER TABLE `deck_cards`
  ADD PRIMARY KEY (`deck_card_id`), ADD KEY `fk_deck_id` (`fk_deck_id`), ADD KEY `fk_deck_id_2` (`fk_deck_id`), ADD KEY `fk_deck_id_3` (`fk_deck_id`), ADD KEY `fk_card_id` (`fk_card_id`), ADD KEY `fk_card_id_2` (`fk_card_id`), ADD KEY `fk_player_id` (`fk_player_id`);

--
-- Índices de tabela `duels`
--
ALTER TABLE `duels`
  ADD PRIMARY KEY (`duel_id`), ADD KEY `fk_mode` (`fk_mode`);

--
-- Índices de tabela `duels_opponents`
--
ALTER TABLE `duels_opponents`
  ADD PRIMARY KEY (`duel_opponent_id`), ADD KEY `fk_duel_id` (`fk_duel_id`), ADD KEY `fk_player_id` (`fk_player_id`), ADD KEY `fk_deck_id` (`fk_deck_id`), ADD KEY `fk_opponent_state_id` (`fk_state_id`);

--
-- Índices de tabela `duel_modes`
--
ALTER TABLE `duel_modes`
  ADD PRIMARY KEY (`duel_mode_id`);

--
-- Índices de tabela `illustrations`
--
ALTER TABLE `illustrations`
  ADD PRIMARY KEY (`illustration_id`);

--
-- Índices de tabela `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Índices de tabela `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`), ADD KEY `fk_player_id` (`fk_player_id`), ADD KEY `fk_session_id` (`fk_session_id`);

--
-- Índices de tabela `minis`
--
ALTER TABLE `minis`
  ADD PRIMARY KEY (`mini_id`);

--
-- Índices de tabela `opponent_states`
--
ALTER TABLE `opponent_states`
  ADD PRIMARY KEY (`opponent_state_id`);

--
-- Índices de tabela `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`), ADD UNIQUE KEY `fk_session` (`fk_session`), ADD UNIQUE KEY `nick` (`nick`(255));

--
-- Índices de tabela `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Índices de tabela `ranks_scores`
--
ALTER TABLE `ranks_scores`
  ADD PRIMARY KEY (`rank_score_id`), ADD KEY `fk_rank_id` (`fk_rank_id`), ADD KEY `fk_score_id` (`fk_score_id`);

--
-- Índices de tabela `scenarios`
--
ALTER TABLE `scenarios`
  ADD PRIMARY KEY (`scenario_id`);

--
-- Índices de tabela `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`score_id`), ADD KEY `fk_duel_opponent` (`fk_duel_opponent`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Índices de tabela `sessions_logs`
--
ALTER TABLE `sessions_logs`
  ADD PRIMARY KEY (`log_id`), ADD KEY `fk_player_id_2` (`fk_player_id`), ADD KEY `fk_session_id` (`fk_session_id`);

--
-- Índices de tabela `subcards_types`
--
ALTER TABLE `subcards_types`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `subcharged_types`
--
ALTER TABLE `subcharged_types`
  ADD PRIMARY KEY (`subcharged_type_id`);

--
-- Índices de tabela `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`support_id`);

--
-- Índices de tabela `supports_kinds`
--
ALTER TABLE `supports_kinds`
  ADD PRIMARY KEY (`kind_id`);

--
-- Índices de tabela `support_kinds`
--
ALTER TABLE `support_kinds`
  ADD PRIMARY KEY (`support_class_id`), ADD KEY `fk_support_id` (`fk_support_id`), ADD KEY `fk_class_id` (`fk_kind_id`);

--
-- Índices de tabela `virus`
--
ALTER TABLE `virus`
  ADD PRIMARY KEY (`virus_id`);

--
-- Índices de tabela `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`weapon_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `actor_cards`
--
ALTER TABLE `actor_cards`
  MODIFY `actor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `cards`
--
ALTER TABLE `cards`
  MODIFY `card_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de tabela `cards_tokens`
--
ALTER TABLE `cards_tokens`
  MODIFY `card_token_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `card_colors`
--
ALTER TABLE `card_colors`
  MODIFY `card_colors_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `characters`
--
ALTER TABLE `characters`
  MODIFY `character_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `characters_classes`
--
ALTER TABLE `characters_classes`
  MODIFY `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de tabela `character_classes`
--
ALTER TABLE `character_classes`
  MODIFY `character_class_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `charged_cards`
--
ALTER TABLE `charged_cards`
  MODIFY `charged_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `colors`
--
ALTER TABLE `colors`
  MODIFY `color_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de tabela `decks`
--
ALTER TABLE `decks`
  MODIFY `deck_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `deck_cards`
--
ALTER TABLE `deck_cards`
  MODIFY `deck_card_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `duels`
--
ALTER TABLE `duels`
  MODIFY `duel_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `duels_opponents`
--
ALTER TABLE `duels_opponents`
  MODIFY `duel_opponent_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `duel_modes`
--
ALTER TABLE `duel_modes`
  MODIFY `duel_mode_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `illustrations`
--
ALTER TABLE `illustrations`
  MODIFY `illustration_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de tabela `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `minis`
--
ALTER TABLE `minis`
  MODIFY `mini_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `opponent_states`
--
ALTER TABLE `opponent_states`
  MODIFY `opponent_state_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `ranks`
--
ALTER TABLE `ranks`
  MODIFY `rank_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `ranks_scores`
--
ALTER TABLE `ranks_scores`
  MODIFY `rank_score_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `scenarios`
--
ALTER TABLE `scenarios`
  MODIFY `scenario_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `scores`
--
ALTER TABLE `scores`
  MODIFY `score_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `sessions_logs`
--
ALTER TABLE `sessions_logs`
  MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `subcards_types`
--
ALTER TABLE `subcards_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `subcharged_types`
--
ALTER TABLE `subcharged_types`
  MODIFY `subcharged_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `supports`
--
ALTER TABLE `supports`
  MODIFY `support_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `supports_kinds`
--
ALTER TABLE `supports_kinds`
  MODIFY `kind_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `support_kinds`
--
ALTER TABLE `support_kinds`
  MODIFY `support_class_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `virus`
--
ALTER TABLE `virus`
  MODIFY `virus_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `weapons`
--
ALTER TABLE `weapons`
  MODIFY `weapon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `actor_cards`
--
ALTER TABLE `actor_cards`
ADD CONSTRAINT `actor_cards_ibfk_1` FOREIGN KEY (`fko_character_id`) REFERENCES `characters` (`character_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `actor_cards_ibfk_2` FOREIGN KEY (`fko_support_id`) REFERENCES `supports` (`support_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `cards`
--
ALTER TABLE `cards`
ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`fk_illustration_cover`) REFERENCES `illustrations` (`illustration_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `cards_ibfk_2` FOREIGN KEY (`fk_illustration_frame`) REFERENCES `illustrations` (`illustration_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `cards_ibfk_3` FOREIGN KEY (`fk_illustration_back`) REFERENCES `illustrations` (`illustration_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `cards_ibfk_4` FOREIGN KEY (`subcard_type`) REFERENCES `subcards_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `cards_tokens`
--
ALTER TABLE `cards_tokens`
ADD CONSTRAINT `cards_tokens_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `cards` (`card_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `cards_tokens_ibfk_2` FOREIGN KEY (`token_id`) REFERENCES `cards` (`card_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `card_colors`
--
ALTER TABLE `card_colors`
ADD CONSTRAINT `card_colors_ibfk_1` FOREIGN KEY (`fk_card_id`) REFERENCES `cards` (`card_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `card_colors_ibfk_2` FOREIGN KEY (`fk_color_id`) REFERENCES `colors` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `character_classes`
--
ALTER TABLE `character_classes`
ADD CONSTRAINT `character_classes_ibfk_1` FOREIGN KEY (`fk_character_id`) REFERENCES `characters` (`character_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `character_classes_ibfk_2` FOREIGN KEY (`fk_class_id`) REFERENCES `characters_classes` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `charged_cards`
--
ALTER TABLE `charged_cards`
ADD CONSTRAINT `charged_cards_ibfk_1` FOREIGN KEY (`fkd_subcharged_type`) REFERENCES `subcharged_types` (`subcharged_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `decks`
--
ALTER TABLE `decks`
ADD CONSTRAINT `decks_ibfk_1` FOREIGN KEY (`fk_parent_deck_id`) REFERENCES `decks` (`deck_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `deck_cards`
--
ALTER TABLE `deck_cards`
ADD CONSTRAINT `deck_cards_ibfk_1` FOREIGN KEY (`fk_deck_id`) REFERENCES `decks` (`deck_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `deck_cards_ibfk_2` FOREIGN KEY (`fk_card_id`) REFERENCES `cards` (`card_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `deck_cards_ibfk_3` FOREIGN KEY (`fk_player_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `duels`
--
ALTER TABLE `duels`
ADD CONSTRAINT `duels_ibfk_1` FOREIGN KEY (`fk_mode`) REFERENCES `duel_modes` (`duel_mode_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `duels_opponents`
--
ALTER TABLE `duels_opponents`
ADD CONSTRAINT `duels_opponents_ibfk_1` FOREIGN KEY (`fk_duel_id`) REFERENCES `duels` (`duel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `duels_opponents_ibfk_2` FOREIGN KEY (`fk_player_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `duels_opponents_ibfk_3` FOREIGN KEY (`fk_deck_id`) REFERENCES `decks` (`deck_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `duels_opponents_ibfk_4` FOREIGN KEY (`fk_state_id`) REFERENCES `opponent_states` (`opponent_state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `messages`
--
ALTER TABLE `messages`
ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`fk_player_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`fk_session_id`) REFERENCES `sessions` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `players`
--
ALTER TABLE `players`
ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`fk_session`) REFERENCES `sessions` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `ranks_scores`
--
ALTER TABLE `ranks_scores`
ADD CONSTRAINT `ranks_scores_ibfk_1` FOREIGN KEY (`fk_rank_id`) REFERENCES `ranks` (`rank_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `ranks_scores_ibfk_3` FOREIGN KEY (`fk_score_id`) REFERENCES `scores` (`score_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `scores`
--
ALTER TABLE `scores`
ADD CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`fk_duel_opponent`) REFERENCES `duels_opponents` (`duel_opponent_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `sessions_logs`
--
ALTER TABLE `sessions_logs`
ADD CONSTRAINT `sessions_logs_ibfk_1` FOREIGN KEY (`fk_player_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `sessions_logs_ibfk_2` FOREIGN KEY (`fk_session_id`) REFERENCES `sessions` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `support_kinds`
--
ALTER TABLE `support_kinds`
ADD CONSTRAINT `support_kinds_ibfk_1` FOREIGN KEY (`fk_support_id`) REFERENCES `supports` (`support_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `support_kinds_ibfk_2` FOREIGN KEY (`fk_kind_id`) REFERENCES `supports_kinds` (`kind_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
