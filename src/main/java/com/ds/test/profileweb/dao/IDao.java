package com.ds.test.profileweb.dao;

import java.util.ArrayList;

import com.ds.test.profileweb.dto.BoardDto;
import com.ds.test.profileweb.dto.MemberDto;

public interface IDao {

	//member 관련 dao 메서드
	public void joinDao(String mid, String mpw ,String mname, String memail);
	public int checkIdDao(String mid);//회원가입 여부 체크 메서드(아이디가 존재하면 1, 아니면 0이 반환)
	public int checkIDPwDao(String mid ,String mpw);//아이디와 비밀번호 일치 되는지
	public MemberDto memberInfoDao(String mid); //id로 검색해서 해당 id의 모든 정보를 반환한는 메서드
	public void infomodifyDao( String mpw ,String mname, String memail,String mid);
	//회원 정보 수정 메서드
	

	//board 관련 dao 메서드
	public void writeDao(String qid, String qname ,String qcontent, String qemail); //게시판글쓰기
	public ArrayList<BoardDto> listDao();
	public BoardDto contentViewDao(String qnum);
	public void deleteDao(String qnum);
	public void qmodifyDao(String qname, String qcontent, String qemail ,String qnum);
}
