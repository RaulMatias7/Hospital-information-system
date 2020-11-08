<?php
session_start();
$Administ = filter_input(INPUT_POST, 'Cadastrar', FILTER_SANITIZE_STRING);
$SendCadImg = filter_input(INPUT_POST, 'SendCadImg', FILTER_SANITIZE_STRING);
$SendHospi = filter_input(INPUT_POST, 'CAdHosp', FILTER_SANITIZE_STRING);
//Credenciais de acesso ao BD
include_once"../funcoes/banco/conexao.php";
$pdo= conecta();

if($Administ):
    $nome_imagem = $_FILES['imagem']['name'];
    $nome = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);
    $senha = filter_input(INPUT_POST, 'senha', FILTER_SANITIZE_STRING);
    $user = filter_input(INPUT_POST, 'user', FILTER_SANITIZE_STRING);
    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
    $Genero = filter_input(INPUT_POST, 'Genero', FILTER_SANITIZE_STRING);
    $Facebook = filter_input(INPUT_POST, 'Facebook', FILTER_SANITIZE_STRING);
    $Telefone = filter_input(INPUT_POST, 'Telefone', FILTER_SANITIZE_STRING);
    $aniversario = filter_input(INPUT_POST, 'data', FILTER_SANITIZE_STRING);
    $Naturalidade = filter_input(INPUT_POST, 'Naturalidade', FILTER_SANITIZE_STRING);
    if (empty($nome) || empty($senha) || empty($user) || empty($email) || empty($Genero) || empty($Naturalidade) || empty($nome_imagem) || empty($Telefone) || empty($aniversario) || empty($Facebook)) {
        $_SESSION['msg'] = "<p style='color:green;'>ERRO: campos vazios</p>";
        header("Location: ../admin.php");
    }
    else {
        $cadastro = $pdo->prepare("INSERT INTO tb_admin (Nome,User,senha,imagem,email,Genero,Facebook,Telefone,aniversario,Naturalidade) VALUES (?,?,?,?,?,?,?,?,?,?)");
        $cadastro->bindValue(1, $nome, PDO::PARAM_STR);
        $cadastro->bindValue(2, $user, PDO::PARAM_STR);
        $cadastro->bindValue(3, md5(strrev($senha)), PDO::PARAM_STR);
        $cadastro->bindValue(4, $nome_imagem, PDO::PARAM_STR);
        $cadastro->bindValue(5, $email, PDO::PARAM_STR);
        $cadastro->bindValue(6, $Genero, PDO::PARAM_STR);
        $cadastro->bindValue(7, $Facebook, PDO::PARAM_STR);
        $cadastro->bindValue(8, $Telefone, PDO::PARAM_INT);
        $cadastro->bindValue(9, $aniversario, PDO::PARAM_STR);
        $cadastro->bindValue(10, $Naturalidade, PDO::PARAM_STR);
        $cadastro->execute();

        //Verificar se os dados foram inseridos com sucesso
        if ($cadastro->rowCount() > 0) {
            //Recuperar último ID inserido no banco de dados
            $ultimo_id = $pdo->lastInsertId();

            //Diretório onde o arquivo vai ser salvo
            $diretorio = '../adminIMG/' . $ultimo_id . '/';

            //Criar a pasta de foto
            mkdir($diretorio, 0755);

            if (move_uploaded_file($_FILES['imagem']['tmp_name'], $diretorio . $nome_imagem)) {
                $_SESSION['msg'] = "<p style='color:green;' class='alert alert-sucess'>Administrador Cadastrado com sucesso.</p>";
                header("Location: ../admin.php");
            } else {
                $_SESSION['msg'] = "<p><span style='color:green;' class='alert alert-sucess'>Administrador Cadastrado com sucesso. </span><span style='color:red;'>Erro ao realizar o upload da imagem</span></p>";
                header("Location: ../admin.php");
            }
        }
    }

elseif($SendCadImg):
    $nome_imagem = $_FILES['imagem']['name'];
    $doenca = filter_input(INPUT_POST, 'doenca', FILTER_SANITIZE_STRING);
    $sintoma = filter_input(INPUT_POST, 'id_sintoma', FILTER_SANITIZE_STRING);
    $informacoes = filter_input(INPUT_POST, 'informacoes', FILTER_SANITIZE_STRING);
    $Hospital = filter_input(INPUT_POST, 'id_hosptal', FILTER_SANITIZE_STRING);
    $Causas = filter_input(INPUT_POST, 'Causas', FILTER_SANITIZE_STRING);
    $Prevencao = filter_input(INPUT_POST, 'Prevencao', FILTER_SANITIZE_STRING);


    if (empty($doenca) || empty($sintoma) || empty($informacoes) || empty($nome_imagem) || empty($Hospital) || empty($Causas) || empty($Prevencao)) {
        $_SESSION['msg'] = "<p style='color:green;'>ERRO: campos vazios</p>";
        header("Location: ../admin.php");
    }
    else {
        $cadastro = $pdo->prepare("INSERT INTO doencas (Doenca,sintomas_id,Descricao,imagem,markers_id,Prevencao,Causas) VALUES (?,?,?,?,?,?,?)");
        $cadastro->bindValue(1, $doenca, PDO::PARAM_STR);
        $cadastro->bindValue(2, $sintoma, PDO::PARAM_STR);
        $cadastro->bindValue(3, $informacoes, PDO::PARAM_STR);
        $cadastro->bindValue(4, $nome_imagem, PDO::PARAM_STR);
        $cadastro->bindValue(5, $Hospital, PDO::PARAM_STR);
        $cadastro->bindValue(6, $Causas, PDO::PARAM_STR);
        $cadastro->bindValue(7, $Prevencao, PDO::PARAM_STR);
        $cadastro->execute();

        //Verificar se os dados foram inseridos com sucesso
        if ($cadastro->rowCount() > 0) {
            //Recuperar último ID inserido no banco de dados
            $ultimo_id = $pdo->lastInsertId();

            //Diretório onde o arquivo vai ser salvo
            $diretorio = '../images/' . $ultimo_id . '/';

            //Criar a pasta de foto
            mkdir($diretorio, 0755);

            if (move_uploaded_file($_FILES['imagem']['tmp_name'], $diretorio . $nome_imagem)) {
                $_SESSION['msg'] = "<p style='color:green;'>Dodos salvo com sucesso</p>";
                header("Location: ../admin.php");
            } else {
                $_SESSION['msg'] = "<p><span style='color:green;'>Dados salvo com sucesso. </span><span style='color:red;'>Erro ao realizar o upload da imagem</span></p>";
                header("Location: ../admin.php");
            }
        } else {
            $_SESSION['msg'] = "<p style='color:red;'>Erro ao salvar os dados</p>";
            header("Location: ../admin.php");
        }
    }
elseif($SendHospi):
    $nome_imagem = $_FILES['imagem']['name'];
    $nomeh = filter_input(INPUT_POST, 'nomeh', FILTER_SANITIZE_STRING);
    $Provincia = filter_input(INPUT_POST, 'Provincia', FILTER_SANITIZE_STRING);
    $Municipio = filter_input(INPUT_POST, 'Municipio', FILTER_SANITIZE_STRING);
    $lng = filter_input(INPUT_POST, 'lng', FILTER_SANITIZE_STRING);
    $lat = filter_input(INPUT_POST, 'lat', FILTER_SANITIZE_STRING);
    $endereco = filter_input(INPUT_POST, 'endereco', FILTER_SANITIZE_STRING);
    $horario = filter_input(INPUT_POST, 'horario', FILTER_SANITIZE_STRING);
    $servico = filter_input(INPUT_POST, 'servico', FILTER_SANITIZE_STRING);


    if (empty($nomeh) || empty($Provincia) || empty($Municipio) || empty($nome_imagem) || empty($lng) || empty($lat) || empty($endereco || empty($horario))) {
        $_SESSION['msg'] = "<p style='color:green;'>ERRO: campos vazios Hospital</p>";
        header("Location: ../admin.php");
    }
    else {
        $cadastro = $pdo->prepare("INSERT INTO markers (name,address,Provincia,Municipio,lat,lng,imagem,horario,servicos) VALUES (?,?,?,?,?,?,?,?,?)");
        $cadastro->bindValue(1, $nomeh, PDO::PARAM_STR);
        $cadastro->bindValue(2, $endereco, PDO::PARAM_STR);
        $cadastro->bindValue(3, $Provincia, PDO::PARAM_STR);
        $cadastro->bindValue(4, $Municipio, PDO::PARAM_STR);
        $cadastro->bindValue(5, $lat, PDO::PARAM_STR);
        $cadastro->bindValue(6, $lng, PDO::PARAM_STR);
        $cadastro->bindValue(7, $nome_imagem, PDO::PARAM_STR);
        $cadastro->bindValue(8, $horario, PDO::PARAM_STR);
        $cadastro->bindValue(9, $servico, PDO::PARAM_STR);
        $cadastro->execute();

        //Verificar se os dados foram inseridos com sucesso
        if ($cadastro->rowCount() > 0) {
            //Recuperar último ID inserido no banco de dados
            $ultimo_id = $pdo->lastInsertId();

            //Diretório onde o arquivo vai ser salvo
            $diretorio = '../ImgHosp/' . $ultimo_id . '/';

            //Criar a pasta de foto
            mkdir($diretorio, 0755);

            if (move_uploaded_file($_FILES['imagem']['tmp_name'], $diretorio . $nome_imagem)) {
                $_SESSION['msg'] = "<p style='color:green;'>Dodos salvo com sucesso</p>";
                header("Location: ../admin.php");
            } else {
                $_SESSION['msg'] = "<p><span style='color:green;'>Dados salvo com sucesso. </span><span style='color:red;'>Erro ao realizar o upload da imagem</span></p>";
                header("Location: ../admin.php");
            }
        } else {
            $_SESSION['msg'] = "<p style='color:red;'>Erro ao salvar os dados</p>";
            header("Location: ../admin.php");
        }
    }
endif;
//else{
//    $_SESSION['msg'] = "<p style='color:red;'>Erro ao salvar os dados</p>";
//    header("Location: ../admin.php");
//}

