package com.ttmgmt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ttmgmt.domain.TimeTableBean;

@Repository
public class TimeTableDaoImpl implements TimeTableDao {


	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
		
	
	}
	
	@Override
	public void saveTimeTable(TimeTableBean ttb) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		 Transaction tx =session.beginTransaction();
		 if(ttb!=null) {
			 try {
				 session.save(ttb);
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
	public List<TimeTableBean> getTimeTable() {
		// TODO Auto-generated method stub
		return sessionFactory.openSession().createQuery("from TimeTableBean").list();
	}

	@SuppressWarnings("unchecked")
	public List<TimeTableBean> getFacultyName() {
		// TODO Auto-generated method stub
		return sessionFactory.openSession().createQuery("from TimeTableBean").list();
	}
	
	
}
