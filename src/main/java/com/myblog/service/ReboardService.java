package com.myblog.service;

import java.util.HashMap;
import java.util.List;

import com.myblog.dto.ReboardDto;

public interface ReboardService {
	public List<ReboardDto> listRe(HashMap<String, Object>map);
	public int insertRe(ReboardDto dto) throws Exception;
	public int updateRe(ReboardDto dto) throws Exception;
	public int deleteRe(HashMap<String, Object> map) throws Exception;
	public ReboardDto detailRe(int reNum) throws Exception;
	public int getReCnt(HashMap<String, Object> map);
}
