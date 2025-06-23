import java.sql.Connection;
import java.sql.DriverManager;

public class TesteConexao {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3307/eventosdb?useSSL=false&serverTimezone=UTC";
        String user = "user";
        String pass = "user123";

        try {
            System.out.println("Tentando conectar ao banco de dados...");
            Connection conn = DriverManager.getConnection(url, user, pass);
            System.out.println("Conexão estabelecida com sucesso!");
            conn.close();
        } catch (Exception e) {
            System.out.println("Erro ao conectar:");
            e.printStackTrace();
        }
    }
}
