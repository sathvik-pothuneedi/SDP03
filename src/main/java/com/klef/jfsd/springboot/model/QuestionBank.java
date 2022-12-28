package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="questionbank_table")
public class QuestionBank {

	
	@Column(nullable=false)
	private String questionbanktitle;
	@Id
	@GeneratedValue	
	@Column(nullable=false,unique=true)
	private int questionid;
	@Column(nullable=false)
	private int course_id;
	@Column(nullable=false)
	private String question;
	@Column(nullable=false)
	private String option1;
	@Column(nullable=false)
	private String option2;
	@Column(nullable=false)
	private String option3;
	@Column(nullable=false)
	private String option4;
	@Column(nullable=false)
	private String correctoption;
	

	public int getQuestionid() {
		return questionid;
	}
	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
	public int getCourse_id() {
		return course_id;
	}
	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	public String getCorrectoption() {
		return correctoption;
	}
	public void setCorrectoption(String correctoption) {
		this.correctoption = correctoption;
	}
	public String getQuestionbanktitle() {
		return questionbanktitle;
	}
	public void setQuestionbanktitle(String questionbanktitle) {
		this.questionbanktitle = questionbanktitle;
	}
}
