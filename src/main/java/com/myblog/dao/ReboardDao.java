package com.myblog.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.myblog.dto.ReboardDto;
@Repository("ReboardDao")
public class ReboardDao extends AbstractDAO{
	
	public int insertRe(ReboardDto dto){
		return insert("ReInsert", dto);
	}
	public int updateRe(ReboardDto dto){
		return update("ReUpdate", dto);
	}
	public int deleteRe(HashMap<String, Object> map){
		return delete("ReDelete", map);
	}
	@SuppressWarnings("unchecked")
	public List<ReboardDto> listRe(HashMap<String, Object> map){
		return (List<ReboardDto>)list("ReInsert", map);
	}
	public int getReCnt(HashMap<String, Object> map){
		return getCnt("getReCnt", map);
	}
	public ReboardDto detailRe(int reNum){
		return (ReboardDto)detail("ReDetail", reNum);
	}
	
}
