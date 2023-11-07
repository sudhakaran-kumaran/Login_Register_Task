package com.codewithsudhakaran.controller;

import Dao.UserDao;
import com.codewithsudhakaran.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AuthController {
    @RequestMapping("/login")
    public String showpage(HttpServletRequest req,Model model){
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        UserDao userDao = new UserDao();
        User loggedInUser = userDao.loginUser(username, password);
        if (loggedInUser != null) {
            return "home";
        } else {
            return "index";
        }

    }
    @RequestMapping("/hello")
    public String regpage(HttpServletRequest req,Model model){
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        UserDao userDao = new UserDao();
        userDao.register(username, password);
        return "index";

    }
    @RequestMapping("/register")
    public String register(HttpServletRequest req,Model model){
        String firstname = req.getParameter("firstname");
    }

}


