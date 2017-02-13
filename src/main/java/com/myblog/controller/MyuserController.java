package com.myblog.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myblog.dto.MyuserDto;
import com.myblog.service.MyuserService;

import page.util.PageUtil;

@Controller
public class MyuserController {
	Logger logger=Logger.getLogger(this.getClass());
	@Autowired private MyuserService muservice;
	
	// 로그인 페이지 이동
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String login(){
		return ".myuser.MyuserLogin";
	}
	
	// 로그인 확인
	@RequestMapping(value="/logincheck.do")
	public String logincheck(
			@RequestParam(value="muId",defaultValue="nodata") String muId,
			@RequestParam(value="muPwd",defaultValue="nodata") String muPwd,
			HttpSession session
			){
		logger.info("muid : "+muId+", mupwd : "+muPwd);
		try{
			if(muId.equals("nodata") && muPwd.equals("nodata")){
				// 로그인 정보가 view에서 넘오지 않았을 경우 
				return ".myuser.MyuserLogin";
			}else{
				MyuserDto mu=new MyuserDto();
				mu.setMuId(muId);
				mu.setMuPwd(muPwd);
				mu=muservice.loginMu(mu);
				session.setAttribute("logininfo", mu);
				logger.info("로그인 확인 : "+ muId+", "+muPwd+", DB :"+mu.toString());
			}
			return "forward:Mulist.do";
		}catch(Exception e){
			// 해당 로그인 정보가 DB에 없을 경우
			logger.info("login error : "+e.getMessage());
			return ".myuser.MyuserLogin";
		}
	}
	@RequestMapping(value="/logout.do")
	public String MuLogout(HttpSession session){
		session.invalidate();
		return ".main";
	}
	
	@RequestMapping(value="goMuinsert.do")
	public String MuInsert(){
		return ".myuser.MyuserInsert";
	}
	// 회원가입
	@RequestMapping(value="Muinsert.do")
	public String MuInsert(MyuserDto dto, HttpServletRequest request){
		logger.info("MuCntr-muinsert_post 정보:"+dto.toString());
		try{
			muservice.insertMu(dto);
			request.setAttribute("result", "회원가입 성공");
		}catch(Exception e){
			logger.info("오류 : "+e.getMessage());
			request.setAttribute("result", "회원가입 실패");
		}
		return ".layout.Result";
	}
	@RequestMapping(value="Mulist.do")
	public String MuList(
			@RequestParam(value="pageNum",defaultValue="1")int pageNum,
			HttpServletRequest request
			) throws Exception{
		HashMap<String, Object> map=new HashMap<String, Object>();
		int totcnt=muservice.getMuCnt(map);
		PageUtil pu=new PageUtil(pageNum, totcnt, 10, 10);
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		List<MyuserDto> list=muservice.listMu(map);
		logger.info("myuser 리스트 : "+list+" TotalCnt : "+totcnt);
		request.setAttribute("mulist", list);
		request.setAttribute("pu", pu);
		return ".myuser.MyuserList";
	}
	
	@RequestMapping(value="Mulist.ajax",method=RequestMethod.POST,produces="text/json;charset=UTF-8")
	@ResponseBody
	public String MuList(
			@RequestParam(value="pageNum",defaultValue="1")int pageNum,
			@RequestParam(value="type",defaultValue="MU_ID")String type,
			@RequestParam(value="keyword",defaultValue="")String keyword
			) throws Exception{
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("type", type);
		map.put("keyword", keyword);
		int totalRowCount=muservice.getMuCnt(map);
		PageUtil pu=new PageUtil(pageNum, totalRowCount, 10, 10);
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		List<MyuserDto> list=muservice.listMu(map);
		JSONArray jarr=new JSONArray();
		for(MyuserDto dto : list){
			JSONObject jo=new JSONObject();
			jo.put("muNum", dto.getMuNum());
			jo.put("muId", dto.getMuId());
			jo.put("muPwd", dto.getMuPwd());
			jo.put("muName", dto.getMuName());
			jo.put("muPhone", dto.getMuPhone());
			jarr.add(jo);
		}
		JSONObject page=new JSONObject();
		page.put("pageNum", pu.getPageNum());
		page.put("startPageNum", pu.getStartPageNum());
		page.put("endPageNum", pu.getEndPageNum());
		page.put("totalPageCount", pu.getTotalPageCount());
		
		JSONObject json=new JSONObject();
		json.put("jarr", jarr);
		json.put("page", page);
		logger.info("mulist ajax : "+json);
		return json.toString();
	}
	
	@RequestMapping(value="test.do")
	public String testpage(){
		return ".layout.test";
	}
}
