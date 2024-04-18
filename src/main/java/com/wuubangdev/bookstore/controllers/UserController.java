package com.wuubangdev.bookstore.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.wuubangdev.bookstore.domain.Users;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    @GetMapping("admin/user")
    public String getUserPage() {
        return "admin/user/show";
    }

    @GetMapping("admin/user/create")
    public String getUserCreatePage(Model model) {
        model.addAttribute("user", new Users());
        return "admin/user/create";
    }

    @PostMapping("admin/user/create")
    public String createNewUser(@ModelAttribute("newUser") Users users) {

        return "direct:/admin/user";
    }

}
