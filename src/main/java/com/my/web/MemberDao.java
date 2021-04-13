package com.my.web;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.web.MemberDao;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession sqlSession;
	//jdbctemplate -> sqlsession
	
	
	public int id_login(Map<String, Object> map) {
		
		return sqlSession.selectOne("com.my.id_login", map);
	}
	
	public int insertdo(Map<String, Object> map) {
		return sqlSession.insert("com.my.insertdo", map);
	}
}
