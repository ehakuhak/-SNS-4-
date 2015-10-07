package controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImageController {
	private static Logger logger = LoggerFactory.getLogger(ImageController.class);
	@RequestMapping(value = "/upload", method=RequestMethod.GET)
	public String showUploadPage() {
		return "upload";
	}
	
	@RequestMapping(value = "/upload", method=RequestMethod.POST)
	public String handleFile(Model model, @RequestParam String desc, @RequestParam MultipartFile file)
			throws IllegalStateException, IOException {
		File nfile = new File("D:/FileDownloader/upload/"+file.getOriginalFilename());
		file.transferTo(nfile);
		logger.trace("DB에 저장할 값 : " + file.getOriginalFilename());
		Map<String, Object> data = new HashMap<>();
		data.put("desc", desc);
		data.put("location", nfile.getCanonicalFile());
		model.addAttribute("message", data);
		model.addAttribute("file", file.getOriginalFilename());
		return "showMessage";
	}
}
