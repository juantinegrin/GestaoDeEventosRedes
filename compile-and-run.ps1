# Compile all Java files
$classpath = "database/mysql-connector-j-9.3.0.jar;src"
$sourceFiles = @(
    "src/main/Main.java",
    "src/main/MainTerminal.java",
    "src/view/JanelaPrincipal.java",
    "src/view/TelaAdmin.java",
    "src/view/TelaComum.java",
    "src/view/TelaLogin.java",
    "src/model/Atracao.java",
    "src/model/Endereco.java",
    "src/model/Evento.java",
    "src/model/Recurso.java",
    "src/model/Usuario.java",
    "src/model/UsuarioAdmin.java",
    "src/model/UsuarioComum.java",
    "src/dao/AtracaoDAO.java",
    "src/dao/EnderecoDAO.java",
    "src/dao/EventoDAO.java",
    "src/dao/InterfaceDAO.java",
    "src/dao/RecursoDAO.java",
    "src/dao/UsuarioDAO.java",
    "src/util/Conexao.java",
    "src/util/Criptografia.java"
)

Write-Host "Compilando arquivos Java..."
javac -cp $classpath $sourceFiles

if ($LASTEXITCODE -eq 0) {
    Write-Host "Compilação bem sucedida. Executando aplicação..."
    java -cp $classpath main.Main
} else {
    Write-Host "Erro na compilação!"
}
