package mvc.sms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mvc.sms.model.Student;
import mvc.sms.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	private StudentService service;
	
	
	@RequestMapping(value="/save-student",method=RequestMethod.POST)
	public ModelAndView createStudent(Student student) {
		service.addStudent(student);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("index.jsp");
		
		return mav;
	}
	@RequestMapping(value="/display-all",method=RequestMethod.GET)
	public ModelAndView displayAll() {
		List<Student> students=service.fetchAll();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("display.jsp");
		mav.addObject("studentList", students);
		return mav;
	}
	
	@RequestMapping(value="/find-by-id",method=RequestMethod.GET)
	public ModelAndView displayById(int studentId) {
		 Student student=service.fetchById(studentId);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("update.jsp");
		mav.addObject("students", student);
		return mav;
	}
	@RequestMapping(value="/update-student",method=RequestMethod.POST)
	public ModelAndView update( Student student) {
		service.modiflyStudent(student);
		return displayAll();
		 
	}
	@RequestMapping(value="/delete-by-id",method=RequestMethod.GET)
	public ModelAndView delete(int studentId) {
		service.deleteById(studentId);
		return displayAll();
		 
	}

}
