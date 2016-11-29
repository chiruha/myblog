package com.myblog.service;

import java.util.HashMap;
import java.util.List;

import com.myblog.dto.MyuserDto;

public interface MyuserService {
	public List<MyuserDto> listMu(HashMap<String, Object> map);
	public int insertMu(MyuserDto dto) throws Exception;
	public int updateMu(MyuserDto dto) throws Exception;
	public int deleteMu(HashMap<String, Object> map) throws Exception;
	public int getMuCnt(HashMap<String, Object> map) throws Exception;
	public MyuserDto detailMu(int muNum) throws Exception;
	public MyuserDto loginMu(MyuserDto dto) throws Exception;
	
}
