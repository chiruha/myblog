package com.myblog.service;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myblog.dao.ReboardDao;
import com.myblog.dto.ReboardDto;

@Service("ReService")
public class ReboardServiceImpl implements ReboardService {
	@Autowired private ReboardDao dao;
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(ReboardServiceImpl.class);
	
	@Override
	public List<ReboardDto> listRe(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.listRe(map);
	}

	@Override
	public int insertRe(ReboardDto dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertRe(dto);
	}

	@Override
	public int updateRe(ReboardDto dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.updateRe(dto);
	}

	@Override
	public int deleteRe(HashMap<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.deleteRe(map);
	}

	@Override
	public ReboardDto detailRe(int reNum) throws Exception {
		// TODO Auto-generated method stub
		return dao.detailRe(reNum);
	}

	@Override
	public int getReCnt(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.getReCnt(map);
	}
	
	
	
}
