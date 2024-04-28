package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Model.Student;

public interface StudentInfo extends JpaRepository<Student, Integer> {

	public Student findByusername(String username);

	
}
