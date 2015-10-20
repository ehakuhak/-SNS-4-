package controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class FileUpload {
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public ResponseEntity upload(MultipartHttpServletRequest request)throws IOException{
		/*File file = new File("c:/Temp/upload/"+uploadFile.getOriginalFilename());*/
		try {
            Iterator<String> itr = request.getFileNames();

            while (itr.hasNext()) {
                String uploadedFile = itr.next();
                MultipartFile file = request.getFile(uploadedFile);
                String mimeType = file.getContentType();
                String filename = file.getOriginalFilename();
                byte[] bytes = file.getBytes();
                System.out.println(uploadedFile + " " + mimeType + " " + filename + " " + bytes);
                File file2 = new File("c:/Temp/upload/abc/"+filename);
                file.transferTo(file2);
                //FileUpload newFile = new FileUpload(filename, bytes, mimeType);
           //     FileUpload newFile = new fI
  //              fileUploadService.uploadFile(newFile);
            }
        }
        catch (Exception e) {
            return new ResponseEntity<>("{}", HttpStatus.INTERNAL_SERVER_ERROR);
        }
		
		/*uploadFile.transferTo(file);*/
		return new ResponseEntity<>("{}", HttpStatus.OK);
	}
}
