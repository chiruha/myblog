package com.myblog.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class AbstractDAO {
	Logger logger=Logger.getLogger(this.getClass());
	
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	
	protected void printQueryId(String queryId){
		if(logger.isDebugEnabled()){
			logger.debug("\t QueryId : " + queryId);
		}
	}
	protected void printQueryId(String queryId, Object params){
		if(logger.isDebugEnabled()){
			logger.debug("\t QueryId : " + queryId+" \t Params : " + params.toString());
		}
	}
	public int update(String queryId, Object params){
		printQueryId(queryId, params);
		return sqlSessionTemplate.update(queryId, params);
	}
	public int delete(String queryId, Object params){
		printQueryId(queryId, params);
		return sqlSessionTemplate.update(queryId, params);
	}
	public int insert(String queryId, Object params){
		printQueryId(queryId, params);
		return sqlSessionTemplate.insert(queryId, params);
	}
	public Object detail(String queryId, Object params){
		printQueryId(queryId, params);
		return sqlSessionTemplate.selectOne(queryId, params);
	}
	
	@SuppressWarnings("rawtypes")
	public List list(String queryId, Object params){
		printQueryId(queryId, params);
		logger.info("sql 반환값 : "+sqlSessionTemplate.selectList(queryId,params));
		return sqlSessionTemplate.selectList(queryId,params);
	}
	
	public int getCnt(String queryId,Object params){
		printQueryId(queryId, params);
		return sqlSessionTemplate.selectOne(queryId, params);
	}
	public Object login(String queryId, Object params){
		printQueryId(queryId, params);
		return sqlSessionTemplate.selectOne(queryId, params);
	}
}
