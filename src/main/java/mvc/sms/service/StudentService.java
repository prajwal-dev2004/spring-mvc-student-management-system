package mvc.sms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.sms.model.Student;
import mvc.sms.repository.StudentRepository;

@Service
public class StudentService {
	@Autowired
	private StudentRepository repository;

	public void addStudent(Student student) {
		repository.saveStudent(student);
		
		
	}

	public List<Student> fetchAll() {
		List<Student> lst=repository.findAll();
		
		return lst;
	}

	public Student fetchById(int studentId) {
		Student student=repository.findById( studentId);
		return student;
	}

	public void modiflyStudent(Student student) {
		repository.mergeStudent(student);
		
	}

	public void deleteById(int studentId) {
		repository.deleteById(studentId);
		
	}
	

}
