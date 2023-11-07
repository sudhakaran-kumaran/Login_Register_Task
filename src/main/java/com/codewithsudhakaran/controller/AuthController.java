package com.codewithsudhakaran.controller;

import Dao.UserDao;
import com.codewithsudhakaran.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AuthController {
    @RequestMapping("/login")
    public String showpage(HttpServletRequest req, Model model){
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        UserDao userDao = new UserDao();
        User loggedInUser = userDao.loginUser(username,password);

        if (loggedInUser != null) {
            model.addAttribute("firstname", User.getFirstname());
            model.addAttribute("lastname",User.getLastname());
            model.addAttribute("sports",User.getSports());
            model.addAttribute("gender",User.getGender());
            model.addAttribute("course",User.getCourse());
            model.addAttribute("email",User.getEmail());
            return "home";
        } else {
            return "index";
        }

    }
    @RequestMapping("/hello")
    public String regpage(HttpServletRequest req,Model model){

        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        String[] sports = new String[]{req.getParameter("sports")};
        String gender = req.getParameter("gender");
        String course = req.getParameter("course");
        String email = req.getParameter("email");
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        UserDao userDao = new UserDao();
        String reg = userDao.register(firstname,lastname,sports,gender,course,email,username, password);
        if(reg != null){
            return "index";
        }else {
            return "register";
        }



    }


}


