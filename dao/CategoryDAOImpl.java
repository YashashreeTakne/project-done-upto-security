package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	private  SessionFactory  sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}

	public List<Category> getAllCategory() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Category");
		List<Category> Category = query.list();
		return Category;
	}

	public Category getCategoryById(int Catid) {
		Session session = sessionFactory.getCurrentSession();
		Category category = (Category)session.get(Category.class ,Catid);
		return category;
	}

	public void addCategory(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		
	}

	public void deleteCategory(int Catid) {
		Category categoryDelete = new Category();
		categoryDelete.setCatId(Catid);
		sessionFactory.getCurrentSession().delete(categoryDelete);		
	}
	public void updateCategory(Category category) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(category);
		}
}