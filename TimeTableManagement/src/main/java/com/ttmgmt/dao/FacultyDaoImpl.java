package com.ttmgmt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ttmgmt.domain.FacultyBean;

@Repository
public class FacultyDaoImpl implements FacultyDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
		
	
	}
	
	
	@Override
	public void saveFaculty(FacultyBean faculty) {
		
		Session session=sessionFactory.openSession();
		 Transaction tx =session.beginTransaction();
		 if(faculty!=null) {
			 try {
				 session.save(faculty);
				 tx.commit();
				 session.close();
			 }catch(Exception e) {
				 tx.rollback();
				 session.close();
				 e.printStackTrace();
			 }
			 
			 
		 }
		
	}


	
	@SuppressWarnings("unchecked")
	public List<FacultyBean> getAllFacultees() {
		
		return sessionFactory.openSession().createQuery("from FacultyBean").list();
	}

}
