package com.adam.projectmanager.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.adam.projectmanager.models.LoginUser;
import com.adam.projectmanager.models.User;
import com.adam.projectmanager.services.UserService;

@Controller
public class HomeController {

    @Autowired
    private UserService userService;
    
//    		***Login/Registration
    
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "login.jsp";
    }
    
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
        userService.register(newUser, result);
        if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser());
            return "login.jsp";
        }
        session.setAttribute("user_id", newUser.getId());
        return "redirect:/dashboard";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
            BindingResult result, Model model, HttpSession session) {
        User user = userService.login(newLogin, result);
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "login.jsp";
        }
        session.setAttribute("user_id", user.getId());
        return "redirect:/dashboard";
    }
	
//				***Dashboard***
    
    @GetMapping("/dashboard")
    public String dashboard(HttpSession session) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/";
		}
    	
    	return "dashboard.jsp";
    }
	
//				***Logout***
    
    @GetMapping("/logout")
	public String clear(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
	
	
}
