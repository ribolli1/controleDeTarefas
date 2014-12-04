package com.fribolli.tarefas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fribolli.tarefas.dao.JdbcUsuarioDao;
import com.fribolli.tarefas.modelo.Usuario;

@Controller
public class LoginController {

	@RequestMapping("loginForm")
	public String loginForm(){
		return "formulario-login";
	}
	
	@RequestMapping("cadastroForm")
	public String cadastroForm(){
		return "formulario-cadastro";
	}
	
	@RequestMapping("adicionaUsuario")
	public String adicionaUsuario(Usuario usuario){
		JdbcUsuarioDao dao = new JdbcUsuarioDao();
		dao.adiciona(usuario);
		
		return "formulario-login";
	}
		
	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session){
		
		if(new JdbcUsuarioDao().existeUsuario(usuario)){
			session.setAttribute("usuarioLogado", usuario);
			session.setAttribute("login", usuario.getLogin());
			return "redirect:listaTarefas";
		}
		return "redirect:loginForm";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:loginForm";
	}
		
}