package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.QuestionBank;

public interface QuestionBankRepository extends CrudRepository<QuestionBank,Integer>{

	@Query("select q from QuestionBank q where course_id=?1")
	public QuestionBank viewQuestionbank(int cid);
}
