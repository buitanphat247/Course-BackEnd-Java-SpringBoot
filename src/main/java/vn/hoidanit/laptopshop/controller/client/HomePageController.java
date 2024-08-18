package vn.hoidanit.laptopshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import vn.hoidanit.laptopshop.service.ProductService;

@Controller
public class HomePageController {
    private final ProductService productService;

    public HomePageController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        model.addAttribute("dataProduct", this.productService.getAllProducts());
        return "/client/home/show";
    }

    @GetMapping("/contact")
    public String getContact() {
        return "/client/home/contact";
    }

}
