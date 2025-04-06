package com.demo_ci_cd;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DemoCiCdApplication {
    public static void main(String[] args) {
        SpringApplication.run(DemoCiCdApplication.class, args);
    }


    @GetMapping
    public String hello() {
        return "Hello World";
    }

}
