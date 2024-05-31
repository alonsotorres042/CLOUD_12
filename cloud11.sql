-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2024 a las 06:10:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cloud11`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarJuego` (IN `p_gameid` INT, IN `p_score` INT, IN `p_modified_by` VARCHAR(255))   BEGIN
    UPDATE Game
    SET score = p_score,
        modified_by = p_modified_by,
        modified_at = CURRENT_TIMESTAMP
    WHERE gameid = p_gameid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarJuego2` (IN `p_gameid` INT, IN `p_score` INT, IN `p_modified_by` VARCHAR(255))   BEGIN
    UPDATE Game2
    SET score = p_score,
        modified_by = p_modified_by,
        modified_at = CURRENT_TIMESTAMP
    WHERE gameid = p_gameid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarJuego3` (IN `p_gameid` INT, IN `p_score` INT, IN `p_modified_by` VARCHAR(255))   BEGIN
    UPDATE Game3
    SET score = p_score,
        modified_by = p_modified_by,
        modified_at = CURRENT_TIMESTAMP
    WHERE gameid = p_gameid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarLogin` (IN `p_id` INT, IN `p_usuario` VARCHAR(255), IN `p_password` VARCHAR(255), IN `p_modified_by` VARCHAR(255))   BEGIN
    UPDATE Login
    SET usuario = p_usuario,
        password = p_password,
        modified_by = p_modified_by,
        modified_at = CURRENT_TIMESTAMP
    WHERE id = p_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddGame` (IN `input_user_id` INT, IN `input_score` INT, IN `input_creator` VARCHAR(255))   BEGIN
    INSERT INTO GameData (user_id, game_score, creator, modifier)
    VALUES (input_user_id, input_score, input_creator, input_creator);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddGame2` (IN `input_user_id` INT, IN `input_score` INT, IN `input_creator` VARCHAR(255))   BEGIN
    INSERT INTO GameData2 (user_id, game_score, creator, modifier)
    VALUES (input_user_id, input_score, input_creator, input_creator);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddGame3` (IN `input_user_id` INT, IN `input_score` INT, IN `input_creator` VARCHAR(255))   BEGIN
    INSERT INTO GameData3 (user_id, game_score, creator, modifier)
    VALUES (input_user_id, input_score, input_creator, input_creator);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddLogin` (IN `input_username` VARCHAR(255), IN `input_password` VARCHAR(255), IN `input_creator` VARCHAR(255))   BEGIN
    INSERT INTO UserLogin (username, user_password, creator, modifier)
    VALUES (input_username, input_password, input_creator, input_creator);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddUser` (IN `input_username` VARCHAR(255), IN `input_password` VARCHAR(255), IN `input_creator` VARCHAR(255))   BEGIN
    INSERT INTO UserLogin (username, user_password, creator, modifier)
    VALUES (input_username, input_password, input_creator, input_creator);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CrearJuego` (IN `p_userid` INT, IN `p_score` INT, IN `p_created_by` VARCHAR(255))   BEGIN
    INSERT INTO Game (userid, score, created_by, modified_by)
    VALUES (p_userid, p_score, p_created_by, p_created_by);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CrearJuego2` (IN `p_userid` INT, IN `p_score` INT, IN `p_created_by` VARCHAR(255))   BEGIN
    INSERT INTO Game2 (userid, score, created_by, modified_by)
    VALUES (p_userid, p_score, p_created_by, p_created_by);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CrearJuego3` (IN `p_userid` INT, IN `p_score` INT, IN `p_created_by` VARCHAR(255))   BEGIN
    INSERT INTO Game3 (userid, score, created_by, modified_by)
    VALUES (p_userid, p_score, p_created_by, p_created_by);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CrearLogin` (IN `p_usuario` VARCHAR(255), IN `p_password` VARCHAR(255), IN `p_created_by` VARCHAR(255))   BEGIN
    INSERT INTO Login (usuario, password, created_by, modified_by)
    VALUES (p_usuario, p_password, p_created_by, p_created_by);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CrearUsuario` (IN `p_usuario` VARCHAR(255), IN `p_password` VARCHAR(255), IN `p_created_by` VARCHAR(255))   BEGIN
    INSERT INTO Login (usuario, password, created_by, modified_by)
    VALUES (p_usuario, p_password, p_created_by, p_created_by);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteGame` (IN `input_game_id` INT)   BEGIN
    DELETE FROM GameData WHERE game_id = input_game_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteGame2` (IN `input_game_id` INT)   BEGIN
    DELETE FROM GameData2 WHERE game_id = input_game_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteGame3` (IN `input_game_id` INT)   BEGIN
    DELETE FROM GameData3 WHERE game_id = input_game_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteLogin` (IN `input_login_id` INT)   BEGIN
    DELETE FROM UserLogin WHERE login_id = input_login_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarJuego` (IN `p_gameid` INT)   BEGIN
    DELETE FROM Game WHERE gameid = p_gameid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarJuego2` (IN `p_gameid` INT)   BEGIN
    DELETE FROM Game2 WHERE gameid = p_gameid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarJuego3` (IN `p_gameid` INT)   BEGIN
    DELETE FROM Game3 WHERE gameid = p_gameid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarLogin` (IN `p_id` INT)   BEGIN
    DELETE FROM Login WHERE id = p_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetGame` (IN `input_game_id` INT)   BEGIN
    SELECT * FROM GameData WHERE game_id = input_game_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetGame2` (IN `input_game_id` INT)   BEGIN
    SELECT * FROM GameData2 WHERE game_id = input_game_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetGame3` (IN `input_game_id` INT)   BEGIN
    SELECT * FROM GameData3 WHERE game_id = input_game_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetLogin` (IN `input_login_id` INT)   BEGIN
    SELECT * FROM UserLogin WHERE login_id = input_login_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `LeerJuego` (IN `p_gameid` INT)   BEGIN
    SELECT * FROM Game WHERE gameid = p_gameid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `LeerJuego2` (IN `p_gameid` INT)   BEGIN
    SELECT * FROM Game2 WHERE gameid = p_gameid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `LeerJuego3` (IN `p_gameid` INT)   BEGIN
    SELECT * FROM Game3 WHERE gameid = p_gameid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `LeerLogin` (IN `p_id` INT)   BEGIN
    SELECT * FROM Login WHERE id = p_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateGame` (IN `input_game_id` INT, IN `input_score` INT, IN `input_modifier` VARCHAR(255))   BEGIN
    UPDATE GameData
    SET game_score = input_score,
        modifier = input_modifier,
        last_modified_time = CURRENT_TIMESTAMP
    WHERE game_id = input_game_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateGame2` (IN `input_game_id` INT, IN `input_score` INT, IN `input_modifier` VARCHAR(255))   BEGIN
    UPDATE GameData2
    SET game_score = input_score,
        modifier = input_modifier,
        last_modified_time = CURRENT_TIMESTAMP
    WHERE game_id = input_game_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateGame3` (IN `input_game_id` INT, IN `input_score` INT, IN `input_modifier` VARCHAR(255))   BEGIN
    UPDATE GameData3
    SET game_score = input_score,
        modifier = input_modifier,
        last_modified_time = CURRENT_TIMESTAMP
    WHERE game_id = input_game_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateLogin` (IN `input_login_id` INT, IN `input_username` VARCHAR(255), IN `input_password` VARCHAR(255), IN `input_modifier` VARCHAR(255))   BEGIN
    UPDATE UserLogin
    SET username = input_username,
        user_password = input_password,
        modifier = input_modifier,
        last_modified_time = CURRENT_TIMESTAMP
    WHERE login_id = input_login_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ValidarLogin` (IN `p_usuario` VARCHAR(255), IN `p_password` VARCHAR(255))   BEGIN
    DECLARE user_count INT;

    SELECT COUNT(*) INTO user_count
    FROM Login
    WHERE usuario = p_usuario AND password = p_password;

    IF user_count = 1 THEN
        SELECT 'Login válido' AS Resultado;
    ELSE
        SELECT 'Login inválido' AS Resultado;
    END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `VerifyLogin` (IN `input_username` VARCHAR(255), IN `input_password` VARCHAR(255))   BEGIN
    DECLARE user_exists INT;

    SELECT COUNT(*) INTO user_exists
    FROM UserLogin
    WHERE username = input_username AND user_password = input_password;

    IF user_exists = 1 THEN
        SELECT 'Login válido' AS Result;
    ELSE
        SELECT 'Login inválido' AS Result;
    END IF;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gamedata`
--

CREATE TABLE `gamedata` (
  `game_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `game_score` int(11) NOT NULL,
  `creation_time` datetime NOT NULL DEFAULT current_timestamp(),
  `creator` varchar(255) NOT NULL,
  `last_modified_time` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gamedata2`
--

CREATE TABLE `gamedata2` (
  `game_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `game_score` int(11) NOT NULL,
  `creation_time` datetime NOT NULL DEFAULT current_timestamp(),
  `creator` varchar(255) NOT NULL,
  `last_modified_time` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gamedata3`
--

CREATE TABLE `gamedata3` (
  `game_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `game_score` int(11) NOT NULL,
  `creation_time` datetime NOT NULL DEFAULT current_timestamp(),
  `creator` varchar(255) NOT NULL,
  `last_modified_time` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `gamescoresview`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `gamescoresview` (
`game_id` int(11)
,`user_id` int(11)
,`game_score` int(11)
,`creation_time` datetime
,`last_modified_time` datetime
,`modifier` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `gamescoresview2`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `gamescoresview2` (
`game_id` int(11)
,`user_id` int(11)
,`game_score` int(11)
,`creation_time` datetime
,`creator` varchar(255)
,`last_modified_time` datetime
,`modifier` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `gamescoresview3`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `gamescoresview3` (
`game_id` int(11)
,`user_id` int(11)
,`game_score` int(11)
,`creation_time` datetime
,`creator` varchar(255)
,`last_modified_time` datetime
,`modifier` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlogin`
--

CREATE TABLE `userlogin` (
  `login_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `creation_time` datetime NOT NULL DEFAULT current_timestamp(),
  `creator` varchar(255) NOT NULL,
  `last_modified_time` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Disparadores `userlogin`
--
DELIMITER $$
CREATE TRIGGER `before_insert_UserLogin` BEFORE INSERT ON `userlogin` FOR EACH ROW BEGIN
    SET NEW.creation_time = CURRENT_TIMESTAMP;
    SET NEW.last_modified_time = CURRENT_TIMESTAMP;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_UserLogin` BEFORE UPDATE ON `userlogin` FOR EACH ROW BEGIN
    SET NEW.last_modified_time = CURRENT_TIMESTAMP;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `userloginview`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `userloginview` (
`login_id` int(11)
,`username` varchar(255)
,`creation_time` datetime
,`creator` varchar(255)
,`last_modified_time` datetime
,`modifier` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistapuntajes2`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistapuntajes2` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistapuntajes3`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistapuntajes3` (
);

-- --------------------------------------------------------

--
-- Estructura para la vista `gamescoresview`
--
DROP TABLE IF EXISTS `gamescoresview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gamescoresview`  AS SELECT `gamedata`.`game_id` AS `game_id`, `gamedata`.`user_id` AS `user_id`, `gamedata`.`game_score` AS `game_score`, `gamedata`.`creation_time` AS `creation_time`, `gamedata`.`creator` AS `creator`, `gamedata`.`last_modified_time` AS `last_modified_time`, `gamedata`.`modifier` AS `modifier` FROM `gamedata` ORDER BY `gamedata`.`game_score` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `gamescoresview2`
--
DROP TABLE IF EXISTS `gamescoresview2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gamescoresview2`  AS SELECT `gamedata2`.`game_id` AS `game_id`, `gamedata2`.`user_id` AS `user_id`, `gamedata2`.`game_score` AS `game_score`, `gamedata2`.`creation_time` AS `creation_time`, `gamedata2`.`creator` AS `creator`, `gamedata2`.`last_modified_time` AS `last_modified_time`, `gamedata2`.`modifier` AS `modifier` FROM `gamedata2` ORDER BY `gamedata2`.`game_score` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `gamescoresview3`
--
DROP TABLE IF EXISTS `gamescoresview3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gamescoresview3`  AS SELECT `gamedata3`.`game_id` AS `game_id`, `gamedata3`.`user_id` AS `user_id`, `gamedata3`.`game_score` AS `game_score`, `gamedata3`.`creation_time` AS `creation_time`, `gamedata3`.`creator` AS `creator`, `gamedata3`.`last_modified_time` AS `last_modified_time`, `gamedata3`.`modifier` AS `modifier` FROM `gamedata3` ORDER BY `gamedata3`.`game_score` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `userloginview`
--
DROP TABLE IF EXISTS `userloginview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `userloginview`  AS SELECT `userlogin`.`login_id` AS `login_id`, `userlogin`.`username` AS `username`, `userlogin`.`creation_time` AS `creation_time`, `userlogin`.`creator` AS `creator`, `userlogin`.`last_modified_time` AS `last_modified_time`, `userlogin`.`modifier` AS `modifier` FROM `userlogin` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistapuntajes2`
--
DROP TABLE IF EXISTS `vistapuntajes2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistapuntajes2`  AS SELECT `game2`.`gameid` AS `gameid`, `game2`.`userid` AS `userid`, `game2`.`score` AS `score`, `game2`.`created_at` AS `created_at`, `game2`.`created_by` AS `created_by`, `game2`.`modified_at` AS `modified_at`, `game2`.`modified_by` AS `modified_by` FROM `game2` ORDER BY `game2`.`score` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistapuntajes3`
--
DROP TABLE IF EXISTS `vistapuntajes3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistapuntajes3`  AS SELECT `game3`.`gameid` AS `gameid`, `game3`.`userid` AS `userid`, `game3`.`score` AS `score`, `game3`.`created_at` AS `created_at`, `game3`.`created_by` AS `created_by`, `game3`.`modified_at` AS `modified_at`, `game3`.`modified_by` AS `modified_by` FROM `game3` ORDER BY `game3`.`score` DESC ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gamedata`
--
ALTER TABLE `gamedata`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `gamedata2`
--
ALTER TABLE `gamedata2`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `gamedata3`
--
ALTER TABLE `gamedata3`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`login_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gamedata`
--
ALTER TABLE `gamedata`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gamedata2`
--
ALTER TABLE `gamedata2`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gamedata3`
--
ALTER TABLE `gamedata3`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `gamedata`
--
ALTER TABLE `gamedata`
  ADD CONSTRAINT `gamedata_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`login_id`);

--
-- Filtros para la tabla `gamedata2`
--
ALTER TABLE `gamedata2`
  ADD CONSTRAINT `gamedata2_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`login_id`);

--
-- Filtros para la tabla `gamedata3`
--
ALTER TABLE `gamedata3`
  ADD CONSTRAINT `gamedata3_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`login_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
