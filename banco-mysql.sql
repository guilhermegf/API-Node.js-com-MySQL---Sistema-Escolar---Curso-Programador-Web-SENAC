-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 20-Maio-2023 às 02:33
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `programadorweb-10-03-2023`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `codigoaluno` int(10) UNSIGNED NOT NULL,
  `nome` varchar(200) NOT NULL,
  `endereco` varchar(500) DEFAULT NULL,
  `telefone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`codigoaluno`, `nome`, `endereco`, `telefone`) VALUES
(9, 'joão33', 'rua x44', '12314564677'),
(10, 'Maria Oliveira', 'Rua B, 456', '2222222222'),
(11, 'José Santos', 'Rua C, 789', '3333333333'),
(12, 'Ana Souza', 'Rua D, 1011', '4444444444'),
(13, 'Luiz Pereira', 'Rua E, 1213', '5555555555'),
(14, 'Mariana Almeida', 'Rua F, 1415', '6666666666'),
(15, 'Rafaela Costa', 'Rua G, 1617', '7777777777'),
(16, 'Fernando Martins', 'Rua H, 1819', '8888888888'),
(17, 'Carlos Rocha', 'Rua I, 2021', '9999999999'),
(18, 'Paula Mendes', 'Rua J, 2223', '1010101010'),
(19, 'Juliana Rodrigues', 'Rua K, 2425', '1111222233'),
(20, 'Pedro Oliveira', 'Rua L, 2627', '2222333344'),
(21, 'Vitória Santos', 'Rua M, 2829', '3333444455'),
(22, 'Lucas Souza', 'Rua N, 3031', '4444555566'),
(23, 'Mariana Ferreira', 'Rua O, 3233', '5555666677'),
(24, 'Paulo Silva', 'Rua P, 3435', '6666777788'),
(25, 'Amanda Pereira', 'Rua Q, 3637', '7777888899'),
(26, 'Roberto Almeida', 'Rua R, 3839', '8888999900'),
(27, 'Camila Costa', 'Rua S, 4041', '9999000011'),
(28, 'Diego Martins', 'Rua T, 4243', '1011121314'),
(29, 'Thiago Oliveira', 'Rua U, 4445', '1111222233'),
(30, 'Isabela Santos', 'Rua V, 4647', '2222333344'),
(31, 'Carlos Souza', 'Rua W, 4849', '3333444455'),
(32, 'Juliana Ferreira', 'Rua X, 5051', '4444555566'),
(33, 'Rafael Silva', 'Rua Y, 5253', '5555666677'),
(34, 'Mariana Costa', 'Rua Z, 5455', '6666777788'),
(35, 'Vinicius Almeida', 'Rua A1, 5657', '7777888899'),
(37, 'Lucas Oliveira', 'Rua C1, 6061', '9999000011'),
(38, 'Bruna Rodrigues', 'Rua D1, 6263', '1011121314');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `codigocurso` int(10) UNSIGNED NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cargahoraria` int(11) NOT NULL,
  `inicio` date NOT NULL,
  `termino` date NOT NULL,
  `turno` varchar(50) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`codigocurso`, `nome`, `cargahoraria`, `inicio`, `termino`, `turno`, `valor`) VALUES
(5, 'teste', 10, '2020-10-10', '2020-10-21', 'noite', '30.10'),
(6, 'Curso de Programação', 80, '2023-05-01', '2023-08-31', 'Manhã', '800.00'),
(7, 'Curso de Marketing', 60, '2023-06-01', '2023-09-30', 'Tarde', '600.00'),
(8, 'Curso de Administração', 70, '2023-07-01', '2023-10-31', 'Noite', '700.00'),
(15, 'Matemática', 10, '2023-04-28', '2023-04-29', 'matutino', '20.00'),
(16, 'Português', 14, '2023-04-21', '2023-04-12', 'matutino', '20.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matriculas`
--

CREATE TABLE `matriculas` (
  `codigomatricula` int(10) UNSIGNED NOT NULL,
  `codigoaluno` int(11) UNSIGNED NOT NULL,
  `codigocurso` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `matriculas`
--

INSERT INTO `matriculas` (`codigomatricula`, `codigoaluno`, `codigocurso`) VALUES
(340, 9, 5),
(341, 10, 5),
(342, 11, 5),
(343, 12, 5),
(344, 13, 5),
(345, 14, 5),
(346, 15, 5),
(347, 16, 5),
(348, 17, 5),
(349, 18, 5),
(350, 19, 5),
(351, 20, 5),
(352, 21, 5),
(353, 22, 5),
(354, 23, 5),
(355, 24, 5),
(356, 25, 5),
(357, 26, 5),
(360, 9, 6),
(361, 10, 6),
(362, 11, 6),
(363, 12, 6),
(364, 13, 6),
(365, 14, 6),
(366, 15, 6),
(367, 16, 6),
(368, 17, 6),
(369, 18, 6),
(370, 19, 6),
(371, 20, 6),
(372, 21, 6),
(373, 22, 6),
(374, 23, 6),
(375, 24, 6),
(376, 25, 6),
(377, 26, 6),
(378, 27, 6),
(379, 28, 6),
(380, 9, 7),
(381, 10, 7),
(382, 11, 7),
(383, 12, 7),
(384, 13, 7),
(385, 14, 7),
(386, 15, 7),
(387, 16, 7),
(388, 17, 7),
(389, 18, 7),
(390, 19, 7),
(391, 20, 7),
(392, 21, 7),
(393, 22, 7),
(394, 23, 7),
(395, 24, 7),
(396, 25, 7),
(397, 26, 7),
(398, 27, 7),
(399, 28, 7),
(401, 10, 8),
(402, 11, 8),
(403, 12, 8),
(404, 30, 8),
(405, 25, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `codigousuario` int(11) NOT NULL,
  `data_criacao` datetime NOT NULL,
  `data_expiracao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `codigousuario`, `data_criacao`, `data_expiracao`) VALUES
(23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ291c3VhcmlvIjoxLCJpYXQiOjE2ODM3NTkyMzEsImV4cCI6MTY4Mzc5NTIzMX0.lF-2GSFmQKrHpEFN-1Ymhvgc92aptaSzATa_bWTAtmE', 1, '2023-05-10 21:53:51', '2023-05-10 23:53:51'),
(24, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ291c3VhcmlvIjoxLCJpYXQiOjE2ODM3NTk3MjEsImV4cCI6MTY4Mzc5NTcyMX0.2v3ynED1fxY3NUfb4P0aXe_Keeimb0QlJ0gB7Ukv49w', 1, '2023-05-10 22:02:01', '2023-05-11 00:02:01'),
(25, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ291c3VhcmlvIjoxLCJpYXQiOjE2ODM3NjAxMzMsImV4cCI6MTY4Mzc5NjEzM30.ULYu9PnGNVqpGl0fU0oJ-CubgEznpMrRtOuDli5s-nU', 1, '2023-05-10 22:08:53', '2023-05-11 00:08:53'),
(26, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ291c3VhcmlvIjoxLCJpYXQiOjE2ODM3NjAyMjEsImV4cCI6MTY4Mzc5NjIyMX0.RMijI6vje7GQD1CY4u99eMe_cDXxhN79INUIoiIha64', 1, '2023-05-10 22:10:21', '2023-05-11 00:10:21'),
(27, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ291c3VhcmlvIjoxLCJpYXQiOjE2ODM3NjEyNjksImV4cCI6MTY4Mzc5NzI2OX0.dFE3pSs0hVmt3eyU3FgUXQD8-j7Tie0qHv3OOZSwnlU', 1, '2023-05-10 22:27:49', '2023-05-11 00:27:49'),
(28, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ291c3VhcmlvIjoxLCJpYXQiOjE2ODM3NjQ2MjgsImV4cCI6MTY4MzgwMDYyOH0.ark6881u185MwFAgt2AhapKXruC52Q4QJzRDzGUaifc', 1, '2023-05-10 23:23:48', '2023-05-11 01:23:48'),
(29, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ291c3VhcmlvIjoxLCJpYXQiOjE2ODM3NjUzNzUsImV4cCI6MTY4MzgwMTM3NX0.QPDe63CMbp1fTrauXkK3kxQao3nkIyooiPRTx5KY7Os', 1, '2023-05-10 23:36:15', '2023-05-11 01:36:15'),
(30, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ291c3VhcmlvIjoxLCJpYXQiOjE2ODM3NjU2MDksImV4cCI6MTY4MzgwMTYwOX0.QOyi-EfhY_D6CxMQHU5roJ_9El56IbYTeFBKYFOGZN0', 1, '2023-05-10 23:40:09', '2023-05-11 01:40:09'),
(31, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ291c3VhcmlvIjoxLCJpYXQiOjE2ODM5MzIyNTcsImV4cCI6MTY4Mzk2ODI1N30.3Ub7bU68ZMqdiPK1XX60imvm8cgFfpxCFF9uSEfuQss', 1, '2023-05-12 22:57:37', '2023-05-12 23:57:37'),
(32, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ291c3VhcmlvIjoxLCJpYXQiOjE2ODM5MzIzMTksImV4cCI6MTY4Mzk2ODMxOX0.sgeW5_rOZ2S8rk4jAhUaVSgLSgI-MzcCE8LInBKqC70', 1, '2023-05-12 22:58:39', '2023-05-12 23:58:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `codigousuario` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`codigousuario`, `nome`, `email`, `senha`) VALUES
(1, 'João da Silva', 'joao.silva@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Maria Oliveira', 'maria.oliveira@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Pedro Santos', 'pedro.santos@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'Ana Luiza Pereira', 'ana.pereira@yahoo.com.br', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Lucas Oliveira', 'lucas.oliveira@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`codigoaluno`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codigocurso`);

--
-- Índices para tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`codigomatricula`),
  ADD KEY `codigoaluno_fk` (`codigoaluno`),
  ADD KEY `codigocurso_fk` (`codigocurso`);

--
-- Índices para tabela `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codigousuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `codigoaluno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `codigocurso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `codigomatricula` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT de tabela `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `codigousuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `codigoaluno_fk` FOREIGN KEY (`codigoaluno`) REFERENCES `alunos` (`codigoaluno`),
  ADD CONSTRAINT `codigocurso_fk` FOREIGN KEY (`codigocurso`) REFERENCES `cursos` (`codigocurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
