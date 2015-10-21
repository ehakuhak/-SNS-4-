package service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDao;
import dao.HashDao;
import dao.ImageDao;
import dao.ReplyDao;
import dto.Board;
import dto.Hash;
import dto.Image;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDao dao;
	@Autowired
	HashDao hdao;
	@Autowired
	ImageDao idao;
	@Autowired
	ReplyDao rdao;
	
	@Override
	public int registBoardService(Board board) {
		int result = -1;
		String str = "\\#([A-Z]|[a-z]|[0-9]|[ㄱ-힣])+";
		//Pattern p = new Pattern();
		if((result = dao.insertBoard(board)) > 0){
			String[] strs = board.getContent().split("\\s+");
			for(int i = 0; i < strs.length; i++){
				if(Pattern.matches(str, strs[i])){
					hdao.insertHash(strs[i]);
				}
			}
		}
		
		//System.out.println(a.length);
		
		/*for(String c : a){
			System.out.println(c + " : "+a.length);
			if(Pattern.matches(str, c)){
				//list.add(c);
				hdao.insertHash(new Hash(board.getContent(),board.getBoardNo()));
			}
			
		}*/
		return result;
	}
	
	@Override
	public List<Map<String, Object>> boardListService(int userNo) {
		List<Map<String, Object>> list = dao.selectBoardsByMyUserNo(userNo);
		return list;
	}

	@Override
	public Board readBoard(int boardNo) {
		Board board = dao.selectBoard(boardNo);
		board.setImageList(idao.selectImageListByBoardNo(boardNo));
		/*board.setHash(hdao.selectHashListByBoardNo(boardNo));*/
		board.setReplys(rdao.selectReplybyBoardNo(boardNo));
		/*if(board != null){
			dao.updateBoardReadCount(boardNo);
		}*/
		return board;
	}

	@Override
	public int updateReadCount(int boardNo) {
		int result = dao.updateBoardReadCount(boardNo);
		return result;
	}

	@Override
	public int updateRecommendCount(int boardNo) {
		int result = dao.updateBoardRecommendCount(boardNo);
		return result;
	}

	
	@Override
	public List<Map<String, Object>> boardListByHash(String hashkey) {
		List<Map<String, Object>> list = dao.selectBoardsByHash(hashkey);
		
		return list;
	}

	@Override
	public List<Map<String, Object>> boardListToPopularityByEmotionNo(int emotionNo) {
		List<Map<String, Object>> list = dao.selectBoardsOrderByPapularity(emotionNo);
		return list;
	}

	@Override
	public List<Board> AllBoardListService(int rnum) {
		List<Board> list = dao.selectAllBoards(rnum);
		/*for(int i = 0; i < list.size(); i++){
			List<Image> imageList = idao.selectImageListByBoardNo(list.get(i).getBoardNo());
			System.out.println(imageList.toString() + " : " + list.get(i).getBoardNo());
			list.get(i).setImageList(imageList);
		}*/
		
		for(Board board : list){
			List<Image> imageList = idao.selectImageListByBoardNo(board.getBoardNo());
			board.setImageList(imageList);
		}
		
		return list;
	}
	
	@Override
	public List<Board> boardListByEmotion(int emotionNo, int rnum) {
		List<Board> list = dao.selectBoardsByEmotionno(emotionNo, rnum);
		
		for(Board board : list){
			List<Image> imageList = idao.selectImageListByBoardNo(board.getBoardNo());
			board.setImageList(imageList);
		}
		return list;
	}

	@Override
	public int selectBoardNo() {
		int result = dao.selectBoardNoSequence();
		return result;
	}

	@Override
	public Board bestBoardByEmotion(int emotionNo) {
		Board board = dao.selectBestBoardByEmotion(emotionNo);
		return board;
	}

	@Override
	public Board bestBoard() {
		Board board = dao.selectBestBoard();
		return board;
	}

}
