package com.ttmgmt.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.ttmgmt.domain.User;

public class BaseDaoImpl implements BaseDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
		
	}
	
	@Override
	public void saveUser(User user) {
		Session session=sessionFactory.openSession();
		 Transaction tx =session.beginTransaction();
		 if(user!=null) {
			 try {
				 session.save(user);
				 tx.commit();
				 session.close();
			 }catch(Exception e) {
				 tx.rollback();
				 session.close();
				 e.printStackTrace();
			 }
			 
			 
		 }

	}

	@Override
	public User loginUser(User user) {
		    Session session =sessionFactory.openSession();
		    Transaction tx =session.beginTransaction();
		   String hql="from com.ttmgmt.domain.User as u where u.mailId=? and u.password=?";
		   try {
			   Query query=session.createQuery(hql);
			   query.setParameter(0,user.getMailId());
			   query.setParameter(1,user.getPassword());
			   user=(User)query.uniqueResult();
			   tx.commit();
			   session.close();
		   }catch(Exception e) {
			   tx.rollback();
			   session.close();
			   e.printStackTrace();
		   }
		    
		return user;
	}

}
