package vn.hoidanit.laptopshop;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/")
    public String index() {
        return "Hello world in home page!";
    }

    @GetMapping("/user")
    public String userPage() {
        return "Hello world in user page!";
    }

    @GetMapping("/about")
    public String aboutPage() {
        return "Hello world in about page!";
    }
}