package com.byu.devclub.server;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GoalController {

    @GetMapping("/health")
    public String health() {
        return "OK";
    }

}
