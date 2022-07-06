package com.practice.chatbot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.chatbot.Service.studentService;
import com.practice.chatbot.entity.Employee;


@Controller
public class Chatbot {
	
	@Autowired
	private studentService stuser;
	
	@RequestMapping("/page")
	public String show() {
		return "chatbot";
	}
	
	@RequestMapping("/save")
	public String save(@ModelAttribute("ioc") Employee book , ModelMap model) {
		stuser.saveChat(book);
		model.addAttribute("book", book);
		System.out.println(book.getAns());
		System.out.println(book.getQue());	
		return "chatbot";
	}
//list all employee		
	@GetMapping("/")
	public String add(Model model) {
		List<Employee> listEmployee = stuser.listAll();
		model.addAttribute("employee", new Employee());
		return "index";
		
	}
//search by id and retreve data by id		
	@PostMapping("/search")
	public String doSearchEmployee(@ModelAttribute("employeeSearchFormData") Employee formData, Model model) {
		Employee emp = stuser.get(formData.getId());
		model.addAttribute("emp", emp);
		return "index";
	}
//search by question and retrive answer	
	@PostMapping("/searchque")
	public String doSerch(@ModelAttribute("employeeSearchFormData") Employee formData, Model model) {
		
		Employee que = stuser.getQue(formData.getQue());
		model.addAttribute("que", que);
		return "index";
	}
	
	
	
	
}
