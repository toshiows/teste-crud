package br.com.toshio.crud.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.toshio.crud.model.Arquivo;

@Controller
public class UsuarioController {
	
	  private static final String UPLOAD_DIRECTORY ="/imagens"; 

	@RequestMapping("cadastroUsuario")
	public String cadastroUsuario() {
		return "usuario/cadastro-usuario";
	}
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String handleFormUpload( @RequestParam("file") MultipartFile file) throws IOException{
		Arquivo arquivo = new Arquivo();
		arquivo.upload("/home/toshio/eclipse-workspace/CrudExemplo/WebContent/resources/imagens",
				file.getName(), file.getInputStream());
		
		return "usuario/cadastro-usuario\"";
	}
  

		
	}

