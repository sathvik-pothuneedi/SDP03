package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.QuestionBank;
import com.klef.jfsd.springboot.model.Schedule;
import com.klef.jfsd.springboot.model.Trainer;
import com.klef.jfsd.springboot.repository.QuestionBankRepository;
import com.klef.jfsd.springboot.repository.ScheduleRepository;
import com.klef.jfsd.springboot.repository.TrainerRepository;

@Service
public class TrainerServiceImpl implements TrainerService{
	@Autowired
	private TrainerRepository trainerRepository;
	 @Autowired
	private ScheduleRepository scheduleRepository;
	 @Autowired
	 private QuestionBankRepository qbRepository;
	@Override
	public Trainer addtrainer(Trainer trainer)
	{
		return trainerRepository.save(trainer);
		
	}

	@Override
	public Trainer checktrainerlogin(String uname, String pwd) {
		return trainerRepository.checktrainerlogin(uname, pwd);
	}

	@Override
	public int changetrainerpassword(String traineroldpwd, String trainernewpwd, String tuname) {
		return trainerRepository.updatetrainerpassword(trainernewpwd, traineroldpwd, tuname);
	}

	@Override
	public Trainer viewtrainer(String tname) {
		return trainerRepository.viewtrainer(tname);
	}

	@Override
	public Schedule addSchedule(Schedule schedule) {
		// TODO Auto-generated method stub
		return scheduleRepository.save(schedule);
	}

	@Override
	public Schedule viewSchedule(int tid) {
		// TODO Auto-generated method stub
		return scheduleRepository.viewschedule(tid);
	}

	@Override
	public QuestionBank addQuestionbank(QuestionBank questionbank) {
		// TODO Auto-generated method stub
		return qbRepository.save(questionbank);
	}

	@Override
	public QuestionBank viewQuestionbank(int cid) {
		// TODO Auto-generated method stub
		return qbRepository.viewQuestionbank(cid);
	}

	@Override
	public List<QuestionBank> viewallQuestionBank() {
		// TODO Auto-generated method stub
		return (List<QuestionBank>) qbRepository.findAll();
	}
}
