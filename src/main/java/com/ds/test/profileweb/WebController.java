package com.ds.test.profileweb;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ds.test.profileweb.dao.IDao;
import com.ds.test.profileweb.dto.BoardDto;
import com.ds.test.profileweb.dto.MemberDto;

@Controller
public class WebController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/")
	public String home() {
		return "index";
	}
	
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/profile")
	public String profile() {
		return "profile";
	}
	
	@RequestMapping(value = "/contact")
	public String contact() {
		return "contact";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "/question")
	public String question(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		
		String sid = (String) session.getAttribute("sid");
		String sname = (String) session.getAttribute("sname");
		
		IDao dao = sqlSession.getMapper(IDao.class);				
		
		if(sid != null) {
			MemberDto memberDto = dao.memberInfoDao(sid);
			
			model.addAttribute("memberDto", memberDto);
			model.addAttribute("sid",sid);
			
		} else {
			model.addAttribute("sid", "GUEST");
			model.addAttribute("sname", "");
		}
		
		return "question";
	}
	
	@RequestMapping(value = "/list")
	public String list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<BoardDto> dtos = dao.listDao();
		
		model.addAttribute("list", dtos);
		
		return "list";
	}
	
	@RequestMapping(value = "/joinOk", method=RequestMethod.POST)
	public String joinOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");	
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);//아이디 존재 여부체크(1이면 이미 존재, 0이면 존재 안함)
		
		if(checkId == 0) {
		
			dao.joinDao(mid, mpw, mname, memail);
			
			HttpSession session = request.getSession();
			
			session.setAttribute("sid", mid);
			session.setAttribute("sname", mname);
			
			model.addAttribute("mname", mname);
			model.addAttribute("mid", mid);
			
		}
		
		model.addAttribute("checkId", checkId);//checkId값이 1(아이디존재함) 또는 0(존재안함)이 전송
		
		
		return "joinOk";
	}
	
	@RequestMapping(value = "/loginOk", method=RequestMethod.POST)
	public String loginOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);//1이 반환되면 아이디가 존재		
		
		int checkIdPw = dao.checkIDPwDao(mid, mpw);//아이디와 비밀번호가 모두 일치하면 1이 반환
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkIdPw", checkIdPw);
		
		if (checkIdPw == 1) {
			
			MemberDto memberDto = dao.memberInfoDao(mid);//로그인한 아이디의 모든 정보를 dto로 반환
			
			//비밀번호체크
			HttpSession session = request.getSession();
			
			session.setAttribute("sid", memberDto.getMid());
			session.setAttribute("sname", memberDto.getMname());
			
			model.addAttribute("mid", memberDto.getMid());
			model.addAttribute("mname", memberDto.getMname());
		}
		
		return "loginOk";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();//세션 삭제->로그아웃
		
		return "login";
	}
	
	@RequestMapping(value = "/infomodify")
	public String infomodify(HttpServletRequest request, Model model) {
			
		IDao dao = sqlSession.getMapper(IDao.class);
		
		HttpSession session = request.getSession();
		
		String sid = (String) session.getAttribute("sid");
		
		MemberDto memberDto = dao.memberInfoDao(sid);//로그인한 아이디의 모든 정보를 dto로 반환
		
		model.addAttribute("memberDto", memberDto);
		
		return "infomodify";
	}
	
	@RequestMapping(value = "/infomodifyOk")
	public String infomodifyOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.infomodifyDao(mpw, mname, memail, mid);
		
		MemberDto memberDto = dao.memberInfoDao(mid);//정보를 수정한 아이디의 모든 정보를 dto로 반환
		
		model.addAttribute("memberDto", memberDto);
		
		return "infomodifyOk";
	}
	
	@RequestMapping(value = "/write", method=RequestMethod.POST)
	public String write(HttpServletRequest request, Model model) {
		
		String qid = request.getParameter("qid");
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeDao(qid, qname, qcontent, qemail);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/qview")
	public String qview(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		BoardDto boardDto = dao.contentViewDao(qnum);
		
		model.addAttribute("contentDto", boardDto);
		
		model.addAttribute("boardId",boardDto.getQid());
		
		
		return "qview";
	}
	
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.deleteDao(qnum);
		
		return "redirect:list";
	}
	
	@RequestMapping(value="/qmodify")
	public String qmodify(HttpServletRequest request, Model model) {
		
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.qmodifyDao(qname, qcontent, qemail, qnum);
		
		return "redirect:list";
	}
	
	
	
	
	
	
	
	
	
}