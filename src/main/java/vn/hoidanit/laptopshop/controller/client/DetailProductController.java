package vn.hoidanit.laptopshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DetailProductController {
    @GetMapping("/product/{slug}")
    public String getDetailProduct() {
        return "/client/product/detail";
    }

}
