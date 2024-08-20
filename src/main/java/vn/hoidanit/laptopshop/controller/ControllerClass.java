package vn.hoidanit.laptopshop.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControllerClass implements ErrorController {

    @GetMapping("/error")
    public String handleError() {
        return "/client/error/errorPage";
    }

}