package com.practice.chatbot.Service;

import java.util.List;

import com.practice.chatbot.entity.Employee;

public interface studentService {
	
	public List<Employee> listAll();
	
	public Employee get(long id);

	public void saveChat(Employee book);

	public Employee getQue(String que);
}
