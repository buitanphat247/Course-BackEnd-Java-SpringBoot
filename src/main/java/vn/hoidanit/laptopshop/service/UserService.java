package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import vn.hoidanit.laptopshop.domain.Role;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.RoleRepository;
import vn.hoidanit.laptopshop.repository.UserRepository;
import java.util.Optional;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final FileStoreService fileStoreService;

    public UserService(UserRepository userRepository, RoleRepository roleRepository,
            FileStoreService fileStoreService) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.fileStoreService = fileStoreService;
    }

    public User handleSaveUser(User data, MultipartFile avatarFile) {
        String fileName = fileStoreService.storeFile(avatarFile);
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String passEnCode = passwordEncoder.encode("buitanphat2747");
        if (this.hasExtension(fileName)) {
            data.setAvatar(fileName);
        }
        data.setPassword(passEnCode);
        data.setRole(this.getRoleIdByName(data.getRole().getName()));
        return this.userRepository.save(data);
    }

    public List<User> findAll() {
        return this.userRepository.findAll();
    }

    public List<User> findAllByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public Optional<User> findById(Long id) {
        return this.userRepository.findById(id);
    }

    public Role getRoleIdByName(String name) {
        Optional<Role> role = this.roleRepository.findByName(name);
        return role.get();
    }

    public User updateUser(long id, User Data, MultipartFile avatarFile) {
        String fileName = fileStoreService.storeFile(avatarFile);
        User user = this.findById(id).get();
        user.setEmail(Data.getEmail());
        user.setFullname(Data.getFullname());
        user.setUsername(Data.getUsername());
        user.setAddress(Data.getAddress());
        user.setPhone(Data.getPhone());
        user.setRole(this.getRoleIdByName(Data.getRole().getName()));
        if (fileStoreService.hasExtension(fileName)) {
            user.setAvatar(fileName);
        }
        return this.userRepository.save(user);
    }

}
