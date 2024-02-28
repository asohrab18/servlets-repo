package com.learning.service;

import java.util.ArrayList;
import java.util.List;

import com.learning.model.Student;

public class StudentDataUtil {

	public static List<Student> getStudents() {
		List<Student> students = new ArrayList<>();
		students.add(new Student("Ajay", "Singh", "ajay@gmail.com"));
		students.add(new Student("Bob", "Smith", "smith@gmail.com"));
		students.add(new Student("John", "Doe", "john@gmail.com"));
		return students;
	}
}
