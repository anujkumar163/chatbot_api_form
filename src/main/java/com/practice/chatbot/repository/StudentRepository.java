package com.practice.chatbot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.practice.chatbot.entity.Employee;


public interface StudentRepository extends JpaRepository<Employee, Long> {
	Employee findByQue(String que);
	
}
