package webee.exemplo.acoes;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;

import webee.exemplo.GerenteUsuarios;
import webee.exemplo.User;

public class Login extends Acao {
	
	protected void executar(Requisicao req, Resposta resp) {
		String login = req.getParametro("login");
		String senha = req.getParametro("senha");
		
		GerenteUsuarios gerente = (GerenteUsuarios)this.getAplicacao().recuperarObjeto(GerenteUsuarios.KEY);
		
		
		if(gerente.existeUsuario(login)){
			User user = gerente.getUsuario(login);
			if(senha.equals(user.getSenha())){
				resp.abrirPagina("/inicio.jsp");
			}else{
				resp.adicionarDado("erro", "Senha inv√°lida!");
				resp.abrirPagina("/login.jsp");
			}
		}else{
			resp.adicionarDado("erro", "Usu·rio inexistente!");
			resp.abrirPagina("/users.jsp");
		}

	}

}
