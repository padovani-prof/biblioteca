-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 04/08/2025 às 22:05
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atividade`
--

CREATE TABLE `atividade` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `subtitulo` varchar(100) NOT NULL,
  `foto_miniatura1` varchar(255) NOT NULL,
  `foto_miniatura2` varchar(255) NOT NULL,
  `foto_miniatura3` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `foto_principal` varchar(255) NOT NULL,
  `ordem` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `dias_funcionamento` varchar(255) NOT NULL,
  `horarios` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atividade`
--

INSERT INTO `atividade` (`id`, `titulo`, `subtitulo`, `foto_miniatura1`, `foto_miniatura2`, `foto_miniatura3`, `texto`, `foto_principal`, `ordem`, `descricao`, `dias_funcionamento`, `horarios`) VALUES
(1, 'Atividade de Leitura', 'Encontro semanal de leitura com as crianças.', 'https://picsum.photos/300?random=10', 'https://picsum.photos/300?random=11', 'https://picsum.photos/300?random=12', 'Momento de leitura', 'https://picsum.photos/300?random=13', 1, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', 'De segunda a sexta-feira', 'das 11h ás 13hr'),
(2, 'Oficina de Artes', 'Workshop de artes para jovens.', 'https://picsum.photos/300?random=14', 'https://picsum.photos/300?random=15', 'https://picsum.photos/300?random=16', 'Workshop de jovens', 'https://picsum.photos/300?random=17', 2, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'Às terças', 'Das 07h às 11h e das 14h às 17h'),
(3, 'Sustentabilidade', 'Discussão sobre sustentabilidade e práticas.', 'https://picsum.photos/300?random=17', 'https://picsum.photos/300?random=18', 'https://picsum.photos/300?random=19', 'Capacitação de sustentabilidade', 'https://picsum.photos/300?random=20', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.', 'Aos sábados e domingos', 'Às 15h');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria_time`
--

CREATE TABLE `categoria_time` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `ordem` int(11) NOT NULL,
  `ativo` char(1) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria_time`
--

INSERT INTO `categoria_time` (`id`, `nome`, `ordem`, `ativo`) VALUES
(1, 'DIRETORAS', 2, 'S'),
(2, 'VOLUNTARIOS', 3, 'S'),
(3, 'BOLSISTAS', 4, 'S'),
(4, 'FUNDADORAS', 1, 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe_time`
--

CREATE TABLE `equipe_time` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cargo` varchar(60) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `cod_categoria` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `ativo` char(1) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `equipe_time`
--

INSERT INTO `equipe_time` (`id`, `nome`, `cargo`, `foto`, `cod_categoria`, `ordem`, `ativo`) VALUES
(1, 'Ethel Silva de Oliveira', 'Diretora Executiva', 'assets/ethel.png', 1, 2, 'S'),
(2, 'Elisângela Silva de Oliveira', 'Diretora Administrativa', 'assets/autora1.png', 1, 1, 'S'),
(3, 'Katiani Antunes', 'Coordenadora Geral', 'assets/katiani.png', 1, 3, 'S'),
(4, 'Eveli Rayane da Silva Ramos', 'Diretoria', '', 3, 1, 'N'),
(5, 'Ayrton Carlos', 'Técnico / Educador de Flauta Doce', 'assets/bolsistas/ayrton.jpeg', 3, 5, 'S'),
(6, 'Allana Victoria', 'Educadora de Arte Terapia', '', 3, 4, 'S'),
(7, 'Tamylla Vitória', 'Gerente da Biblioteca', 'assets/bolsistas/tamylla2.jpeg', 3, 38, 'S'),
(8, 'Liv Shayane', 'Educadora de Teatro', '', 3, 23, 'S'),
(9, 'Lucimara Coimbra', 'Educadora de Letramento no Matutino', '', 3, 25, 'S'),
(10, 'Rayna Vitória', 'Educadora de Letramento, Numeramento e Esporte no Vespertino', 'assets/bolsistas/rayna.jpeg', 3, 33, 'S'),
(12, 'Lady Kelly', 'Educadora de Letramento no Matutino/Vespertino', '', 3, 20, 'S'),
(13, 'Kellyane de Lima', 'Encarregada pelo Cine Biblioteca', 'assets/bolsistas/kellyane1.jpeg', 3, 19, 'S'),
(14, 'Beatriz Viana', 'Educadora de Letramento no Matutino', 'assets/bolsistas/beatriz_viana1.jpeg', 3, 8, 'S'),
(15, 'Luiz Felipe', 'Auxiliar de Numeramento no Matutino/Vespertino', 'assets/bolsistas/luiz2.jpeg', 3, 26, 'S'),
(16, 'Airton Serrão', 'Educador de Musica e Cultura', '', 3, 6, 'S'),
(17, 'Liana da Silva ', 'Assistente de Letramento no Matutino', '', 2, 24, 'S'),
(18, 'Marcleyzi da Silva', 'Atua no Projeto de Histórias de Vida (adulto)', '', 3, 28, 'S'),
(19, 'Beatriz Pereira', 'Responsável pelo Esporte e Cultura', '', 3, 7, 'S'),
(20, 'Alcides de Queiroz', 'Acolhedor no Vespertino', '', 2, 1, 'N'),
(21, 'Gerilson Albuquerque', 'Gerente da Biblioteca', 'assets/bolsistas/gerilson.jpeg', 3, 14, 'S'),
(22, 'Tamires Silva', 'Atua no Projeto de Historias de Vida', 'assets/bolsistas/tamires.jpeg', 3, 37, 'S'),
(23, 'Agrício --', '[conecta idoso]', '', 3, 2, 'S'),
(24, 'Aldenor --', '[Eco Comunidade]', '', 3, 3, 'S'),
(25, 'Eric --', '[Eco Comunidade]', '', 3, 10, 'S'),
(26, 'Gabriele --', '[Eco Comunidade]', '', 3, 13, 'S'),
(27, 'Geone da Mata', 'Esporte', '', 3, 15, 'S'),
(28, 'Jéssica Maria Nunes Sá', 'Apoio na aula de Artes', 'assets/bolsistas/Jessica.jpeg', 2, 16, 'S'),
(29, 'Jose--', 'Eco comunidade', '', 3, 17, 'S'),
(30, 'Leo--', '[Eco Comunidade]', '', 3, 21, 'S'),
(31, 'Letícia--', '[CineBiblioteca/Voluntaria]', '', 3, 22, 'S'),
(32, 'Marcos--', '[Acolhimento/Recepção]', 'assets/bolsistas/marcos.jpeg', 3, 29, 'N'),
(33, 'Maísa--', '[Eco comunidade]', '', 3, 27, 'S'),
(34, 'Matheus--', '[Eco comunidade]', '', 3, 30, 'S'),
(35, 'Nathalia--', '[Conecta Idoso]', '', 3, 31, 'S'),
(36, 'Pedro--', '[Conecta/Manutenção]', '', 3, 32, 'S'),
(37, 'Rebeca--', '[Cine Biblioteca]', 'assets/bolsistas/rebeca.jpeg', 3, 34, 'S'),
(38, 'Stefany--', '[Atendimento Bibli...]', '', 3, 36, 'S'),
(39, 'Renan--', '[Conecta-Manutenção]', '', 3, 35, 'S'),
(40, 'Victor--', '[conecta/manutençao]', '', 3, 39, 'S'),
(41, 'Victoria--', '[eco comunidade]', '', 3, 40, 'S'),
(42, 'Elisângela Silva de Oliveira', 'Diretora Administrativa', 'assets/autora1.png', 4, 1, 'S'),
(43, 'Sebastiana Nunes da Silva', 'Fundadora', '', 4, 2, 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `foto_atividade`
--

CREATE TABLE `foto_atividade` (
  `id` int(11) NOT NULL,
  `id_atividade` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `foto_noticia`
--

CREATE TABLE `foto_noticia` (
  `id` int(11) NOT NULL,
  `id_noticia` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticia`
--

CREATE TABLE `noticia` (
  `id` int(11) NOT NULL,
  `titulo_breve` varchar(40) NOT NULL,
  `titulo_real` varchar(200) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto_miniatura` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `foto_principal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `noticia`
--

INSERT INTO `noticia` (`id`, `titulo_breve`, `titulo_real`, `data`, `foto_miniatura`, `texto`, `foto_principal`) VALUES
(1, '16º SISEB.SP', 'Biblioteca foi selecionada para o 16º Seminário Internacional Biblioteca Viva.', '2025-05-26 20:27:11', 'assets/eventos/16siseb.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\r\n', 'assets/paginaInicial.jpg'),
(2, 'Amostra cultural', 'Biblioteca aprova novo projeto de leitura junto à FAPEAM', '2025-05-26 20:28:05', 'assets/eventos/.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\r\n', 'assets/paginaInicial.jpg'),
(3, 'Encanto - Cineblioteca', 'Biblioteca aprova novo projeto de leitura junto à FAPEAM', '2025-05-26 20:28:32', 'assets/eventos/encanto.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\r\n', 'assets/paginaInicial.jpg'),
(4, '15º feira do livro Annelore Floz', 'Biblioteca aprova novo projeto de leitura junto à FAPEAM', '2025-05-26 20:28:52', 'assets/eventos/15feiralivro.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\r\n', 'assets/paginaInicial.jpg'),
(6, 'UNIASELV - Páscoa Solidária', 'Biblioteca aprova novo projeto de leitura junto à FAPEAM', '2025-05-26 20:29:36', 'assets/eventos/uniaselv.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\r\n', 'assets/paginaInicial.jpg'),
(7, 'SICRED - visita das criaças MOVIELAND', 'Biblioteca aprova novo projeto de leitura junto à FAPEAM', '2025-05-26 20:29:50', 'assets/eventos/movieland.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\r\n', 'assets/paginaInicial.jpg'),
(8, 'Cofee Break - UEA', 'Biblioteca aprova novo projeto de leitura junto à FAPEAM', '2025-05-26 20:31:20', 'assets/eventos/cofeebreak.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\r\n', 'assets/paginaInicial.jpg'),
(9, 'Novo8 projeto de leitura', 'Biblioteca aprova novo projeto de leitura junto à FAPEAM', '2025-03-27 21:37:46', 'assets/autora1.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\r\n', 'assets/paginaInicial.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `parametro`
--

CREATE TABLE `parametro` (
  `codigo` int(11) NOT NULL,
  `identificador` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `titulo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `parametro`
--

INSERT INTO `parametro` (`codigo`, `identificador`, `descricao`, `titulo`) VALUES
(1, 'index_sobre_subtitulo', 'Um ponto de cultura e humanização', 'Subtítulo da seção sobre da página inicial '),
(2, 'index_sobre_titulo', 'Sobre nós', 'Titulo da seção sobre da pagina inicial'),
(3, 'index_sobre_cabecalho', 'Nossa Biblioteca', 'Cabeçalho da se'),
(4, 'index_sobre_botao', 'Saiba Mais', 'Texto do botão da seção sobre da página inicial'),
(5, 'index_sobre_descricao', 'Promover um ponto de cultura, sendo um espaço da produção de diferentes manifestações artísticas. Além de propiciar o acesso a diversidade literária para a comunidade, rodas de leituras, rodas musicais, concursos de poesia e desenho, oficinas de contação de histórias, oficinas gratuitas.', ''),
(6, 'index_titulo_nomesite', 'Biblioteca Maria Dolores', ''),
(7, 'index_noticias_titulo', 'Ultimas notícias', ''),
(8, 'index_partners_titulo', 'Nossos Patrocinadores', ''),
(9, 'index_local_tiendereco', 'Endereço', ''),
(10, 'index_local_endereco', 'R. Padre Calebe, 3725 - Mamoud Amed, Itacoatiara, Amazonas - Brasil', ''),
(11, 'index_local_cep', 'CEP: 69100-000', ''),
(12, 'index_local_titelefone', 'Contato', ''),
(13, 'index_local_telefone', '(92) 98488-2959', ''),
(14, 'index_local_tiemail', 'Email:', ''),
(15, 'index_local_email', 'biblioteca.com.br', ''),
(16, 'index_link_endereco', '<iframe\r\n            src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3926.092145456977!2d-58.460013684853755!3d-3.1372920977252846!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9261d4325d77b7d7%3A0x836c35a015b24b95!2sR.%20Padre%20Calebe%2C%203725%20-%20Mamoud%20Amed%2C%20Itacoatiara%20-%20AM%2C%2069100-000!5e0!3m2!1sen!2sbr!4v1698787733623!5m2!1sen!2sbr\"\r\n            width=\"100%\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"\r\n            referrerpolicy=\"no-referrer-when-downgrade\">\r\n        </iframe>', ''),
(17, 'index_rodape_tipix', 'Deseja Contribuir com um PIX?', ''),
(18, 'index_rodape_descpix', 'Aceitamos sua doação! Se você deseja contribuir com as despesas mensais e atividades da Biblioteca Comunitária Maria Dolores, segue abaixo os dados bancários para transferência.', ''),
(19, 'index_rodape_tifavorecido', 'Favorecido:', ''),
(20, 'index_rodape_favorecido', 'Centro Epírita Maria Dolores', ''),
(21, 'index_rodape_titipochave', 'Tipo de Chave:', ''),
(22, 'index_rodape_tipochave', 'CNPJ', ''),
(23, 'index_rodape_tichave', 'Chave PIX:', ''),
(24, 'index_rodape_chave', '63.659.213/0001-40', ''),
(25, 'index_rodape_tiinstituicao', 'Instituição:', ''),
(26, 'index_rodape_instituicao', 'Sicoob Amazônia', ''),
(27, 'index_rodape_tisocial', 'SOCIAL', ''),
(28, 'started_maria_titulo', 'Quem foi Maria Dolores?', ''),
(29, 'started_maria_descricao', 'Mentora espiritual do Centro Espírita Maria Dolores, escritora e poetisa que lutou pela causa das\n                        mulheres e meninas órfãs.', ''),
(30, 'started_maria_saibamais', 'Saiba mais, acesse o link abaixo:', ''),
(31, 'started_maria_nomelink', 'Conheça a história do Centro Espírita Maria Dolores', ''),
(32, 'started_logomarca_titulo', 'Conheça o significado dos elementos da logomarca da biblioteca.', ''),
(34, 'doacao_ajudar_titulo', 'Como Ajudar', ''),
(35, 'doacao_tipoajuda_valor', 'DOAÇÃO EM DINHEIRO', ''),
(36, 'doacao_descajuda_descvalor', 'Toda contribuição, independentemente do valor e a qualquer momento, ajuda a manter nossas atividades e serviços. Com o seu apoio, conseguimos levar cultura, educação e acolhimento a quem mais precisa. Acesse abaixo os dados do PIX para doar.', ''),
(37, 'doacao_tipoajuda_materiais', 'DOAÇÃO DE MATERIAIS', ''),
(38, 'doacao_descajuda_descmateriais', 'Aceitamos doações de livros, brinquedos, roupas e outros materiais, para oferecer às crianças da biblioteca mais conforto, bem-estar e melhores oportunidades de desenvolvimento.', ''),
(39, 'doacao_tipoajuda_voluntariado', 'VOLUNTARIADO', ''),
(40, 'doacao_descajuda_descvoluntariado', 'Estamos em busca de voluntários dispostos a dedicar um pouco do seu tempo para transformar vidas. Com sua ajuda, podemos oferecer mais atividades, apoio educacional e atenção às crianças que frequentam nossa biblioteca.', ''),
(41, 'doacao_tipoajuda_patrocinios', 'PATROCÍNIO E PARCERIAS', ''),
(42, 'doacao_descajuda_descpatrocinios', 'Com seu apoio regular, poderemos ampliar nosso acervo, oferecer atividades culturais gratuitas, promover oficinas e manter um espaço acolhedor e acessível para toda a comunidade.', ''),
(43, 'emprestimo_info_titulo', 'SERVIÇO DE EMPRÉSTIMO DE LIVROS DISPONÍVEL', ''),
(44, 'emprestimo_info_desc', 'Venha nos visitar e aproveite para conhecer nosso acervo literário.', ''),
(45, 'emprestimo_info_tihorario', 'Horário de Funcionamento:', ''),
(46, 'emprestimo_info_horario', 'Segunda à Sábado, 08h às 12h | 14h às 17h', ''),
(47, 'emprestimo_info_tirequisito', 'Requisitos:', ''),
(48, 'emprestimo_info_requisito', 'Documento de identificação com foto e comprovante de residência', ''),
(49, 'emprestimo_info_ticontato', 'Contato:', ''),
(50, 'emprestimo_info_contato', '(92) 98488-2959', ''),
(51, 'emprestimo_info_comunicado', 'Aproveite nosso acervo e incentive a leitura!', ''),
(52, 'navbar_menu_inicio', 'INICIO', ''),
(53, 'navbar_menu_time', 'NOSSO TIME', ''),
(54, 'navbar_menu_comecou', 'COMO TUDO COMEÇOU', ''),
(55, 'navbar_menu_doe', 'DOE AGORA', ''),
(56, 'navbar_menu_atividades', 'ATIVIDADES', ''),
(57, 'navbar_menu_emprestimo', 'EMPRESTIMOS', ''),
(58, 'team_banner_titulo', 'Nosso Time', ''),
(59, 'team_banner_descricao', 'Conheça os membros da nossa equipe.', ''),
(60, 'started_banner_titulo', 'Como Tudo Começou', ''),
(61, 'started_banner_descricao', 'Descubra a história e os serviços da Biblioteca Comunitária Maria Dolores.', ''),
(62, 'index_banner_titulo', 'Biblioteca Comunitária Maria Dolores', ''),
(63, 'index_banner_descricao', 'Obra Social Chico Xavier', ''),
(64, 'emprestimo_banner_titulo', 'Emprestimo de Livros', ''),
(65, 'emprestimo_banner_descricao', 'Conheça os procedimentos para empréstimo de livros.', ''),
(66, 'doacao_banner_titulo', 'Doe Agora', ''),
(67, 'doacao_banner_descricao', 'Veja como sua contribuição pode fazer a diferença na Biblioteca Comunitária Maria Dolores.', ''),
(68, 'activities_banner_titulo', 'Nossas Atividades', ''),
(69, 'activities_banner_descricao', 'Explore as atividades realizadas pela Biblioteca Comunitária Maria Dolores.', ''),
(70, 'atividade_info_descricao', 'Descrição da atividade', ''),
(71, 'atividade_info_dias', 'Dias de funcionamento', ''),
(72, 'atividade_info_horario', 'Horários', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `patrocinadores`
--

CREATE TABLE `patrocinadores` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `patrocinadores`
--

INSERT INTO `patrocinadores` (`id`, `codigo`, `nome`, `url`) VALUES
(1, 1, 'Parceiro 1', 'assets/preview.png'),
(2, 2, 'Parceiro 2', 'assets/proex_400.png'),
(3, 3, 'Parceiro 3', 'assets/uea_logo_horizontal_verde.png'),
(4, 4, 'Parceiro 4', 'assets/E-mail-PROEX-3-removebg-preview.png'),
(5, 5, 'Parceiro 5\r\n', 'assets/pap.png'),
(6, 6, 'Parceiro 6', 'assets/tuttipane.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atividade`
--
ALTER TABLE `atividade`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `categoria_time`
--
ALTER TABLE `categoria_time`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipe_time`
--
ALTER TABLE `equipe_time`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_categoria` (`cod_categoria`);

--
-- Índices de tabela `foto_atividade`
--
ALTER TABLE `foto_atividade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_atividade` (`id_atividade`);

--
-- Índices de tabela `foto_noticia`
--
ALTER TABLE `foto_noticia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_noticia` (`id_noticia`);

--
-- Índices de tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `parametro`
--
ALTER TABLE `parametro`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `patrocinadores`
--
ALTER TABLE `patrocinadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atividade`
--
ALTER TABLE `atividade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `categoria_time`
--
ALTER TABLE `categoria_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `equipe_time`
--
ALTER TABLE `equipe_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `foto_atividade`
--
ALTER TABLE `foto_atividade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `foto_noticia`
--
ALTER TABLE `foto_noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `parametro`
--
ALTER TABLE `parametro`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de tabela `patrocinadores`
--
ALTER TABLE `patrocinadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `equipe_time`
--
ALTER TABLE `equipe_time`
  ADD CONSTRAINT `equipe_time_ibfk_1` FOREIGN KEY (`cod_categoria`) REFERENCES `categoria_time` (`id`);

--
-- Restrições para tabelas `foto_atividade`
--
ALTER TABLE `foto_atividade`
  ADD CONSTRAINT `foto_atividade_ibfk_1` FOREIGN KEY (`id_atividade`) REFERENCES `atividade` (`id`);

--
-- Restrições para tabelas `foto_noticia`
--
ALTER TABLE `foto_noticia`
  ADD CONSTRAINT `foto_noticia_ibfk_1` FOREIGN KEY (`id_noticia`) REFERENCES `noticia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
