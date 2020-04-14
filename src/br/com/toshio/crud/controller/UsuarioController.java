package br.com.toshio.crud.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.toshio.crud.model.Arquivo;

@Controller
public class UsuarioController {

	@RequestMapping("cadastroUsuario")
	public String cadastroUsuario() {
		return "usuario/cadastro-usuario";
	}
	
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String handleFormUpload(@RequestParam("file") MultipartFile file, HttpSession session) {
		
        String path=session.getServletContext().getRealPath("/");  
        String filename=file.getOriginalFilename();  
        
		if (!file.isEmpty()) {
			Arquivo arquivo = new Arquivo();
			arquivo.upload("/home/toshio/eclipse-workspace/CrudExemplo/WebContent/resources/imagens",
					path, filename);
		}
		
	}
}
