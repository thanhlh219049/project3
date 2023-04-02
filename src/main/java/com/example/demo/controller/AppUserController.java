package com.example.demo.controller;

import com.example.demo.enums.NameAppRole;
import com.example.demo.model.AppRole;
import com.example.demo.model.AppUser;
import com.example.demo.model.Cart;
import com.example.demo.service.appUser.IAppUserService;
import com.example.demo.service.cart.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.UUID;

@Controller
@RequestMapping("/user")
public class AppUserController {
    @Autowired
    private IAppUserService appUserService;
    @Autowired
    private ICartService cartService;

    @Autowired
    private UserDetailsService userDetailsService;
    @GetMapping("/create")
    public ModelAndView createUser(){
        ModelAndView modelAndView= new ModelAndView("user/create");
        modelAndView.addObject("user",new AppUser());
        return modelAndView;
    }
//    phần này cần check lại để add role, hiện chưa add được (có thể cần làm lại logic hoàn toàn mới)
   @PostMapping("/create")
    public ModelAndView createAppUser(@ModelAttribute AppUser user){
        ModelAndView modelAndView= new ModelAndView("user/create");
        AppRole appRole= new AppRole();
        appRole.setId((long) 2);
        appRole.setName("ROLE_USER");


        user.setRole(appRole);
        appUserService.save(user);
        modelAndView.addObject("user", new AppUser());
        return modelAndView;
    }
    @GetMapping("/login")
    public ModelAndView loginshop(@ModelAttribute AppUser user) {
        ModelAndView modelAndView = new ModelAndView("/user/login");

        String name = user.getUsername();
        AppUser check = appUserService.getUserByName(name);
        if (check == null){
            modelAndView.addObject("nullData", new AppUser());
        }

        modelAndView.addObject("appuser", new AppUser());
        return modelAndView;
    }
   }



