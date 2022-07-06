package com.practice.chatbot.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practice.chatbot.entity.Employee;
import com.practice.chatbot.repository.StudentRepository;

@Service
public class studentServiceImpl implements studentService {
	
	@Autowired
	private StudentRepository sturepo;

	@Override
	public List<Employee> listAll() {
		// TODO Auto-generated method stub
		
		return sturepo.findAll();
	}

	@Override
	public Employee get(long id) {
		// TODO Auto-generated method stub
		//Optional<Employee> findById = sturepo.findById(id);
		//Employee book = findById.get();
		return sturepo.findById(id).get();
	}

	@Override
	public void saveChat(Employee book) {
		// TODO Auto-generated method stub
		sturepo.save(book);
	}
	
	
}
