package vn.hoidanit.laptopshop.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.service.ProductService;

@Controller
public class ProductController {
    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping("/admin/product")
    public String getDashboard(Model model) {
        List<Product> products = this.productService.getAllProducts();
        model.addAttribute("dataProduct", products);
        return "/admin/product/show";
    }

    @RequestMapping(value = "/admin/product/create", method = RequestMethod.GET)
    public String createProductGET() {
        return "/admin/product/create";
    }

    @RequestMapping(value = "/admin/product/create", method = RequestMethod.POST)
    public String createProductPOST(@ModelAttribute Product dataProduct,
            @RequestParam("productFile") MultipartFile productFile) {
        this.productService.createNewProduct(dataProduct, productFile);
        return "redirect:/admin/product";
    }

    @RequestMapping(value = "/admin/product/{slug}", method = RequestMethod.GET)
    public String getProductById(@PathVariable("slug") String slug, Model model) {
        long id = Long.parseLong(slug);
        model.addAttribute("productDetail", this.productService.getDetail(id));
        return "/admin/product/detail";
    }

    @RequestMapping(value = "/admin/product/update/{slug}", method = RequestMethod.GET)
    public String updateProductGET(@PathVariable("slug") String slug, Model model) {
        return "admin/product/update";
    }

}
