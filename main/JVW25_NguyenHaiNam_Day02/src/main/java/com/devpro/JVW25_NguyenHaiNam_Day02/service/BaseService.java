package com.devpro.JVW25_NguyenHaiNam_Day02.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.Table;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.devpro.JVW25_NguyenHaiNam_Day02.model.BaseModel;
import com.devpro.JVW25_NguyenHaiNam_Day02.model.Product;

@Service
public abstract class BaseService<E extends BaseModel> {

	@PersistenceContext
	EntityManager entityManager;

	public abstract Class<E> clazz();

	public E getById(int id) {
		return entityManager.find(clazz(), id);
	}

	@SuppressWarnings("unchecked")
	public List<E> findAll() {
		Table table = clazz().getAnnotation(Table.class);
		return (List<E>) entityManager.createNativeQuery("SELECT * FROM " + table.name(), clazz()).getResultList();
	}

	@Transactional
	public E saveOrUpdate(E entity) {
		if (entity.getId() == null || entity.getId() <= 0) { // Add
			entityManager.persist(entity);
			return entity;
		} else { // update
			return entityManager.merge(entity);
		}
	}

	public void delete(E entity) {
		entityManager.remove(entity);
	}

	public void deleteById(int id) {
		E entity = this.getById(id);
		delete(entity);
	}

	@SuppressWarnings("unchecked")
	public List<E> executeNativeSql(String sql) {
		try {
			Query query = entityManager.createNativeQuery(sql, clazz());
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<E>();
		}
	}

	@SuppressWarnings("unchecked")
	public List<E> executeNativeSql(String sql, int page, int sizeOfPage) {
		try {
			Query query = entityManager.createNativeQuery(sql, clazz());
			query.setFirstResult((page - 1) * sizeOfPage); // Vi tri ban ghi dau trang
			query.setMaxResults(sizeOfPage);// So ban ghi tren mot trang
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<E>();
		}
	}

	public E getEntityByNativeSql(String sql) {
		try {
			return this.executeNativeSql(sql).get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
