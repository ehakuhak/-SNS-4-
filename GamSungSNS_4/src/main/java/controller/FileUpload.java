package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;

import dto.Board;
import service.BoardService;

@Controller
public class FileUpload {
	@Autowired
	BoardService bservice;
	
	List<MultipartFile> imageList = new ArrayList<>();
	
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public ResponseEntity<String> upload(MultipartHttpServletRequest request)throws IOException{
		/*File file = new File("c:/Temp/upload/"+uploadFile.getOriginalFilename());*/
		try {
            Iterator<String> itr = request.getFileNames();

            while (itr.hasNext()) {
                String uploadedFile = itr.next();
                MultipartFile file = request.getFile(uploadedFile);
                imageList.add(file);
                String mimeType = file.getContentType();
                String filename = file.getOriginalFilename();
                byte[] bytes = file.getBytes();
                System.out.println(uploadedFile + " " + mimeType + " " + filename + " " + bytes);
                File file2 = new File("c:/Temp/upload/abc/"+filename);
                /*file.transferTo(file2);*/
                //FileUpload newFile = new FileUpload(filename, bytes, mimeType);
           //     FileUpload newFile = new fI
  //              fileUploadService.uploadFile(newFile);
                System.out.println(imageList.toString());
            }
            
        }
        catch (Exception e) {
            return new ResponseEntity<>("{}", HttpStatus.INTERNAL_SERVER_ERROR);
        }
		
		/*uploadFile.transferTo(file);*/
		return new ResponseEntity<>("{}", HttpStatus.OK);
	}
	
	@RequestMapping(value="/registBoard", method=RequestMethod.POST)
	public @ResponseBody String registBoard(@RequestParam String content,@RequestParam int usersUserNo, @RequestParam int emotionNo){
		Gson gson = new Gson();
		System.out.println(content + " " + usersUserNo);
		System.out.println(imageList.toString());
		int boardNo = bservice.selectBoardNo();
		Board board = new Board();
		bservice.registBoardService(board);
		
		return gson.toJson("success");
	}
}
