-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Fev-2020 às 15:44
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mapa_sala`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mapa2020`
--

CREATE TABLE `mapa2020` (
  `Id` int(3) NOT NULL,
  `Disciplina` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Codigo` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Periodo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dia da Semana` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Horario Inicio` time NOT NULL,
  `Horario Termino` time NOT NULL,
  `Sala/Anfiteatro` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Quantidade de Matriculados` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `mapa2020`
--

INSERT INTO `mapa2020` (`Id`, `Disciplina`, `Codigo`, `Periodo`, `Dia da Semana`, `Horario Inicio`, `Horario Termino`, `Sala/Anfiteatro`, `Quantidade de Matriculados`) VALUES
(1, 'Ecologia de Comunidade', 'BOT067', '5º  Ciencias Biologicas', 'Segunda- Feira', '14:00:00', '16:00:00', '10A', 50),
(2, 'Gestao Ambiental', 'BOT074', '5º Ciencias Biologicas', 'Terca-Feira', '14:00:00', '17:00:00', '9A', 50),
(3, 'Ensino de Botanica', 'BOT075', 'Ciencias Biologicas', 'Terca-Feira', '13:00:00', '15:00:00', '2B', 15),
(4, 'Recursos Vegetais na Alimentacao Humana', 'BOT062(Teorica)', '1º Nutricao', 'Segunda- Feira', '14:00:00', '18:00:00', '1B', 60),
(5, 'Fisiologia Vegetal', 'BOT021', '5º Ciencias Biologicas', 'Terca-Feira', '10:00:00', '12:00:00', '1B', 40),
(6, 'Formacao Profissional do Biologo', 'BOT073', '3º Ciencias Biologicas', 'Terca-Feira', '10:00:00', '12:00:00', '8A', 36),
(7, 'Morfologia e Evolucao de Fanerogamas', 'BOT072', '3º Ciencias Biologicas', 'Quinta-Feira', '09:00:00', '12:00:00', '1A', 30),
(8, 'Anatomia das Plantas Vasculares', 'BOT056', '4º Ciencias Biologicas', 'Sexta-Feira', '14:00:00', '17:00:00', '1B', 30),
(9, 'Botanica Farmaceutica', 'BOT063', '3º Farmacia', 'Sexta-Feira', '10:00:00', '12:00:00', '2B', 60),
(10, 'Extensao Rural', 'VET028', 'Medicina Veterinaria', 'Quinta-Feira', '14:00:00', '16:00:00', '6A', 60),
(11, 'Biologia de Criptogramas(Teorica)', 'BOT054', 'Ciencias Biologicas', 'Segunda- Feira', '14:00:00', '17:00:00', '8A', 34),
(12, 'Fundamentos de Sistematica', 'BOT071', 'Ciencias Biologicas', 'Quinta-Feira', '16:00:00', '18:00:00', '', 40),
(13, 'Recuperacao de Areas Degradadas', 'BOT034', '6º em diante', 'Quarta-Feira', '14:00:00', '18:00:00', '7A', 30),
(14, 'Sistematica e Filogenia de Angiospermas', 'BOT061', 'Ciencias Biologicas', 'Quarta-Feira', '08:00:00', '12:00:00', '8A', 15),
(15, 'Topicos Especiais em Anatomias Vegetal', 'BOT027', 'Ciencias Biologicas', 'Terca-Feira', '14:00:00', '16:00:00', '10A', 10),
(16, 'Cultura de Tecidos Vegetais', 'BOT024', 'Ciencias Biologicas', 'Segunda- Feira', '14:00:00', '18:00:00', '1A', 15),
(17, 'Setor Agrario e Organizacao Social no Brasil', 'BOT070', '', 'Sexta-Feira', '13:00:00', '16:00:00', 'Nut01', 70),
(18, 'Botanica Economica', 'BOT058', '', 'Sexta-Feira', '09:00:00', '12:00:00', '4A', 50),
(19, 'Plantas Ornamentais e Paisagismo', 'BOT064', 'Ciencias Biologicas e Arquitetura', 'Quarta-Feira', '14:00:00', '18:00:00', '1B', 50),
(20, 'Plantas Toxicas e Medicinais ', 'BOT017', 'Todas da Area de Saude', 'Sexta-Feira', '14:00:00', '18:00:00', '', 120),
(21, 'Bactologia ', 'PAR023', '4º Farmacia', 'Quarta-Feira', '10:00:00', '12:00:00', '7A', 60),
(22, 'Bactologia', 'PAR023', '4º Farmacia', 'Quinta-Feira', '14:00:00', '16:00:00', '3B', 60),
(23, 'TICA III', 'CME067', '3º Medicina', 'Sexta-Feira', '13:00:00', '17:00:00', '', 15),
(24, 'Microbiologia I', 'PAR020', '3º Medcina', 'Quarta-Feira', '09:00:00', '11:00:00', '3B', 100),
(25, 'Microbiologia I', 'PAR020', '3º Medicina', 'Quarta-Feira', '15:00:00', '17:00:00', '2B', 100),
(26, 'Microbiologia I', 'PAR020', '3º Medicina', 'Quinta-Feira', '15:00:00', '17:00:00', '2B', 100),
(27, 'Biologia de Microrganismo', 'PAR039', '5º Ciencias Biologicas', 'Terca-Feira', '14:00:00', '16:00:00', '3A', 40),
(28, 'Biologia de Microrganismo', 'PAR039', '5º Ciencias Biologicas', 'Quinta-Feira', '16:00:00', '18:00:00', '3B', 40),
(29, 'Microbiologia Aplicada a Odotologia I', 'PAR060', '2º Odontologia', 'Segunda- Feira', '08:00:00', '10:00:00', '3B', 60),
(30, 'Microbiologia Aplicada a Odotologia I', 'PAR060', '2º Odontologia', 'Terca-Feira', '15:00:00', '17:00:00', '2B', 60),
(31, 'Microbiologia Aplicada a Odontologia II', 'PAR061', '3º Odontologia ', 'Segunda- Feira', '14:00:00', '18:00:00', '4A', 60),
(32, 'Microbiologia Aplicada a Nutricao ', 'PAR044', 'Nutricao', 'Segunda- Feira', '10:00:00', '12:00:00', '3A', 60),
(33, 'Microbiologia Aplicada a Nutricao', 'PAR044', 'Nutricao', 'Segunda- Feira', '14:00:00', '16:00:00', '3A', 60),
(34, 'Microbiologia II', 'PAR021', '4º Medicina', 'Segunda- Feira', '15:00:00', '17:00:00', 'Anfiteatro B', 100),
(35, 'Microbiologia II', 'PAR021', '4º Medicina', 'Terca-Feira', '09:00:00', '11:00:00', 'Anfiteatro B', 100),
(36, 'Micologia e Virologia', 'PAR025', 'Farmacia', 'Quinta-Feira', '07:00:00', '10:00:00', 'Anfiteatro C', 60),
(37, 'TICA-4', 'CME086', 'Medicina', 'Quarta-Feira', '07:00:00', '11:00:00', '1A2B', 15),
(38, 'Microbiologia Geral e Aplicada', 'PAR050', '2º Enfermagem', 'Segunda- Feira', '10:00:00', '12:00:00', '2B', 60),
(39, 'Microbiologia Geral e Aplicada', 'PAR050', '2º Enfermagem', 'Terca-Feira', '09:00:00', '12:00:00', '5B', 60),
(40, 'Ensino de Microbiologia', 'PAR053', 'A Partir 4º periodo Ciencias Biologicas', 'Quinta-Feira', '10:00:00', '12:00:00', '2A', 18),
(41, 'Parasitologia Geral e Aplicada ', 'PAR011', '4º Enfermagem', 'Terca-Feira', '08:00:00', '10:00:00', 'Anfiteatro B', 40),
(42, 'Parasitologia Medica', 'PAR017', '3º Medicina', 'Segunda- Feira', '09:00:00', '10:00:00', 'Anfiteatro B', 100),
(43, 'Parasitologia Medica', 'PAR017', '3º Medicina', 'Quinta-Feira', '07:00:00', '09:00:00', '6A', 100),
(44, 'Parasitologia Humana', 'PAR022', '5º Farmacia', 'Quinta-Feira', '10:00:00', '12:00:00', 'Nut03', 50),
(45, 'Parasitologia Aplicada a Nutricao', 'PAR046', '4º Nutricao', 'Terca-Feira', '08:00:00', '10:00:00', '9A', 50),
(46, 'Parasitologia Aplicada a Odotologia', 'PAR038', '3º Odontologia ', 'Sexta-Feira', '09:00:00', '11:00:00', '9A', 50),
(47, 'Doencas Parasitarias Humanas', 'PAR052', '5º Ciencias Biologicas', 'Quarta-Feira', '08:00:00', '10:00:00', 'Anfiteatro D', 40),
(48, 'TICA III - Temas Integradores em Clinica Ampliada III', 'CME067- D', 'Medicina', 'Sexta-Feira', '14:00:00', '17:00:00', '', 12),
(49, 'Imunologia II', 'PAR019', '3º Medicina', 'Segunda- Feira', '10:00:00', '12:00:00', '', 100),
(50, 'Imunologia ', 'PAR006', '4º Biologia', 'Quarta-Feira', '09:00:00', '12:00:00', '', 39),
(51, 'Imunologia Aplicada a Odotologia', 'PAR014', '3º Odontologia', 'Quinta-Feira', '09:00:00', '12:00:00', 'Anfiteatro B', 57),
(52, 'Imunologia ', 'PRA045', '3º Nutricao', 'Terca-Feira', '08:00:00', '10:00:00', '10A', 60),
(53, 'Imunologia I', 'PAR051', '3º Nutricao', 'Quarta-Feira', '09:00:00', '12:00:00', '4A', 48),
(54, 'Imunologia III', 'PAR024', '3º Farmacia', 'Quinta-Feira', '09:00:00', '12:00:00', '3B', 60),
(55, 'TICA III - Temas Integradores em Clinica Ampliada III', 'CME067- D', 'Medicina', 'Sexta-Feira', '14:00:00', '17:00:00', '3A', 12),
(56, 'Imunologia II -Pratica - B', 'PAR519', '3º Medicina', 'Segunda- Feira', '13:00:00', '15:00:00', 'Anfiteatro B', 25),
(57, 'Imunologia III -Pratica - A', 'PAR519', '3º Medicina ', 'Segunda- Feira', '15:00:00', '17:00:00', 'Nut03', 20),
(58, 'Imunologia III - Pratica - D', 'PAR519', '3º Medicina', 'Segunda- Feira', '09:00:00', '11:00:00', '9A', 20),
(59, 'Bioquimica VIII', 'BQU008', 'Educacao Fisica', 'Quinta-Feira', '13:00:00', '15:00:00', 'Anfiteatto D', 50),
(60, 'Bioquimica VIII', 'BQU008', 'Educacao Fisica', 'Sexta-Feira', '11:00:00', '12:00:00', 'Anfiteatro D', 50),
(61, 'Bioquimica Apliacda a Fisioterapia ', 'BQU019', 'Fisioterapia ', 'Terca-Feira', '09:00:00', '12:00:00', 'Anfiteatro C', 30),
(62, 'BQU 519 - Pratica', 'BQU519', 'Fisioterapia ', 'Sexta-Feira', '10:00:00', '12:00:00', 'Anfiteatro C', 30),
(63, 'Bioquimica Apliacda a Odotologia', 'BQU048', 'Odontologia ', 'Terca-Feira', '08:00:00', '11:00:00', '04B', 60),
(64, 'Bioquimica Apliacda a Odotologia', 'BQU048', 'Odontologia ', 'Quarta-Feira', '10:00:00', '12:00:00', '04B', 60),
(65, 'BQU548 - Pratica', 'BQU548 I', 'Odotologia', 'Quarta-Feira', '07:00:00', '10:00:00', '04B', 20),
(66, 'BQU548 - Pratica', 'BQU548 J', 'Odotologia', 'Quarta-Feira', '13:00:00', '15:00:00', '04B', 20),
(67, 'BQU548 - Pratica ', 'BQU548 L', 'Odontologia', 'Quarta-Feira', '13:00:00', '15:00:00', '04B', 20),
(68, 'BQU555 - Pratica', 'BQU555 A', 'Medicina Veterinaria', 'Segunda- Feira', '08:00:00', '10:00:00', '10A', 20),
(69, 'BQU555 - Pratica', 'BQU555 B', 'Medicina Veterinaria', 'Segunda- Feira', '15:00:00', '17:00:00', '10A', 20),
(70, 'BQU555 - Pratica', 'BQU555 C', 'Medicina Veterinaria', 'Quinta-Feira', '10:00:00', '12:00:00', '08A', 20),
(71, 'Bioquimica Basica ', 'BQU055', 'Medicina Veterinaria', 'Segunda- Feira', '08:00:00', '10:00:00', 'Anfiteatro C', 60),
(72, 'Bioquimica Basica ', 'BQU055', 'Medicina Veterinaria', 'Quarta-Feira', '10:00:00', '12:00:00', 'Anfiteatro C', 60),
(73, 'Bioquimica XI', 'BQU021', 'Enfermagem', 'Terca-Feira', '13:00:00', '15:00:00', '07A', 40),
(74, 'Bioquimica XI', 'BQU021', 'Enfermagem', 'Quinta-Feira', '09:00:00', '11:00:00', '04B', 40),
(75, 'BQU521 - Pratica ', 'BQU521 - K', 'Enfermagem', 'Terca-Feira', '07:00:00', '09:00:00', 'Anfiteatro C', 15),
(76, 'BQU521 - Pratica ', 'BQU521 - L', 'Enfermagem', 'Quinta-Feira', '07:00:00', '09:00:00', '04B', 15),
(77, 'BQU521 - Pratica ', 'BQU521 J', 'Enfermagem', 'Sexta-Feira', '07:00:00', '09:00:00', '09A', 15),
(78, 'Quimica Biologica ', 'BQU049', 'Quimica', 'Quinta-Feira', '07:00:00', '10:00:00', 'Anfiteatro D', 40),
(79, 'Quimica Biologica ', 'BQU049', 'Quimica', 'Sexta-Feira', '08:00:00', '10:00:00', 'NUT03', 40),
(80, 'Bioquimica Aplicada Nutricao', 'BQU050', 'Nutricao', 'Segunda- Feira', '15:00:00', '17:00:00', 'NUT01', 60),
(81, 'Bioquimica Aplicada Nutricao ', 'BQU050', 'Nutricao', 'Terca-Feira', '08:00:00', '10:00:00', 'NUT01', 60),
(82, 'BQU550 - Pratica ', 'BQU550', 'Nutricao', 'Segunda- Feira', '16:00:00', '17:00:00', 'NUT02', 60),
(83, 'BQU550 - Pratica ', 'BQU550 A', 'Nutricao', 'Terca-Feira', '10:00:00', '12:00:00', '01A', 20),
(84, 'BQU550 - Pratica', 'BQU550 B', 'Nutricao', 'Terca-Feira', '13:00:00', '15:00:00', '01A', 20),
(85, 'BQU550 - Pratica', 'BQU550 C', 'Nutricao', 'Terca-Feira', '15:00:00', '17:00:00', '01A', 20),
(86, 'Bioquimica Fisiologica', 'BQU056', 'Medicina', 'Segunda- Feira', '07:00:00', '09:00:00', 'Anfiteatro B', 100),
(87, 'Bioquimica Fisiologica', 'BQU056', 'Medicina', 'Quinta-Feira', '13:00:00', '14:00:00', 'Anfiteatro B', 100),
(88, 'BQU556 - Pratica ', 'BQU556 A', 'Medicina', 'Terca-Feira', '09:00:00', '11:00:00', '08A', 25),
(89, 'BQU556 - Pratica ', 'BQU556 B', 'Medicina', 'Sexta-Feira', '07:00:00', '09:00:00', '08A', 25),
(90, 'BQU556 - Pratica ', 'BQU556 C', 'Medicina', 'Sexta-Feira', '09:00:00', '11:00:00', '08A', 25),
(91, 'BQU556 - Pratica ', 'BQU556 D', 'Medicina', 'Sexta-Feira', '13:00:00', '15:00:00', '08A', 25),
(92, 'BQU556 - Pratica ', 'BQU556 E', 'Medicina', 'Sexta-Feira', '15:00:00', '17:00:00', '08A', 25),
(93, 'BQU551 - Pratica', 'BQU551 A', 'Farmacia', 'Segunda- Feira', '13:00:00', '15:00:00', '02A', 20),
(94, 'BQU551 - Pratica', 'BQU551 B', 'Farmacia', 'Segunda- Feira', '15:00:00', '17:00:00', '02A', 15),
(95, 'BQU551 - Pratica', 'BQU551 C', 'Farmacia', 'Terca-Feira', '13:00:00', '15:00:00', '02A', 15),
(96, 'Bioquimica XII', 'BQU052', 'Farmacia', 'Quarta-Feira', '13:00:00', '14:00:00', 'Anfiteatro D', 50),
(97, 'Bioquimica XII', 'BQU052', 'Farmacia', 'Sexta-Feira', '13:00:00', '15:00:00', 'Anfiteatro D', 50),
(98, 'BQU552 - Pratica ', 'BQU552 A', 'Farmacia', 'Terca-Feira', '08:00:00', '10:00:00', '03A', 20),
(99, 'BQU552 - Pratica ', 'BQU552 B', 'Farmacia', 'Terca-Feira', '10:00:00', '12:00:00', '03A', 15),
(100, 'BQU552 - Pratica ', 'BQU552 C', 'Farmacia', 'Quinta-Feira', '13:00:00', '15:00:00', '03A', 15),
(101, 'Bioquimica Celular ', 'BQU047', 'Ciencais Biologicas', 'Quinta-Feira', '14:00:00', '17:00:00', '04B', 45),
(102, 'BQU547 - Pratica', 'BQU547 A', 'Ciencias Biologicas', 'Sexta-Feira', '13:00:00', '15:00:00', '01B', 15),
(103, 'BQU547 - Pratica', 'BQU547 B/C', 'Ciencias Biologicas', 'Sexta-Feira', '10:00:00', '12:00:00', '01B', 15),
(104, 'Bioquimica I', 'BQU032', 'Medicina', 'Sexta-Feira', '08:00:00', '12:00:00', 'Anfiteatro B', 100),
(105, 'Bioquimica 532 - Pratica', 'BQU532 A/B', 'Medicina', 'Quarta-Feira', '08:00:00', '12:00:00', '', 25),
(106, 'Bioquimica 532 - Pratica', 'BQU532 C/D', 'Medicina', 'Quinta-Feira', '08:00:00', '12:00:00', '', 25),
(107, 'Bioquimica 532 - Pratica', 'BQU532 E', 'Medicina', 'Quinta-Feira', '08:00:00', '12:00:00', '', 25),
(108, 'Bioquimica 532 - Pratica', 'BQU532 E', 'Medicina', 'Sexta-Feira', '10:00:00', '12:00:00', '', 25),
(109, 'Fisiologia Aplicada a Nutricao', 'FSI031', '2º Nutricao', 'Terca-Feira', '14:00:00', '18:00:00', '03B', 72),
(110, 'Fisiologia Medica II', 'FSI034 A', '3º Medicina', 'Quarta-Feira', '14:00:00', '18:00:00', '03B', 50),
(111, 'Fisiologia Medica II', 'FSI034 B', '3º Medicina', 'Segunda- Feira', '13:00:00', '17:00:00', '03B', 50),
(112, 'Biofisica Medica', 'FSI032 A', '1º Medicina', 'Quinta- Feira', '13:00:00', '15:00:00', '', 50),
(113, 'Biofisica Medica ', 'FSI032 B', '1º Medicina', 'Quinta-Feira', '13:00:00', '15:00:00', '', 50),
(114, 'Biofisica Aplicada a Fisioterapia ', 'FSI029', '1º Fisioterapia', 'Quarta-Feira', '08:00:00', '12:00:00', '01B', 30),
(115, 'Fisiologia Medica I', 'FSI033 A', '2ºMedicina', 'Segunda- Feira', '13:00:00', '15:00:00', '04B', 50),
(116, 'Fisiologia Medica I', 'FSI033 B', '2ºMedicina', 'Terca- Feira', '13:00:00', '15:00:00', '05B', 50),
(117, 'Fisiologia Medica III ', 'FSI035 A', '4º Medicina', 'Segunda- Feira', '13:00:00', '15:00:00', '04B', 50),
(118, 'Fisiologia Medica III', 'FSI035 A', '4º Medicina', 'Terca-Feira', '13:00:00', '15:00:00', '04B', 50),
(119, 'Fisiologia Medica III', 'FSI035 B', '4º Medicina', 'Segunda- Feira', '13:00:00', '15:00:00', '06A', 50),
(120, 'Fisiologia Medica III', 'FSI035 B', '4º Medicina', 'Terca-Feira', '13:00:00', '15:00:00', '06A', 50),
(121, 'Fisiologia Aplicada a Farmacia', 'FSI047 A', '2º Farmacia', 'Terca-Feira', '15:00:00', '17:00:00', '04B', 68),
(122, 'Fisilogia I', 'FSI002 A', '2º Educacao Fisica', 'Segunda- Feira', '15:00:00', '18:00:00', '06A', 60),
(123, 'Fisilogia I', 'FSI002 A', '2º Educacao Fisica', 'Terca-Feira', '15:00:00', '17:00:00', '06A', 60),
(124, 'Fisiologia Aplicada a Biologia', 'FSI052 A', '3º Biologia', 'Segunda- Feira', '13:00:00', '17:00:00', '09A', 36),
(125, 'Fisiologia Aplicada a Fisioterapia I', 'FSI053 A', '2º Fisioterapia', 'Terca-Feira', '13:00:00', '17:00:00', '01B', 30),
(126, 'Fisiologia Aplicada a Fisioterapia II', 'FSI054 A', '3º Fisioterapia', 'Segunda- Feira', '15:00:00', '17:00:00', 'Anfiteatro C', 30),
(127, 'Fisiologia Aplicada a Fisioterapia II', 'FSI054 A', '3º Fisioterapia', 'Terca-Feira', '15:00:00', '17:00:00', 'Anfiteatro C', 30),
(128, 'Biofisica Aplicada a Odotologia ', 'FSI042 A', '3º Odontologia', 'Quarta-Feira', '13:00:00', '17:00:00', 'Anfiteatro Anexo ', 60),
(129, 'Fisiologia Aplicada a Odontologia ', 'FSI041 A', '4º Odontologia', 'Segunda- Feira', '13:00:00', '18:00:00', 'Anfiteatro Anexo', 60),
(130, 'Fisiologia Aplicada a Enfermagem ', 'FSI039 A', '3º Enfermagem', 'Quinta-Feira', '07:00:00', '12:00:00', '', 30),
(131, 'Fisiologia Aplicada a Enfermagem', 'FSI039 B', '3º Enfermagem', 'Quinta-Feira', '07:00:00', '12:00:00', '07A', 30),
(132, 'Biofisica Aplicada a Enfermagem', 'FSI043 A', '1º Enfermagem', 'Quarta-Feira', '07:00:00', '11:00:00', '03B', 50),
(133, 'Topicos Especiais em Processos Psicologicos Basicos I', 'PSI273', 'Psicologia/Medicina/Fisioterapia/Biologia', 'Segunda- Feira', '15:00:00', '17:00:00', '05B', 20),
(134, 'Topicos Especiais em Processos Psicologicos Basicos I', 'PSI273', 'Psicologia/Medicina/Fisioterapia/Biologia', 'Quarta-Feira', '15:00:00', '17:00:00', '05B', 20),
(135, 'Seminario Orientado', '', 'Psicologia/Medicina/Fisioterapia', 'Sexta-Feira', '17:00:00', '19:00:00', '', 20),
(136, 'Genetica Basica', 'BIO102 C', '2ºNutricao', 'Sexta-Feira', '08:00:00', '11:00:00', '06A', 50),
(137, 'Ensino em Genetica', 'BIO157', 'Ciencias Biologicas', 'Quarta-Feira', '13:00:00', '16:00:00', '08A', 18),
(138, 'Biologia Celular', 'BIO101 D', 'Fisioterapia', 'Sexta-Feira', '14:00:00', '17:00:00', '07A', 30),
(139, 'Biologia Celular', 'BIO101 E', 'Nutricao', 'Sexta-Feira', '09:00:00', '12:00:00', 'NUT01', 72),
(140, 'Genetica Basica', 'BIO117', 'Farmacia', 'Segunda- Feira', '08:00:00', '10:00:00', '04B', 50),
(141, 'Ecologia e Desenvolvimento Sustentavel ', 'BIO150', '5º Mediina Veterinaria', 'Sexta-Feira', '08:00:00', '11:00:00', '', 50),
(142, 'Saneamento e Desenvolvimento Sustetavel', 'VET021', '5º Medicina Veterinaria', 'Quinta-Feira', '09:00:00', '12:00:00', '08A', 50),
(143, 'Genetica Basica', 'BIO102 D', '1º Medicina Veterinaria', 'Quinta-Feira', '14:00:00', '17:00:00', '08A', 50),
(144, 'Melhoramento Animal', 'BIO190 A', '4º Medicina Veterinaria', 'Sexta-Feira', '08:00:00', '12:00:00', '08A', 50),
(145, 'Genetica Aplicada a Conservacao', 'BIO161 A', 'Biologia', 'Quinta-Feira', '08:00:00', '10:00:00', '08A', 30),
(146, 'Genetica Humana e Forense', 'BIO156', 'Ciencias Biologicas', '', '08:00:00', '12:00:00', '04A', 20),
(147, 'Citogenetica Aplicada a Medicina Veterinaria', 'VET033', 'Medicina Veterinaria ', 'Terca-Feira', '15:00:00', '17:00:00', '08A', 15);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `mapa2020`
--
ALTER TABLE `mapa2020`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
