-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Server: 127.0.0.1
-- Generation Time: 24-07-2021 at 00:35:28
-- Server Version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spanish_helper`
--

-- --------------------------------------------------------

--
-- Table structure for the table `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `verbId` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `question_start` varchar(255) NOT NULL,
  `question_end` varchar(255) NOT NULL,
  `option1` varchar(120) NOT NULL,
  `option2` varchar(120) NOT NULL,
  `option3` text NOT NULL,
  `option4` varchar(120) NOT NULL,
  `answer_past` varchar(80) NOT NULL,
  `answer_present` varchar(80) NOT NULL,
  `answer_future` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data Inputs for the table `tests`
--

INSERT INTO `tests` (`id`, `verbId`, `type`, `question_start`, `question_end`, `option1`, `option2`, `option3`, `option4`, `answer_past`, `answer_present`, `answer_future`) VALUES
(1, 1, 1, 'Tú', 'en el parque esta mañana', '', '', '', '', 'estabas', 'estás', 'estarás'),
(2, 1, 1, 'Robert', 'en la casa de sus padres', '', '', '', '', 'estaba', 'está', 'estará'),
(3, 1, 1, 'Nosotros', 'en el centro comercial', '', '', '', '', 'estabamos', 'estamos', 'estaremos'),
(4, 1, 1, 'Yo no', 'en México', '', '', '', '', 'estaba', 'estoy', 'estaré'),
(5, 2, 2, 'Maria', 'Todo el dia', 'cantó', 'cantará', 'canta', 'canción', 'cantó', 'canta', 'cantará'),
(6, 2, 2, 'Ustedes', 'Muy Bien', 'cantamos', 'cantarán', 'cantaron', 'cantan', 'cantaron', 'cantan', 'cantarán'),
(7, 2, 2, 'Mi tio ', 'canciones modernas', 'cantan', 'canta', 'cantó', 'cantará', 'cantará', 'canta', 'cantó'),
(8, 2, 2, 'Yo', 'mejor todos los días', 'canto', 'canté', 'cantaré', 'cantará', 'canté', 'canto', 'cantaré'),
(9, 3, 1, 'Nosotros no', 'en la clase', '', '', '', '', 'hablabamos', 'hablamos', 'hablaremos'),
(10, 3, 1, 'Mi hermana', 'todo el día', '', '', '', '', 'habló', 'habla', 'hablará'),
(11, 3, 1, 'Mateo y Henry', 'sobre el concierto', '', '', '', '', 'hablaron', 'hablan', 'hablarán'),
(12, 3, 1, 'Mi padre ', 'de manera peculiar', '', '', '', '', 'habló', 'habla', 'hablará'),
(13, 4, 2, 'Ellos', 'a la casa con rejas negras', 'Llegaban', 'Llegaron', 'Llegan', 'Llegarán', 'Llegaron', 'Llegan', 'Llegarán'),
(14, 4, 2, 'Yo', 'algún dia a la meta', 'Llegamos', 'Llegaré', 'Llegué', 'Llego', 'Llegué', 'Llego', 'Llegaré'),
(15, 4, 2, 'Carlos', 'tarde al teatro', 'Llegó', 'Llegará', 'Llega', 'Llegaba', 'Lleguó', 'Llega', 'Llegará'),
(16, 4, 2, 'Tú', 'a tu destino al amanecer', 'Llegas', 'Llegarás', 'Llegamos', 'Llegaste', 'Llegaste', 'Llegas', 'Llegarás'),
(17, 5, 3, 'a) Nosotros jugaríamos', 'I would play', '', '', '', '', '', 'd', ''),
(18, 5, 3, 'b) Ellos Juegan', 'You Played', '', '', '', '', '', 'c', ''),
(19, 5, 3, 'c) Yo Jugaría', 'They Play', '', '', '', '', '', 'a', ''),
(20, 5, 3, 'd) Tú Jugaste', 'We\'ll play', '', '', '', '', '', 'b', ''),
(21, 6, 3, 'a) Ella Saltó', 'He Jumped', '', '', '', '', '', 'd', ''),
(22, 6, 3, 'b) Ustedes Saltan', 'They will Jump', '', '', '', '', '', 'c', ''),
(23, 6, 3, 'c) Ellos Saltarán', 'You Jump', '', '', '', '', '', 'b', ''),
(24, 6, 3, 'd) El saltó', 'She Jumped', '', '', '', '', '', 'a', ''),
(25, 7, 1, 'Roberto', 'en la plaza esta tarde', '', '', '', '', 'caminó', 'camina', 'caminará'),
(26, 7, 1, 'Mi Tio', 'hasta la otra calle', '', '', '', '', 'caminó', 'camina', 'caminará'),
(27, 7, 1, 'Carlos y Maria', 'de vuelta a casa', '', '', '', '', 'caminaron', 'caminan', 'caminarán'),
(28, 7, 1, 'Vosotros', 'con mucha prisa', '', '', '', '', 'caminasteis', 'camináis', 'caminaréis'),
(29, 8, 2, 'Yo', 'Todas las deudas', 'pagué', 'pago', 'pagaré', 'pagamos', 'pagué', 'pago', 'pagaré'),
(30, 8, 2, 'Ustedes', 'por la cena', 'pagué', 'pagaran', 'pagaron', 'pagan', 'pagaron', 'pagan', 'pagarán'),
(31, 8, 2, 'Mi Amigo y Yo', 'al final del mes', 'pagaremos', 'pagamos', 'pagaron', 'pagan', 'pagamos', 'pagamos', 'pagaremos'),
(32, 8, 2, 'Tú', 'demasiado por ese sofa', 'pagas', 'pagaste', 'pagarás', 'pagan', 'pagaste', 'pagas', 'pagarás'),
(33, 9, 3, 'a) Ustedes Miran', 'Look at the map', '', '', '', '', '', 'c', ''),
(34, 9, 3, 'b) Nosotros Buscaremos', 'They looked ', '', '', '', '', '', 'd', ''),
(35, 9, 3, 'c) Busca en el mapa ', 'We\'ll Look', '', '', '', '', '', 'b', ''),
(36, 9, 3, 'd) Ellos Buscaron', 'You Look', '', '', '', '', '', 'a', ''),
(37, 10, 1, 'El niño', 'por la ventana', '', '', '', '', 'miró', 'mira', 'mirará'),
(38, 10, 1, 'Nosotros', 'el Sol caer', '', '', '', '', 'miramos', 'miramos', 'miraremos'),
(39, 10, 1, 'Yo ', 'más alla de la costa', '', '', '', '', 'miré', 'miro', 'miraré'),
(40, 10, 1, 'Ustedes', 'hacía el otro lado', '', '', '', '', 'miraron', 'miren', 'mirarán'),
(41, 11, 1, 'Yo', 'el más alto de la clase', '', '', '', '', 'fui', 'soy', 'seré'),
(42, 11, 1, 'Ana ', 'la más pequeña de la clase', '', '', '', '', 'fue', 'es', 'será'),
(43, 11, 1, 'Vosotros no', 'de este pueblo', '', '', '', '', 'fuisteis', 'sois', 'seréis'),
(44, 11, 1, 'Ellos', 'el mejor equipo', '', '', '', '', 'fueron', 'son', 'serán'),
(45, 12, 2, 'Tú', 'muchas veces en el día ', 'comerás', 'comes', 'comiste', 'comemos', 'comiste', 'comes', 'comerás'),
(46, 12, 2, 'Nosotros', 'mucha comida italiana', 'comemos', 'comimos', 'comes', 'comeremos', 'comimos', 'comemos', 'comeremos'),
(47, 12, 2, 'Mi hermana', 'muy despacio', 'comemos', 'come', 'comió', 'comerá', 'comió', 'come', 'comerá'),
(48, 12, 2, 'Mi perro no', 'chocolate', 'comemos', 'come', 'comió', 'comerá', 'comió', 'come', 'comerá'),
(49, 13, 3, 'a) Tú harías', 'They did', '', '', '', '', '', 'b', ''),
(50, 13, 3, 'b) Ellos hicieron', 'You would do', '', '', '', '', '', 'a', ''),
(51, 13, 3, 'c) yo hice', 'They will do', '', '', '', '', '', 'd', ''),
(52, 13, 3, 'd) Ellos harán', 'I did', '', '', '', '', '', 'c', ''),
(53, 14, 1, 'Ellos', 'ir al restaurante nuevo', '', '', '', '', 'quisieron', 'quieren', 'querrán'),
(54, 14, 1, 'Carlos', 'un nuevo par de zapatos', '', '', '', '', 'quiso', 'quiere', 'querrá'),
(55, 14, 1, '¿Tú', 'salir esta noche?', '', '', '', '', 'quisiste', 'quieres', 'querrás'),
(56, 14, 1, 'Ella ', 'venir con nosotros', '', '', '', '', 'quiso', 'quiere', 'querrá'),
(57, 15, 3, 'a) Tú puedes', 'We could', '', '', '', '', '', 'c', ''),
(58, 15, 3, 'b) Mi hermana podrá', 'You can', '', '', '', '', '', 'a', ''),
(59, 15, 3, 'c) Podríamos', 'You could', '', '', '', '', '', 'd', ''),
(60, 15, 3, 'd) Tú podrías', 'My sister could', '', '', '', '', '', 'b', ''),
(61, 16, 3, 'a) Nostros corremos', 'We run', '', '', '', '', '', 'a', ''),
(62, 16, 3, 'b) Ella corrió', 'You run', '', '', '', '', '', 'c', ''),
(63, 16, 3, 'c) Tu corres', 'She ran', '', '', '', '', '', 'b', ''),
(64, 16, 3, 'd) Él correrá', 'He will run', '', '', '', '', '', 'd', ''),
(65, 17, 2, 'Ellos', 'la cama de un lado al otro', 'moverán', 'mover', 'mueven', 'movieron', 'movieron', 'mueven', 'moverán'),
(66, 17, 2, 'Mi amigo y yo', 'todos los muebles de la casa', 'mueven', 'movimos', 'moverémos', 'movemos', 'movimos', 'movemos', 'moverémos'),
(67, 17, 2, 'Tú', 'los pies de la mesa', 'moverás', 'mueves', 'moviste', 'movemos', 'moviste', 'mueves', 'moverás'),
(68, 17, 2, 'Ellos', 'el carro a otro lugar', 'mueven', 'mueves', 'moverán', 'movieron', 'movieron', 'mueven', 'moverán'),
(69, 18, 1, 'Yo ', 'en un futuro mejor', '', '', '', '', 'creí', 'creo', 'creeré'),
(70, 18, 1, 'Mis padres', 'en la iglesia católica', '', '', '', '', 'creyeron', 'creen', 'creerán'),
(71, 18, 1, 'Ella', 'que hoy es Lunes', '', '', '', '', 'creyó', 'cree', 'creerá'),
(72, 18, 1, '¿Vosotros', 'en los fantasmas?', '', '', '', '', 'creísteis', 'creéis', 'creeréis'),
(73, 19, 3, 'a) Ellos leen', 'I Will read', '', '', '', '', '', 'c', ''),
(74, 19, 3, 'b) Nosotros leímos', 'We read', '', '', '', '', '', 'b', ''),
(75, 19, 3, 'c) Yo leeré', 'He read', '', '', '', '', '', 'd', ''),
(76, 19, 3, 'd) Él leyó', 'They read', '', '', '', '', '', 'a', ''),
(77, 20, 1, 'Rosa', 'mejor con los lentes puestos', '', '', '', '', 'vio', 've', 'verá'),
(78, 20, 1, 'Ellos', 'un barco a lo lejos', '', '', '', '', 'vieron', 'ven', 'verán'),
(79, 20, 1, 'Yo', 'mejor con la luz del día', '', '', '', '', 'vi', 'veo', 'veré'),
(80, 20, 1, '¿Tú', 'donde puse mi reloj?', '', '', '', '', 'viste', 'ves', 'verás'),
(81, 21, 2, 'Tú', 'toda la noche ', 'durmió', 'dormiste', 'duermes', 'dormirás', 'dormiste', 'duermes', 'dormirás'),
(82, 21, 2, 'El bebé', 'profundamente', 'durmió', 'duerme', 'duermes', 'dormirá', 'durmió', 'duerme', 'dormirá'),
(83, 21, 2, 'Mi hermano y yo', 'toda la tarde', 'dormimos', 'duerme', 'dormiremos', 'dormemos', 'dormimos', 'dormemos', 'dormiremos'),
(84, 21, 2, 'La niña', '8 horas seguidas', 'dormirá', 'duerme', 'durmió', 'dormida', 'durmió', 'duerme', 'dormirá'),
(85, 22, 3, 'a) Yo salí', 'She\'ll go out', '', '', '', '', '', 'c', ''),
(86, 22, 3, 'b) Ustedes saldrán', 'I went out', '', '', '', '', '', 'a', ''),
(87, 22, 3, 'c) Ella salió', 'We went out', '', '', '', '', '', 'd', ''),
(88, 22, 3, 'd) Nosotros salimos', 'You\'ll go out', '', '', '', '', '', 'b', ''),
(89, 23, 1, 'Mi amigo y yo', 'ruidos exraños en el atico', '', '', '', '', 'oímos', 'oímos', 'oiremos'),
(90, 23, 1, '¿Vosotros ', 'lo que dice el profesor?', '', '', '', '', 'oísteis', 'oís', 'oiréis'),
(91, 23, 1, '¿Tú', 'el ruido del motor?', '', '', '', '', 'oíste', 'oyes', 'oirás'),
(92, 23, 1, 'Yo no', 'lo que dijo la señora', '', '', '', '', 'oí', 'oigo', 'oiré'),
(93, 24, 3, 'a) Yo voy', 'We will come', '', '', '', '', '', 'c', ''),
(94, 24, 3, 'b) Ella vendrá', 'They came', '', '', '', '', '', 'd', ''),
(95, 24, 3, 'c) Nosotros vendremos', 'I come', '', '', '', '', '', 'a', ''),
(96, 24, 3, 'd) Ellos vinieron', 'She will come', '', '', '', '', '', 'b', ''),
(97, 25, 2, 'Mis padres', 'que no hable con extraños', 'dijeron', 'dicen', 'dirán', 'digo', 'dijeron', 'dicen', 'dirán'),
(98, 25, 2, 'Pedro', 'que el edificio está en la otra calle', 'dicen', 'dice', 'dirá', 'dijo', 'dijo', 'dice', 'dirá'),
(99, 25, 2, 'Tú', 'otra cosa diferente de lo que pienso', 'dirás', 'dice', 'dijiste', 'dices', 'dijiste', 'dices', 'dirás'),
(100, 25, 2, 'José', 'muchas groserías', 'diremos', 'dice', 'dijo', 'dirá', 'dijo', 'dice', 'dirá'),
(101, 26, 2, 'Ana y Carlos', 'su comida para llevar', 'pedirán', 'pidieron', 'pido', 'piden', 'pidieron', 'piden', 'pedirán'),
(102, 26, 2, 'Lorena ', 'permiso para salir al cine', 'pedirá', 'pidieron', 'pidió', 'pide', 'pidió', 'pide', 'pedirá'),
(103, 26, 2, 'Mis amigos y yo ', 'un combo de peliculas familiar', 'pedimos', 'pediremos', 'pediste', 'piden', 'pedimos', 'pedimos', 'pediremos'),
(104, 26, 2, 'El novato', 'ayuda al profesor', 'pide', 'pidió', 'pediré', 'pedirá', 'pedió', 'pide', 'pedirá'),
(105, 27, 1, 'Los niños', 'mucho del chiste', '', '', '', '', 'rieron', 'ríen', 'reirán'),
(106, 27, 1, 'Me', 'a carcajadas', '', '', '', '', 'reí', 'río', 'reiré'),
(107, 27, 1, 'Nosotros', 'porque es bueno para la salud', '', '', '', '', 'reímos', 'reímos', 'reirémos'),
(108, 27, 1, 'Tú', 'más que nunca', '', '', '', '', 'reíste', 'ríes', 'reirás'),
(109, 28, 3, 'a) Tú prefieres', 'You Prefer', '', '', '', '', '', 'a', ''),
(110, 28, 3, 'b) Ellos preferirán', 'He Prefers', '', '', '', '', '', 'd', ''),
(111, 28, 3, 'c) Él prefirió', 'he preferred', '', '', '', '', '', 'c', ''),
(112, 28, 3, 'd) Él prefiere', 'They\'ll prefer', '', '', '', '', '', 'b', ''),
(113, 29, 2, 'Yo', 'aún con mis padres', 'vivo', 'viví', 'viven', 'viviré', 'viví', 'vivo', 'viviré'),
(114, 29, 2, 'Sandra', 'en la casa más grande del vecindario', 'vivió', 'vivírá', 'vive', 'vives', 'vivió', 'vive', 'vivirá'),
(115, 29, 2, 'Tú', 'en un país extranjero', 'vivió', 'vivirás', 'vivíste', 'vives', 'viviste', 'vives', 'vivirás'),
(116, 29, 2, 'Carlos y Sofia', 'en las afueras de la ciudad', 'vivirán', 'viven', 'vivió', 'vivieron', 'vivieron', 'viven', 'vivirán'),
(117, 30, 1, 'Yo', 'al cine con mis amigos', '', '', '', '', 'fui', 'voy', 'iré'),
(118, 30, 1, 'Mis padres y yo', 'al campo el fin de semana', '', '', '', '', 'fuimos', 'vamos', 'iremos'),
(119, 30, 1, 'Maria', 'a visitar al abuelo', '', '', '', '', 'fue', 'va', 'irá'),
(120, 30, 1, 'Carlos y Roberto', 'de pesca toda la semana', '', '', '', '', 'fueron', 'van', 'irán');

-- --------------------------------------------------------

--
-- Table structure for the table `verbs`
--

CREATE TABLE `verbs` (
  `id` int(11) NOT NULL,
  `verb` varchar(80) NOT NULL,
  `type` varchar(5) NOT NULL,
  `past` text NOT NULL,
  `present` text NOT NULL,
  `future` text NOT NULL,
  `definition` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data inputs for the table `verbs`
--

INSERT INTO `verbs` (`id`, `verb`, `type`, `past`, `present`, `future`, `definition`) VALUES
(1, 'Estar', 'AR', '(yo) estaba,\r\n(tú/vos) estabas,\r\n(él/ella/Ud.) estaba,\r\n(nosotros) estábamos,\r\n(vosotros) estabais,\r\n(ellos/ellas/Uds.) estaban', '(yo) estoy,\r\n(tú/vos) estás,\r\n(él/ella/Ud.) está,\r\n(nosotros) estamos,\r\n(vosotros) estáis,\r\n(ellos/ellas/Uds.) están,', '(yo) estaré,\r\n(tú/vos) estarás,\r\n(él/ella/Ud.) estará,\r\n(nosotros) estaremos,\r\n(vosotros) estaréis,\r\n(ellos/ellas/Uds.) estarán', 'Existir, hallarse una persona o cosa en un lugar, situación, condición'),
(2, 'Cantar', 'AR', '(yo) cantaba,\r\n(tú) cantabas,\r\n(él/ella) cantaba,\r\n(nosotros) cantábamos,\r\n(vosotros) cantabais,\r\n(ellos) cantaban', '(yo) canto,\r\n(tú) cantas,\r\n(él/ella) canta,\r\n(nosotros) cantamos,\r\n(vosotros) cantáis,\r\n(ellos) cantan', '(yo) cantaré,\r\n(tú) cantarás,\r\n(él/ella) cantará,\r\n(nosotros) cantaremos,\r\n(vosotros) cantaréis,\r\n(ellos) cantarán', 'Producir con la voz sonidos melodiosos, formando palabras o sin formarlas.'),
(3, 'Hablar', 'AR', '(yo) hablé,\r\n(tú) hablaste,\r\n(él) habló,\r\n(ns) hablamos,\r\n(vs) hablasteis,\r\n(ellos) hablaron', '(yo) hablo,\r\n(tú) hablas,\r\n(él/ella/Ud.) habla,\r\n(nosotros) hablamos,\r\n(vosotros) habláis,\r\n(ellos/ellas/Uds.) hablan', '(yo) hablaré,\r\n(tú) hablarás,\r\n(él/ella/Ud.) hablará,\r\n(nosotros) hablaremos,\r\n(vosotros) hablaréis,\r\n(ellos/ellas/Uds.) hablarán', ' Comunicarse con otra u otras por medio de palabras'),
(4, 'Llegar', 'AR', '(yo) llegaba,\r\n(tú) llegabas,\r\n(él/ella) llegaba,\r\n(nosotros) llegábamos,\r\n(vosotros) llegabais,\r\n(ellos) llegaban', '(yo) llego,\r\n(tú) llegas,\r\n(él/ella) llega,\r\n(nosotros) llegamos,\r\n(vosotros) llegáis,\r\n(ellos) llegan', '(yo) llegaré,\r\n(tú) llegarás,\r\n(él/ella) llegará,\r\n(nosotros) llegaremos,\r\n(vosotros) llegaréis,\r\n(ellos) llegarán', 'Alcanzar el fin o término de un desplazamiento.'),
(5, 'Jugar', 'AR', '(yo) jugaba,\r\n(tú) jugabas,\r\n(él/ella) jugaba,\r\n(nosotros) jugábamos,\r\n(vosotros) jugabais,\r\n(ellos) jugaban', '(yo) juego,\r\n(tú) juegas,\r\n(él/ella) juega,\r\n(nosotros) jugamos,\r\n(vosotros) jugáis,\r\n(ellos) juegan', '(yo) jugaré,\r\n(tú) jugarás,\r\n(él/ella) jugará,\r\n(nosotros) jugaremos,\r\n(vosotros) jugaréis,\r\n(ellos) jugarán', 'Hacer algo con alegría con el fin de entretenerse, divertirse o desarrollar determinadas capacidades.'),
(6, 'Saltar', 'AR', '(yo) saltaba,\r\n(tú) saltabas,\r\n(él/ella) saltaba,\r\n(nosotros) saltábamos,\r\n(vosotros) saltabais,\r\n(ellos) saltaban', '(yo) salto,\r\n(tú) saltas,\r\n(él/ella) salta,\r\n(nosotros) saltamos,\r\n(vosotros) saltáis,\r\n(ellos) saltan', '(yo) saltaré,\r\n(tú) saltarás,\r\n(él/ella) saltará,\r\n(nosotros) saltaremos,\r\n(vosotros) saltaréis,\r\n(ellos) saltarán', 'Salvar de un salto un espacio o distancia'),
(7, 'Caminar', 'AR', '(yo) caminé,\r\n(tú) caminaste,\r\n(él/ella) caminó,\r\n(nosotros) caminamos,\r\n(vosotros) caminasteis,\r\n(ellos) caminaron', '(yo) camino,\r\n(tú) caminas,\r\n(él/ella) camina,\r\n(nosotros) caminamos,\r\n(vosotros) camináis,\r\n(ellos) caminan', '(yo) caminaré,\r\n(tú) caminarás,\r\n(él/ella) caminará,\r\n(nosotros) caminaremos,\r\n(vosotros) caminaréis,\r\n(ellos) caminarán', 'Ir andando de un lugar a otro'),
(8, 'Pagar', 'AR', '(yo) pagué,\r\n(tú) pagaste,\r\n(él/ella) pagó,\r\n(nosotros) pagamos,\r\n(vosotros) pagasteis,\r\n(ellos) pagaron', '(yo) pago,\r\n(tú) pagas,\r\n(él/ella) paga,\r\n(nosotros) pagamos,\r\n(vosotros) pagáis,\r\n(ellos) pagan', '(yo) pagaré,\r\n(tú) pagarás,\r\n(él/ella pagará,\r\n(nosotros) pagaremos,\r\n(vosotros) pagaréis,\r\n(ellos) pagarán', 'Dar a otra, o satisfacer, lo que le debe.'),
(9, 'Buscar', 'AR', '(yo) busqué,\r\n(tú) buscaste,\r\n(él/ella) buscó,\r\n(nosotros) buscamos,\r\n(vosotros) buscasteis,\r\n(ellos) buscaron', '(yo) busco,\r\n(tú) buscas,\r\n(él/ella) busca,\r\n(nosotros) buscamos,\r\n(vosotros) buscáis,\r\n(ellos) buscan', '(yo) buscaré,\r\n(tú) buscarás,\r\n(él/ella) buscará,\r\n(nosotros) buscaremos,\r\n(vosotros) buscaréis,\r\n(ellos) buscarán', 'Hacer algo para hallar a alguien o algo.'),
(10, 'Mirar', 'AR', '(yo) miré,\r\n(tú) miraste,\r\n(él/ella) miró,\r\n(nosotros) miramos,\r\n(vosotros) mirasteis,\r\n(ellos) miraron', '(yo) miro,\r\n(tú) miras,\r\n(él/ella) mira,\r\n(nosotros) miramos,\r\n(vosotros) miráis,\r\n(ellos) miran', '(yo) miraré,\r\n(tú) mirarás,\r\n(él/ella) mirará,\r\n(nosotros) miraremos,\r\n(vosotros) miraréis,\r\n(ellos) mirarán', 'Dirigir la vista a un objeto.'),
(11, 'Ser', 'ER', '(yo) fui,\r\n(tú) fuiste,\r\n(él/ella) fue,\r\n(nosotros) fuimos,\r\n(vosotros) fuisteis,\r\n(ellos) fueron', '(yo) soy,\r\n(tú) eres,\r\n(él/ella) es,\r\n(nosotros) somos,\r\n(vosotros) sois,\r\n(ellos/ustedes) son', '(yo) seré,\r\n(tú) serás,\r\n(él/ella) será,\r\n(nosotros) seremos,\r\n(vosotros) seréis,\r\n(ellos) serán', 'Haber o existir.'),
(12, 'Comer', 'ER', '(yo) comí,\r\n(tú) comiste,\r\n(él/ella) comió,\r\n(nosotros) comimos,\r\n(vostros) comisteis,\r\n(ellos) comieron', '(yo) como,\r\n(tú) comes,\r\n(él/ella) come,\r\n(nosotros) comemos,\r\n(vosotros) coméis,\r\n(ellos)	comen', '(yo) comeré,\r\n(tú) comerás,\r\n(él/ella) comerá,\r\n(nosotros) comeremos,\r\n(vosotros) comeréis,\r\n(ellos) comerán', 'Masticar y deglutir un alimento sólido.'),
(13, 'Hacer', 'ER', '(yo) hice,\r\n(tú) hiciste,\r\n(él/ella) hizo,\r\n(nosotros) hicimos,\r\n(vostros) hicisteis,\r\n(ellos) hicieron', '(yo) hago,\r\n(tú) haces,\r\n(él/ella) hace,\r\n(nosotros) hacemos,\r\n(vosotros) hacéis,\r\n(ellos) hacen', '(yo) haré,\r\n(tú) harás,\r\n(él/ella) hará,\r\n(nostros) haremos,\r\n(vostros) haréis,\r\n(ellos) harán', 'Ejecutar, poner por obra una acción o trabajo. '),
(14, 'Querer', 'ER', '(yo) quise,\r\n(tú) quisiste,\r\n(él/ella) quiso,\r\n(nostros) quisimos,\r\n(vosotros) quisisteis,\r\n(ellos) quisieron', '(yo) quiero,\r\n(tú) quieres,\r\n(él/ella) quiere,\r\n(nosotros) queremos,\r\n(vostros) queréis,\r\n(ellos) quieren', '(yo) querré,\r\n(tú) querrás,\r\n(él/ella) querrá,\r\n(nosotros) querremos,\r\n(vosotros) querréis,\r\n(ellos) querrán', 'Desear o apetecer.'),
(15, 'Poder', 'ER', '(yo) quise,\r\n(tú) quisiste,\r\n(él/ella) quiso,\r\n(nostros) quisimos,\r\n(vosotros) quisisteis,\r\n(ellos) quisieron', '(yo) puedo,\r\n(tú) puedes,\r\n(él/ella) puede,\r\n(nosotros) podemos,\r\n(vosotros) podéis,\r\n(ellos) pueden', '(yo) podré,\r\n(tú) podrás,\r\n(él/ella) podrá,\r\n(nosotros) podremos,\r\n(vosotros) podréis,\r\n(ellos) podrán', 'Tener expedita la facultad o potencia de hacer algo.'),
(16, 'Correr', 'ER', '(yo) corrí,\r\n(tú) corriste,\r\n(él/ella) corrió,\r\n(nosotros) corrimos,\r\n(vosotros) corristeis,\r\n(ellos) corrieron', '(yo) corro,\r\n(tú) corres,\r\n(él/ella) corre,\r\n(nosotros) corremos,\r\n(vosotros) corréis,\r\n(ellos) corren', '(yo) correré,\r\n(tú) correrás,\r\n(él/ella) correrá,\r\n(nosotros) correremos,\r\n(vosotros) correréis,\r\n(ellos) correrán', 'Andar rápidamente y con tanto impulso que, entre un paso y el siguiente, los pies o las patas quedan por un momento en el aire.'),
(17, 'Mover', 'ER', '(yo) moví,\r\n(tú) moviste,\r\n(él/ella) movió,\r\n(nosotros) movimos,\r\n(vosotros) movisteis,\r\n(ellos) movieron', '(yo) muevo,\r\n(tú) mueves,\r\n(él/ella) mueve,\r\n(nosotros) movemos,\r\n(vosotros) movéis,\r\n(ellos) mueven', '(yo) moveré,\r\n(tú) moverás,\r\n(él/ella) moverá,\r\n(nosotros) moveremos,\r\n(vosotros) moveréis,\r\n(ellos) moverán', 'Hacer que un cuerpo deje el lugar o espacio que ocupa y pase a ocupar otro.'),
(18, 'Creer', 'ER', '(yo) creí,\r\n(tú) creíste,\r\n(él/ella) creyó,\r\n(nosotros) creímos,\r\n(vosotros) creísteis,\r\n(ellos) creyeron', '(yo) creo,\r\n(tú) crees,\r\n(él/ella) cree,\r\n(nosotros) creemos,\r\n(vosotros) creéis,\r\n(ellos) creen', '(yo) creeré,\r\n(tú) creerás,\r\n(él/ella) creerá,\r\n(nosotros) creeremos,\r\n(vosotros) creeréis,\r\n(ellos) creerán', 'Tener algo por cierto sin conocerlo de manera directa o sin que esté comprobado o demostrado.'),
(19, 'Leer', 'ER', '(yo) leí,\r\n(tú) leíste,\r\n(él/ella) leyó,\r\n(nosotros) leímos,\r\n(vosotros) leísteis,\r\n(ellos) leyeron', '(yo) leo,\r\n(tú) lees,\r\n(él/ella) lee,\r\n(nosotros) leemos,\r\n(vosotros) leéis,\r\n(ellos) leen', '(yo) leeré,\r\n(tú) leerás,\r\n(él/ella) leerá,\r\n(nosotros) leeremos,\r\n(vosotros) leeréis,\r\n(ellos) leerán', 'Comprender el sentido de cualquier tipo de representación gráfica.'),
(20, 'Ver', 'ER', '(yo) vi,\r\n(tú) viste,\r\n(él/ella) vio,\r\n(nosotros) vimos,\r\n(vosotros) visteis,\r\n(ellos) vieron', '(yo) veo,\r\n(tú) ves,\r\n(él/ella) ve,\r\n(nosotros) vemos,\r\n(vosotros) veis,\r\n(ellos) ven', '(yo) veré,\r\n(tú) verás,\r\n(él/ella) verá,\r\n(nosotros) veremos,\r\n(vosotros) veréis,\r\n(ellos) verán', 'Percibir con los ojos algo mediante la acción de la luz.'),
(21, 'Dormir', 'IR', '(yo) dormí,\r\n(tú) dormiste,\r\n(él/ella) durmió,\r\n(nosotros) dormimos,\r\n(vosotros) dormisteis,\r\n(ellos) durmieron', '(yo) duermo,\r\n(tú) duermes,\r\n(él/ella) duerme,\r\n(nosotros) dormimos,\r\n(vosotros) dormís,\r\n(ellos) duermen', '(yo) dormiré,\r\n(tú) dormirás,\r\n(él/ella) dormirá,\r\n(nosotros) dormiremos,\r\n(vosotros) dormiréis,\r\n(ellos) dormirán', 'Hallarse en el estado de reposo que consiste en la inacción o suspensión de los sentidos y de todo movimiento voluntario.'),
(22, 'Salir', 'IR', '(yo) salí,\r\n(tú) saliste,\r\n(él/ella) salió,\r\n(nosotros) salimos,\r\n(vosotros) salisteis,\r\n(ellos) salieron', '(yo) salgo,\r\n(tú) sales,\r\n(él/ella) sale,\r\n(nosotros) salimos,\r\n(vosotros) salís,\r\n(ellos) salen', '(yo) saldré,\r\n(tú) saldrás,\r\n(él/ella) saldrá,\r\n(nosotros) saldremos,\r\n(vosotros) saldréis,\r\n(ellos) saldrán', 'Pasar de dentro afuera.'),
(23, 'Oír', 'IR', '(yo) oí,\r\n(tú) oíste,\r\n(él/ella) oyó,\r\n(nosotros) oímos,\r\n(vosotros) oísteis,\r\n(ellos) oyeron', '(yo) oigo,\r\n(tú) oyes,\r\n(él/ella) oye,\r\n(nosotros) oímos,\r\n(vosotros) oís,\r\n(ellos) oyen', '(yo) oiré,\r\n(tú) oirás,\r\n(él/ella) oirá,\r\n(nosotros) oiremos,\r\n(vosotros) oiréis,\r\n(ellos) oirán', 'Percibir con el oído los sonidos.'),
(24, 'Venir', 'IR', '(yo) vine,\r\n(tú) viniste,\r\n(él/ella) vino,\r\n(nosotros) vinimos,\r\n(vosotros) vinisteis,\r\n(ellos) vinieron', '(yo) vengo,\r\n(tú) vienes,\r\n(él/ella) viene,\r\n(nosotros) venimos,\r\n(vosotros) venís,\r\n(ellos) vienen', '(yo) vendré,\r\n(tú) vendrás,\r\n(él/ella) vendrá,\r\n(nosotros) vendremos,\r\n(vosotros) vendréis,\r\n(ellos) vendrán', 'Llegar a donde está quien habla.'),
(25, 'Decir', 'IR', '(yo) dije,\r\n(tú) dijiste,\r\n(él/ella) dijo,\r\n(nosotros) dijimos,\r\n(vosotros) dijisteis,\r\n(ellos) dijeron', '(yo) digo,\r\n(tú) dices,\r\n(él/ella) dice,\r\n(nosotros) decimos,\r\n(vosotros) decís,\r\n(ellos) dicen', '(yo) diré,\r\n(tú) dirás,\r\n(él/ella) dirá,\r\n(nosotros) diremos,\r\n(vosotros) diréis,\r\n(ellos) dirán', 'Manifestar con palabras el pensamiento.'),
(26, 'Pedir', 'IR', '(yo) pedí,\r\n(tú) pediste,\r\n(él/ella) pidió,\r\n(nosotros) pedimos,\r\n(vosotros) pedisteis,\r\n(ellos) pidieron', '(yo) pido,\r\n(tú) pides,\r\n(él/ella) pide,\r\n(nosotros) pedimos,\r\n(vosotros) pedís,\r\n(ellos) piden', '(yo) pediré,\r\n(tú) pedirás,\r\n(él/ella) pedirá,\r\n(nosotros) pediremos,\r\n(vosotros) pediréis,\r\n(ellos) pedirán', 'Expresar a alguien la necesidad o el deseo de algo para que lo satisfaga.'),
(27, 'Reír', 'IR', '(yo) reí,\r\n(tú) reíste,\r\n(él/ella) rió,\r\n(nosotros) reímos,\r\n(vosotros) reísteis,\r\n(ellos) rieron', '(yo) río,\r\n(tú) ríes,\r\n(él/ella) ríe,\r\n(nosotros) reímos,\r\n(vosotros) reís,\r\n(ellos) ríen', '(yo) reiré,\r\n(tú) reirás,\r\n(él/ella) reirá,\r\n(nosotros) reiremos,\r\n(vosotros) reiréis,\r\n(ellos) reirán', 'Celebrar con risa algo.'),
(28, 'Preferir', 'IR', '(yo) preferí,\r\n(tú) preferiste,\r\n(él/ella) prefirió,\r\n(nosotros) preferimos,\r\n(vosotros) preferisteis,\r\n(ellos) prefirieron', '(yo) prefiero,\r\n(tú) prefieres,\r\n(él/ella) prefiere,\r\n(nosotros) preferimos,\r\n(vosotros) preferís,\r\n(ellos) prefieren', '(yo) preferiré,\r\n(tú) preferirás,\r\n(él/ella) preferirá,\r\n(nosotros) preferiremos,\r\n(vosotros) preferiréis,\r\n(ellos) preferirán', 'Dar la preferencia.'),
(29, 'Vivir', 'IR', '(yo) viví,\r\n(tú) viviste,\r\n(él/ella) vivió,\r\n(nosotros) vivimos,\r\n(vosotros) vivisteis,\r\n(ellos) vivieron', '(yo) vivo,\r\n(tú) vives,\r\n(él/ella) vive,\r\n(nosotros) vivimos,\r\n(vosotros) vivís,\r\n(ellos) viven', '(yo) viviré,\r\n(tú) vivirás,\r\n(él/ella) vivirá,\r\n(nosotros) viviremos,\r\n(vosotros) viviréis,\r\n(ellos) vivirán\r\n', 'Durar con vida.'),
(30, 'Ir', 'IR', '(yo) fui,\r\n(tú) fuiste,\r\n(él/ella) fue,\r\n(nosotros) fuimos,\r\n(vosotros) fuisteis,\r\n(ellos) fueron', '(yo) voy,\r\n(tú) vas,\r\n(él/ella) va,\r\n(nosotros) vamos,\r\n(vosotros) vais,\r\n(ellos) van', '(yo) iré,\r\n(tú) irás,\r\n(él/ella) irá,\r\n(nosotros) iremos,\r\n(vosotros) iréis,\r\n(ellos) irán', 'Caminar de acá para allá.');

--
-- Table input indexes
--

--
-- Database indexes for the table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for the table `verbs`
--
ALTER TABLE `verbs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for the table inputs
--

--
-- AUTO_INCREMENT for the table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for the table `verbs`
--
ALTER TABLE `verbs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
