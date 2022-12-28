package com.klef.jfsd.springboot.service;


import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.TestScore;

public interface StudentService {

	public Student addstudent(Student student);
	public Student checkstudentlogin(String uname,String pwd);
	public Student viewstudent(String uname);
	
    public TestScore savescore(TestScore testscore);
	public int changestudentpassword(String studentoldpwd,String studentnewpwd,String suname);


}
