package com.myblog.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.myblog.dto.MyuserDto;

@Repository("MyuserDao")
public class MyuserDao extends AbstractDAO{
	
	public int insertMu(MyuserDto dto) throws Exception{
		return insert("MuInsert", dto);
	}
	
	public int updateMu(MyuserDto dto) throws Exception{
		return update("MuUpdate", dto);
	}
	
	public int deleteMu(HashMap<String, Object> map) throws Exception{
		return delete("MuDelete", map);
	}
	
	public int getMuCnt(HashMap<String, Object> map) throws Exception{
		return getCnt("getMuCnt", map);
	}
	@SuppressWarnings("unchecked")
	public List<MyuserDto> ListMu(HashMap<String, Object> map) {
		return (List<MyuserDto>)list("MuList", map);
	}
	public MyuserDto detailMu(int muNum) throws Exception{
		return (MyuserDto)detail("MuDetail",muNum);
	}
	public MyuserDto loginMu(MyuserDto dto){
		return (MyuserDto)login("MuLogin", dto);
	}
}
