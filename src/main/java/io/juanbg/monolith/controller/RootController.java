package io.juanbg.monolith.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class RootController {


    @GetMapping("/")
    @PostMapping("/")
    public String saveEmployee() {
        return "redirect:/bands/";
    }
}
