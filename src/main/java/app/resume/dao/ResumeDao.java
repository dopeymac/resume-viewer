package app.resume.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import app.resume.model.Resume;

/**
 * ResumeDao Class for Resume Class
 * @author Estelle
 *
 */
@Repository
public class ResumeDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	public Resume find(Long id) {
		return entityManager.find(Resume.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Resume> findAllResumes() {
		return entityManager.createQuery("select resume from Resume resume").getResultList();
	}
	
	@Transactional
	public Resume save(Resume resume) {
		if(resume.getId() == null) {
			entityManager.persist(resume);
			return resume;
		} else {
			return entityManager.merge(resume);
		}
	}
}
