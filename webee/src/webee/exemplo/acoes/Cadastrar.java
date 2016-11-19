package webee.exemplo.acoes;
import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;
import webee.exemplo.GerenteUsuarios;
import webee.exemplo.User;
public class Cadastrar extends Acao{

	protected void executar(Requisicao req, Resposta resp) {
		GerenteUsuarios gerente = (GerenteUsuarios)this.getAplicacao().recuperarObjeto(GerenteUsuarios.KEY);

		String login = req.getParametro("login");
		String senha = req.getParametro("senha");
		String nome = req.getParametro("nome");
		User usuario = new User(login, nome, senha);

		gerente.cadastrarUsuario(usuario);
		
		resp.adicionarDado("usuarios", gerente.getUsuarios());
		
		resp.abrirPagina("cadastro.jsp");
		
	}

}
