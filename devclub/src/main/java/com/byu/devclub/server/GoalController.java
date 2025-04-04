package com.byu.devclub.server;

import com.byu.devclub.model.Goal;
import com.byu.devclub.model.User;
import com.byu.devclub.service.GoalService;
import com.byu.devclub.service.UserService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/goal")
public class GoalController {

    private final GoalService goalService;
    private final UserService userService;

    public GoalController(GoalService goalService, UserService userService) {
        this.goalService = goalService;
        this.userService = userService;
    }

    @GetMapping("/health")
    public String health() {
        return "OK";
    }

    @GetMapping("/id/{id}")
    public List<Goal> getGoalsByUserID(@PathVariable("id") int id) {
        return this.goalService.fetchUserGoals(id);
    }

    @PostMapping("/userId/{id}")
    public Goal createGoal(@RequestBody Goal goal, @PathVariable("id") long id) {
        User user = this.userService.findById(id);
        goal.setUser(user);
        return this.goalService.save(goal);
    }

}
