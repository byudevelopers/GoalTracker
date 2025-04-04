package com.byu.devclub.repository;

import com.byu.devclub.model.Goal;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GoalRepository extends JpaRepository<Goal, Long> {
    List<Goal> findByUser_Id(int userId);
}
