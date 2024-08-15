package vn.hoidanit.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.service.UserService;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@SuppressWarnings("unused")
@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> arrUser = this.userService.findAll();
        List<User> arrUserByEmail = this.userService.findAllByEmail("tan270407@gmail.com");
        return "hello";
    }

    @RequestMapping("/admin/user")
    public String requestMethodName(Model model) {
        List<User> data = this.userService.findAll();
        model.addAttribute("dataUser", data);
        return "/admin/user/table";
    }

    @RequestMapping("/admin/user/create") // GET
    public String createNewUser(Model model) {
        model.addAttribute("user", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST) // POST
    public String createNewUserPOST(@ModelAttribute("user") User data) {
        this.userService.handleSaveUser(data);
        return "redirect:/admin/user";
    }
}
