package com.byu.devclub.service;

import com.byu.devclub.model.Goal;
import com.byu.devclub.repository.GoalRepository;
import com.byu.devclub.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoalService {

    private final GoalRepository goalRepository;
    private final UserRepository userRepository;

    @Autowired
    public GoalService(GoalRepository goalRepository, UserRepository userRepository) {
        this.goalRepository = goalRepository;
        this.userRepository = userRepository;
    }

    public List<Goal> fetchUserGoals(int userId) {
        return this.goalRepository.findByUser_Id(userId);
    }

    public Goal save(Goal goal) {
        return this.goalRepository.save(goal);
    }



}
