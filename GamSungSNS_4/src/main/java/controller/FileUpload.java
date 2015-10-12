package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileUpload {
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public String upload(@RequestParam MultipartFile uploadFile,
			@RequestParam String comment, Model model, HttpSession session)throws IOException{
		/*File file = new File("c:/Temp/upload/"+uploadFile.getOriginalFilename());*/
		model.addAttribute("uploaded", uploadFile.getOriginalFilename());
		
		/*uploadFile.transferTo(file);*/
		return "upload/uploadResult";
	}
}
