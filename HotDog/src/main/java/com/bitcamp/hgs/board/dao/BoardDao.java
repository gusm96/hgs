package com.bitcamp.hgs.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.bitcamp.hgs.board.domain.BoardFiles;
import com.bitcamp.hgs.board.domain.BoardLikes;
import com.bitcamp.hgs.board.domain.Boards;
import com.bitcamp.hgs.board.domain.RegBoard;


public interface BoardDao {
	
		// 전체 일반 게시물의 수
		@Select("select count(*) from Boards")
		public int selectTotalCount();
		
		// 일반 게시물 리스트(전체)
		public List<Boards> selectList(int index, int count);
		
		// 일반 게시물 상세보기(boardIdx값으로)
		public Boards selectByIdx(int boardIdx);
		
		// 일반 게시물 등록하기
		public void registBoard(RegBoard regBoard);
		
		// 일반  게시물 삭제하기
		public void deleteBoard(int boardIdx);
		
		// 일반 게시물 수정하기
		public void updateBoard(Boards board);
		
		// 파일 첨부
		public void insertFile(BoardFiles boardFiles);
		
		// 파일 삭제
		public void deleteFile(int boardIdx);
		
		// 게시물에 연결된 좋아요 삭제
		public void deleteLike(int boardIdx);
		
		
		// 게시물에 연결된 댓글 삭제
		public void deleteReply(int boardIdx);
		
		
		
		
}