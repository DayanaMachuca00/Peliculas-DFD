-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3500
-- Tiempo de generación: 28-05-2022 a las 02:37:31
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peliculas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denominacion`
--

CREATE TABLE `denominacion` (
  `id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `denominacion`
--

INSERT INTO `denominacion` (`id`, `pelicula_id`, `genero_id`) VALUES
(1, 1, 3),
(2, 1, 6),
(3, 1, 4),
(4, 1, 7),
(5, 1, 5),
(6, 2, 1),
(7, 2, 7),
(8, 2, 9),
(9, 2, 10),
(10, 2, 8),
(11, 3, 3),
(12, 3, 11),
(13, 3, 6),
(14, 3, 4),
(15, 3, 7),
(16, 3, 5),
(17, 4, 11),
(18, 4, 15),
(19, 4, 9),
(20, 5, 1),
(21, 5, 7),
(22, 5, 5),
(23, 5, 8),
(24, 5, 10),
(25, 6, 3),
(26, 6, 4),
(27, 6, 5),
(28, 6, 7),
(29, 6, 14),
(30, 7, 3),
(31, 7, 4),
(32, 7, 6),
(33, 7, 7),
(34, 7, 16),
(35, 8, 3),
(36, 8, 4),
(37, 8, 6),
(38, 8, 7),
(39, 8, 8),
(40, 9, 3),
(41, 9, 5),
(42, 9, 4),
(43, 9, 7),
(44, 9, 8),
(45, 10, 3),
(46, 10, 4),
(47, 10, 7),
(48, 10, 14),
(49, 10, 16),
(50, 11, 1),
(51, 11, 16),
(52, 11, 8),
(53, 11, 12),
(54, 11, 13),
(55, 12, 5),
(56, 12, 2),
(57, 12, 8),
(58, 12, 16),
(59, 13, 1),
(60, 13, 2),
(61, 13, 16),
(62, 14, 12),
(63, 14, 1),
(64, 14, 7),
(65, 14, 8),
(66, 14, 9),
(67, 14, 14),
(68, 15, 13),
(69, 15, 2),
(70, 15, 16),
(71, 16, 1),
(72, 16, 7),
(73, 16, 2),
(74, 16, 13),
(75, 16, 12),
(76, 16, 5),
(77, 17, 2),
(78, 17, 16),
(79, 18, 12),
(80, 18, 13),
(81, 18, 1),
(82, 18, 7),
(83, 18, 10),
(84, 18, 8),
(85, 19, 12),
(86, 19, 13),
(87, 19, 1),
(88, 19, 7),
(89, 19, 5),
(90, 19, 10),
(91, 19, 8),
(92, 20, 5),
(93, 20, 7),
(94, 20, 10),
(95, 20, 5),
(96, 21, 2),
(97, 21, 4),
(98, 21, 7),
(99, 21, 16),
(100, 22, 3),
(101, 22, 4),
(102, 23, 3),
(103, 23, 11),
(104, 24, 5),
(105, 24, 11),
(106, 25, 9),
(107, 25, 16),
(108, 26, 1),
(109, 26, 2),
(110, 26, 5),
(111, 26, 7),
(112, 26, 13),
(113, 26, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'Comedia'),
(2, 'Romance'),
(3, 'Acción'),
(4, 'Ciencia Ficción'),
(5, 'Fantasía'),
(6, 'Superhéroes'),
(7, 'Aventura'),
(8, 'Animación'),
(9, 'Crimen'),
(10, 'Familiar'),
(11, 'Terror'),
(12, 'Infantil'),
(13, 'Musical'),
(14, 'Misterio'),
(15, 'Thriller'),
(16, 'Drama'),
(17, 'Documental');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `pais_doblaje` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`id`, `nombre`, `pais_doblaje`) VALUES
(1, 'Español Latino', 'LatinoAmerica'),
(2, 'Ingles', 'Estados Unidos'),
(3, 'Castellano', 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `duracion` time NOT NULL,
  `sinopsis` text NOT NULL,
  `es_estreno` tinyint(4) NOT NULL,
  `link_caratula` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id`, `nombre`, `fecha_lanzamiento`, `duracion`, `sinopsis`, `es_estreno`, `link_caratula`) VALUES
(1, 'Avengers Infinity War', '2018-04-27', '02:39:00', 'Los superhéroes se alían para vencer al poderoso Thanos, el peor enemigo al que se han enfrentado. Si Thanos logra reunir las seis gemas del infinito: poder, tiempo, alma, realidad, mente y espacio, nadie podrá detenerlo.', 0, 'https://clarovideocdn5.clarovideo.net/PELICULAS/AVENGERSINFINITYWAR/EXPORTACION_WEB/SS/AVENGERSINFINITYWARWVERTICAL.jpg?size=200x300'),
(2, 'Los tipos malos', '2022-03-17', '01:40:00', 'El señor Lobo, el señor Serpiente, el señor Piraña, el señor Tiburón y la señorita Tarántula tienen que fingir que se han convertido en chicos buenos para evitar ir a la cárcel. Conseguirlo se convierte en el mayor reto de sus carreras delictivas.', 1, 'https://image.tmdb.org/t/p/w200/i3R16rGnEytYkJOyao9JOFUuvu8.jpg'),
(3, 'Doctor Strange en el multiverso de la locura', '2022-05-04', '02:06:00', 'La puerta del multiverso, llena de misterio y locura, se abre. Ahora que Iron Man y el Capitán América se han ido después de una feroz batalla de Vengadores: Endgame, se espera que el ex cirujano genio y el mago más fuerte de todos, el Doctor Strange juega un papel activo como una figura central en los Vengadores. Sin embargo, al usar su magia para manipular el tiempo y el espacio a voluntad con un hechizo prohibido que se considera el más peligroso, ha abierto la puerta a una misteriosa locura llamada el multiverso. Para restaurar un mundo donde todo está cambiando, Doctor Strange busca la ayuda de su aliado Wong, el nuevo Hechicero Supremo y la Bruja Escarlata más poderosa de los Vengadores, Wanda. Pero una terrible amenaza se cierne sobre la humanidad y el universo entero, que ya no puede hacerse solo con su poder. Aún más sorprendente, la mayor amenaza en el universo se parece exactamente a Doctor Strange… El director Sam Raimi, quien ha expresado una visión del mundo única, cautivará a todos los espectadores con una escala abrumadora y una experiencia visual sin precedentes que trascenderá el tiempo y el espacio', 1, 'https://image.tmdb.org/t/p/w200/1w3MlLZPqr2Pm5loQ9h2gJwenMr.jpg'),
(4, 'No respires', '2016-03-12', '01:28:00', 'Tres amigos allanan la morada de un ermitaño invidente para dar lo que suponen un golpe fácil solo para descubrir que su vida corre peligro en una aterradora pesadilla desencadenada en No Respires, el segundo largometraje del guionista y director Fede Álvarez (Posesión infernal) y el legendario realizador Sam Raimi. En su tercera cinta, Álvarez apunta a la yugular con un thriller sin complejos, brutal y retorcido, que enfrenta a tres ladrones ante un adversario inesperadamente peligroso. Decidida a escaparse de su madre maltratadora y salvar a su hermana menor de sumirse en una existencia sin futuro como la suya, Rocky (Jane Levy) no tiene límites a la hora de preparar su huida. Junto a sus amigos Alex (Dylan Minnette) y Money (Daniel Zovatto) ha llevado a cabo un par de hurtos minuciosamente planificados para hacerse con el dinero suficiente para marcharse de casa y dejar atrás su Detroit natal. Pero estos robos de poca monta no han rendido muchos frutos y cuando se enteran de que hay un hombre ciego (Stephen Lang) poseedor de una pequeña fortuna viviendo en una casa abandonada, los tres amigos deciden dar su último y más ambicioso golpe.', 0, 'https://www.aragondigital.es/wp-content/uploads/2019/10/no-respires-exh720nmzylc0k5setayfvzovzn-300x300.jpg'),
(5, 'Shrek', '2001-06-29', '01:32:00', 'Érase una vez un ogro verde llamado Shrek que vivía en un pantano muy lejano, feliz con sus baños de barro y su particular concepto de la higiene. Pero un buen día, su preciada soledad se ve interrumpida por la invasión de un grupo de molestos personajes salidos de cuentos clásicos.En la ciénaga aparecen de repente Blancanieves, el lobo feroz, los tres cerditos, el mago Merlín, las hadas de la Bella Durmiente, un Pinocho con la nariz cada vez más larga¿ todos ellos desterrados de su reino por el malvado lord Farquaad.Shrek decide salvar su hogar para conseguir que se vayan de su preciadísimo pantano, llegando a un acuerdo con Farquaad: debe rescatar a la princesa Fiona para que se despose con el bajito, feo y acomplejado Farquaad. En esta misión le acompaña un asno que pretende ser muy gracioso y que es capaz de hacer cualquier cosa para conseguir un amigo fiel, sobre todo si es un ogro verde. Todo menos cerrar la boca.Sólo se quedará sin habla cuando se encuentre delante del terrible dragón que tiene encerrada a la delicada princesa.', 0, 'https://clarovideocdn3.clarovideo.net/PELICULAS/SHREKDWA/EXPORTACION_WEB/SS/SHREKDWAWVERTICAL.jpg?size=200x300'),
(6, 'Godzilla 2 el rey de los monstruos', '2019-05-31', '02:12:00', 'Seguimos las aventuras de unos criptzóologos de una agencia mientras tratan de enfrentarse a unos monstruos entre los que se encuentra el propio Godzilla. Entre todos intentarán frenar a estas ancianas criaturas que harán todo lo posible por sobrevivir, arriesgando toda la vida de los humanos.', 0, ' https://www.aragondigital.es/wp-content/uploads/2019/06/jli7p6iwr7eufktrd8ur11fkixa-300x300.jpg'),
(7, 'Spider-Man Sin camino a casa', '2021-12-15', '02:28:00', 'Tras descubrirse la identidad secreta de Peter Parker como Spider-Man, la vida del joven se vuelve una locura. Peter decide pedirle ayuda al Doctor Extraño para recuperar su vida. Pero algo sale mal y provoca una fractura en el multiverso.', 0, ' https://atozdownloads.co.in/wp-content/uploads/spider-man-no-way-home-multiverse-poster-2.jpg'),
(8, 'Dragon Ball Super Broly', '2019-01-11', '01:40:00', 'Goku y Vegeta encuentran a Broly, un guerrero Saiyajin. Pero, ¿cómo sobrevivió a la destrucción de su planeta y dónde estuvo todo ese tiempo? La situación empeora todavía más cuando Freezer vuelve al mundo de los vivos desde el infierno.', 0, ' https://resizing.flixster.com/IaXbRF4gIPh9jireK_4VCPNfdKc=/200x0/v2/https://flxt.tmsimg.com/assets/p16668837_p_v8_aa.jpg'),
(9, 'Cómo entrenar a tu dragón 3', '2019-05-07', '01:44:00', 'El joven vikingo Hipo parece haber conseguido que dragones y humanos convivan en paz. Sin embargo, su sueño y el de los demás habitantes de la isla de Mema no es compartido por otros vikingos, especialmente por los brutales cazadores de dragones.', 0, ' https://clarovideocdn9.clarovideo.net/HBO/PELICULAS/TTL715558/EXPORTACION_WEB/SS/TTL715558WVERTICAL.jpg?size=200x300'),
(10, 'Jurassic World el reino caído', '2018-06-22', '02:09:00', 'Owen y Claire intentan salvar a los dinosaurios que quedan en la isla ante el peligro de erupción de un volcán. Allí se encuentran nuevas especies de dinosaurios gigantes mientras descubren una conspiración que amenaza la vida del planeta.', 0, ' https://media.kics.com.au/ca6c7d1f-1c94-4a5b-943e-10cf3ab8c352/fId-_tV6OkiuzpprdL2Rkg_medium.jpg'),
(11, 'Historia de una gaviota (y del gato que le enseñó a volar)', '1998-12-23', '01:15:00', 'Kenga, una gaviota envenenada por una mancha de petróleo, consigue justo antes de morir confiar su huevo al gato Zorbas, obteniendo de él tres promesas: no comerse el huevo, cuidar de él hasta que se abra y enseñar a volar al recién nacido. La gaviota huérfana es bautizada con el nombre de Afortunada por toda la comunidad de los gatos, que se ha visto involucrada por Zorbas en la tarea de criar a esta insólita hija. La pequeña Afortunada, deberá aprender a conocerse y comprender que no es un gato antes de poder aprender a volar. Mientras, deberá combatir al lado de sus amigos felinos para impedir la llegada del Gran Ratón que, junto con una horda de ratones, espera en las alcantarillas la ocasión para tomar el poder de la ciudad.', 0, 'https://playmax.xyz/img/c/200/25/1485795707/12007.jpg'),
(12, 'Your Name', '2017-08-04', '01:52:00', 'El joven Taki vive en Tokio: la joven Mitsuha, en un pequeño pueblo en las montañas. Durante el sueño, los cuerpos de ambos se intercambian. Recluidos en un cuerpo que les resulta extraño, comienzan a comunicarse.', 0, 'https://somoskudasai.net/wp-content/uploads/2018/10/filme_258698_Zv3CVxG-683x1024-200x300.jpg'),
(13, 'La propuesta', '2009-06-19', '01:48:00', 'Margaret, interpretado por Sandra Bullock es una poderosa y estricta editora de gran éxito de Nueva York que, por un problema con su visado, de repente se enfrenta a ser deportada a Canadá, su país de origen. Para evitarlo y poder mantener su visa en Estados Unidos, la astuta ejecutiva declara que está comprometida con su joven asistente Andrew (Ryan Reynolds), al que lleva torturando durante años. Andrew acepta participar en la farsa, pero con algunas condiciones. La \"pareja\" se dirige entonces a Alaska a conocer la peculiar familia de él, y la ejecutiva de ciudad, acostumbrada a tener todo bajo control, se encuentra inmersa en situaciones surrealistas que escapan a cualquier lógica conocida. Con planes de boda en camino y un agente de inmigración tras sus pasos, Margaret y Andrew se comprometen a seguir con el plan previsto pese a las consecuencias.', 0, 'https://clarovideocdn9.clarovideo.net/PELICULAS/PROPOSALTHE/EXPORTACION_WEB/SS/PROPOSALTHEWVERTICAL.jpg?size=200x300'),
(14, 'Zootopia', '2016-02-18', '01:48:00', 'Zootopia es una moderna metrópoli donde viven todo tipo de mamíferos. Cerca de la ciudad vive Judy Hopps, una conejita que no se parece en nada a sus 275 hermanos ni a sus padres, los encantadores conejos Bonnie y Stu. Desde niña, Judy ha deseado ayudar a los demás y ahora cree haberlo logrado al ser la primera conejita oficial de la policía de Zootopia. Sin embargo, pronto descubre que trabajar en un cuerpo compuesto de animales duros y enormes no es fácil.', 0, 'https://clarovideocdn3.clarovideo.net/PELICULAS/ZOOTOPIA/EXPORTACION_WEB/SS/ZOOTOPIAWVERTICAL.jpg?size=200x300'),
(15, 'El Gran Showman', '2017-12-20', '01:32:00', 'El gran showman es un musical que celebra el nacimiento del show business y cuenta la historia de P.T. Barnum, un visionario showman y empresario circense que surgió de la nada para crear un espectáculo que se convirtió en una sensación mundial y que fue conocido como \"El mayor espectáculo en la Tierra\".', 0, 'https://clarovideocdn8.clarovideo.net/FOXV3/PELICULAS/FNGMovieP344702zzPH0140181/EXPORTACION_WEB/XX/SS/FNGMovieP344702zzPH0140181WVERTICAL.jpg?size=200x300'),
(16, 'Aladdín', '2019-05-24', '02:08:00', '\"Aladdín\",la adaptación de acción real del clásico animado de Disney de 1992,es la historia del encantador joven callejero Aladdín,la valienteydecidida Princesa Jasmínyel Genio, que puede ser la clave de su futuro.\"Aladdín\"está dirigida por Guy Ritchie,que aporta su singular estilo de rápida acción visceralala ficticia ciudad portuaria de Agrabah.Basada en\"Aladdín\" de Disney.', 0, 'https://clarovideocdn9.clarovideo.net/PELICULAS/ALADDIN2019/EXPORTACION_WEB/SS/ALADDIN2019WVERTICAL.jpg?size=200x300'),
(17, 'Yo antes de ti', '2016-06-03', '01:50:00', 'La joven y peculiar Louisa \'Lou\' Clark (Emilia Clarke) pasa de un empleo a otro para ayudar a mantener a su familia. Su alegre actitud se pone a prueba cuando se convierte en proveedor de cuidados para Will Traynor.', 0, 'https://clarovideocdn9.clarovideo.net/PELICULAS/MEBEFOREYOU/EXPORTACION_WEB/SS/MEBEFOREYOUWVERTICAL.jpg?size=200x300'),
(18, 'Sing 2', '2021-12-22', '01:50:00', 'Buster, el koala, y su elenco deben persuadir a la estrella de rock más solitaria del mundo, Clay, para que se una a ellos. Rosita, Ash, Johnny, Meena y Gunter vuelven en \'Sing 2 ¡Ven y Canta de Nuevo!\', comedia sobre el poder sanador de la música.', 0, 'https://clarovideocdn7.clarovideo.net/PELICULAS/SING2/EXPORTACION_WEB/SS/SING2WVERTICAL.jpg?size=200x300'),
(19, 'Encanto', '2021-11-24', '01:49:00', 'Una joven colombiana puede ser la última esperanza para su familia, cuando descubre que la magia que rodea a Encanto, un lugar encantado que bendice a los niños con dones únicos, se encuentra en serio peligro', 0, 'https://image.tmdb.org/t/p/w200/d0ezQ1Jz0lpNsX1skEmIvqRL7mN.jpg'),
(20, 'Animales Fantásticos: los secretos de dumbledore', '2021-04-14', '02:23:00', 'Ante una severa amenaza, el magizoólogo Newt Scamander lidera a un valiente grupo de magos y brujas que busca detener al malvado Gellert Grindelwald.', 1, 'https://i0.wp.com/cuatrobastardos.com/wp-content/uploads/2022/04/4lsh7Hbg7AS3yON0AtAxJVz92Kr.jpg?resize=200%2C300&ssl=1'),
(21, 'El curioso caso de Benjamin Button', '2008-12-25', '02:40:00', 'El diario de Benjamin relata toda su extraordinaria vida, cuyo aspecto primordial e inusual fue su envejecimiento hacia atrás, al ser diagnosticado con varias enfermedades del envejecimiento al nacer y, por lo tanto, diagnosticado con pocas posibilidades de supervivencia. Sin embargo, Benjamin sobrevive y se vuelve más joven con el tiempo. Abandonado por su padre biológico, Thomas Button (Jason Flemyng), después de que su madre muriera en el parto, Benjamin fue criado por Queenie (Taraji P. Henson), una mujer negra asistente en una casa de ancianos. La abuela de Daisy residía en esa casa, que es donde Daisy por primera vez conoció a Benjamin.', 0, 'https://www.cinemanet.info/images/stories/imagenes_articulos/peliculas/el%20curioso%20caso%20de%20benjamin%20button/el%20curioso%20caso%20de%20benjamin%20button_1.jpg'),
(22, 'Fury Corazones de Hierro', '2014-10-31', '02:14:00', 'La historia está ambientada durante el último mes de la guerra en el teatro europeo durante la Segunda Guerra Mundial, en abril de 1945. Mientras los Aliados llevan a cabo su golpe final en Europa, un aguerrido sargento del ejército de Estados Unidos en la 2ª División Acorazada llamado Don \"Wardaddy\" Collier (Brad Pitt) comanda un tanque Sherman M4A3E8 llamado \"Fury\", y a su tripulación de cinco hombres en una mortal misión tras las líneas enemigas', 0, 'https://kickasssubtitles.com/storage/axjmjg/tt2713180.poster.jpg'),
(23, 'The Human Centipede (First Sequence)', '2009-08-30', '01:32:00', 'Lindsay (Ashley C. Williams) y Jenny (Ashlynn Yennie) son dos turistas estadounidenses que viajan por Europa. Durante su escala en Alemania, una tarde deciden ir a una fiesta. Dirigiéndose allí, su automóvil sufre una avería en un camino solitario en medio de un pantano por lo que deciden caminar para pedir ayuda. En ese momento cae una fuerte lluvia y llegan a una casa ubicada en un claro. Ahí las recibe un sujeto misterioso que les invita a pasar para refugiarse. Sin embargo, les droga y al despertar descubren que están atadas a unas camas en un cuarto equipado a manera de laboratorio.', 0, 'https://image.tmdb.org/t/p/w200/gMtjxIkEi0hnTV5lPHbgeZ4ZpUZ.jpg'),
(24, 'Begotten', '1989-10-30', '01:18:00', 'La historia comienza con Dios, al parecer atado a una silla, que sangra profusamente mientras sufre convulsiones, y que se suicida destripándose. Una mujer, la Madre Tierra, emerge de su cadáver, se cierne sobre él e impregna su vagina con su semen sagrado y brillante como albino, quedando embarazada. Posteriormente aparece errando por una especie de gigantesco páramo, y su estado se manifiesta en un hombre de edad adulta -El Hijo de la Tierra- que tiene violentas convulsiones. Madre Tierra le abandona a su suerte.', 0, 'https://playmax.xyz/img/c/400/47/1486376364/23026.jpg'),
(25, 'Blood in Blood out', '1993-04-30', '03:00:00', 'Tres primos crecen como hermanos en medio de la violencia de las bandas del Este de Los Ángeles. Con el tiempo, sus vidas siguen caminos muy diferentes: Paco trabaja para la brigada antidroga de la policía, Miklo cae en las redes de las brutales bandas de San Quintín y Cruz se deja arrastrar por el sórdido mundo de la drogadicción, pero el sentido del honor y sobre todo los lazos de sangre los mantendrán siempre unidos.', 0, 'https://cdn.shopify.com/s/files/1/0265/2769/4934/products/BLOODINBLOODOUT1_300x300.jpg?v=1629215405'),
(26, 'Un cadáver para sobrevivir', '2016-01-22', '01:37:00', 'Swiss Army Man (Un Cadáver para Sobrevivir en México) es una película del género comedia dramática y humor negro estrenada en junio de 2016, protagonizada por Daniel Radcliffe, Paul Dano y Mary Elizabeth Winstead. Escrita y dirigida por Dan Kwan y Daniel Scheinert. La película no fue estrenada comercialmente pero entre la crítica obtuvo una buena aceptación, elogiando la retorcida actuación de Radcliffe y su carismático y extraño personaje.\r\nAburrido de vivir totalmente aislado en una isla desierta, Hank está dispuesto a acabar con su soledad quitándose la vida. El desesperado hombre pasa una cuerda alrededor de su cuello y, cuando está a punto de ahorcarse, aparece un cuerpo tendido en la orilla que le hace cambiar de opinión. Desafortunadamente, se trata de un flatulento hombre muerto. Utilizando el gaseoso cuerpo de forma ventajosa, Hank consigue llegar de nuevo al continente.', 0, 'https://clarovideocdn1.clarovideo.net/PELICULAS/SWISSARMYMAN/EXPORTACION_WEB/SS/SWISSARMYMANWVERTICAL.jpg?size=200x300');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseña`
--

CREATE TABLE `reseña` (
  `id` int(11) NOT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `comentario` varchar(240) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reseña`
--

INSERT INTO `reseña` (`id`, `calificacion`, `comentario`, `fecha`, `user_id`, `pelicula_id`) VALUES
(1, 10, 'Excelente pelicula, algo larga pero vale cada segundo', '2022-05-25 01:30:56', 6, 1),
(2, 9, 'Yo vi su estreno en el cine, pero volverla a ver desde mi casa es un lujo', '2022-05-25 01:30:56', 7, 1),
(3, 10, 'Obra maestra, me mantuvo al borde de mis sentimientos por todo lo que paso y el final me dejo helado', '2022-05-25 01:30:56', 8, 1),
(4, 7, 'Pues ni tan buena estuvo la pelicula', '2022-05-25 01:30:56', 8, 1),
(5, 10, 'La mejor pelicula del universo cinematografico de marvel', '2022-05-25 01:30:56', 10, 1),
(6, 7, 'Pelicula para niños, con el tipico argumento malo se hace bueno', '2022-05-25 01:30:56', 6, 2),
(7, 8, 'Es zootopia 2', '2022-05-25 01:30:56', 7, 2),
(8, 7, 'Muy regular en genera meh', '2022-05-25 01:30:56', 8, 2),
(9, 8, 'Pelicula entretenida', '2022-05-25 01:30:56', 9, 2),
(10, 7, 'Algo mala la pelicula', '2022-05-25 01:30:56', 10, 2),
(11, 7, 'Muy buena pelicula, no me gusto la manera que se resolvio al final, el tipico \"cree en ti\" yo se que puedes y si pudo XD', '2022-05-25 01:30:56', 6, 3),
(12, 7, 'Odie a America', '2022-05-25 01:30:56', 7, 3),
(13, 8, 'Esperaba que fuera mejor por todo el hype que le dieron', '2022-05-25 01:30:56', 8, 3),
(14, 9, 'Buena pelicula, se nota la dirección de Sam Raimi', '2022-05-25 01:30:56', 9, 3),
(15, 10, 'Muy buena pelicula, es una buena segunda parte, partiendo que la primera tambien fue un 10', '2022-05-25 01:30:56', 10, 3),
(16, 8, 'Buena pelicula aunque el viejito es god', '2022-05-25 01:30:56', 6, 4),
(17, 7, 'Al inicio pense que estaban abusando de un viejito invidente pero al final ojala y hubieran matado al ñor', '2022-05-25 01:30:56', 7, 4),
(18, 7, 'Palomera entretenida para ver en domingo con tu pareja', '2022-05-25 01:30:56', 8, 4),
(19, 6, 'Viejo asqueroso', '2022-05-25 01:30:56', 9, 4),
(20, 7, 'Me imagine la trama diferente', '2022-05-25 01:30:56', 10, 4),
(21, 10, 'Excelente pelicula la he visto mas de 10 veces y mi hijo mas de 100', '2022-05-25 01:30:56', 6, 5),
(22, 10, 'De las mejores peliculas animadas de todos los tiempos', '2022-05-25 01:30:56', 7, 5),
(23, 10, 'Wey mi infancia', '2022-05-25 01:30:56', 8, 5),
(24, 10, '¿Porque estoy solito no hay nadie aqui a mi lado?, como siempre acompañandome en mis madrugadas', '2022-05-25 01:30:56', 9, 5),
(25, 10, 'Quien se imaginaria que ya tiene mas de 20 años esta pelicula y que tuve la oportunidad de verla en el cine', '2022-05-25 01:30:56', 10, 5),
(26, 10, 'carta de amor al cine señores', '2022-05-25 18:18:27', 6, 6),
(27, 10, 'Ame esta peli', '2022-05-25 18:18:27', 7, 6),
(28, 10, 'tremenda obra de arte y god', '2022-05-25 18:18:27', 8, 6),
(29, 7, 'esta buena, pero esperaba algo más', '2022-05-25 18:18:27', 9, 6),
(30, 8, 'ta piola ', '2022-05-25 18:18:27', 10, 6),
(31, 9, 'está muy buena la verdad', '2022-05-25 18:18:27', 6, 7),
(32, 9, 'se izó canon de golpe xd', '2022-05-25 18:18:27', 7, 7),
(33, 10, 'lo que llevamos pidiendo años', '2022-05-25 18:18:27', 8, 7),
(34, 8, 'No es mala pero pudo ser mejor', '2022-05-25 18:18:27', 9, 7),
(35, 7, 'un poco desaprovechada la trama pero esta bien', '2022-05-25 18:18:27', 10, 7),
(36, 9, 'esto fue épico papús', '2022-05-25 18:18:27', 6, 8),
(37, 10, 'Ame esta cosa joderrrr', '2022-05-25 18:18:27', 7, 8),
(38, 9, 'la nostalgia esta al 100', '2022-05-25 18:18:27', 8, 8),
(39, 8, 'le falto para superar la anterior, pero está bien', '2022-05-25 18:18:27', 9, 8),
(40, 7, 'esperaba mas pero no me quejo', '2022-05-25 18:18:27', 10, 8),
(41, 8, 're buena pero si le falto un no se que', '2022-05-25 18:18:27', 6, 9),
(42, 9, 'se prendió esta madre y demasiado', '2022-05-25 18:18:27', 7, 9),
(43, 10, 'mi infancia volvió a mí de la emoción', '2022-05-25 18:18:27', 8, 9),
(44, 9, 'estoy llorando de emoción', '2022-05-25 18:18:27', 9, 9),
(45, 8, 'esa cosa nomas le falto volar xd', '2022-05-25 18:18:27', 10, 9),
(46, 9, 'estoy flipando tío pero si le falta algo', '2022-05-25 18:18:27', 6, 10),
(47, 8, 'aganle un AMV carajo', '2022-05-25 18:18:27', 7, 10),
(48, 7, 'un poco mas de explicación y uff', '2022-05-25 18:18:27', 8, 10),
(49, 10, 'mi nostalgia es mayor a 8000', '2022-05-25 18:18:27', 9, 10),
(50, 7, 'tenia demasiado potencial pero no está mal', '2022-05-25 18:18:27', 10, 10),
(51, 10, 'Excelente, mejor que el resto de páginas', '2022-05-25 18:18:35', 6, 11),
(52, 9, 'Esta padre la peli', '2022-05-25 18:18:35', 7, 11),
(53, 6, 'He visto mejores', '2022-05-25 18:18:35', 8, 11),
(54, 10, 'HERMOSO!!! LA AME TwT', '2022-05-25 18:18:35', 9, 11),
(55, 3, 'Que rayos acabo de ver?', '2022-05-25 18:18:35', 10, 11),
(56, 7, 'La recordaba más entretenida', '2022-05-25 18:18:35', 6, 12),
(57, 8, 'Es bastante entretenida', '2022-05-25 18:18:35', 7, 12),
(58, 8, 'Me agrado el ritmo que tiene', '2022-05-25 18:18:35', 8, 12),
(59, 4, 'Si... Algo lenta para mi gusto', '2022-05-25 18:18:35', 9, 12),
(60, 1, 'De verdad hicieron eso?!!!', '2022-05-25 18:18:35', 10, 12),
(61, 8, 'Buena pelicula, aunque la recordaba mejor', '2022-05-25 18:18:35', 6, 13),
(62, 9, 'Me gusto bastante', '2022-05-25 18:18:35', 7, 13),
(63, 6, 'Creo que debí elegir otra película', '2022-05-25 18:18:35', 8, 13),
(64, 8, 'Es agradable', '2022-05-25 18:18:35', 9, 13),
(65, 7, 'Supongo que para pasar el rato esta bien', '2022-05-25 18:18:35', 10, 13),
(66, 10, 'Ta bien', '2022-05-25 18:18:35', 6, 14),
(67, 10, 'La ame', '2022-05-25 18:18:35', 7, 14),
(68, 2, 'Se traba mucho', '2022-05-25 18:18:35', 8, 14),
(69, 8, 'Bastante buena, no me lo esperaba', '2022-05-25 18:18:35', 9, 14),
(70, 10, '100 porciento recomendada', '2022-05-25 18:18:35', 10, 14),
(71, 9, 'Me gusto mucho, pero no creo que pueda verla en mucho tiempo xd', '2022-05-25 18:18:35', 6, 15),
(72, 9, 'Me encanto su historia', '2022-05-25 18:18:35', 7, 15),
(73, 10, 'OMG, ES MI INFANCIA, AHHHHHHHH!!!!!', '2022-05-25 18:18:35', 8, 15),
(74, 7, 'La recordaba mejor, pero sigue estando bien', '2022-05-25 18:18:35', 9, 15),
(75, 8, 'Me gusto lo suficiente', '2022-05-25 18:18:35', 10, 15),
(76, 5, 'Me obligaron a verla y no me gusto', '2022-05-25 18:18:44', 6, 16),
(77, 10, 'Ame está película', '2022-05-25 18:18:44', 7, 16),
(78, 10, ' Si pudiera le daría más TnT, está calificación no le hace justicia', '2022-05-25 18:18:44', 8, 16),
(79, 4, ' No es mi genero favorito así que no la disfruté', '2022-05-25 18:18:44', 9, 16),
(80, 3, 'La trama no me atrapó completamente', '2022-05-25 18:18:44', 10, 16),
(81, 1, 'No me gusto', '2022-05-25 18:18:44', 6, 17),
(82, 10, 'No hay nada mejor que esta peli', '2022-05-25 18:18:44', 7, 17),
(83, 5, 'Naah esperaba más', '2022-05-25 18:18:44', 8, 17),
(84, 7, 'No es mala pero le falta algo que haga que le de el 10', '2022-05-25 18:18:44', 9, 17),
(85, 10, 'Me enamore de la trama, la vi cuando se estreno en el cine y es increíble poder volver a disfrutarla', '2022-05-25 18:18:44', 10, 17),
(86, 10, 'Los personajes estan muy bien desarrollados, la trama esta genial y dios el final es magnifico', '2022-05-25 18:18:44', 6, 18),
(87, 10, 'Amé esta película', '2022-05-25 18:18:44', 7, 18),
(88, 5, 'No es para tanto', '2022-05-25 18:18:44', 8, 18),
(89, 3, 'No me gusto para nada la esencia de la película', '2022-05-25 18:18:44', 9, 18),
(90, 10, 'Increíble película', '2022-05-25 18:18:44', 10, 8),
(91, 10, 'No es la mejor opción para ver la pero amo demasiado esta película', '2022-05-25 18:18:44', 6, 19),
(92, 10, 'El desarrollo, la evolución, el guion, todo, absolutamente todo es genial; lastima que la calificación mas alta sea 10', '2022-05-25 18:18:44', 7, 19),
(93, 3, 'No me gusto nada', '2022-05-25 18:18:44', 8, 19),
(94, 2, 'Regresen me mi dinero', '2022-05-25 18:18:44', 9, 19),
(95, 0, 'Muy mala', '2022-05-25 18:18:44', 10, 19),
(96, 5, 'La película esta bien pero mi calificación va mas dirigida a la mala calidad del reproductor', '2022-05-25 18:18:44', 6, 20),
(97, 8, 'Esta bien pero la calidad es mala, espero pronto la mejoren', '2022-05-25 18:18:44', 7, 20),
(98, 7, 'Deberían mejorar la calidad', '2022-05-25 18:18:44', 8, 20),
(99, 10, 'Se ve mal pero la pelicula es increible por eso merece un 10', '2022-05-25 18:18:44', 9, 20),
(100, 10, ' La calidad es pésima pero la historia es tan buena que después de un rato ni notas lo malo', '2022-05-25 18:18:44', 10, 20),
(101, 10, 'relata bastante bien la historia, me encanto', '2022-05-25 18:18:58', 6, 21),
(102, 6, 'tiene escenas muy violentas', '2022-05-25 18:18:58', 7, 21),
(103, 8, 'bastante buena', '2022-05-25 18:18:58', 8, 21),
(104, 9, 'los actores son lo mejor', '2022-05-25 18:18:58', 9, 21),
(105, 10, 'Brad Pitt es mi actor favorito', '2022-05-25 18:18:58', 10, 21),
(106, 10, 'es una pelicula fascinante', '2022-05-25 18:18:58', 6, 22),
(107, 7, 'si esta bien pero no tanto', '2022-05-25 18:18:58', 7, 22),
(108, 5, 'ni es creible esa ficcion', '2022-05-25 18:18:58', 8, 22),
(109, 8, 'buena pelicula', '2022-05-25 18:18:58', 9, 22),
(110, 8, 'solo la vi por el actor, me agrado', '2022-05-25 18:18:58', 10, 22),
(111, 1, 'es repugnante que exista una pelicula asi', '2022-05-25 18:18:58', 6, 23),
(112, 4, 'porque hicieron esto!!', '2022-05-25 18:18:58', 7, 23),
(113, 7, 'meh, he visto mas fuertes', '2022-05-25 18:18:58', 8, 23),
(114, 10, 'estoy fascinado con esta pelicula, mi fav', '2022-05-25 18:18:58', 9, 23),
(115, 8, 'me la recomendaron y bueno no esta tan mal', '2022-05-25 18:18:58', 10, 23),
(116, 7, 'me confundio bastante la pelicula', '2022-05-25 18:18:58', 6, 24),
(117, 6, 'que acabo de ver es muy turbio', '2022-05-25 18:18:58', 7, 24),
(118, 7, 'si me llamo la atencion pero no es lo que esperaba', '2022-05-25 18:18:58', 8, 24),
(119, 4, 'he visto mejores peliculas', '2022-05-25 18:18:58', 9, 24),
(120, 5, 'que clase de cine habia antes', '2022-05-25 18:18:58', 10, 24),
(121, 10, 'encantado con esta peli, arriba los Vatos Locos', '2022-05-25 18:18:58', 6, 25),
(122, 8, 'esta bien pero dura bastante tiempo', '2022-05-25 18:18:58', 7, 25),
(123, 9, 'la vi en redes sociales y quise verla completa y esta muy genial', '2022-05-25 18:18:58', 8, 25),
(124, 9, 'me parece bastante buena pero le falto mas accion', '2022-05-25 18:18:58', 9, 25),
(125, 10, 'de las mejores peliculas', '2022-05-25 18:18:58', 10, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traducciones`
--

CREATE TABLE `traducciones` (
  `id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `idioma_id` int(11) NOT NULL,
  `link_pelicula` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `traducciones`
--

INSERT INTO `traducciones` (`id`, `pelicula_id`, `idioma_id`, `link_pelicula`) VALUES
(6, 1, 1, 'https://www.youtube.com/embed/3xk11d9hjp0'),
(7, 2, 1, 'https://www.youtube.com/embed/TsDznqvHVPE'),
(8, 3, 1, 'https://www.youtube.com/embed/KREBGtEeW9U'),
(9, 4, 1, 'https://www.youtube.com/embed/PIolrkip5yE'),
(10, 5, 1, 'https://www.youtube.com/embed/3UlVZ9JzTlo'),
(11, 6, 3, ' https://www.youtube.com/embed/yKhiEJvrb0c '),
(12, 7, 1, ' https://www.youtube.com/embed/8nNa5A_MRBU '),
(13, 8, 1, ' https://www.youtube.com/embed/dl3w10VVQj8 '),
(14, 9, 1, ' https://www.youtube.com/embed/3irrb13bOq0 '),
(15, 10, 1, ' https://www.youtube.com/embed/iPmqy3SLUuM '),
(16, 11, 3, 'https://www.youtube.com/embed/vl60ggCL1KA'),
(17, 12, 1, 'https://www.youtube.com/embed/N0nvoAv5q8M'),
(18, 13, 2, 'https://www.youtube.com/embed/h5stgCOyolg'),
(19, 14, 1, 'https://www.youtube.com/embed/xmwGekxPjwg'),
(20, 15, 1, 'https://www.youtube.com/embed/bjKA55NV0qs'),
(21, 16, 2, 'https://www.youtube.com/embed/d20loRmxeW0'),
(22, 17, 2, 'https://www.youtube.com/embed/FRrc2X4Uzm4'),
(23, 18, 1, 'https://www.youtube.com/embed/wXG6eKFvwdU'),
(24, 19, 1, 'https://www.youtube.com/embed/4wmnq95hj70'),
(25, 20, 2, 'https://www.youtube.com/embed/QfYgcLuxS5Y'),
(26, 21, 3, 'https://www.youtube.com/embed/VQSOwUNtTtk'),
(27, 22, 3, 'https://www.youtube.com/embed/yftjMJVN4dE'),
(28, 23, 2, 'https://www.youtube.com/embed/glfBurdSUS8'),
(29, 24, 2, 'https://www.youtube.com/embed/4tU39EP7k2k'),
(30, 25, 2, 'https://www.youtube.com/embed/NMj89zgI8Yc'),
(31, 26, 2, 'https://www.youtube.com/embed/_W7MVVSKMXI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(45) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `rol` varchar(20) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `fullname`, `username`, `email`, `password`, `create_at`, `rol`) VALUES
(1, 'David Axel Escamilla Mendoza', 'spencerleroy', 'david.escamilla.escamilla@gmail.com', '1234', '2022-05-24 19:15:11', 'admin'),
(2, 'Luis Antonio Nájera Flores', 'antonionajera', 'luis.najera.flores@gmail.com', '1234', '2022-05-24 19:15:11', 'admin'),
(3, 'Johann Brandon Flores Vega', 'johannflores', 'johann.flores.vega@gmail.com', '1234', '2022-05-24 19:15:11', 'admin'),
(4, 'Dayana Machuca Hernandez', 'dayanamachuca', 'dayana.machuca.hernandez@gmail.com', '1234', '2022-05-24 19:15:11', 'admin'),
(5, 'Roman Rodriguez Solorzano', 'romanrodriguez', 'roman.rodriguez.solorzano@gmail.com', '1234', '2022-05-24 19:15:11', 'admin'),
(6, 'Santiago de Jesus Machuca Hernandez', 'santigomachuca', 'santiago.machuca.hernandez@gmail.com', '1234', '2022-05-24 19:24:23', 'user'),
(7, 'Karen Itzel Escamilla Mendoza', 'karenescamilla', 'karen.itzel.escamilla@gmail.com', '1234', '2022-05-24 19:24:23', 'user'),
(8, 'Luis Machuca Gimenez', 'luisgimenez', 'luis.machuca.gimenez', '1234', '2022-05-24 19:24:23', 'user'),
(9, 'Carlos Eduardo Segura Hernandez', 'eduardosegura', 'carlos.segura.hernandez', '1234', '2022-05-24 19:24:23', 'user'),
(10, 'Leonardo Aguilar Areyano', 'leoaguilar', 'leo.aguilar.areyano@gmail.com', '1234', '2022-05-24 19:24:23', 'user'),
(11, 'Ulises Rodriguez Solorzano', 'ulises', 'ulises.rodriguez.solorzano@gmail.com', '1234', '2022-05-27 04:42:32', 'user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wallpapers`
--

CREATE TABLE `wallpapers` (
  `id` int(11) NOT NULL,
  `link` text DEFAULT NULL,
  `pelicula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wallpapers`
--

INSERT INTO `wallpapers` (`id`, `link`, `pelicula_id`) VALUES
(1, 'https://cde.laprensa.e3.pe/ima/0/0/2/2/0/220670.jpg', 6),
(2, 'https://4.bp.blogspot.com/-BFaoev6esGM/XMoIxfXIssI/AAAAAAAACI0/xziBl5uEamgzyTZJTJQzPQlu9tmFDkbyACKgBGAs/w1280-h720-c/godzilla-king-of-the-monsters-uhdpaper.com-8K-12.jpg', 6),
(3, 'https://images.mubicdn.net/images/film/252039/cache-634454-1643655668/image-w1280.jpg', 7),
(4, 'https://viniloblog.com/wp-content/uploads/2022/01/spider-man-no-way-home-formato-digital-marzo-20222.jpg', 7),
(5, 'https://i.pinimg.com/originals/3e/85/7e/3e857eee8754d6b75b344826c6e83d63.jpg', 8),
(6, 'https://i.blogs.es/101e34/gogeta/1366_2000.jpg', 8),
(7, 'https://i.blogs.es/c8e7d3/dragon-3-cartel/1366_2000.jpg', 9),
(8, 'https://abcnoticias.mx/u/fotografias/m/2019/2/1/f1280x720-85344_217019_5050.jpg', 9),
(9, 'https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2018/06/dinosaurios.png?resize=1280%2C720&quality=80&ssl=1', 10),
(10, 'https://cutewallpaper.org/21/jurassic-world-fallen-kingdom-wallpapers/Wallpaper-Jurassic-World-Fallen-Kingdom-K-Movies.jpg', 10),
(11, 'https://es.web.img3.acsta.net/r_1280_720/pictures/21/11/04/14/47/2850392.jpg', 11),
(12, 'https://es.web.img3.acsta.net/r_1280_720/pictures/21/11/04/14/47/2864432.png', 11),
(13, 'https://www.quever.news/u/fotografias/m/2022/4/9/f1280x720-27259_158934_4753.png', 12),
(14, 'https://atmosferacine.files.wordpress.com/2017/04/kimi-no-na-wa-your-name.jpg', 12),
(15, 'https://www.parati.com.ar/wp-content/uploads/2021/12/La_propuesta-642733986-large-1280x720.jpg', 13),
(16, 'https://image.tmdb.org/t/p/original/3Bds1eICV6YYeBZSmbu0McZFLdK.jpg', 13),
(17, 'https://mx.web.img3.acsta.net/r_1280_720/newsv7/19/08/29/23/20/1380333.jpg', 14),
(18, 'https://i.ytimg.com/vi/PDVp0_HO3ag/maxresdefault.jpg', 14),
(19, 'https://www.bolsamania.com/cine/wp-content/uploads/2018/06/1-3.jpg', 15),
(20, 'https://fotografias.flooxernow.com/clipping/cmsimages01/2018/01/03/8E424339-78EC-4667-AA8D-69C4F852D56F/69.jpg?crop=2990,1682,x0,y0&width=1280&height=720&optimize=high&format=webply', 15),
(21, 'https://wallpaperaccess.com/full/1160863.jpg', 16),
(22, 'https://i.pinimg.com/originals/ed/3f/33/ed3f33f8f71394afa07faf862bb1567c.jpg', 16),
(23, 'https://i.blogs.es/9dff4b/mebeforeyouf1/1366_2000.jpg', 17),
(24, 'https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABcnbiI6SRB-c_mSfwzO5Jus0vIpOXXnSqmQ0Dus3MvsE2aqzo2q0ETjulvJs2kLhvVyTi2qnXoIfKMLMNF6G3whXOqfXdzp0Jcn-.jpg?r=fb0', 17),
(25, 'https://i.ytimg.com/vi/ObipT5QXFRI/maxresdefault.jpg', 18),
(26, 'https://www.otakulegion.com/wp-content/uploads/2021/11/maxresdefault-2-2.jpg', 18),
(27, 'https://media.cntraveler.com/photos/619bc7c34f0a81d5659ee192/16:9/w_1280,c_limit/Disney\'s%20Encanto_ENCANTO-PRINT-USE___CASA_Ian12_FLAT_cmyk.jpg', 19),
(28, 'https://b-static.besthdwallpaper.com/encanto-madrigal-family-momento-feliz-papel-pintado-1280x720-88155_45.jpg', 19),
(29, 'https://static.wikia.nocookie.net/015ddf43-677a-4d0a-9c11-f1d9893ecd16', 20),
(30, 'https://see.news/wp-content/uploads/2021/09/fantastic-beasts-3-easter-weekend-1.jpg', 20),
(31, 'https://images.mubicdn.net/images/film/1584/cache-50342-1486940489/image-w1280.jpg', 21),
(32, 'https://hbomax-images.warnermediacdn.com/images/GYHoIpAVHfVWknAEAAADY/tileburnedin?size=1280x720&partner=hbomaxcom&v=d0433a0e80c903df6d19715b443cc57a&language=en-us&host=art-gallery.api.hbo.com&w=Infinity', 21),
(33, 'https://image.tmdb.org/t/p/w1280/3McjdQXhSZGTQ3CaPe8nWJ1lyK8.jpg', 22),
(34, 'https://es.web.img3.acsta.net/r_1280_720/pictures/210/504/21050426_20131017115011437.jpg', 22),
(35, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Still8_Human_Centipede.jpg/1280px-Still8_Human_Centipede.jpg', 23),
(36, 'https://occ-0-2954-2568.1.nflxso.net/dnm/api/v6/0DW6CdE4gYtYx8iy3aj8gs9WtXE/AAAABcs6OQ-ddLBkyyviftiO5bmU4ubK0-e7OKkc2r0-59SmYbKyZpuNefUuix3NIaJ-DDxPvF1IbgmC8YZsj3TShDof448VzXrfQQ.jpg?r=476', 23),
(37, 'https://image.tmdb.org/t/p/original/fKj5F5U26FVKx6Q3Wyd1XxVpu3r.jpg', 24),
(38, 'https://i.ytimg.com/vi/nXHbIrw2doA/maxresdefault.jpg', 24),
(39, 'https://image.tmdb.org/t/p/original/g97UrR3sQX4c5ZnkHSu7C1jXuSY.jpg', 25),
(40, 'https://cdn.playpilot.tech/d8d5b0aa40eb11eb919f0694698060cf/src/img?optimizer=image&quality=75&width=1280&aspect_ratio=16%3A9', 25),
(41, 'https://cdn.forbes.com.mx/2018/04/avengers-3-full-e1526944008918.jpg', 1),
(42, 'https://www.bolsamania.com/cine/wp-content/uploads/2018/09/29.jpg', 1),
(43, 'https://cartelera.elpais.com/assets/uploads/2022/03/18030136/F_24313.jpg', 2),
(44, 'https://images.reporteindigo.com/wp-content/uploads/2022/03/tipos-4.jpg', 2),
(45, 'https://i.blogs.es/1ae92a/doctor-strange-en-el-multiverso-de-la-locura-poster/1366_2000.jpeg', 3),
(46, 'https://sm.ign.com/t/ign_latam/news/d/doctor-str/doctor-strange-in-the-multiverse-of-madness-clip-reveals-its_zgfa.1280.jpg', 3),
(47, 'https://www.puroshow.com/u/fotografias/m/2021/8/15/f1280x720-24452_156127_5734.jpg', 4),
(48, 'https://es.web.img3.acsta.net/newsv7/21/09/20/17/17/3312297.jpg', 4),
(49, 'https://cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/ARRDEQXXYJENFESFRCIJM5USLY.jpg', 5),
(50, 'https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABX5oX6Rdk0rdkKOeMM7L0J2n0pYuQqJHafx1u9f7uz02SZTdquyPvZZT55PS3hE8d_DePTBf4E3M4n1dIA7vzKmfJHR-rqaCW-CH.jpg?r=a3c', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `denominacion`
--
ALTER TABLE `denominacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_denominacion_pelicula1_idx` (`pelicula_id`),
  ADD KEY `fk_denominacion_genero1_idx` (`genero_id`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_favoritas_user_idx` (`user_id`),
  ADD KEY `fk_favoritas_pelicula1_idx` (`pelicula_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `pelicula` ADD FULLTEXT KEY `nombre` (`nombre`,`sinopsis`);

--
-- Indices de la tabla `reseña`
--
ALTER TABLE `reseña`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reseña_user1_idx` (`user_id`),
  ADD KEY `fk_reseña_pelicula1_idx` (`pelicula_id`);

--
-- Indices de la tabla `traducciones`
--
ALTER TABLE `traducciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_traducciones_pelicula1_idx` (`pelicula_id`),
  ADD KEY `fk_traducciones_idioma1_idx` (`idioma_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indices de la tabla `wallpapers`
--
ALTER TABLE `wallpapers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wallpapers_pelicula1_idx` (`pelicula_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `denominacion`
--
ALTER TABLE `denominacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `reseña`
--
ALTER TABLE `reseña`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `traducciones`
--
ALTER TABLE `traducciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `wallpapers`
--
ALTER TABLE `wallpapers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `denominacion`
--
ALTER TABLE `denominacion`
  ADD CONSTRAINT `fk_denominacion_genero1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`),
  ADD CONSTRAINT `fk_denominacion_pelicula1` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`id`);

--
-- Filtros para la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `fk_favoritas_pelicula1` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`id`),
  ADD CONSTRAINT `fk_favoritas_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `reseña`
--
ALTER TABLE `reseña`
  ADD CONSTRAINT `fk_reseña_pelicula1` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`id`),
  ADD CONSTRAINT `fk_reseña_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `traducciones`
--
ALTER TABLE `traducciones`
  ADD CONSTRAINT `fk_traducciones_idioma1` FOREIGN KEY (`idioma_id`) REFERENCES `idioma` (`id`),
  ADD CONSTRAINT `fk_traducciones_pelicula1` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`id`);

--
-- Filtros para la tabla `wallpapers`
--
ALTER TABLE `wallpapers`
  ADD CONSTRAINT `fk_wallpapers_pelicula1` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
