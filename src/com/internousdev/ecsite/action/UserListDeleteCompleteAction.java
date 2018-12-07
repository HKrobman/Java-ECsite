package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteCompleteAction extends ActionSupport implements SessionAware {
	public Map<String, Object> session;
	private UserListDeleteCompleteDAO userListDeleteCompleteDAO = new UserListDeleteCompleteDAO();

	public String execute() throws SQLException {
		int res = userListDeleteCompleteDAO.userListDelete();
		String result = ERROR;
		if(res > 0) {
			result = SUCCESS;
		}
		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public Map<String, Object> getSession(){
		return this.session;
	}

}

