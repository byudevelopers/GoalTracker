package com.byu.devclub.server;

import com.byu.devclub.model.User;
import com.byu.devclub.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/user")
public class UserController {

    private UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/health")
    public String health() {
        return "OK";
    }

    @PostMapping()
    public int createUser(@RequestBody User user) {
        return this.userService.createUser(user);
    }
}
