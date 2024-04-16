package com.wuubangdev.bookstore.controllers;

import com.wuubangdev.bookstore.services.UserService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomePageController {

    private final UserService userService;

    public HomePageController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        String s = this.userService.helloString();
        model.addAttribute("s", s);
        return "hello";
    }
}
