package com.wuubangdev.bookstore.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.wuubangdev.bookstore.domain.User;
import com.wuubangdev.bookstore.services.UserService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("admin/user")
    public String getUserPage(Model model) {
        List<User> users = this.userService.fetchAll();
        model.addAttribute("users", users);
        return "admin/user/show";
    }

    @GetMapping("admin/user/create")
    public String getUserCreatePage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping("admin/user/create")
    public String createNewUser(@ModelAttribute("newUser") User newUsers) {
        this.userService.saveUser(newUsers);
        return "redirect:/admin/user";
    }

    @GetMapping("admin/user/detail/{id}")
    public String getMethodName(Model model, @PathVariable("id") long id) {
        Optional<User> userOp = this.userService.fetchById(id);
        if (userOp.isPresent()) {
            model.addAttribute("user", userOp.get());
        }
        return "admin/user/detail";
    }

}
