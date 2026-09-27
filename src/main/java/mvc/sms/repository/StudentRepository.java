package mvc.sms.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.sms.model.Student;

@Repository
public class StudentRepository {
	@Autowired
	private EntityManagerFactory emf;

	public void saveStudent(Student student) {

		EntityManager em=emf.createEntityManager();
		
		EntityTransaction et=em.getTransaction();
		et.begin();
	
		em.persist(student);
		
		et.commit();
		em.close();
		
		
		
	}

	public List<Student> findAll() {
		EntityManager em=emf.createEntityManager();
		Query q=em.createQuery("from Student");
		List<Student> slist=q.getResultList();
		em.close();
		
		
		return slist;
	}

	public Student findById(int studentId) {
		EntityManager em=emf.createEntityManager();
		Student student=em.find(Student.class,studentId);
		return student;
	}

	public void mergeStudent(Student student) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
	
		em.merge(student);
		
		et.commit();
		em.close();
		
		
		
	}

	public void deleteById(int studentId) {
		EntityManager em=emf.createEntityManager();
		Student student=em.find(Student.class, studentId);
		EntityTransaction et=em.getTransaction();
		et.begin();
	
		em.remove(student);
		
		et.commit();
		em.close();
		
		
		
		
	}
	
	

}
