package com.cgg.epass;

 import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class StudentController {
	@Autowired
	//StudentService studentService;

	@GetMapping("/")
	public ModelAndView getAllStudents() {
		ModelAndView mav = new ModelAndView("index");
		List<Student> studentList =  new ArrayList<>();
		mav.addObject("students", studentList);
		return mav;
	}


	@GetMapping("/OrphanUidDetails")
	public ModelAndView OrphanUidDetails() {
		ModelAndView mav = new ModelAndView("test");
		
		return mav;
	}

	@GetMapping("/add-student")
	public ModelAndView addStudent() {
		ModelAndView mav = new ModelAndView("add_student");
		mav.addObject("command", new Student());
		return mav;
	}

	@PostMapping("/save-student")
	public String saveStaff(@ModelAttribute Student student) {
		 System.out.print(student);
		return "redirect:/";
	}

	@GetMapping("/student-update/{id}")
	public ModelAndView getStaff(@PathVariable("id") Integer id) {
		ModelAndView mav = new ModelAndView("add_student");
		 System.out.print(id);
		mav.addObject("command", id);
		return mav;
	}

	@GetMapping("/student-delete/{id}")
	public String deleteStaff(@PathVariable("id") Integer id) {
		 
		return "redirect:/";
	}
}
