package com.example.demo.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Model.Student;
import com.example.demo.Repository.StudentInfo;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentHandler {

	@Autowired
	private StudentInfo repo;
	
	@RequestMapping("/")
	public String home()
	{
		return "login";
	}
	
	@RequestMapping("/addstudent")
	public String addstudent(@ModelAttribute Student student) {
		System.out.println(student.getId());
		System.out.println(student.getName());
		System.out.println(student.getCity());
		System.out.println(student.getUsername());
		System.out.println(student.getPassword());
		
		repo.save(student);
		
		return "redirect:/get";
	}
	
	@RequestMapping("/get")
	public String getdata(Model m) {
		
		List<Student> al=repo.findAll();
		m.addAttribute("e_data", al);
		
		System.out.println(al);
		
		return"listUser";
	}
	@RequestMapping("/{id}")
	public String deleteuser(@PathVariable("id") int id) {
		
		repo.deleteById(id);
		
		return "redirect:/get";
		
	}
	
	@RequestMapping("/edit/{id}")
	public String editform(@PathVariable("id")int id,Model m)
	{
		Student ob=repo.findById(id).get();
		
		m.addAttribute("std1",ob);
		return "editform";
	}
	
	@RequestMapping("/update/{id}")
	public String updatedata(@PathVariable("id") int id, @ModelAttribute Student us)
	{
		Student user=repo.findById(id).orElse(null);
		
		if(user!=null)
		{
			user.setName(us.getName());
			user.setCity(us.getCity());
			user.setUsername(us.getUsername());
			user.setPassword(us.getPassword());
			
			repo.save(user);
		}
		return "redirect:/get";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("username") String username,@RequestParam("password") String password,HttpSession login)
	{
		Student st = repo.findByusername(username); 
		
		System.out.println(st);
		if(st!=null && st.getUsername().equals(username) && st.getPassword().equals(password))
		{
			login.setAttribute("login", st);
			return "home";
		}
		else	
		{
		return "Registration";	
		
		}
		
		
	}
}


