-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 30/09/2025 às 20:14
-- Versão do servidor: 11.8.3-MariaDB-log
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u397599254_biblioteca`
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
(1, 'Mediação de Leitura', 'Leitura coletiva na biblioteca', 'assets/imagens/foto_atividade_leitura_1.jpeg', 'assets/imagens/foto_atividade_leitura_2.jpeg', 'assets/imagens/foto_atividade_leitura_3.jpeg', 'Encontro semanal de leitura com as crianças.', 'assets/imagens/fundo_atividade_leitura.jpeg', 1, 'A Mediação de Leitura é uma das ações centrais da Biblioteca Comunitária Maria Dolores. Acontece por meio de contações de histórias, rodas de leitura e diálogos literários, sempre com livros cuidadosamente escolhidos de acordo com a faixa etária e o contexto dos participantes.\r\nMais do que ler para o outro, mediar é convidar a sonhar, pensar e sentir junto, tornando a leitura uma experiência viva e compartilhada. O momento de leitura é sempre seguido de atividades lúdicas que ampliam a compreensão, estimulam a criatividade e promovem a expressão individual e coletiva — como dramatizações, desenhos, recontos e jogos.\r\nRealizamos a mediação com crianças, adolescentes e também com adultos da comunidade, respeitando os diferentes ritmos e interesses de cada grupo.', 'Às segundas-feiras', 'Das 8h às 11h e das 14h às 17h'),
(2, 'Letramento e numeramento', 'Ensinando crianças e jovens a ler e a escrever', 'assets/imagens/atividade_letramento_1.jpg', 'assets/imagens/atividade_letramento_2.jpg', 'assets/imagens/atividade_letramento_3.jpg', 'Aprendendo letras e números', 'assets/imagens/fundo_atividade_letramento.jpeg', 2, 'Este projeto tem como objetivo desenvolver práticas de letramento e numeramento com crianças não alfabetizadas ou com dificuldades de aprendizagem que frequentam a Biblioteca Comunitária Maria Dolores, utilizando a literatura como ponto de partida para a construção do conhecimento, da linguagem e da expressão.\r\nA proposta busca articular leitura, escrita e raciocínio matemático de forma significativa, lúdica e contextualizada, respeitando os diferentes ritmos de aprendizagem e promovendo a inclusão social por meio do acesso ao saber.', 'Terça a sexta-feira', 'Das 08h às 11h e das 14h às 17h'),
(3, 'Esporte', 'Atividades físicas para interação entre crianças e jovens', 'assets/imagens/atividade_esporte_1.jpeg', 'assets/imagens/atividade_esporte_2.jpeg', 'assets/imagens/atividade_esporte_3.jpeg', 'Exercitando o corpo e a mente', 'assets/imagens/fundo_atividade_esporte.jpeg', 3, 'O projeto Esporte e Educação para Todos promove momentos de lazer, convivência e descontração por meio de atividades esportivas simples e brincadeiras tradicionais, como futebol, vôlei de areia, futevôlei, pingue-pongue, pular corda, amarelinha, esconde-esconde, queimada e outras.\nRealizadas no contraturno escolar e especialmente aos finais de semana, essas práticas proporcionam às crianças, jovens e bolsistas da comunidade um espaço seguro para brincar, se movimentar, fortalecer laços comunitários e resgatar a cultura popular.\nMais do que desempenho físico, o esporte e as brincadeiras populares são instrumentos de acolhimento, vínculo e bem-estar, valorizando o corpo, a alegria e a construção de relações saudáveis entre todas as gerações.', 'Terça a sexta (manhã e tarde) e sábado (manhã)', 'Das 08h às 11h e das 14h às 17h'),
(4, 'Arte Terapia', 'A Arte de Acolher', 'assets/imagens/atividade_arte_1.jpeg', 'assets/imagens/atividade_arte_3.jpeg', 'assets/imagens/atividade_arte_2.jpeg', 'Arte para bem-estar e expressão.', 'assets/imagens/fundo_atividade_arte.jpeg', 4, 'O projeto Arte terapia – A Arte de Acolher nasceu do desejo de oferecer um espaço de escuta, expressão e acolhimento por meio da arte. Voltado a crianças, adolescentes e membros da comunidade, o projeto utiliza diferentes linguagens artísticas como instrumentos para promover o bem-estar emocional, o autoconhecimento e a construção de vínculos afetivos e sociais.\nAs atividades incluem pintura, colagem, modelagem, desenho, teatro, escrita criativa, e outras formas de expressão livre, sempre conduzidas com sensibilidade, escuta ativa e respeito à individualidade de cada participante.\nMais do que produzir arte, o foco está em cuidar de si e do outro por meio do fazer artístico, acolhendo dores, histórias e potências em um ambiente seguro e afetuoso.', 'Terça e Sexta', 'Das 08h às 11h e das 14h às 17h'),
(5, 'Vivência Musical', 'Música, Violão e Flauta Doce', '', '', '', 'A Harmonia que Transforma ', '', 5, 'O projeto Música, Violão e Flauta Doce da Biblioteca Comunitária Maria Dolores oferece oficinas musicais voltadas ao desenvolvimento artístico, emocional e social das crianças e adolescentes atendidos. A música é trabalhada como uma linguagem universal, capaz de despertar talentos, criar vínculos afetivos e promover o protagonismo juvenil. Mais do que formar músicos, o projeto busca desenvolver a sensibilidade artística, a autoestima e a convivência coletiva, respeitando o ritmo e a realidade de cada participante.\r\n\r\nAs oficinas ocorrem de forma dinâmica e participativa, com atividades que envolvem:\r\n\r\n    • Prática de violão – noções básicas de acordes, batidas rítmicas e acompanhamento de canções;\r\n\r\n    • Flauta doce – desenvolvimento da técnica, leitura musical e execução de melodias;\r\n\r\n    • Vivências musicais – jogos rítmicos, escuta ativa, criação coletiva;\r\n\r\n    • Canto e expressão vocal – uso da voz como instrumento de comunicação e identidade.', 'Sexta-feira', 'Das 14h às 17h'),
(6, 'Cinebiblioteca', 'Cinema na Biblioteca – Trabalhando a Cidadania', '', '', '', 'O cinema na Biblioteca Comunitária', '', 6, 'O cinema, ao longo da história, tem se destacado como uma poderosa ferramenta educacional e cultural, capaz de sensibilizar, provocar reflexões e ampliar a visão de mundo. Reconhecendo esse potencial, o projeto Cinema na Biblioteca – Trabalhando a Cidadania busca promover o acesso à exibição de filmes e a realização de atividades complementares que estimulam o desenvolvimento cultural, crítico e social do público atendido.', 'Os dias são anunciados', '8h as 11h');

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
(1, 'DIRETORAS', 1, 'S'),
(2, 'VOLUNTARIOS', 3, 'S'),
(3, 'BOLSISTAS', 2, 'S'),
(4, 'FUNDADORAS', 4, 'S');

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
(1, 'Ethel Silva de Oliveira', 'Diretora Executiva', 'assets/ethel.png', 1, 1, 'S'),
(2, 'Elisângela Silva de Oliveira', 'Diretora Administrativa', 'assets/autora1.png', 1, 2, 'S'),
(3, 'Katiani Antunes', 'Coordenadora Geral', 'assets/katiani.png', 1, 3, 'S'),
(4, 'Eveli Rayane da Silva Ramos', 'Diretoria', 'https://picsum.photos/400?random=1', 3, 1, 'N'),
(5, 'Ayrton Carlos', 'Educador de Música e Desenvolvimento de site', 'assets/bolsistas/ayrton.jpeg', 3, 5, 'S'),
(6, 'Allana Victoria', 'Educadora de Arte Terapia', 'https://picsum.photos/400?random=1', 3, 4, 'S'),
(7, 'Tamylla Vitória', 'Gerenciamento da Biblioteca', 'assets/bolsistas/tamylla2.jpeg', 3, 38, 'S'),
(8, 'Liv Shayane', 'Educadora de Teatro', 'https://picsum.photos/400?random=1', 3, 23, 'S'),
(9, 'Lucimara Coimbra', 'Projeto Letramento, Numeramento e Cidadania', 'https://picsum.photos/400?random=1', 3, 25, 'S'),
(10, 'Rayna Vitória', 'Projeto Letramento, Numeramento e Cidadania', 'assets/bolsistas/rayna.jpeg', 3, 33, 'S'),
(12, 'Lady Kelly', 'Projeto Letramento, Numeramento e Cidadania', 'https://picsum.photos/400?random=1', 3, 20, 'S'),
(13, 'Kellyane de Lima', 'Projeto Cine Biblioteca', 'assets/bolsistas/kellyane1.jpeg', 3, 19, 'S'),
(14, 'Beatriz Viana', 'Projeto Letramento, Numeramento e Cidadania', 'assets/bolsistas/beatriz_viana1.jpeg', 3, 8, 'S'),
(15, 'Luiz Felipe', 'Projeto Letramento, Numeramento e Cidadania', 'assets/bolsistas/luiz2.jpeg', 3, 26, 'S'),
(16, 'Airton Serrão', 'Educador de Musica e Cultura', 'https://picsum.photos/400?random=1', 3, 6, 'S'),
(17, 'Liana da Silva ', 'Projeto Letramento, Numeramento e Cidadania', 'https://picsum.photos/400?random=1', 2, 24, 'S'),
(18, 'Marcleyzi da Silva', 'Projeto Histórias de Vida', 'https://picsum.photos/400?random=1', 3, 28, 'S'),
(19, 'Beatriz Pereira', 'Responsável pelo Esporte e Cultura', 'https://picsum.photos/400?random=1', 3, 7, 'S'),
(20, 'Alcides de Queiroz', 'Acolhedor no Vespertino', 'https://picsum.photos/400?random=1', 2, 1, 'N'),
(21, 'Gerilson Albuquerque', 'Gerenciamento da Biblioteca', 'assets/bolsistas/gerilson.jpeg', 3, 14, 'S'),
(22, 'Tamires Silva', 'Projeto Histórias de Vida', 'assets/bolsistas/tamires.jpeg', 3, 37, 'S'),
(23, 'Agrício --', 'Projeto Conecta Cidadão', 'https://picsum.photos/400?random=1', 3, 2, 'S'),
(24, 'Aldenor --', 'Programa Eco Comunidade', 'https://picsum.photos/400?random=1', 3, 3, 'S'),
(25, 'Eric --', 'Programa Eco Comunidade', 'https://picsum.photos/400?random=1', 3, 10, 'S'),
(26, 'Gabriele --', 'Programa Eco Comunidade', 'https://picsum.photos/400?random=1', 3, 13, 'S'),
(27, 'Geone da Mata', 'Esporte', 'https://picsum.photos/400?random=1', 3, 15, 'S'),
(28, 'Jéssica Maria Nunes Sá', 'Apoio na aula de Artes', 'assets/bolsistas/Jessica.jpeg', 2, 16, 'S'),
(29, 'Jose--', 'Programa Eco Comunidade', 'https://picsum.photos/400?random=1', 3, 17, 'S'),
(30, 'Leo--', 'Programa Eco Comunidade', 'https://picsum.photos/400?random=1', 3, 21, 'S'),
(31, 'Letícia--', 'Projeto Cine Biblioteca', 'https://picsum.photos/400?random=1', 3, 22, 'S'),
(32, 'Marcos--', '[Acolhimento/Recepção]', 'assets/bolsistas/marcos.jpeg', 3, 29, 'N'),
(33, 'Maísa--', 'Programa Eco Comunidade', 'https://picsum.photos/400?random=1', 3, 27, 'S'),
(34, 'Matheus--', 'Programa Eco Comunidade', 'https://picsum.photos/400?random=1', 3, 30, 'S'),
(35, 'Nathalia--', 'Projeto Conecta Cidadão', 'https://picsum.photos/400?random=1', 3, 31, 'S'),
(36, 'Pedro--', 'Projeto Conecta Cidadão', 'https://picsum.photos/400?random=1', 3, 32, 'S'),
(37, 'Rebeca--', 'Projeto Cine Biblioteca', 'assets/bolsistas/rebeca.jpeg', 3, 34, 'S'),
(38, 'Stefany--', 'Gerenciamento da Biblioteca', 'https://picsum.photos/400?random=1', 3, 36, 'S'),
(39, 'Renan--', 'Projeto Conecta Cidadão', 'https://picsum.photos/400?random=1', 3, 35, 'S'),
(40, 'Victor--', 'Projeto Conecta Cidadão', 'https://picsum.photos/400?random=1', 3, 39, 'S'),
(41, 'Victoria--', 'Programa Eco Comunidade', 'https://picsum.photos/400?random=1', 3, 40, 'S'),
(42, 'Elisângela Silva de Oliveira', 'Cofundadora', 'assets/autora1.png', 4, 2, 'S'),
(43, 'Sebastiana Nunes da Silva', 'Fundadora', 'assets/imagens/sebastiana.png', 4, 1, 'S');

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

--
-- Despejando dados para a tabela `foto_atividade`
--

INSERT INTO `foto_atividade` (`id`, `id_atividade`, `foto`, `descricao`) VALUES
(1, 1, 'assets/imagens/foto_atividade_leitura_1.jpeg', 'Momento de leitura da história do saci'),
(2, 1, 'assets/imagens/foto_atividade_leitura_2.jpeg', 'Leitura mediada do livro Folclore Brasileiro'),
(3, 2, 'assets/imagens/foto_atividade_letramento_1.jpeg', 'Atividade de letramento'),
(4, 2, 'assets/imagens/foto_atividade_letramento_2.jpeg', 'Jogo de bingo para o numeramento'),
(5, 2, 'assets/imagens/foto_atividade_letramento_3.jpeg', 'Jogo prático de Sudoku para numeramento'),
(6, 3, 'assets/imagens/foto_atividade_esporte_1.jpeg', ''),
(7, 3, 'assets/imagens/foto_atividade_esporte_2.jpeg', ''),
(8, 3, 'assets/imagens/foto_atividade_esporte_3.jpeg', ''),
(9, 4, 'assets/imagens/foto_atividade_arte_1.jpeg', 'Pintura'),
(10, 4, 'assets/imagens/foto_atividade_arte_2.jpeg', 'Colorir'),
(11, 4, 'assets/imagens/foto_atividade_arte_3.jpeg', 'Arte com recicláveis');

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

--
-- Despejando dados para a tabela `foto_noticia`
--

INSERT INTO `foto_noticia` (`id`, `id_noticia`, `foto`, `descricao`) VALUES
(1, 1, 'http://lokeshdhakar.com/projects/lightbox2/images/image-3.jpg', 'Primeira imagem'),
(2, 1, 'http://lokeshdhakar.com/projects/lightbox2/images/image-4.jpg', 'Segunda imagem'),
(3, 1, 'http://lokeshdhakar.com/projects/lightbox2/images/image-3.jpg', 'Terceira imagem'),
(4, 1, 'http://lokeshdhakar.com/projects/lightbox2/images/image-4.jpg', 'Quarta imagem'),
(6, 6, 'assets/imagens/uni1.jpg', ''),
(7, 6, 'assets/imagens/uni2.jpg', ''),
(8, 6, 'assets/imagens/uni3.jpg', ''),
(9, 6, 'assets/imagens/uni4.jpg', ''),
(10, 8, 'assets/imagens/edin1.jpg', 'Abertura do evento'),
(11, 8, 'assets/imagens/edin2.jpg', 'Discussões com a comunidade'),
(12, 8, 'assets/imagens/edin4.jpeg', 'Apresentação de acadêmicos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticia`
--

CREATE TABLE `noticia` (
  `id` int(11) NOT NULL,
  `titulo_breve` varchar(60) NOT NULL,
  `titulo_real` varchar(200) NOT NULL,
  `subtitulo` varchar(200) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `foto_miniatura` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `foto_principal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `noticia`
--

INSERT INTO `noticia` (`id`, `titulo_breve`, `titulo_real`, `subtitulo`, `data`, `foto_miniatura`, `texto`, `foto_principal`) VALUES
(1, 'A BCMD é selecionada em evento internacional', 'Nossa biblioteca foi selecionada para o 16º Seminário Internacional Biblioteca Viva.', 'A disputa ocorreu entre 1600 instituições brasileiras', '2025-05-11 00:33:14', 'assets/eventos/16siseb.jpeg', 'A Biblioteca Comunitária Maria Dolores foi selecionada para apresentar pôsteres e painéis no 16º Seminário Internacional Biblioteca Viva, promovido pelo Sistema Estadual de Bibliotecas Públicas de São Paulo. O evento, considerado um dos mais importantes do país sobre bibliotecas como espaços vivos de transformação social, será uma oportunidade para compartilhar a experiência e as práticas desenvolvidas pela instituição com participantes de todo o Brasil e do exterior.\nO trabalho da biblioteca destaca seu papel como um espaço de afeto, conhecimento e cidadania, valorizando ações que fortalecem o vínculo com a comunidade e promovem o acesso à leitura e à cultura. A conquista é celebrada como um reconhecimento ao empenho de leitores, voluntários, parceiros e apoiadores, que contribuem diariamente para manter viva a missão da biblioteca. “Seguimos firmes no compromisso de transformar realidades por meio do livro, da escuta e da imaginação”, afirma a equipe.', 'assets/imagens/16_siseb1.jpg'),
(2, 'Amostra cultural', 'Biblioteca aprova novo projeto de leitura junto à FAPEAM', '', '2024-05-26 20:28:05', 'assets/eventos/.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\r\n', 'assets/paginaInicial.jpg'),
(3, 'Encanto - Cineblioteca', 'Biblioteca aprova novo projeto de leitura junto à FAPEAM', '', '2024-05-26 20:28:32', 'assets/eventos/encanto.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\r\n', 'assets/paginaInicial.jpg'),
(4, '15º feira do livro Annelore Floz', 'Biblioteca aprova novo projeto de leitura junto à FAPEAM', '', '2024-05-26 20:28:52', 'assets/eventos/15feiralivro.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\n', 'assets/paginaInicial.jpg'),
(6, 'Páscoa Solidária na biblioteca', 'UNIASELV e BCMD promovem evento com temática de Amor ao Próximo', 'Páscoa Solidária leva amor, alegria e união a crianças e jovens na biblioteca', '2025-05-26 20:29:36', 'assets/imagens/uni2.jpg', 'Na manhã de 26 de abril de 2025, a Biblioteca Comunitária Maria Dolores foi palco de uma doce e acolhedora celebração: a Páscoa Solidária. Com o apoio da BCMD e acadêmicos da Uniasselv de Itacoatiara, o evento reuniu brincadeiras, diversão e muito carinho, tudo guiado pela temática “Amor ao Próximo”. Mais do que distribuir chocolates, a ação proporcionou momentos de escuta, atenção e troca genuína com as crianças e jovens atendidos. A proposta foi despertar sentimentos de solidariedade e empatia, promovendo o bem-estar emocional por meio de gestos simples, mas profundamente significativos.\nA manhã foi marcada por sorrisos, aprendizado e uma verdadeira conexão entre voluntários e participantes. Cada interação mostrou que, com amor e dedicação, é possível transformar realidades e fortalecer esperanças.\n#imagem 6\n#imagem 7\n#imagem 8\n#imagem 9', 'assets/imagens/uni5.jpg'),
(7, 'SICRED - visita das criaças MOVIELAND', 'Biblioteca aprova novo projeto de leitura junto à FAPEAM', '', '2024-05-26 20:29:50', 'assets/eventos/movieland.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis, enim id condimentum laoreet, metus dui mattis leo, ut consectetur libero nibh id arcu. Quisque luctus vel orci eu tincidunt. Quisque velit est, faucibus at porttitor a, sollicitudin sit amet est. Morbi vel sodales ligula, sit amet hendrerit odio. Etiam sagittis magna diam. Proin a libero interdum, porttitor felis nec, lacinia eros. Praesent non orci in dui gravida sagittis sed eu tellus. Phasellus dui enim, rhoncus tristique vehicula sit amet, commodo non odio. Nam convallis in magna eget placerat. Integer feugiat dolor at velit aliquet, cursus vulputate mauris faucibus. Etiam nibh dolor, aliquet a malesuada euismod, posuere id nisl. Aenean pretium sem lacus, eu semper velit sollicitudin non. Sed aliquam tincidunt libero, a finibus justo lobortis at. Donec rutrum in lectus sit amet mollis. Curabitur at est elementum, ullamcorper tellus ac, cursus ante. Mauris nisi magna, venenatis et enim id, vehicula convallis enim.\r\n', 'assets/paginaInicial.jpg'),
(8, 'Tarde de conversa debatendo sobre o ECA', 'Acadêmicos da UEA promovem roda de conversa sobre Educação Infantil e direitos das crianças', 'Educação Infantil em Foco: Um Diálogo sobre Direitos com a Comunidade', '2025-04-19 17:13:12', 'assets/eventos/cofeebreak.jpeg', 'Na tarde de 19 de abril de 2025, acadêmicos do 7º período do curso de Licenciatura em Computação da Universidade do Estado do Amazonas (UEA), orientados pela professora Dra. Ethel Oliveira, promoveram um importante momento de diálogo sobre a Educação voltada para a infância.\n\nO encontro, realizado na Biblioteca Comunitária, abordou temas essenciais como o Estatuto da Criança e do Adolescente (ECA) e a Base Nacional Comum Curricular (BNCC), conectando o conhecimento acadêmico à realidade da comunidade. A atividade foi fruto da disciplina \"Fundamentos e Metodologia da Educação Infantil\", e teve como objetivo ampliar o alcance da formação universitária para além das salas de aula.\n\nO debate contou com a participação ativa de acadêmicos, familiares, crianças da Biblioteca, além de representantes do Conselho Tutelar e da Secretaria Municipal de Educação de Itacoatiara. Foi uma tarde rica em trocas, reflexões e aprendizados, reforçando o papel da universidade como agente transformador na sociedade.\n\nA iniciativa destacou a importância da escuta ativa, da valorização da infância e do compromisso coletivo com uma educação de qualidade, inclusiva e baseada nos direitos das crianças e adolescentes.\n#imagem 10\n#imagem 12\n#imagem 11\n', 'assets/imagens/edin3.jpg');

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
(1, 'index_sobre_subtitulo', 'Um ponto de cultura e humanização.', 'Subtítulo da seção sobre da página inicial '),
(2, 'index_sobre_titulo', 'Sobre nós', 'Titulo da seção sobre da pagina inicial'),
(3, 'index_sobre_cabecalho', 'Nossa Biblioteca', 'Cabeçalho da se'),
(4, 'index_sobre_botao', 'Saiba Mais', 'Texto do botão da seção sobre da página inicial'),
(5, 'index_sobre_descricao', 'Promover um ponto de cultura, sendo um espaço da produção de diferentes manifestações artísticas. Além de propiciar o acesso a diversidade literária para a comunidade, rodas de leituras, rodas musicais, concursos de poesia e desenho, oficinas de contação de histórias, oficinas gratuitas.', ''),
(6, 'index_titulo_nomesite', 'Biblioteca Maria Dolores', ''),
(7, 'index_noticias_titulo', 'Últimas notícias', ''),
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
(57, 'navbar_menu_emprestimo', 'EMPRÉSTIMOS', ''),
(58, 'team_banner_titulo', 'Nosso Time', ''),
(59, 'team_banner_descricao', 'Conheça os membros da nossa equipe.', ''),
(60, 'started_banner_titulo', 'Como Tudo Começou', ''),
(61, 'started_banner_descricao', 'Descubra a história e os serviços da Biblioteca Comunitária Maria Dolores.', ''),
(62, 'index_banner_titulo', 'Biblioteca Comunitária Maria Dolores', ''),
(63, 'index_banner_descricao', 'Obra Social Chico Xavier', ''),
(64, 'emprestimo_banner_titulo', 'Empréstimo de Livros', ''),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `foto_noticia`
--
ALTER TABLE `foto_noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
