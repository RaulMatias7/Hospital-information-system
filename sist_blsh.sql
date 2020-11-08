-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2019 at 07:19 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sist_blsh`
--

-- --------------------------------------------------------

--
-- Table structure for table `doencas`
--

DROP TABLE IF EXISTS `doencas`;
CREATE TABLE IF NOT EXISTS `doencas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Doenca` varchar(40) NOT NULL,
  `sintomas_id` varchar(200) NOT NULL,
  `Descricao` varchar(2000) NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `markers_id` varchar(500) NOT NULL,
  `Prevencao` varchar(1000) NOT NULL,
  `Causas` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doencas`
--

INSERT INTO `doencas` (`id`, `Doenca`, `sintomas_id`, `Descricao`, `imagem`, `markers_id`, `Prevencao`, `Causas`) VALUES
(27, 'Tuberculose', 'Tosse seca,Chiado no peito,Dificuldade para respirar,Respiração rápida e curta,Ansiedade', 'A tuberculose é uma doença infecciosa e transmissível que afeta prioritariamente os pulmões, embora possa acometer outros órgãos e/ou sistemas. A doença é causada pelo Mycobacterium tuberculosis ou bacilo de Koch. No Brasil, a doença é um sério problema da saúde pública, com profundas raízes sociais. A epidemia do HIV e a presença de bacilos resistentes tornam o cenário ainda mais complexo. A cada ano, são notificados aproximadamente 70 mil casos novos e ocorrem cerca de 4,5 mil mortes em decorrência da tuberculose.\r\n', 'tuberculose.jpg', '', '', ''),
(28, 'Febre Amarela', 'início súbito de febre, calafrios, dor de cabeça intensa, dores nas costas, dores no corpo em geral, náuseas e vômitos, fadiga e fraqueza.', 'A febre amarela é uma doença infecciosa febril aguda, causada por um vírus transmitido por mosquitos vetores, e possui dois ciclos de transmissão: silvestre (quando há transmissão em área rural ou de floresta) e urbano. O vírus é transmitido pela picada dos mosquitos transmissores infectados e não há transmissão direta de pessoa a pessoa. A febre amarela tem importância epidemiológica por sua gravidade clínica e potencial de disseminação em áreas urbanas infestadas pelo mosquito Aedes aegypti. É uma doença de notificação compulsória imediata, ou seja, todo evento suspeito (tanto morte de primatas não humanos, quanto casos humanos com sintomatologia compatível) deve ser prontamente comunicado, em até 24 horas após a suspeita inicial, às autoridades locais competentes pela via mais rápida (telefone, fax, email, etc). Às autoridades estaduais de saúde cabe notificar os eventos de febre amarela suspeitos ao Ministério da Saúde. Atualmente, a febre amarela silvestre (FA) é uma doença endêmica no Brasil (região amazônica). Na região extra-amazônica, períodos epidêmicos são registrados ocasionalmente, caracterizando a reemergência do vírus no País. O padrão temporal de ocorrência é sazonal, com a maior parte dos casos incidindo entre dezembro e maio, e com surtos que ocorrem com periodicidade irregular, quando o vírus encontra condições favoráveis para a transmissão (elevadas temperatura e pluviosidade; alta densidade de vetores e hospedeiros primários; presença de indivíduos suscetíveis; baixas coberturas vacinais; eventualmente, novas linhagens do vírus), podendo se dispersar para além dos limites da área endêmica e atingir estados das regiões Centro.\r\n', 'Febre amarela.png', '', '', ''),
(34, ' trombose', 'dor, calor, vermelhidão, rigidez da musculatura na região em que se formou o trombo.', 'A trombose ocorre quando há formação de um coágulo sanguíneo em uma ou mais veias grandes das pernas e das coxas. Esse coágulo bloqueia o fluxo de sangue e causa inchaço e dor na região. O problema maior é quando um coágulo se desprende e se movimenta na corrente sanguínea, em um processo chamado de embolia. Uma embolia pode ficar presa no cérebro, nos pulmões, no coração ou em outra área, levando a lesões graves. A trombose ocorre, geralmente, após cirurgia, corte ou falta de movimento por muito tempo, sendo mais frequente após procedimentos cirúrgicos ortopédicos, oncológicos e ginecológicos. Apesar de ser um problema que geralmente afeta mais mulheres, homens também podem ter trombose. Em números, quando é avaliada apenas a faixa entre 20 a 40 anos, a incidência de trombose é um pouco maior nas mulheres pela maior exposição a fatores de risco, como anticoncepcionais e gestações.', 'Trombose_.jpg', 'Hospital Maria Pia', 'uso de anticoncepcionais ou tratamento hormonal, tabagismo, ficar sentado ou deitado muito tempo, hereditariedade, gravidez, presença de varizes, idade avançada; pacientes com insuficiência cardíaca, tumores malignos, obesidade, distúrbios de hipercoagulabilidade hereditários ou adquiridos, história prévia de trombose venosa.', 'praticar exercícios físicos regularmente, evitar o consumo de álcool e tabagismo, manter uma dieta equilibrada são as principais maneiras de prevenir a trombose. '),
(33, 'Síndrome da Rubéola', 'surdez, catarata, glaucoma.', 'A Síndrome da Rubéola Congênita (SRC) é uma doença congênita, que significa uma particularidade de algo que está presente desde o nascimento. Ela é decorrente da infecção da mãe pelo vírus da Rubéola durante as primeiras semanas da gravidez. Quanto mais precoce for a infecção em relação à idade gestacional, mais grave é a doença.', 'Sindrome da Rubeola.jpg', 'Hospital Sanatorio', 'A rubéola é causada pelo vírus Rubella virus e é transmitida de pessoa para pessoa. por meio do espirro ou tosse. sendo altamente contagiosa. Uma pessoa com rubéola pode transmitir a doença a outras pessoas desde uma semana antes do início da erupção até uma a duas semanas depois de seu desaparecimento.', 'A vacinação é a única maneira de prevenir a Síndrome da Rubéola Congênita. O esquema vacinal vigente é de uma dose da vacina tríplice viral aos 12 meses de idade e a segunda dose aos quatro anos de idade. Caso a mulher chegue à idade fértil sem ter sido previamente vacinada. deverá receber uma dose da vacina tríplice viral,\r\nDiferentes estratégias de vacinação contra a Rubéola têm sido adotadas para prevenção da SRC, A vacinação de mulheres em idade fértil tem efeito direto na prevenção. ao reduzir a susceptibilidade entre gestantes. sem que ocorra a eliminação do vírus na comunidade, A vacinação de rotina na infância tem impacto, a longo prazo, na prevenção da doença, pois ela interrompe a transmissão do vírus entre as crianças. o que reduz o risco de exposição de gestantes susceptíveis. Além disso. reduz a susceptibilidade nas futuras mulheres em idade fértil.'),
(7, 'Febre Tifoide ', 'febre alta, dores de cabeça, mal-estar geral, falta de apetite, retardamento do ritmo cardíaco, aumento do volume do baço, manchas rosadas no tronco, prisão de ventre ou diarreia, tosse seca.', 'A Febre Tifoide é uma doença bacteriana aguda, causada pela Salmonella enterica sorotipo Typhi, de distribuição mundial. A doença está diretamente associada a baixos níveis socioeconômicos, principalmente em regiões com precárias condições de saneamento básico, higiene pessoal e ambiental. Se não tratada adequadamente, a Febre Tifoide pode matar. Nesse contexto, a Febre Tifoide está praticamente eliminada de países onde esses problemas foram superados. No Brasil, a doença ocorre sob a forma endêmica em regiões isoladas, com algumas epidemias onde as condições de vida são mais precárias, especialmente nas regiões Norte e Nordeste. A infecção recorrente por Salmonella é uma das condições clínicas marcadoras da AIDS/HIV. Em regiões onde a bactéria causadora da Febre Tifoide é endêmica, a incidência da doença pode ser de 25 a 60 vezes maior entre indivíduos HIV positivos que em soronegativos. Os indivíduos HIV positivos assintomáticos podem apresentar doença semelhante ao imunocompetente e boa resposta ao tratamento usual. Doentes com aids (doença definida) podem apresentar Febre Tifoide particularmente grave e com tendência a recaídas.', 'Febre Tifoide.jpg', 'Hospital militar de Luanda', 'ainda não há informações sobre as causas.', 'ainda não há informações sobre as prevenção.'),
(32, ' Hipertensão', 'dores no peito, dor de cabeça, tonturas, zumbido no ouvido, fraqueza, visão embaçada e sangramento nasal.', 'A hipertensão arterial ou pressão alta é uma doença \r\ncrônica caracterizada pelos níveis elevados da pressão sanguínea nas artérias. Ela acontece quando os valores das pressões máxima e mínima são iguais ou ultrapassam os 140/90 mmHg (ou 14 por 9). A pressão alta faz com que o coração tenha que exercer um esforço maior do que o normal \r\npara fazer com que o sangue seja distribuído corretamente no corpo.\r\nA pressão alta é um dos principais fatores de risco para a ocorrência\r\nde acidente vascular cerebral, enfarte, aneurisma arterial e insuficiência\r\nrenal e cardíaca. O problema é herdado dos pais em 90% dos casos, mas há vários fatores que influenciam nos níveis de pressão arterial, como os hábitos de vida do indivíduo.', 'Hipertensao.jpg', 'Hospital Municipal de Viana', 'Essa doença é herdada dos pais em 90% dos casos, mas há vários fatores que influenciam nos níveis de pressão arterial, entre eles: ,\r\n\r\nFumo,\r\nConsumo de bebidas, alcoólicas,Obesidade,Estress,\r\nElevado consumo de sal,\r\nNíveis altos de colesterol,\r\nFalta de atividade física.', 'A primeira forma de prevenção é fazer o acompanhamento dos índices da PA. principalmente se os pais avós ou outros parentes próximos também tenham hipertensão. ,\r\n\r\nPratique exercícios físicos, uma simples caminhada de 20 minutos três a cinco vezes por semana,\r\nEvite alimentos muito gordurosos. frituras doces e muito salgados,\r\nEvite ingerir bebidas alcoólicas Elas baixam a pressão e quando se unem aos efeitos dos medicamentos podem causar complicações,\r\nO fumo também é grande agravador do aumento da pressão arterial. Por isso o indicado é parar de fumar,\r\nEvite o estresse ele pode dificultar o controle da pressão,\r\nNão interrompa o tratamento com remédios sem a orientação do médico de confiança.'),
(31, 'Paludismo', 'Febre, Suores e calafrios, Dor de cabeca forte, Nauseas e vomitos, Dor muscular em todo o corpo, Fraqueza e cansaco constante, Pele e olho amarelados.', 'O paludismo e uma doenca infecciosa transmitida atraves da picada da femea do mosquito Anopheles infectada pelo protozoario do genero Plasmodium, sendo as especies mais frequentes no Brasil o Plasmodium vivax e o Plasmodium malariae. Por ser transmitida pela picada de um mosquito, a melhor forma de prevencao da malaria consiste em medidas para evitar se picado, atraves do uso de repelente e protecoes nas janelas com o uso de telas. Uma vez no organismo da pessoa afetada, o Plasmodium vai ate o figado, onde se multiplica e, em seguida, atinge a corrente sanguinea, onde invade e rompe os globulos vermelhos do sangue, provocando sintomas como febre, suor, calafrio, nauseas, vomitos, dor de cabeca e fraqueza.\r\nA malaria tem cura, mas e importante que o tratamento seja iniciado rapidamente, pois em muitos casos a doenca pode se tornar grave, havendo anemia, diminuicao das plaquetas, insuficiencia renal ou, ate, o comprometimento do cerebro, em que as chances de complicacoes e de morte sao maiores.', 'palu.jpg', 'Hospital geral de Luanda', 'O paludismo e uma doenca provocada por um parasita que afecta o ser humano atraves das picadelas\r\n da  femea do mosquito Anopheles infectada pelo protozoario do genero Plasmodium.', 'Uso de roupas de cor clara e de tecido fino com mangas compridas e calcas compridas, Evitar as areas mais propensas a contaminacao da doenca principalmente durante o entardecer ou amanhecer, Usar repelente respeitando as orientacoes do fabricante quanto a reposicao do repelente, Colocar telas de proteccao contra mosquitos em janelas e portas, Evitar lagos lagoas e rios ao final da tarde e a noite. ,utilizar redes mosqueteiros,  e importante consultar o nosso medico assistente habitual sobre a utilizacao de medicamentos para a prevencao do paludismo. Reduzindo assim consideravelmente o risco de contrair a doenca durante uma estadia numa zona endemica. '),
(38, 'poliomielite', 'febre, mal-estar, dor de cabeça, dor de garganta e no corpo, vômitos, diarreia, constipação, prisão de ventre, espasmos, rigidez na nuca', 'Poliomielite (paralisia infantil) é uma doença contagiosa aguda causada por vírus que pode infectar crianças e adultos e em casos graves pode acarretar paralisia nos membros inferiores. A vacinação é a única forma de prevenção. \r\nTodas as crianças menores de cinco anos devem ser vacinadas. A Poliomielite, também chamada de pólio ou paralisia infantil, é uma doença contagiosa aguda causada pelo poliovírus, que pode infectar crianças e adultos por meio do contato direto com fezes ou com secreções eliminadas pela boca das pessoas doentes e provocar ou não paralisia. Nos casos graves, em que acontecem as paralisias musculares, os membros inferiores são os mais atingidos. A doença permanece endêmica em três países: Afeganistão, Nigéria e Paquistão, com registro de 12 casos. Nenhum confirmado nas Américas. Como resultado da intensificação da vacinação, no Brasil não há circulação de poliovírus selvagem (da poliomielite) desde 1990.', 'Poliomielite.jpg', 'Hospital geral de Luanda', 'Essa doença é causada pela infecção do poliovíru; podendo ser adquirida por meio do contato direto de pessoa para pessoa. contato com muco; catarro ou fezes infectadas. O vírus da poliomielite entra no organismo através da boca \r\ne do nariz; multiplicando-se na garganta e no trato intestinal.', '\r\nA vacinação é a única forma de prevenção da Poliomielite. Todas as crianças menores de cinco anos de idade devem ser vacinadas conforme esquema de vacinação de rotina e na campanha nacional anual, Desde 2016, o esquema vacinal contra a poliomielite passou a ser de três doses da vacina injetável – VIP (2; 4 e 6 meses) e mais duas doses de reforço com a vacina oral bivalente– VOP (gotinha). '),
(36, ' sífilis', 'Ferida única, manchas no corpo, febre, mal-estar, dor de cabeça e ínguas pelo corpo', 'A sífilis é uma Infecção Sexualmente Transmissível (IST) curável e exclusiva do ser humano, causada pela bactéria Treponema pallidum. Pode apresentar várias manifestações clínicas e diferentes estágios (sífilis primária, secundária, latente e terciária). Nos estágios primário e secundário da infecção, a possibilidade de transmissão é maior. A sífilis pode ser transmitida por relação sexual sem camisinha com uma pessoa infectada ou para a criança durante a gestação ou parto. A infecção por sífilis pode colocar em risco não apenas a saúde do adulto, como também pode ser transmitida para o bebê durante a gestação. O acompanhamento das gestantes e parcerias sexuais durante o pré-natal previne a sífilis congênita e é fundamental.', 'Sifilis.jpg', 'Hospital Maria Pia', 'A sífilis é causada por uma bactéria chamada Treponema pallidum. que é geralmente transmitida via contato sexual e que entra no corpo por meio de pequenos cortes presentes na pele ou por membranas mucosas.', 'O uso correto e regular da camisinha feminina e/ou masculina é a medida mais importante de prevenção da sífilis. por se tratar de uma Infecção Sexualmente Transmissível,\r\nO acompanhamento das gestantes e parcerias sexuais durante o pré-natal de qualidade contribui para o controle da sífilis congênita.'),
(37, ' Doenças Renais ', 'Sonolência, Falta de fome, Falta de ar, Fadiga, Confusão, Náusea e vômitos.', 'As Doenças Renais Crônicas (DRC) são um termo geral para alterações heterogêneas que afetam tanto a estrutura quanto a função renal, com múltiplas causas e múltiplos fatores de risco. Trata-se de uma doença de curso prolongado, que pode parecer benigno, mas que muitas vezes torna-se grave e que na maior parte do tempo tem evolução assintomática.\r\nNa maior parte do tempo, a evolução da doença renal crônica é assintomática, fazendo com que o diagnóstico seja feito tardiamente. Nesses casos, o principal tratamento imediato é o procedimento de hemodiálise.', 'Doenca_Renais.jpg', 'Hospital geral de Luanda', 'sem informações.', 'A prevenção das doenças renais crônicas está diretamente relacionada a estilos e condições de vida das pessoas. Tratar e controlar os fatores de risco como diabetes; hipertensão; obesidade; doenças cardiovasculares e tabagismo são as principais formas de prevenir doenças renais. Essas doenças são classificadas como Doenças Crônicas Não Transmissíveis (DCNT). que respondem por cerca de 36 milhões ou 63% das mortes no mundo com destaque para as doenças do aparelho circulatório diabetes; câncer e doença respiratória crônica. A ocorrência é muito influenciada pelos estilos e condições de vida');

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

DROP TABLE IF EXISTS `markers`;
CREATE TABLE IF NOT EXISTS `markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `address` varchar(80) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `Provincia` varchar(300) NOT NULL,
  `Municipio` varchar(300) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(20) DEFAULT 'Hospital',
  `imagem` varchar(300) NOT NULL,
  `horarios` varchar(300) NOT NULL,
  `servicos` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `Provincia`, `Municipio`, `lat`, `lng`, `type`, `imagem`, `horarios`, `servicos`) VALUES
(41, 'Hospital militar de Luanda', 'Primeiro de maio, Luanda Angola', 'Luanda', 'Luanda', -8.824627, 13.240782, 'Hospital', '', '', ''),
(44, 'Hospital geral de Luanda', 'Camama Luanda, Angola', 'Luanda', 'Belas', -8.897748, 13.259492, 'Hospital', '', '', ''),
(46, 'Hospital Sanatorio', 'Av. Pedro de Castro Van-Dunem Loy, Luanda', 'Luanda', 'sem resposta', -8.861021, 13.283529, 'Hospital', '', '', ''),
(47, 'Maternidade Lucrecia Paim', 'Avenida Comandante Gika, Luanda', 'Luanda', 'Maculusso', -8.825481, 13.239136, 'Hospital', '', '', ''),
(48, 'Hospital Maria Pia', 'Largo Josina Machel, Luanda', 'Luanda', 'sem', -8.823287, 13.226747, 'Hospital', '', '', ''),
(49, 'Hospital Pediátrico David Bernardino', 'Luanda', 'Luanda', 'Maianga', -8.826189, 13.227235, 'Hospital', '', '', ''),
(50, 'Hospital Municipal de Viana', 'R, Norberto de Castro, capalanca, viana, Luanda', 'Luanda', 'Viana', -8.901603, 13.415241, 'Hospital', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `notificacao`
--

DROP TABLE IF EXISTS `notificacao`;
CREATE TABLE IF NOT EXISTS `notificacao` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` varchar(10000) NOT NULL,
  `classificacao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notificacao`
--

INSERT INTO `notificacao` (`id`, `nome`, `email`, `mensagem`, `classificacao`) VALUES
(1, 'Moreno', 'as@gnmgmn', 'dfgtyhas', 'Razoavel'),
(2, 'Lucrecio Barnabe', 'Lucre@gmail.com', 'gostei muito do sistema', 'Excelente'),
(3, 'Lucrecio', 'lucr@gmail.com', 'sistema unico e bom.', 'Excelente'),
(4, 'Luciano', 'luc@gmail.com', 'ajudou-me muito, agradeço.', 'Excelente'),
(5, 'Lucrecio Barnabe', 'barnabe@gmail.com', 'É muito Bom.', 'Excelente'),
(6, 'Gomes', 'Adgomes@gmail.com', 'muito bom amei o sistema.', 'Excelente'),
(7, 'Gomes', 'gomes@gmail.com', 'muito bom.', 'Excelente'),
(8, 'lucrecio', 'raul@gmail.com', 'ewdscxm ', 'Razoavel');

-- --------------------------------------------------------

--
-- Table structure for table `sintomas`
--

DROP TABLE IF EXISTS `sintomas`;
CREATE TABLE IF NOT EXISTS `sintomas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Sintoma` varchar(500) NOT NULL,
  `primeiro_socorro` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sintomas`
--

INSERT INTO `sintomas` (`id`, `Sintoma`, `primeiro_socorro`) VALUES
(15, 'início súbito de febre, calafrios, dor de cabeça intensa, dores nas costas, dores no corpo em geral, náuseas e vômitos, fadiga e fraqueza.', 'Vai a um hospital.'),
(14, 'Tosse seca,Chiado no peito,Dificuldade para respirar,Respiração rápida e curta,Ansiedade', 'Mantenha o ambiente limpo, Evite acúmulo de sujeira ou poeira,Tome sol,Evite cheiros fortes,Tome a vacina da gripe,Não fume,Se agasalhe principalmente na época de frio,Pratique actividades físicas regularmente,Tenha alimentação saudável,Beba bastante líquido (água), Mantenha o peso ideal.'),
(11, 'surdez, catarata, glaucoma.', 'A vacinação é a única maneira de prevenir a Síndrome da Rubéola Congênita. O esquema vacinal vigente é de uma dose da vacina tríplice viral aos 12 meses de idade e a segunda dose aos quatro anos de idade. Caso a mulher chegue à idade fértil sem ter sido previamente vacinada deverá receber uma dose da vacina tríplice viral, Diferentes estratégias de vacinação contra a Rubéola têm sido adotadas para prevenção da SRC. A vacinação de mulheres em idade fértil tem efeito direto na prevenção ao reduzir a susceptibilidade entre gestantes. sem que ocorra a eliminação do vírus na comunidade.'),
(5, 'febre vespertina, sudorese noturna, emagrecimento, cansaço ou fadiga', 'A principal maneira de prevenir a tuberculose em crianças é com a vacina BCG (Bacillus Calmette-Guérin),  avaliação de contatos de pessoas com tuberculose, manter ambientes bem ventilados e com entrada da luz solar.'),
(6, 'Ferida única, manchas no corpo, febre, mal-estar, dor de cabeça e ínguas pelo corpo', 'O uso correto e regular da camisinha feminina e/ou masculina é a medida mais importante de prevenção da sífilis, por se tratar de uma Infecção Sexualmente Transmissível, O acompanhamento das gestantes e parcerias sexuais durante o pré-natal de qualidade contribui para o controle da sífilis congênita.'),
(7, 'febre, mal-estar, dor de cabeça, dor de garganta e no corpo, vômitos, diarreia, constipação, prisão de ventre, espasmos, rigidez na nuca', 'A vacinação é a única forma de prevenção da Poliomielite. Todas as crianças menores de cinco anos de idade devem ser vacinadas conforme esquema de vacinação de rotina e na campanha nacional anual,\r\nDesde 2016, o esquema vacinal contra a poliomielite passou a ser de três doses da vacina injetável – VIP (2, 4 e 6 meses) e mais duas doses de reforço com a vacina oral bivalente– VOP (gotinha),A mudança está de acordo com a orientação da Organização Mundial da Saúde (OMS) e faz parte do processo de erradicação mundial da pólio.'),
(8, 'febre alta, dores de cabeça, mal-estar geral, falta de apetite, retardamento do ritmo cardíaco, aumento do volume do baço, manchas rosadas no tronco, prisão de ventre ou diarreia, tosse seca.', 'Consuma água tratada, Selecione alimentos frescos com boa aparência e, antes do consumo, esses alimentos devem ser lavados e desinfetados,\r\nPara desinfecção  os alimentos crus como frutas legumes e verduras devem ser mergulhados durante 30 minutos em uma solução preparada com 1 colher de sopa de hipoclorito de sódio a 2.5% para cada litro de água tratada. '),
(9, 'Visão embaçada, Tremor nos olhos, Dificuldades de se adaptar à luz, Olhos vermelhos, Olhos lacrimejando.', 'Cuidado com o sol: usar óculos de sol reduz a exposição dos olhos aos efeitos nocivos da radiação ultravioleta, Cuidado com a exposição excessiva às telas de TV, computador e smartphone: ficar muito tempo em frente às telas pode causar ressecamento dos olhos, cansaço visual e distúrbios do sono,Evite coçar os olhos: pode causar irritações lesões oculares ou até problema na córnea. Em clima seco hidrate os olhos com colíeios lubrificantes, Cuidado com o uso excessivo de colírios: automedicação deve ser evitada. Corticóides são particularmente preocupantes pelo risco de induzirem ao glaucoma e à catarata, Durma no mínimo 8 horas por dia: dormir pouco pode causar irritação nos olhos e cansaço visual. '),
(10, 'dores no peito, dor de cabeça, tonturas, zumbido no ouvido, fraqueza, visão embaçada e sangramento nasal.', 'Manter o peso adequado se necessário mudando hábitos alimentares, Não abusar do sal utilizando outros temperos que ressaltam o sabor dos alimentos, Praticar atividade física regular, Aproveitar momentos de lazer, Abandonar o fumo, Moderar o consumo de álcool, Evitar alimentos gordurosos.'),
(17, 'Febre, Suores e calafrios, Dor de cabeca forte, Nauseas e vomitos, Dor muscular em todo o corpo, Fraqueza e cansaco constante, Pele e olho amarelados.', 'Vai a um hospital.'),
(18, 'dor, calor, vermelhidão, rigidez da musculatura na região em que se formou o trombo. ', 'Vai a um hospital.'),
(19, 'Sonolência, Falta de fome, Falta de ar, Fadiga, Confusão, Náusea e vômitos.', 'Vai a um hospital.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `User` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `Genero` enum('Masculino','Femenino') DEFAULT NULL,
  `Facebook` varchar(30) DEFAULT NULL,
  `Telefone` int(14) DEFAULT NULL,
  `aniversario` date DEFAULT NULL,
  `Naturalidade` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `Nome`, `senha`, `User`, `email`, `imagem`, `Genero`, `Facebook`, `Telefone`, `aniversario`, `Naturalidade`) VALUES
(58, 'Raúl Matias S. Mambu', '24f3f3b38c93f27694286a05bb76b36f', 'raulRM', 'raulmatias769@gmail.com', 'Matias.jpg', 'Masculino', 'Raúl Matias RM', 914979999, '2000-03-28', 'Luanda'),
(69, 'Balde Barnabe', '4ef5c35fe37d00ae7d162bc733aec1b1', 'Barnabe12', 'balde@gmail.com', 'mda1.jpg', 'Masculino', 'BaldéBarnabe', 923321212, '2019-09-26', 'Luena'),
(56, 'Lucrécio D. Barnabé', 'd93591bdf7860e1e4ee2fca799911215', 'Daniel Barnabe', 'lucrecibarnabe@gmail.com', 'Lucrecio.jpg', 'Masculino', 'Sonyluscris.stb', 925579400, '1997-04-06', 'Luena Moxico');

-- --------------------------------------------------------

--
-- Table structure for table `trafego`
--

DROP TABLE IF EXISTS `trafego`;
CREATE TABLE IF NOT EXISTS `trafego` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datas` datetime DEFAULT NULL,
  `pagina` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `regiao` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `navegador` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `plataforma` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=288 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trafego`
--

INSERT INTO `trafego` (`id`, `datas`, `pagina`, `ip`, `cidade`, `regiao`, `pais`, `navegador`, `referencia`, `plataforma`) VALUES
(1, '2019-08-18 13:31:00', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(2, '2019-08-18 13:38:34', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'NavegaÃ§Ã£o Interna', 'Windows 8.1'),
(3, '2019-08-18 14:10:04', '/SBLSH_/contacto.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'NavegaÃ§Ã£o Interna', 'Windows 8.1'),
(4, '2019-08-18 21:47:53', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(5, '2019-08-18 21:52:27', '/SBLSH_/ajuda.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(6, '2019-08-18 21:52:34', '/SBLSH_/sobre.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(7, '2019-08-19 11:51:13', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(8, '2019-08-19 14:52:57', '/SBLSH_/sintomas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(9, '2019-08-19 15:54:30', '/SBLSH_/sintomas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(10, '2019-08-19 15:57:16', '/SBLSH_/sintomas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Opera', 'Acesso direto', 'Windows 8.1'),
(11, '2019-08-19 16:14:47', '/SBLSH_/sintomas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(12, '2019-08-19 17:26:50', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(13, '2019-08-19 17:27:22', '/SBLSH_/ajuda.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(14, '2019-08-19 17:27:47', '/SBLSH_/sobre.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(15, '2019-08-19 17:28:16', '/SBLSH_/contacto.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(16, '2019-08-20 06:26:24', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(17, '2019-08-20 06:26:42', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(18, '2019-08-20 07:22:35', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(19, '2019-08-20 07:43:23', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(20, '2019-08-20 10:17:28', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(21, '2019-08-20 10:17:39', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(22, '2019-08-20 21:53:35', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(23, '2019-08-20 22:05:03', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(24, '2019-08-21 06:51:12', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(25, '2019-08-21 06:52:09', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(26, '2019-08-21 06:59:35', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(27, '2019-08-21 07:12:34', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(28, '2019-08-21 07:18:37', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(29, '2019-08-21 08:41:48', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(30, '2019-08-21 14:11:47', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(31, '2019-08-21 16:28:15', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(32, '2019-08-21 21:00:01', '/SBLSH_/ajuda.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(33, '2019-08-21 21:00:14', '/SBLSH_/contacto.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(34, '2019-08-21 21:05:38', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(35, '2019-08-22 12:45:13', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(36, '2019-08-22 13:22:17', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(37, '2019-08-23 08:46:29', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(38, '2019-08-23 09:17:20', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(39, '2019-08-23 13:12:55', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(40, '2019-08-24 07:37:34', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(41, '2019-08-24 07:41:50', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Acesso direto', 'Windows 8.1'),
(42, '2019-08-24 11:32:15', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(43, '2019-08-24 11:33:10', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(44, '2019-08-24 11:39:31', '/SBLSH_/ajuda.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(45, '2019-08-24 11:53:03', '/SBLSH_/contacto.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(46, '2019-08-25 13:32:59', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(47, '2019-08-25 13:37:31', '/SBLSH_/index.php?pagina=-1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(48, '2019-08-25 14:36:16', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(49, '2019-08-25 14:50:26', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(50, '2019-08-25 14:52:27', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(51, '2019-08-25 19:35:21', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(52, '2019-08-25 19:35:49', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(53, '2019-08-25 20:01:57', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(54, '2019-08-25 20:31:25', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(55, '2019-08-25 20:37:51', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Acesso direto', 'Windows 8.1'),
(56, '2019-08-25 20:38:24', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(57, '2019-08-25 20:38:32', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(58, '2019-08-26 00:05:15', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(59, '2019-08-26 10:33:53', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(60, '2019-08-26 10:37:37', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(61, '2019-08-26 10:46:04', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(62, '2019-08-26 11:17:30', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(63, '2019-08-26 11:18:24', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Acesso direto', 'Windows 8.1'),
(64, '2019-08-26 11:41:12', '/SBLSH_/doencas.php?pagina=3', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(65, '2019-08-26 11:46:58', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(66, '2019-08-26 11:47:20', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(67, '2019-08-26 11:49:09', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(68, '2019-08-26 11:49:17', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(69, '2019-08-26 11:52:08', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(70, '2019-08-26 11:52:20', '/SBLSH_/doencas.php?pagina=3', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(71, '2019-08-26 11:52:46', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(72, '2019-08-26 17:44:27', '/SBLSH_/doencas.php?pagina=3', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(73, '2019-08-26 17:56:25', '/SBLSH_/doencas.php?pagina=4', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(74, '2019-08-26 18:14:54', '/SBLSH_/doencas.php?pagina=5', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(75, '2019-08-26 18:21:01', '/SBLSH_/doencas.php?pagina=6', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(76, '2019-08-27 08:28:50', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(77, '2019-08-27 08:40:15', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(78, '2019-08-27 08:41:27', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(79, '2019-08-27 08:54:47', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(80, '2019-08-27 08:56:02', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(81, '2019-08-27 08:58:30', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(82, '2019-08-27 09:07:46', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(83, '2019-08-27 09:09:32', '/Nova%20pasta%20(2)/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(84, '2019-08-27 09:09:46', '/Nova%20pasta%20(2)/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(85, '2019-08-27 14:16:05', '/SBLSH_/doencas.php?pagina=3', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(86, '2019-08-27 14:17:23', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Acesso direto', 'Windows 8.1'),
(87, '2019-08-27 14:19:00', '/SBLSH_/doencas.php?pagina=4', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(88, '2019-08-27 14:26:13', '/SBLSH_/contacto.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(89, '2019-08-28 04:14:16', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(90, '2019-08-28 04:14:42', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(91, '2019-08-30 10:27:25', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(92, '2019-08-30 10:27:30', '/SBLSH_/contacto.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(93, '2019-08-30 16:51:08', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(94, '2019-08-30 16:51:13', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(95, '2019-08-30 18:00:16', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Acesso direto', 'Windows 8.1'),
(96, '2019-08-30 18:00:46', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Acesso direto', 'Windows 8.1'),
(97, '2019-08-31 07:46:06', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(98, '2019-08-31 08:36:29', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(99, '2019-08-31 08:36:39', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(100, '2019-08-31 09:30:25', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(101, '2019-08-31 09:30:32', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(102, '2019-08-31 09:30:47', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(103, '2019-08-31 10:07:16', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(104, '2019-08-31 11:19:09', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(105, '2019-08-31 13:27:23', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(106, '2019-08-31 13:52:04', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(107, '2019-08-31 16:38:56', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(108, '2019-08-31 16:40:03', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(109, '2019-08-31 16:41:36', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(110, '2019-08-31 16:53:07', '/SBLSH_/sobre.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(111, '2019-08-31 17:44:57', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(112, '2019-08-31 17:48:05', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(113, '2019-08-31 17:59:36', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(114, '2019-08-31 18:00:48', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(115, '2019-08-31 18:08:59', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(116, '2019-08-31 18:16:15', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(117, '2019-09-01 09:23:23', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(118, '2019-09-01 09:23:32', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(119, '2019-09-01 10:05:59', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(120, '2019-09-01 12:18:21', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(121, '2019-09-01 13:36:56', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(122, '2019-09-01 13:51:11', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(123, '2019-09-01 13:52:36', '/SBLSH_/contacto.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(124, '2019-09-01 14:27:19', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(125, '2019-09-02 10:17:22', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(126, '2019-09-02 10:19:57', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(127, '2019-09-02 10:20:46', '/SBLSH_/ajuda.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(128, '2019-09-02 10:20:53', '/SBLSH_/contacto.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(129, '2019-09-02 11:10:11', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(130, '2019-09-02 11:50:35', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(131, '2019-09-02 11:52:16', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(132, '2019-09-02 11:52:38', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(133, '2019-09-02 13:27:25', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(134, '2019-09-02 14:13:20', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(135, '2019-09-02 14:13:26', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(136, '2019-09-02 14:24:59', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(137, '2019-09-02 15:06:36', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(138, '2019-09-02 17:02:41', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(139, '2019-09-02 17:09:15', '/SBLSH_/contacto.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(140, '2019-09-02 17:09:52', '/SBLSH_/sobre.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(141, '2019-09-02 18:13:56', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(142, '2019-09-02 19:35:41', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(143, '2019-09-02 20:27:30', '/SBLSH_/sintomas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(144, '2019-09-02 21:16:33', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(145, '2019-09-02 21:22:08', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(146, '2019-09-02 22:24:19', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(147, '2019-09-02 22:42:05', '/SBLSH_/index.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(148, '2019-09-03 08:21:36', '/SBLSH_/sintomas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(149, '2019-09-03 08:22:14', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(150, '2019-09-03 08:23:34', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(151, '2019-09-03 08:24:24', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(152, '2019-09-03 11:02:07', '/SBLSH_/index.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(153, '2019-09-03 22:09:02', '/SBLSH_/doencas.php', '105.168.6.159', 'Descunhecido', 'Descunhecido', 'Descunhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(154, '2019-09-03 22:14:30', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(155, '2019-09-04 16:06:44', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(156, '2019-09-04 16:08:35', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(157, '2019-09-04 16:11:47', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(158, '2019-09-04 16:13:48', '/SBLSH_/ajuda.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(159, '2019-09-04 16:15:38', '/SBLSH_/sobre.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(160, '2019-09-04 16:23:50', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(161, '2019-09-04 21:41:41', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(162, '2019-09-04 21:41:54', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(163, '2019-09-09 07:37:45', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(164, '2019-09-09 07:39:49', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(165, '2019-09-09 16:54:44', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(166, '2019-09-09 21:10:20', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(167, '2019-09-09 21:16:10', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(168, '2019-09-09 21:56:40', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(169, '2019-09-10 07:30:52', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(170, '2019-09-10 07:32:25', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(171, '2019-09-10 07:49:59', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(172, '2019-09-10 08:18:15', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Acesso direto', 'Windows 8.1'),
(173, '2019-09-10 08:34:50', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(174, '2019-09-10 14:33:14', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(175, '2019-09-10 14:35:39', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(176, '2019-09-10 14:38:17', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(177, '2019-09-13 18:07:49', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(178, '2019-09-13 18:08:15', '/SBLSH_/sobre.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(179, '2019-09-13 18:08:18', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(180, '2019-09-13 18:08:53', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Acesso direto', 'Windows 8.1'),
(181, '2019-09-14 13:40:06', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(182, '2019-09-16 09:32:13', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(183, '2019-09-16 09:39:07', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(184, '2019-09-16 09:39:12', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(185, '2019-09-16 09:39:33', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(186, '2019-09-16 10:03:03', '/SBLSH_/doencas.php?pagina=3', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(187, '2019-09-16 10:16:45', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(188, '2019-09-20 22:44:51', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(189, '2019-09-20 22:49:33', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(190, '2019-09-20 23:01:15', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(191, '2019-09-20 23:03:28', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(192, '2019-09-20 23:05:44', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(193, '2019-09-21 15:38:28', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(194, '2019-09-21 15:38:42', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(195, '2019-09-21 15:43:12', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(196, '2019-09-21 15:43:47', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(197, '2019-09-21 15:46:51', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(198, '2019-09-21 16:00:13', '/SBLSH_/sobre.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(199, '2019-09-21 16:00:42', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(200, '2019-09-23 17:48:09', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(201, '2019-09-23 17:48:24', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(202, '2019-09-24 13:36:19', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(203, '2019-09-24 13:36:31', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(204, '2019-09-24 13:36:38', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(205, '2019-09-24 13:36:47', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(206, '2019-09-24 13:36:56', '/SBLSH_/sobre.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(207, '2019-09-24 13:37:01', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(208, '2019-09-26 18:02:32', '/SBLSH_/doencas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(209, '2019-09-26 18:02:44', '/SBLSH_/index.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(210, '2019-09-26 18:11:37', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(211, '2019-09-26 18:27:55', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(212, '2019-09-26 22:12:55', '/SBLSH_/ajuda.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(213, '2019-09-26 22:13:48', '/SBLSH_/sobre.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(214, '2019-09-26 22:14:17', '/SBLSH_/contacto.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(215, '2019-10-02 07:42:53', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(216, '2019-10-02 07:44:13', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(217, '2019-10-02 07:55:56', '/SBLSH_/sobre.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(218, '2019-10-02 07:57:11', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(219, '2019-10-02 07:57:37', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(220, '2019-10-02 08:28:49', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(221, '2019-10-02 14:11:18', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(222, '2019-10-02 15:41:41', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(223, '2019-10-02 16:25:03', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(224, '2019-10-02 16:25:10', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(225, '2019-10-02 16:25:29', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(226, '2019-10-02 16:25:44', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(227, '2019-10-02 16:46:36', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(228, '2019-10-06 18:36:29', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(229, '2019-10-06 19:05:43', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(230, '2019-10-07 10:33:18', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(231, '2019-10-07 10:35:06', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(232, '2019-10-07 10:35:15', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(233, '2019-10-07 10:35:27', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(234, '2019-10-07 10:35:38', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(235, '2019-10-07 10:35:45', '/SBLSH_/sobre.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(236, '2019-10-07 10:36:23', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(237, '2019-10-15 20:19:43', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(238, '2019-10-15 20:22:15', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(239, '2019-10-15 20:22:23', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(240, '2019-10-15 20:22:27', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(241, '2019-10-15 20:22:30', '/SBLSH_/sobre.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(242, '2019-10-15 20:22:32', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(243, '2019-10-16 05:51:14', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(244, '2019-10-16 05:51:42', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(245, '2019-10-16 05:51:42', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(246, '2019-10-16 05:51:47', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(247, '2019-10-16 05:51:58', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(248, '2019-10-16 05:52:12', '/SBLSH_/sobre.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(249, '2019-10-16 05:52:17', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(250, '2019-10-17 03:59:53', '/SBLSH_/doencas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(251, '2019-10-17 04:00:07', '/SBLSH_/sintomas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(252, '2019-10-17 04:01:06', '/SBLSH_/index.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(253, '2019-10-17 04:20:52', '/SBLSH_/index.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(254, '2019-10-17 04:22:06', '/SBLSH_/sintomas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(255, '2019-10-17 04:45:06', '/SBLSH_/ajuda.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(256, '2019-10-17 04:48:19', '/SBLSH_/sobre.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(257, '2019-10-17 04:48:59', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(258, '2019-10-19 17:23:16', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(259, '2019-10-20 03:53:06', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(260, '2019-10-20 03:53:48', '/SBLSH_/doencas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(261, '2019-10-20 03:54:01', '/SBLSH_/sintomas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(262, '2019-10-20 03:54:22', '/SBLSH_/ajuda.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(263, '2019-10-20 03:54:29', '/SBLSH_/sobre.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(264, '2019-10-20 03:54:34', '/SBLSH_/contacto.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(265, '2019-11-05 02:40:48', '/SBLSH_/sintomas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(266, '2019-11-05 02:44:43', '/SBLSH_/index.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(267, '2019-11-05 02:47:23', '/SBLSH_/sintomas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Opera', 'Acesso direto', 'Windows 8.1'),
(268, '2019-11-05 04:43:36', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Navegação Interna', 'Windows 8.1'),
(269, '2019-11-05 04:45:56', '/SBLSH_/doencas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(270, '2019-11-05 05:05:07', '/SBLSH_/ajuda.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(271, '2019-11-05 06:04:42', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(272, '2019-11-06 02:33:26', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(273, '2019-11-06 02:52:39', '/SBLSH_/doencas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(274, '2019-11-06 03:31:25', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(275, '2019-11-06 04:03:34', '/SBLSH_/doencas.php?pagina=1', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(276, '2019-11-06 04:36:28', '/SBLSH_/sintomas.php', '105.168.6.159', 'Kilamba Kiaxi', 'Luanda Province', 'Angola', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(277, '2019-11-06 04:44:38', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(278, '2019-11-06 16:46:04', '/SBLSH_/index.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(279, '2019-11-06 17:05:47', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Opera', 'Acesso direto', 'Windows 8.1'),
(280, '2019-11-06 17:10:24', '/SBLSH_/doencas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(281, '2019-11-06 17:15:03', '/SBLSH_/doencas.php?pagina=2', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(282, '2019-11-06 17:43:39', '/SBLSH_/contacto.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(283, '2019-11-06 17:52:21', '/SBLSH_/hospitais.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Acesso direto', 'Windows 8.1'),
(284, '2019-11-06 18:05:40', '/SBLSH_/hospitais.php?pagina=2', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(285, '2019-11-06 18:05:54', '/SBLSH_/hospitais.php?pagina=1', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(286, '2019-11-06 18:16:06', '/SBLSH_/sintomas.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1'),
(287, '2019-11-06 18:17:27', '/SBLSH_/Hospitais.php', '105.168.6.159', 'Desconhecido', 'Desconhecido', 'Desconhecido', 'Chrome', 'Navegação Interna', 'Windows 8.1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
