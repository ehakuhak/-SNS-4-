package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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
import dto.Users;
import service.BoardService;
import service.ImageService;
import service.UsersService;

@Controller
public class FileUpload {
	@Autowired
	BoardService bservice;
	@Autowired
	ImageService iservice;
	@Autowired
	UsersService uservice;
	
	@RequestMapping(value = "/profileUpdate", method = RequestMethod.POST)
	public ResponseEntity<String> profileUpdate(MultipartHttpServletRequest request, HttpServletRequest request2){
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
			
		Users user = new Users(email, pwd, name, birth);
		System.out.println(user.toString());
		int a = uservice.updateUserService(user);

		int userNo = uservice.selectUserNoByUserId(email);
		if(a >= 1){
			try {
				Iterator<String> itr = request.getFileNames();
				String path = "c:/Temp/upload/" + userNo + "/profile/";
				File folder = new File(path);

				if (!(folder.exists())) {
					folder.mkdirs();
				}
				while (itr.hasNext()) {
					String uploadedFile = itr.next();
					MultipartFile file = request.getFile(uploadedFile);

					String mimeType = file.getContentType();
					String filename = file.getOriginalFilename();
					byte[] bytes = file.getBytes();
					//System.out.println(uploadedFile + " : " + mimeType + " : " + filename);
					File file2 = new File("c:/Temp/upload/" + userNo + "/profile/" + filename);
					file.transferTo(file2);
					uservice.updateProfile(filename, userNo);
				}

			} catch (Exception e) {
				return new ResponseEntity<>("{}", HttpStatus.INTERNAL_SERVER_ERROR);
			}
			
		}else{
			return new ResponseEntity<>("{}", HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		
		return new ResponseEntity<>("{}", HttpStatus.OK);
	
	}
	@RequestMapping(value = "/profileUpload", method = RequestMethod.POST)
	public ResponseEntity<String> profileUpload(MultipartHttpServletRequest request, HttpServletRequest request2){
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
			
		Users user = new Users(email, pwd, name, birth);
		int a = uservice.registUserService(user);
		
		int userNo = uservice.selectUserNoByUserId(email);
		if(a >= 1){
			try {
				Iterator<String> itr = request.getFileNames();
				String path = "c:/Temp/upload/" + userNo + "/profile/";
				File folder = new File(path);

				if (!(folder.exists())) {
					folder.mkdirs();
				}
				while (itr.hasNext()) {
					String uploadedFile = itr.next();
					MultipartFile file = request.getFile(uploadedFile);

					String mimeType = file.getContentType();
					String filename = file.getOriginalFilename();
					byte[] bytes = file.getBytes();
					//System.out.println(uploadedFile + " : " + mimeType + " : " + filename);
					File file2 = new File("c:/Temp/upload/" + userNo + "/profile/" + filename);
					file.transferTo(file2);
					uservice.updateProfile(filename, userNo);
				}

			} catch (Exception e) {
				return new ResponseEntity<>("{}", HttpStatus.INTERNAL_SERVER_ERROR);
			}
			
		}else{
			return new ResponseEntity<>("{}", HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		
		return new ResponseEntity<>("{}", HttpStatus.OK);
	}
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public ResponseEntity<String> upload(MultipartHttpServletRequest request, @RequestParam int userNo)
			throws IOException {
		System.out.println(userNo);
		try {
			Iterator<String> itr = request.getFileNames();
			String path = "c:/Temp/upload/" + userNo + "/temp";
			File folder = new File(path);

			if (!(folder.exists())) {
				folder.mkdirs();
			}
			while (itr.hasNext()) {
				String uploadedFile = itr.next();
				MultipartFile file = request.getFile(uploadedFile);

				String mimeType = file.getContentType();
				String filename = file.getOriginalFilename();
				byte[] bytes = file.getBytes();
				// System.out.println(uploadedFile + " " + mimeType + " " +
				// filename + " " + bytes);
				File file2 = new File("c:/Temp/upload/" + userNo + "/temp/" + filename);
				file.transferTo(file2);
				// FileUpload newFile = new FileUpload(filename, bytes,
				// mimeType);
				// FileUpload newFile = new fI
				// fileUploadService.uploadFile(newFile);

			}

		} catch (Exception e) {
			return new ResponseEntity<>("{}", HttpStatus.INTERNAL_SERVER_ERROR);
		}

		/* uploadFile.transferTo(file); */
		return new ResponseEntity<>("{}", HttpStatus.OK);
	}

	@RequestMapping(value = "/registBoard", method = RequestMethod.POST)
	public @ResponseBody String registBoard(@RequestParam String content, @RequestParam int usersUserNo,
			@RequestParam int emotionNo) {
		System.out.println(content + usersUserNo + emotionNo);

		Gson gson = new Gson();
		try {
			int boardNo = bservice.selectBoardNo();
			System.out.println("next boardNo : " + boardNo);
			Board board = new Board(boardNo, content, usersUserNo, emotionNo);
			int result = bservice.registBoardService(board);
			if (result > 0) {
				String path = "c:/Temp/upload/" + usersUserNo + "/" + boardNo;
				File folder = new File(path);

				if (!(folder.exists())) {
					folder.mkdirs();
				}
				String inFolder = "c:/Temp/upload/" + usersUserNo + "/temp";
				// 이동후의 폴더
				String outFolder = path;

				// 이동전의 폴더에 있는 파일들을 읽는다.
				List<File> dirList = getDirFileList(inFolder);

				// 폴더의 사이즈만큼 돌면서 파일을 이동시킨다.
				for (int i = 0; i < dirList.size(); i++) {
					// i번째 저장되어 있는 파일을 불러온다.
					String fileName = dirList.get(i).getName();

					// 파일 삭제를 원한다면
					// fileDelete(inFolder+"\\"+fileName);

					// 파일 복사을 원한다면
					// fileCopy(inFolder+"\\"+fileName,
					// outFolder+"\\"+fileName);

					// 파일 이동을 원한다면
					fileMove(inFolder + "\\" + fileName, outFolder + "\\" + fileName);
					iservice.insertImage(boardNo, fileName);
					// 파일 생성을 원한다면
					// fileMake("C:/Users/INTERPARK/Desktop/test.txt");
				}
				return gson.toJson("success");
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
			//return "false";
		}
		return "false";
	}

	public static void fileMove(String inFileName, String outFileName) {
		try {
			FileInputStream fis = new FileInputStream(inFileName);
			FileOutputStream fos = new FileOutputStream(outFileName);

			int data = 0;
			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();

			// 복사한뒤 원본파일을 삭제함
			fileDelete(inFileName);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void fileDelete(String deleteFileName) {
		File I = new File(deleteFileName);
		I.delete();
	}

	public static List<File> getDirFileList(String dirPath) {
		// 디렉토리 파일 리스트
		List<File> dirFileList = null;

		// 파일 목록을 요청한 디렉토리를 가지고 파일 객체를 생성함
		File dir = new File(dirPath);

		// 디렉토리가 존재한다면
		if (dir.exists()) {
			// 파일 목록을 구함
			File[] files = dir.listFiles();

			// 파일 배열을 파일 리스트로 변화함
			dirFileList = Arrays.asList(files);
		}

		return dirFileList;
	}
}
