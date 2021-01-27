-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Fev-2020 às 14:56
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `psymed`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `appointment_start` datetime NOT NULL,
  `appointment_end` datetime NOT NULL,
  `appointment_patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `appointment_status` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'free',
  `appointment_patient_session` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_start`, `appointment_end`, `appointment_patient_name`, `appointment_status`, `appointment_patient_session`, `doctor_id`) VALUES
(1, '2020-01-27 09:00:00', '2020-01-27 10:00:00', 'Henrique', 'confirmed', NULL, 2),
(2, '2020-01-27 10:00:00', '2020-01-27 11:00:00', 'Alisson', 'confirmed', 'sdo18t7hh1e99rk753m4ebdjc8', 2),
(17, '2020-01-27 09:00:00', '2020-01-27 10:00:00', 'marcio', 'confirmed', 'sdo18t7hh1e99rk753m4ebdjc8', 1),
(18, '2020-01-27 10:00:00', '2020-01-27 11:00:00', NULL, 'free', NULL, 1),
(19, '2020-01-27 11:00:00', '2020-01-27 12:00:00', NULL, 'free', NULL, 1),
(20, '2020-01-27 12:00:00', '2020-01-27 13:00:00', NULL, 'free', NULL, 1),
(21, '2020-01-27 14:00:00', '2020-01-27 15:00:00', NULL, 'free', NULL, 1),
(22, '2020-01-27 15:00:00', '2020-01-27 16:00:00', NULL, 'free', NULL, 1),
(23, '2020-01-27 16:00:00', '2020-01-27 17:00:00', NULL, 'free', NULL, 1),
(24, '2020-01-27 17:00:00', '2020-01-27 18:00:00', NULL, 'free', NULL, 1),
(25, '2020-01-27 11:00:00', '2020-01-27 12:00:00', NULL, 'free', NULL, 2),
(26, '2020-01-27 12:00:00', '2020-01-27 13:00:00', NULL, 'free', NULL, 2),
(27, '2020-01-27 14:00:00', '2020-01-27 15:00:00', NULL, 'free', NULL, 2),
(28, '2020-01-27 15:00:00', '2020-01-27 16:00:00', NULL, 'free', NULL, 2),
(29, '2020-01-27 16:00:00', '2020-01-27 17:00:00', NULL, 'free', NULL, 2),
(30, '2020-01-27 17:00:00', '2020-01-27 18:00:00', NULL, 'free', NULL, 2),
(31, '2020-01-01 09:00:00', '2020-01-01 10:00:00', NULL, 'free', NULL, 2),
(32, '2020-01-27 09:00:00', '2020-01-27 10:00:00', NULL, 'free', NULL, 5),
(33, '2020-01-27 10:00:00', '2020-01-27 11:00:00', NULL, 'free', NULL, 5),
(34, '2020-01-27 11:00:00', '2020-01-27 12:00:00', NULL, 'free', NULL, 5),
(35, '2020-01-27 12:00:00', '2020-01-27 13:00:00', NULL, 'free', NULL, 5),
(36, '2020-01-27 14:00:00', '2020-01-27 15:00:00', NULL, 'free', NULL, 5),
(37, '2020-01-27 15:00:00', '2020-01-27 16:00:00', NULL, 'free', NULL, 5),
(38, '2020-01-27 16:00:00', '2020-01-27 17:00:00', NULL, 'free', NULL, 5),
(39, '2020-01-27 17:00:00', '2020-01-27 18:00:00', NULL, 'free', NULL, 5),
(40, '2020-01-29 09:00:00', '2020-01-29 10:00:00', NULL, 'free', NULL, 5),
(41, '2020-01-29 10:00:00', '2020-01-29 11:00:00', NULL, 'free', NULL, 5),
(42, '2020-01-29 11:00:00', '2020-01-29 12:00:00', NULL, 'free', NULL, 5),
(43, '2020-01-29 12:00:00', '2020-01-29 13:00:00', NULL, 'free', NULL, 5),
(44, '2020-01-29 14:00:00', '2020-01-29 15:00:00', NULL, 'free', NULL, 5),
(45, '2020-01-29 15:00:00', '2020-01-29 16:00:00', NULL, 'free', NULL, 5),
(46, '2020-01-29 16:00:00', '2020-01-29 17:00:00', NULL, 'free', NULL, 5),
(47, '2020-01-29 17:00:00', '2020-01-29 18:00:00', NULL, 'free', NULL, 5),
(48, '2020-01-29 09:00:00', '2020-01-29 10:00:00', NULL, 'free', NULL, 2),
(49, '2020-01-29 10:00:00', '2020-01-29 11:00:00', NULL, 'free', NULL, 2),
(50, '2020-01-29 11:00:00', '2020-01-29 12:00:00', NULL, 'free', NULL, 2),
(51, '2020-01-29 12:00:00', '2020-01-29 13:00:00', NULL, 'free', NULL, 2),
(52, '2020-01-29 14:00:00', '2020-01-29 15:00:00', NULL, 'free', NULL, 2),
(53, '2020-01-29 15:00:00', '2020-01-29 16:00:00', NULL, 'free', NULL, 2),
(54, '2020-01-29 16:00:00', '2020-01-29 17:00:00', NULL, 'free', NULL, 2),
(55, '2020-01-29 17:00:00', '2020-01-29 18:00:00', NULL, 'free', NULL, 2),
(56, '2020-01-29 09:00:00', '2020-01-29 10:00:00', NULL, 'free', NULL, 1),
(57, '2020-01-29 10:00:00', '2020-01-29 11:00:00', NULL, 'free', NULL, 1),
(58, '2020-01-29 11:00:00', '2020-01-29 12:00:00', NULL, 'free', NULL, 1),
(59, '2020-01-29 12:00:00', '2020-01-29 13:00:00', NULL, 'free', NULL, 1),
(60, '2020-01-29 14:00:00', '2020-01-29 15:00:00', NULL, 'free', NULL, 1),
(61, '2020-01-29 15:00:00', '2020-01-29 16:00:00', NULL, 'free', NULL, 1),
(62, '2020-01-29 16:00:00', '2020-01-29 17:00:00', NULL, 'free', NULL, 1),
(63, '2020-01-29 17:00:00', '2020-01-29 18:00:00', NULL, 'free', NULL, 1),
(64, '2020-01-30 09:00:00', '2020-01-30 10:00:00', NULL, 'free', NULL, 5),
(65, '2020-01-30 10:00:00', '2020-01-30 11:00:00', NULL, 'free', NULL, 5),
(66, '2020-01-30 11:00:00', '2020-01-30 12:00:00', NULL, 'free', NULL, 5),
(67, '2020-01-30 12:00:00', '2020-01-30 13:00:00', NULL, 'free', NULL, 5),
(68, '2020-01-30 14:00:00', '2020-01-30 15:00:00', NULL, 'free', NULL, 5),
(69, '2020-01-30 15:00:00', '2020-01-30 16:00:00', NULL, 'free', NULL, 5),
(70, '2020-01-30 16:00:00', '2020-01-30 17:00:00', NULL, 'free', NULL, 5),
(71, '2020-01-30 17:00:00', '2020-01-30 18:00:00', NULL, 'free', NULL, 5),
(72, '2020-01-30 09:00:00', '2020-01-30 10:00:00', NULL, 'free', NULL, 2),
(73, '2020-01-30 10:00:00', '2020-01-30 11:00:00', NULL, 'free', NULL, 2),
(74, '2020-01-30 11:00:00', '2020-01-30 12:00:00', NULL, 'free', NULL, 2),
(75, '2020-01-30 12:00:00', '2020-01-30 13:00:00', NULL, 'free', NULL, 2),
(76, '2020-01-30 14:00:00', '2020-01-30 15:00:00', NULL, 'free', NULL, 2),
(77, '2020-01-30 15:00:00', '2020-01-30 16:00:00', NULL, 'free', NULL, 2),
(78, '2020-01-30 16:00:00', '2020-01-30 17:00:00', NULL, 'free', NULL, 2),
(79, '2020-01-30 17:00:00', '2020-01-30 18:00:00', NULL, 'free', NULL, 2),
(80, '2020-01-30 09:00:00', '2020-01-30 10:00:00', NULL, 'free', NULL, 1),
(81, '2020-01-30 10:00:00', '2020-01-30 11:00:00', NULL, 'free', NULL, 1),
(82, '2020-01-30 11:00:00', '2020-01-30 12:00:00', NULL, 'free', NULL, 1),
(83, '2020-01-30 12:00:00', '2020-01-30 13:00:00', 'alisson', 'confirmed', 'cin8haa1vms889ukhf58pbr5ft', 1),
(84, '2020-01-30 14:00:00', '2020-01-30 15:00:00', NULL, 'free', NULL, 1),
(85, '2020-01-30 15:00:00', '2020-01-30 16:00:00', NULL, 'free', NULL, 1),
(86, '2020-01-30 16:00:00', '2020-01-30 17:00:00', NULL, 'free', NULL, 1),
(87, '2020-01-30 17:00:00', '2020-01-30 18:00:00', NULL, 'free', NULL, 1),
(88, '2020-01-01 09:00:00', '2020-01-01 10:00:00', NULL, 'free', NULL, 1),
(89, '2020-01-01 10:00:00', '2020-01-01 11:00:00', NULL, 'free', NULL, 1),
(90, '2020-01-01 11:00:00', '2020-01-01 12:00:00', NULL, 'free', NULL, 1),
(91, '2020-01-01 12:00:00', '2020-01-01 13:00:00', NULL, 'free', NULL, 1),
(92, '2020-01-01 14:00:00', '2020-01-01 15:00:00', NULL, 'free', NULL, 1),
(93, '2020-01-01 15:00:00', '2020-01-01 16:00:00', NULL, 'free', NULL, 1),
(94, '2020-01-01 16:00:00', '2020-01-01 17:00:00', NULL, 'free', NULL, 1),
(95, '2020-01-01 17:00:00', '2020-01-01 18:00:00', NULL, 'free', NULL, 1),
(96, '2020-01-01 10:00:00', '2020-01-01 11:00:00', NULL, 'free', NULL, 2),
(97, '2020-01-01 11:00:00', '2020-01-01 12:00:00', NULL, 'free', NULL, 2),
(98, '2020-01-01 12:00:00', '2020-01-01 13:00:00', NULL, 'free', NULL, 2),
(99, '2020-01-01 14:00:00', '2020-01-01 15:00:00', NULL, 'free', NULL, 2),
(100, '2020-01-01 15:00:00', '2020-01-01 16:00:00', NULL, 'free', NULL, 2),
(101, '2020-01-01 16:00:00', '2020-01-01 17:00:00', NULL, 'free', NULL, 2),
(102, '2020-01-01 17:00:00', '2020-01-01 18:00:00', NULL, 'free', NULL, 2),
(120, '2020-02-05 10:00:00', '2020-02-05 11:00:00', 'carlos', 'confirmed', '4dls96l41qh0dm2qqibnnvbs4k', 2),
(157, '2020-02-13 10:00:00', '2020-02-13 11:00:00', 'Matheus', 'confirmed', '63h31gbc2tpu16ltla49kkuins', 1),
(162, '2020-02-13 09:00:00', '2020-02-13 10:00:00', NULL, 'free', NULL, 2),
(163, '2020-02-13 10:00:00', '2020-02-13 11:00:00', NULL, 'free', NULL, 2),
(164, '2020-02-13 11:00:00', '2020-02-13 12:00:00', NULL, 'free', NULL, 2),
(165, '2020-02-13 12:00:00', '2020-02-13 13:00:00', NULL, 'free', NULL, 2),
(166, '2020-02-13 14:00:00', '2020-02-13 15:00:00', NULL, 'free', NULL, 2),
(167, '2020-02-13 15:00:00', '2020-02-13 16:00:00', NULL, 'free', NULL, 2),
(168, '2020-02-13 16:00:00', '2020-02-13 17:00:00', NULL, 'free', NULL, 2),
(169, '2020-02-13 17:00:00', '2020-02-13 18:00:00', NULL, 'free', NULL, 2),
(170, '2020-02-13 11:00:00', '2020-02-13 12:00:00', NULL, 'free', NULL, 1),
(171, '2020-02-13 12:00:00', '2020-02-13 13:00:00', NULL, 'free', NULL, 1),
(172, '2020-02-13 14:00:00', '2020-02-13 15:00:00', NULL, 'free', NULL, 1),
(173, '2020-02-13 15:00:00', '2020-02-13 16:00:00', NULL, 'free', NULL, 1),
(174, '2020-02-13 16:00:00', '2020-02-13 17:00:00', NULL, 'free', NULL, 1),
(175, '2020-02-13 17:00:00', '2020-02-13 18:00:00', NULL, 'free', NULL, 1),
(176, '2020-02-13 09:00:00', '2020-02-13 10:00:00', NULL, 'free', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `nome`, `email`, `senha`, `endereco`, `telefone`, `cpf`) VALUES
(1, 'Guilherme', 'g@g.com', '123', 'rua abc', '213123121', '170000'),
(2, 'Guilherme', 'g@g.com', '123', 'rua abc', '213123121', '170000'),
(3, 'matheus', 'matheusmoura@gmail.com', 'Q1w2e3r4t5', 'rua x', '40028922', '123456789'),
(4, 'ALISSON JUNIOR OLIVEIRA FERREIRA', 'alisson.ferreira012@hotmail.com', 'a123', 'rua x', '2134648579', '151.782.487-75'),
(5, 'zga', 'ahahe', 'ahea', 'aheah', 'aheah', 'eaheadhg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadlugar`
--

CREATE TABLE `cadlugar` (
  `id` int(11) NOT NULL,
  `namelugar` varchar(100) CHARACTER SET utf8 NOT NULL,
  `infolugar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `addresslugar` varchar(100) CHARACTER SET utf8 NOT NULL,
  `tellugar` varchar(100) CHARACTER SET utf8 NOT NULL,
  `emaillug` varchar(100) CHARACTER SET utf8 NOT NULL,
  `coordenadas` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadlugar`
--

INSERT INTO `cadlugar` (`id`, `namelugar`, `infolugar`, `addresslugar`, `tellugar`, `emaillug`, `coordenadas`) VALUES
(2, 'ServiÃ§o de Psicologia Aplicada - Santa Ãšrsula', 'Ã‰ oferecido atendimento em psicoterapia individual para crianÃ§as, adolescentes, adultos, idosos e casal. Os interessados devem dirigir-se ao PrÃ©dio I, 4Âº andar para preenchimento de ficha de inscriÃ§Ã£o. O horÃ¡rio de funcionamento Ã© de segunda Ã  se', 'Rua Fernando Ferrari, 75 - Botafogo\r\n(prÃ³ximo ao PalÃ¡cio Guanabara)', '(21) 3400-4351 - Ramal 210', '', '-22.941139,-43.182963'),
(3, 'ServiÃ§o de Psicologia Aplicada da Universidade EstÃ¡cio de SÃ¡ â€“ Campus Norteshopping ', '', 'Av. Dom Helder CÃ¢mara, 5080 â€“ Norte Shopping\r\n\r\n', '(21) 2583 7116', '', '-22.887145, -43.283078'),
(4, 'ServiÃ§o de Psicologia Aplicada (SPA) da Universidade EstÃ¡cio de SÃ¡ â€“ Campus JoÃ£o UchÃ´a', 'O serviÃ§o Ã© aberto Ã  comunidade, atravÃ©s de psicoterapia individual e em grupo para diferentes faixas de idade, como tambÃ©m atendimento Ã  famÃ­lia. TambÃ©m hÃ¡ pronto atendimento atravÃ©s do ServiÃ§o de PlantÃ£o PsicolÃ³gico.\r\n\r\nGratuito.', 'Rua do Bispo, 83 â€“ Rio Comprido', '(21) 4003-6767 / (21) 2583 7116', '', '-22.924685, -43.211797'),
(5, 'Instituto de Psiquiatria da UFRJ', 'O ambulatÃ³rio abre 6 vagas para avaliaÃ§Ã£o em saÃºde mental/psiquiatria por semana, sendo distribuÃ­das em 2 na segunda-feira, 2 na terÃ§a-feira e 2 na quarta-feira.\r\n\r\nOs interessados devem chegar toda segunda-feira (exceto feriados) Ã s 08h e procurar', 'Av. Venceslau BrÃ¡s, 71 â€“ fundos â€“ Botafogo', '(21) 3938 5535', 'https://www.ipub.ufrj.br/', '-22.953858, -43.175268'),
(6, 'ServiÃ§o de Psicologia Aplicada â€“ UERJ', 'As inscriÃ§Ãµes acontecem todos os meses. Os interessados devem comparecer Ã  secretaria das 8h Ã s 20h30, preencher a ficha e aguardar. O atendimento Ã© realizado por estagiÃ¡rios.\r\n\r\nO valor a ser cobrado varia de acordo com a renda familiar da pessoa. ', 'Rua SÃ£o Francisco Xavier, 524 â€“ 10Â° andar â€“ MaracanÃ£', '(21) 2334-0033 / (21)2334-0688', '', '-22.911177, -43.236132'),
(7, 'ServiÃ§o de Psicologia Aplicada â€“ Universidade Veiga de Almeida  ', 'Os interessados devem comparecer pessoalmente ao local, preencher uma ficha e aguardar na fila de espera.\r\n\r\nA consulta custa de R$ 2 a R$ 25.\r\n\r\nOs interessados devem comparecer pessoalmente ao local, preencher uma ficha e aguardar na fila de espera.\r\n\r\n', 'Rua Ibituruna, 108 â€“ Vila UniversitÃ¡ria â€“ casa 4 â€“ MaracanÃ£', '(21) 2574-8898', '', '-22.992554, -43.367681'),
(8, 'Sociedade Brasileira de PsicanÃ¡lise do Rio de Janeiro ', 'Os atendimentos sÃ£o individuais e realizados por profissionais da SBPRJ em seus consultÃ³rios apÃ³s inscriÃ§Ã£o, pagamento de taxa e entrevista de triagem (adultos, crianÃ§as a partir de 3 anos e adolescentes). As inscriÃ§Ãµes para o atendimento na ClÃ­n', 'Rua David Campista, 80 â€“ HumaitÃ¡', '(21) 2537-1333 ou (21) 2537-1115', 'https://www.sbprj.org.br/', '-22.954053, -43.198020'),
(9, 'ServiÃ§o de Psicologia Aplicada â€“ Universidade Veiga de Almeida  ', 'Os interessados devem comparecer pessoalmente ao local, preencher uma ficha e aguardar na fila de espera.\r\n\r\nA consulta custa de R$ 2 a R$ 25.\r\n\r\nOs interessados devem comparecer pessoalmente ao local, preencher uma ficha e aguardar na fila de espera.\r\n\r\n', 'Rua Ibituruna, 108 â€“ Vila UniversitÃ¡ria â€“ casa 4 â€“ MaracanÃ£', '(21) 2574-8898', '', '-22.992554, -43.367681'),
(10, 'Sociedade Brasileira de PsicanÃ¡lise do Rio de Janeiro ', 'Os atendimentos sÃ£o individuais e realizados por profissionais da SBPRJ em seus consultÃ³rios apÃ³s inscriÃ§Ã£o, pagamento de taxa e entrevista de triagem (adultos, crianÃ§as a partir de 3 anos e adolescentes). As inscriÃ§Ãµes para o atendimento na ClÃ­n', 'Rua David Campista, 80 â€“ HumaitÃ¡', '(21) 2537-1333 ou (21) 2537-1115', 'https://www.sbprj.org.br/', '-22.954053, -43.198020');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadprof`
--

CREATE TABLE `cadprof` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nomeprof` varchar(255) NOT NULL,
  `especialidade` varchar(255) NOT NULL,
  `crp` varchar(100) NOT NULL,
  `sobre` longtext NOT NULL,
  `formacao` longtext NOT NULL,
  `lugar` varchar(100) NOT NULL,
  `telefoneprof` varchar(100) NOT NULL,
  `emailprof` varchar(100) NOT NULL,
  `idiomas` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadprof`
--

INSERT INTO `cadprof` (`id`, `foto`, `nomeprof`, `especialidade`, `crp`, `sobre`, `formacao`, `lugar`, `telefoneprof`, `emailprof`, `idiomas`) VALUES
(1, 'https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/c8b7fb/c8b7fbe0d10231783bb70a60951a1a05_large.jpg', 'Dr. Matheus Sahione', 'Psicólogo (Terapia Cognitivo-Comportamental, Psicoterapia Breve, Problemas de Relacionamento), Terapeuta complementar', '05/54594', 'O psicólogo clínico, a partir da demanda do paciente, o ajuda a mapear seus objetivos para então direcionar e conduzir o trabalho terapêutico. Em geral, a grande maioria dos psicólogos fica apreensiva em como adequar o paciente à sua linha de abordagem . Minha preocupação, no entanto, é trabalhar com as técnicas que irão lhe proporcional o melhor resultado, independente da linha teórica que as embasam. Certamente existem algumas incongruências e até incompatibilidades entre uma abordagem e outras, mas isso não significa que não haja também muito material útil a ser compartilhado, que no fim das contas, trará ganhos para a terapia.', '- Graduação Universidade Veiga de Almeida\r\n- Pós Graduação em Terapia Cognitivo Comportamental\r\n- Pós Graduação em Terapia Existencial Fenomenológica\r\n- Pós Graduação em Neuropsicologia\r\n- Formação em hipnoterapia e PNL\r\n- Curso de extensão em doenças psicossomáticas', 'Av. Graça Aranha 416 9º andar, Centro, Rio de Janeiro\r\n(Consultório Particular no Centro)', '(21) 27573836', 'matheussahione@gmail.com', 'Português, Espanhol'),
(2, 'https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/5805de/5805ded7485274e77effc36fd00e5f35_large.jpg', 'Dra. Luciana De Souza Cugula', 'Psicólogo (Traumas Psicológicos, Transtornos em Crianças e Adolescentes, Transtornos de Ansiedade)', '05/59488', 'Grupo e oficina de memória, voltados para estimulação cognitiva.\r\nSimpósio de dependência química.\r\nCurso bullying e o suicídio.\r\nAutolesão sem intenção suicida.\r\nOs transtornos do exagero.\r\nPrevenção e introdução e posvenção do suicídio.', 'Universidade Estácio de Sá\r\nCurso Terapia cognitiva comportamental\r\nCurso Transtorno do Exagero\r\nCurso bullying e suicídio', 'Rua Real Grandeza, 139 sala 708, Botafogo, Rio de Janeiro.', '(21) 97345-8851', 'Lucianacugula@gmail.com', 'Português'),
(3, 'https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/70e041/70e04142f4353a51c98101196bf2f013_large.jpg', 'Dra. Betânia Tassis', 'Psicólogo (Traumas Psicológicos, Transtornos de Ansiedade, Analista do Comportamento), Sexólogo , Psicanalista', '05/28261', 'Especialista em Psicanálise Sistêmica: Casal e Família pela PUC/RIO - 2018. Especialização em Terapia Focal pela Santa Casa de Misericórdia do Rio de Janeiro - 2013. Pós-graduada na área de Ciências da Saúde (Saúde Mental) em nível de Residência no convênio celebrado entre IPUB/UFRJ/SMS. ano 2003/2004. Treinamento 5.760 horas. Mais de 20 anos de experiência em psicologia clínica, coordenei e executei projetos sociais na área de geração de renda e novos negócios. Trabalhei em planejamento e gerenciamento estratégico de marketing e publicidade em empresas de grande porte.', 'Terapia de Família e Casal, PUC/RIO 2018\r\nTerapia Focal, Santa Casa de Misericórdia do Rio de janeiro, 2013\r\nEspecialista em Psicodiagnóstico, Centro de Psicodiagnóstico da Barra - RJ., 2002\r\nAvaliação Psicopatológica - Prática Ambulatorial, UFF - Hospital Antonio Pedro, 2015\r\nTerapia de Família e Casal, PUC - RJ, 2017\r\nGerente de Projetos, Habilitada pelo PMI no 3º setor, 2008\r\nSaúde Mental, Universidade Federal do Rio de Janeiro, 2003\r\nEspecialista em Marketing, ESPM - RJ., 2006', 'Rua Voluntários da Pátria 190 sala 1012, Botafogo, Botafogo, Rio de Janeiro\r\n(Consultório particular', '(21) 3239-5000', 'TassiaBetania@gmail.com', 'Português, Espanhol'),
(4, 'https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/b03ced/b03ced3a4ac2f1912726fd502dcf5815_large.jpg', 'Dra. Ana Paula Peixoto Bravo de Souza', 'Psiquiatra (Psiquiatria Geriátrica, Psiquiatria Biológica, Psiquiatria Ambulatorial)\r\n', '778290-RJ', 'Venho de uma família bem tradicional dentro da Medicina, então aos 5 anos já queria ser médica. E o que me fascinava era o cérebro humano, como\r\nEle funcionava e como isso em parte explicava o comportamento humano.Por isso ,fiz residência em Paiquiatria e a Capacitacao em\r\nMedicina do Sono em seu centro de excelência\r\n, o INSTITUTO DO SONO em\r\nSão Paulo.', 'Formação\r\nAtualizacao em &#34;Sleep Medicine for psychiatrists, APA, Toronto, 2015\r\nCongresso APA San Francisco, Associacao Americana de Psiquiatria, 2013\r\nCONGRESSO EUROPEU NEUROCIENCIAS, ECNP, 2015\r\nCongresso Brasileiro de Medicina do Sono, ABS, 2016\r\nCongresso Internacional Medicina do Sono, ABSONO, 2015\r\nCapacitação em Medicina do Sono, AFIP/UNIFESP, 2017\r\nGRADUAÇÃO EM MEDICINA, UERJ/RJ, 2004\r\nCongresso Brasileiro de Medicina do Sono, ABS, 2016\r\nCongresso Brasileiro de Medicina do Sono, ABS, 2017\r\nCongresso Brasileiro de Medicina do Sono, ABS, 2018\r\nBrain, Behavior and Emotions . Junho de 2019. Brasília , DF.\r\nCongresso Brasileiro de Medicina do Sono, ABS, 2019. F OZ DO IGUAÇU, BRASIL.', 'Av. Armando Lombardi 1000 - Bloco 2 - Sala 128 (Barra Life Medical Center), Barra Da Tijuca, Rio de ', '(21) 3251-5895', 'anapaula@gmail.com', 'Inglês, Francês, Português'),
(5, 'https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/989425/9894259b499670c1730efd2678579270_large.jpg', 'Dr. Fernando Antonio Bernardes\r\n', 'Psiquiatra (Psiquiatria Hospitalar, Psiquiatria Geriátrica, Psiquiatria da Infância e Adolescência)', 'RJ/480679', 'Sou psiquiatra clínico, formado há 31 anos. O meu atendimento ao paciente se propõe a ser uma abordagem humanizada que abranja todos os aspectos da sua vida pessoal, profissional, social e espiritual aliada à correlação com a sua história clínica global.\r\nA minha visão do paciente se foca no ser humano buscando ajuda, sendo o tratamento farmacológico parte integrante da totalidade do atendimento.\r\nTenho como proposta de atendimento o contato além do consultório, abrangendo também consultas domiciliares e hospitalares e atendimento a crises e emergências.', 'Psiquiatria, Instituto Philippe Pinel, 1988\r\nNeuropsiquiatria, Instituto Philippe Pinel, 2000\r\nInterconsulta psiquiátrica, HUCFF - UFRJ, 2006\r\nTerapia Cognitivo Comportamental e Sistêmica, NUTEFA, 2018\r\nDependencia Química, Hospital Municipal Jurandyr Manfredini, 2013', 'Av. Miguel Antônio Fernandes, 1333 sala 602 Bloco B, Recreio Dos Bandeirantes, Rio de Janeiro', '(21) 98792-8302', 'fernandoantonio@gmail.com', 'Francês, Inglês, Português'),
(6, 'https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/f06c74/f06c74a7d9f19a77c1949ee3c26e6eae_large.jpg', 'Dra. Paula Reis dos Santos Trezena Christino', 'Psiquiatra (Transtorno de Humor, Sexualidade Humana, Psiquiatria Ambulatorial)', '881449/RJ/317072', 'Durante a faculdade de medicina escolhi a psiquiatria e fui monitora de psiquiatria por 2 anos consecutivos na Santa casa de misericórdia do rio de janeiro, além de atuar como monitora de psicologia médica, fiz toda minha formação médica, publicação de trabalhos em congressos e escolhas de internatos optativos em psiquiatria desde o primeiro ano de faculdade.\r\nConcluí a residência médica em psiquiatria no instituto municipal Philippe Pinel. Trabalhei três anos na emergência do hospital psiquiátrico de Jurujuba, do hospital Jurandyr Manfredini, casa de saúde Saints Roman, além dos ambulatórios do HMJM, além de outros hospitais e postos de saúde.\r\nEm formação de estudos sobre psicoterapia\r\n\r\nAtualmente dedicada ao trabalho no consultório, pesquisas e formação psicanalítica e psicoterápica.\r\nAcredito que o atendimento aos sofrimentos das patologias psiquiátricas necessitam especialmente de maior empatia, humanização e respeito de tudo que há de singular no paciente, com um tempo amplo de escuta e atenção.', 'Médico, Fundação técnico educacional Souza Marques, 2009\r\nTítulo de especialista em psiquiatria, instituto municipal Philippe pinel, 2013\r\nResidência médica Instituto Municipal Philippe Pinel, 2013\r\nTerapia cognitivo comportamental, CPAF, 2018\r\nAssociada ABP e Aperj\r\nSanta casa de misericórdia, Rio de janeiro', 'Rua santa clara 33 sala 1111, Copacabana, Rio de Janeiro\r\nRua santa clara 33 sala 1111 22041011 Rio ', '(21) 99611-1023 Vivo', 'paulareis@gmail.com', 'Português, Inglês, Francês\r\n'),
(7, 'https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/8cbfed/8cbfed7d9a440cfffd6d1518e0f43b50_large.jpg', 'Dr. Marco Andre Mezzasalma', 'Psiquiatra (Transtorno de Humor, Psiquiatria Clínica, Psiquiatria Adulto)', '667226 - RJ', 'Sou formado em Medicina pela UFRJ, com Residência, Mestrado e Doutorado em Psiquiatria pelo Instituto de Psiquiatria da UFRJ. Trabalho com psiquiatria clínica desde o término da residência médica em 2000 e tenho experiência com emergência psiquiátrica, interconsulta hospitalar e pesquisa clínica, com mais de 50 artigos publicados em periódicos indexados internacionalmente.\r\n\r\nO atendimento inicial é constituído pela coleta da história singular do paciente e do levantamento e apuração de exames já realizados, a elaboração de uma conduta diagnóstica individualizada com exames complementares quando necessário e a elaboração de uma conduta terapêutica que é discutida com o paciente para elucidação de todas as possíveis dúvidas que o mesmo possa vir a ter.', 'Residência Médica em Psiquiatria, Instituto de Psiquiatria da Universidade Federal do Rio de Janeiro, 1999\r\nMestrado em Psiquiatria, Instituto de Psiquiatria da Universidade Federal do Rio de Janeiro, 2004\r\nDoutorado em Psiquiatria, Instituto de Psiquiatria da Universidade Federal do Rio de Janeiro, 2010', 'Rua Visconde de Pirajá, 414, sala 701, Ipanema, Rio de Janeiro\r\nConsultório particular', '(21) 2267-0388', 'marcoandre@gmail.com', 'Português, Inglês'),
(8, 'https://s3-sa-east-1.amazonaws.com/doctoralia.com.br/doctor/db5920/db5920ff9b875ef2330f00d046d56605_large.jpg', 'Dra. Raquel Peixoto Barbosa', 'Psiquiatra (Psiquiatria Clínica, Psiquiatria Ambulatorial, Psiquiatria Adulto)', '952079 RJ', '- O emocional está ligado ao físico. Portanto, não desprezo oportunidades de promover melhorias no bem estar geral do paciente quando elas se apresentam.\r\n- A aliança terapêutica entre o médico e o paciente é fundamental para o sucesso do tratamento. Prezo pela horizontalidade da relação e pela confiança que se estabelece a partir do cuidado integral e do acolhimento da pessoa em sofrimento. \r\n- Valorizo a participação do paciente nas decisões e a psicoeducação.\r\n- Meu atendimento é voltado à integralidade, com uma abordagem biopsicossocial. Isso significa que não somente os aspectos orgânicos e bioquímicos são considerados, mas a interação da pessoa com o meio, suas relações familiares e interpessoais, seus potenciais e limitações individuais, sua personalidade e suas particularidades.', 'Graduação em Medicina, Universidade Federal do Rio de Janeiro, 2012\r\nTítulo de especialista em Psiquiatria, Instituto Municipal Philippe Pinel, 2018', 'Rua Desembargador Izidro 40 - 8° andar, Tijuca, Rio de Janeiro\r\nConsultório particular', '(21) 2570-5515', 'raquelpeixoto@gmail.com', 'Idiomas\r\nPortuguês, Inglês');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `nome`, `email`, `mensagem`) VALUES
(1, 'matheus', 'matheusmoura@gmail.com', 'teste do teste do teste'),
(2, 'ALISSON JUNIOR OLIVEIRA FERREIRA', 'alisson.ferreira012@hotmail.com', 'teste'),
(3, 'agva', 'ahda', 'ahazhe');

-- --------------------------------------------------------

--
-- Estrutura da tabela `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `id_cadlugar` int(11) DEFAULT NULL,
  `crp` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `id_cadlugar`, `crp`, `telefone`) VALUES
(1, 'Dr. Matheus', 2, '9876537812', '(21)987366649'),
(2, 'Dr. Carlos', 9, '5841298479', '(21)982727050');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario_prof`
--

CREATE TABLE `horario_prof` (
  `id_horario` int(11) NOT NULL,
  `data_horario` datetime DEFAULT NULL,
  `id_prof` int(11) DEFAULT NULL,
  `disponivel` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `horario_prof`
--

INSERT INTO `horario_prof` (`id_horario`, `data_horario`, `id_prof`, `disponivel`) VALUES
(1, '2020-01-24 12:00:00', 1, 'Y');

-- --------------------------------------------------------

--
-- Estrutura da tabela `news`
--

CREATE TABLE `news` (
  `ID` int(255) NOT NULL,
  `Image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Subtitle` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Info` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `news`
--

INSERT INTO `news` (`ID`, `Image`, `Title`, `Subtitle`, `Info`) VALUES
(1, 'https://img.r7.com/images/cerebro-27082019153034594?dimensions=460x305', 'Linhas da psicologia analisam mente humana de forma diferente', 'PsicÃ³logo explica que todas as teorias sÃ£o aptas para tratar qualquer transtorno ou distÃºrbio utilizando caminhos e ferramentas distintos', 'Historicamente, a psicologia pertencia a uma Ã¡rea da filosofia â€” a epistemologia, ramo de estudos da natureza, origem e limitaÃ§Ãµes do conhecimento. Com o passar dos anos, transformou-se em uma disciplina cientÃ­fica distinta, com diversos ramos de pesquisas importantes. Entre elas, a experimental, biolÃ³gica, cognitiva, do desenvolvimento, personalidade e a social. A ciÃªncia tambÃ©m agrega subÃ¡reas de aplicaÃ§Ã£o, como a clÃ­nica, organizacional, escolar, da saÃºde, entre outras.\r\n\r\nO que muitas pessoas confundem, entretanto, sÃ£o as diferentes abordagens de um tratamento terapÃªutico. SÃ£o os mÃ©todos ou estratÃ©gias especÃ­ficas, utilizados para atingir um objetivo ou propÃ³sito, visando as necessidades do paciente. Esses instrumentos de trabalho, chamados corriqueiramente de \"linhas\", entendem os comportamentos e subjetividades de formas diferentes â€” embora tenham todos uma mesma finalidade, em consultÃ³rio. â€œCada uma das abordagens trabalha ferramentas e caminhos distintos para um mesmo objetivo, que Ã© acolher o pacienteâ€, afirma o psicÃ³logo Yuri Busin (CRP-06/107708), diretor do Centro de AtenÃ§Ã£o Ã  SaÃºde Mental - EquilÃ­brio (CASME). Historicamente, a psicologia pertencia a uma Ã¡rea da filosofia â€” a epistemologia, ramo de estudos da natureza, origem e limitaÃ§Ãµes do conhecimento. Com o passar dos anos, transformou-se em uma disciplina cientÃ­fica distinta, com diversos ramos de pesquisas importantes. Entre elas, a experimental, biolÃ³gica, cognitiva, do desenvolvimento, personalidade e a social. A ciÃªncia tambÃ©m agrega subÃ¡reas de aplicaÃ§Ã£o, como a clÃ­nica, organizacional, escolar, da saÃºde, entre outras.\r\n\r\nO que muitas pessoas confundem, entretanto, sÃ£o as diferentes abordagens de um tratamento terapÃªutico. SÃ£o os mÃ©todos ou estratÃ©gias especÃ­ficas, utilizados para atingir um objetivo ou propÃ³sito, visando as necessidades do paciente. Esses instrumentos de trabalho, chamados corriqueiramente de \"linhas\", entendem os comportamentos e subjetividades de formas diferentes â€” embora tenham todos uma mesma finalidade, em consultÃ³rio. â€œCada uma das abordagens trabalha ferramentas e caminhos distintos para um mesmo objetivo, que Ã© acolher o pacienteâ€, afirma o psicÃ³logo Yuri Busin (CRP-06/107708), diretor do Centro de AtenÃ§Ã£o Ã  SaÃºde Mental - EquilÃ­brio (CASME).\r\n\r\nSegundo ele, todas as abordagens sÃ£o capazes de tratar qualquer distÃºrbio ou transtorno e a escolha por uma abordagem ou prÃ¡tica psicolÃ³gica deve ser feita com base na preferÃªncia do paciente. Busin recomenda marcar uma consulta inicial para tirar as dÃºvidas, uma vez que as decisÃµes dependem exclusivamente da experiÃªncia pessoal que cada paciente terÃ¡ ao vivenciar seu processo de psicoterapia.\r\n\r\n\r\nO profissional alerta, ainda, que Ã© importante procurar sempre um psicÃ³logo ou um psicoterapeuta que seja ativo no Conselho Regional que normatiza e fiscaliza os profissionais da Ã¡rea. â€œMuitas pessoas nÃ£o sabem a diferenÃ§a e se confundem na procura de um profissional da saÃºde mental. Terapeutas, apenas, nÃ£o se formaram em um curso de Psicologia e nÃ£o respondem a um conselho que determina um cÃ³digo de Ã©tica, que padroniza prÃ¡ticas de atendimento, entre outras questÃµes importantes que, acima de tudo, preservem e guardem o paciente que o busca o serviÃ§oâ€, afirma.\r\n\r\nO curso de graduaÃ§Ã£o em Psicologia â€” que envolve cinco anos de formaÃ§Ã£o e centenas de horas de estÃ¡gios e experiÃªncias prÃ¡ticas de atendimento â€”, Ã© o Ãºnico que pode preparar este profissional. Para alÃ©m dos estudos aprofundados das abordagens clÃ­nicas, o psicÃ³logo graduado tambÃ©m passa por aulas de anatomia, estudo do cÃ©rebro, observaÃ§Ãµes in loco dos mais diferentes ambientes, psicopatologia, entre outras disciplinas especÃ­ficas. Para Busin, alÃ©m da confusÃ£o e da falta de informaÃ§Ã£o sobre o que Ã© a psicoterapia, tambÃ©m nÃ£o hÃ¡ uma regulamentaÃ§Ã£o adequada - tanto para os atuais coaches, como para os chamados terapeutas alternativos.\r\n\r\nO psicÃ³logo explica que todas as abordagens tentam, de alguma forma, entender por que agimos de determinadas maneiras, para quÃª agimos assim e, principalmente, como podemos solucionar estas questÃµes por meio de longas conversas e intervenÃ§Ãµes. Cada uma delas tem um enfoque Ãºnico â€” todos eficientes, Ã  sua maneira e forma de trabalhar.\r\n\r\nEle lembra que a psicologia nÃ£o Ã© uma ciÃªncia exata e que nÃ£o existem fÃ³rmulas mÃ¡gicas ou mesmo rÃ¡pidas para responder Ã s perguntas de cada paciente. â€œO trabalho do psicÃ³logo, muitas vezes, Ã© o de um artesÃ£o. E nossas teorias sÃ£o as ferramentasâ€, afirma.'),
(2, 'https://dhg1h5j42swfq.cloudfront.net/2020/01/06120551/2E88FACC-F586-4EF0-86C5-E0135D30F9A8.jpeg', 'Psicologia para Concursos PÃºblicos â€“ ConteÃºdos e Dicas', 'Nesse artigo, vocÃª â€“ psicÃ³loga(o) â€“ vai ter acesso a conteÃºdos e dicas para concursos de psicologia!', 'ConteÃºdos â€“ O que Ã© cobrado em concursos de Psicologia?\r\nOs concursos pÃºblicos costumam divulgar quais conteÃºdos serÃ£o cobrados a partir de seus editais. Na psicologia, existem diversos temas que podem cair em prova, conforme caracterÃ­sticas da banca examinadora, descriÃ§Ã£o do cargo e nÃ­vel de concorrÃªncia.\r\n\r\nPara facilitar a vida de quem estÃ¡ comeÃ§ando a estudar para concursos, eu analisei 55 editais de diferentes Ã³rgÃ£os pÃºblicos (Assembleia Legislativa, Conselhos Regionais, Universidades, Prefeituras, por exemplo) e verifique quais conteÃºdos foram mais cobrados em provas de 2019.\r\n\r\nA partir dessa pesquisa, podemos dizer que existem cinco categorias mais frequentes em provas.\r\n\r\nEssa distribuiÃ§Ã£o de temas em provas reflete ainda o predomÃ­nio da Psicologia ClÃ­nica como Ã¡rea de conhecimento que orienta a atuaÃ§Ã£o do psicÃ³logo brasileiro. NÃ³s, como profissionais, seremos convidados a entender, intervir e oferecer respostas sobre aspectos subjetivos de indivÃ­duos e grupos.\r\n\r\nPsicologia da SaÃºde, AvaliaÃ§Ã£o PsicolÃ³gica e Psicopatologia sÃ£o Ã¡reas diferentes, mas que complementam e sÃ£o fundamentais para a compreensÃ£o do ser humano â€“ inserido em um contexto, com historicidade, crenÃ§as e comportamentos de saÃºde-doenÃ§a.\r\n\r\nA Psicologia Organizacional e do Trabalho, considerada a â€œovelha negraâ€ da psicologia (muito injustamente), apresenta conteÃºdos que sÃ£o cobrados e relevantes para promover aÃ§Ãµes de qualidade de vida nos ambientes de trabalho. Por isso, ela tambÃ©m tem ganhado expressividade, aparecendo como uma das cinco Ã¡reas mais cobradas.\r\n\r\nDe forma geral, eu recomendo 5 dicas que acredito possam ser Ãºteis ao estudar para concursos:\r\n\r\nDefina seu foco de concurso: prefeituras? tribunais? assembleias legislativas? conselhos? universidades? â€“ mas tenha sempre um plano B.\r\nOrganize sua rotina: defina seu ambiente de estudo, estabeleÃ§a horÃ¡rios e os conteÃºdos a serem estudados;\r\nPriorize conteÃºdos: prioridades sÃ£o definidas conforme a experiÃªncia de cada um. Se vocÃª Ã© iniciante, talvez seja interessante dedicar mais tempo para os conteÃºdos especÃ­ficos â€“ no caso, temas da psicologia -, pois os conteÃºdos gerais podem mudar de edital para edital. JÃ¡ pensou nisso?\r\nEstudar, revisar e praticar: esses sÃ£o os verbos do SUCESSO e, como verbos, convidam vocÃª â€“ o sujeito â€“ para ser agente e nÃ£o esperar um milagre! Combinado?\r\nManejo de estresse e ansiedade: a ideia Ã© ter clareza que vocÃª Ã© o principal recurso para alcanÃ§ar seus objetivos. Ã‰ preciso reconhecer limites e potencialidades para evitar que sintomas de estresse e ansiedade boicotem seus planos. Cuide da sua saÃºde mental e cultive hÃ¡bitos saudÃ¡veis\r\n\r\n'),
(3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLxXqfEvdchv_645vs0uHNMJI1KWbumsaOjaCb-r67OI-BpTvx&s', 'Fingir emoÃ§Ãµes no trabalho faz mal, diz estudo', 'Pesquisadores apontam que mascarar sentimentos pode prejudicar relacionamentos no trabalho e abalar a prÃ³pria saÃºde mental', 'A maioria das pessoas acredita que emoÃ§Ãµes negativas nÃ£o tÃªm espaÃ§o no trabalho, e, portanto, devem ser escondidas a todo custo com falsas emoÃ§Ãµes positivas (por mais difÃ­cil que seja fazer isso). PorÃ©m, um estudo da Universidade do Arizona (EUA) recÃ©m-publicado no Journal of Applied Psychology indica que esse tipo de comportamento mais atrapalha do que ajuda.\r\n\r\nDe acordo com Allison Gabriel, professora associada de administraÃ§Ã£o e organizaÃ§Ãµes na Eller College of Management da Universidade do Arizona, nÃ³s temos duas formas de regular as emoÃ§Ãµes no trabalho: atuaÃ§Ã£o de superfÃ­cie e atuaÃ§Ã£o profunda. \"AtuaÃ§Ã£o de superfÃ­cie Ã© fingir aquilo que vocÃª estÃ¡ demonstrando aos outros. Por dentro, vocÃª pode estar chateado ou frustrado; mas por fora, vocÃª estÃ¡ se esforÃ§ando para ser agradÃ¡vel ou positivo\", ela explicou em um comunicado. \"AtuaÃ§Ã£o profunda Ã© tentar mudar o que vocÃª sente por dentro. Quando vocÃª estÃ¡ atuando profundamente, na verdade, vocÃª estÃ¡ tentando alinhar como vocÃª se sente com como vocÃª interage com os outros.\"\r\n\r\nNo estudo conduzido por Gabriel e seus colegas, foram analisados funcionÃ¡rios de diferentes setores, incluindo educaÃ§Ã£o, indÃºstria, engenharia e finanÃ§as. No fim, os pesquisadores puderam identificar quatro perfis diferentes entre os voluntÃ¡rios: nÃ£o-atores, que pouco investem na atuaÃ§Ã£o profunda e na de superfÃ­cie; atores baixos, que demonstram baixos nÃ­veis de atuaÃ§Ã£o profunda e de superfÃ­cie; atores profundos, que tÃªm nÃ­veis mais altos  atuaÃ§Ã£o profunda, mas baixos de atuaÃ§Ã£o de superfÃ­cie; e, por fim, reguladores, que tÃªm altos nÃ­veis dos dois tipos de atuaÃ§Ã£o.\r\n\r\nGabriel e sua equipe tambÃ©m encontraram diferentes propÃ³sitos para o regulamento de emoÃ§Ãµes, e os separaram nas categorias \"prossocial\" (que envolve a intenÃ§Ã£o de ser um bom colega de trabalho e cultivar relacionamentos positivos) e \"administraÃ§Ã£o de impressÃµes\" (que Ã© mais estratÃ©gica e inclui ganhar acesso a recursos e compor uma boa aparÃªncia a colegas e gestores). O estudo demonstrou que enquanto aqueles com o perfil regulador se encaixavam mais no grupo de administraÃ§Ã£o de impressÃµes, os atores profundos tinham mais tendÃªncia a entrar para a categoria prossocial.\r\n\r\nPor causa de seu comportamento, atores profundos tÃªm mais benefÃ­cios no trabalho: ganham mais apoio de colegas, recebem mais conselhos e tÃªm mais ajuda em suas tarefas. Os relatos dos voluntÃ¡rios da pesquisa com esse perfil tambÃ©m apontaram mais sucesso em metas de carreira e maior confianÃ§a por parte dos outros funcionÃ¡rios.\r\n\r\nPor outro lado, ao se esforÃ§arem em apenas fingir emoÃ§Ãµes, reguladores tÃªm seu bem-estar afetado. \"[Eles tiveram] Ã­ndices mais altos de exaustÃ£o emocional, e se sentem menos autÃªnticos no trabalho\", apontou Gabriel.\r\n\r\nA partir dessas descobertas, a pesquisadora defende que nÃ£o adianta mascarar seus verdadeiros sentimentos sem realmente lidar com suas emoÃ§Ãµes. \"Talvez colocar um sorriso no rosto sÃ³ para fugir de uma interaÃ§Ã£o seja uma saÃ­da mais rÃ¡pida, mas, a longo prazo, isso abala os esforÃ§os para melhorar a sua saÃºde e seus relacionamentos de trabalho\", reflete. \"De muitas maneiras, tudo se resume a \'vamos ser legais uns com os outros\'. NÃ£o sÃ³ as pessoas se sentirÃ£o melhor como tambÃ©m a performance delas e seus relacionamentos melhorarÃ£o.\"\r\n\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `hora_solicacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_horario` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `hora_solicacao`, `id_horario`, `id_usuario`) VALUES
(1, '2020-01-22 14:28:59', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `restrito`
--

CREATE TABLE `restrito` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `restrito`
--

INSERT INTO `restrito` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'matheus', 'm1@gmail.com', 'm123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cadlugar`
--
ALTER TABLE `cadlugar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cadprof`
--
ALTER TABLE `cadprof`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `id_cadlugar` (`id_cadlugar`);

--
-- Índices para tabela `horario_prof`
--
ALTER TABLE `horario_prof`
  ADD PRIMARY KEY (`id_horario`),
  ADD KEY `id_prof` (`id_prof`);

--
-- Índices para tabela `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_horario` (`id_horario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `restrito`
--
ALTER TABLE `restrito`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cadlugar`
--
ALTER TABLE `cadlugar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `cadprof`
--
ALTER TABLE `cadprof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `horario_prof`
--
ALTER TABLE `horario_prof`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `news`
--
ALTER TABLE `news`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `restrito`
--
ALTER TABLE `restrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`id_cadlugar`) REFERENCES `cadlugar` (`id`);

--
-- Limitadores para a tabela `horario_prof`
--
ALTER TABLE `horario_prof`
  ADD CONSTRAINT `horario_prof_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `cadprof` (`id`);

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_horario`) REFERENCES `horario_prof` (`id_horario`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `cadastro` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
