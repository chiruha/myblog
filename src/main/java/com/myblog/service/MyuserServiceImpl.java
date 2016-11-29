package com.myblog.service;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myblog.dao.MyuserDao;
import com.myblog.dto.MyuserDto;

@Service("MuService")
public class MyuserServiceImpl implements MyuserService{
	@Autowired private MyuserDao dao;
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(MyuserServiceImpl.class);
	
	@Override
	public List<MyuserDto> listMu(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.ListMu(map);
	}

	@Override
	public int insertMu(MyuserDto dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertMu(dto);
	}

	@Override
	public int updateMu(MyuserDto dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.updateMu(dto);
	}

	@Override
	public int deleteMu(HashMap<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.deleteMu(map);
	}

	@Override
	public int getMuCnt(HashMap<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.getMuCnt(map);
	}

	@Override
	public MyuserDto detailMu(int muNum) throws Exception {
		// TODO Auto-generated method stub
		return dao.detailMu(muNum);
	}

	@Override
	public MyuserDto loginMu(MyuserDto dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.loginMu(dto);
	}

}
