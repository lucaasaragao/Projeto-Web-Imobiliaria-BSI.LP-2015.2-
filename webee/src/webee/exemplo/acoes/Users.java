package webee.exemplo.acoes;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;

import webee.exemplo.GerenteUsuarios;

public class Users extends Acao {

	protected void executar(Requisicao req, Resposta resp) {
		GerenteUsuarios gerente = (GerenteUsuarios)this.getAplicacao().recuperarObjeto(GerenteUsuarios.KEY);
		resp.adicionarDado("usuarios", gerente.getUsuarios());
		resp.abrirPagina("/users.jsp");
	}
	
}
