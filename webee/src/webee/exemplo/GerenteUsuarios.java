package webee.exemplo;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

public class GerenteUsuarios {
		
	public static final String KEY = "gerenteUsuario";
	
	private Map<String,User> usuarios;
	private LinkedList<User> listUsuarios;
	
	public GerenteUsuarios(){
		usuarios = new HashMap<String,User>();
		listUsuarios= new LinkedList<User>();
	}
	
	public boolean existeUsuario(String login){
		return this.usuarios.containsKey(login);
	}
	
	public User getUsuario(String login){
		return usuarios.get(login);
	}

	public LinkedList<User> getUsuarios() {
		return this.listUsuarios;
	}

	public void cadastrarUsuario(User usuario) {
		if(usuarios.containsKey(usuario.getLogin())){
			throw new CadastroUsuarioException("Já existe um usuário com login "+usuario.getLogin());
		}
		usuarios.put(usuario.getLogin(), usuario);
		listUsuarios.add(usuario);
		
	}

}