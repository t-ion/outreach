package com.service;

import com.model.Admin;

public interface AdminDao {

	public void createAdmin(Admin admin1);

	public boolean readAdmin(String aId);
}
