package com.byu.devclub.server;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class GoalController {

    @GetMapping("/health")
    public String health() {
        return "OK";
    }

}
