package vn.hoidanit.laptopshop.controller.admin;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import vn.hoidanit.laptopshop.domain.Role;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.domain.dto.RegisterDto;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.service.FileStoreService;
import vn.hoidanit.laptopshop.service.UserService;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import java.util.Optional;

@SuppressWarnings("unused")
@Controller
public class UserController {
    private final FileStoreService fileStoreService;
    private final UserService userService;

    public UserController(FileStoreService fileStoreService, UserService userService) {
        this.fileStoreService = fileStoreService;
        this.userService = userService;
    }

    @RequestMapping("/admin/user")
    public String getAllUser(Model model) {
        List<User> data = this.userService.findAll();
        model.addAttribute("dataUser", data);
        return "/admin/user/show";
    }

    @RequestMapping("/admin/user/create") // GET
    public String createNewUser(Model model) {
        model.addAttribute("user", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST) // POST
    public String createNewUserPOST(@ModelAttribute("user") User data,
            @RequestParam("avatarFile") MultipartFile avatarFile) {
        this.userService.handleSaveUser(data, avatarFile);
        return "redirect:/admin/user";
    }

    @RequestMapping("/admin/user/{slug}")
    public String getUserDetail(@PathVariable String slug, Model model) {
        try {
            // Convert the slug to a Long
            Long id = Long.parseLong(slug);
            // Fetch the user by ID
            Optional<User> data = this.userService.findById(id);
            model.addAttribute("dataDetail", data.get());
            return "/admin/user/detail";
        } catch (NumberFormatException e) {
            // Handle the case where the slug is not a valid Long
            model.addAttribute("error", "Invalid user ID format");
            return "/admin/user/error"; // or some error page
        }
    }

    @RequestMapping(value = "/admin/user/update/{slug}", method = RequestMethod.GET)
    public String updateUser(@PathVariable String slug, Model model) {
        long id = Long.parseLong(slug);
        Optional<User> data = this.userService.findById(id);
        System.out.println("data: " + data.get().getAvatar());
        model.addAttribute("userData", data.get());
        return "/admin/user/update";
    }

    @RequestMapping(value = "/admin/user/update/{slug}", method = RequestMethod.POST)
    public String updateUserPOST(@PathVariable String slug, Model model,
            @RequestParam("avatarFile") MultipartFile avatarFile, @ModelAttribute User dataForm) {
        long id = Long.parseLong(slug);
        User dataUpdate = this.userService.updateUser(id, dataForm, avatarFile);
        return "redirect:/admin/user";

    }

   
}
