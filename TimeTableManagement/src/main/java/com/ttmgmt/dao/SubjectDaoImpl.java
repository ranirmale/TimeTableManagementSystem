package com.ttmgmt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ttmgmt.domain.SubjectBean;

@Repository
public class SubjectDaoImpl implements SubjectDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
		
	
	}
	
	
	@Override
	public void saveSubject(SubjectBean subject) {
		
		Session session=sessionFactory.openSession();
		 Transaction tx =session.beginTransaction();
		 if(subject!=null) {
			 try {
				 session.save(subject);
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
	public List<SubjectBean> getAllSubjects() {
		
		return sessionFactory.openSession().createQuery("from SubjectBean").list();
	}

}
