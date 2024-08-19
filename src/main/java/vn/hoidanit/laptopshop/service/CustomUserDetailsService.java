package vn.hoidanit.laptopshop.service;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    // private final UserService userService;

    // public CustomUserDetailsService(UserService userService) {
    // this.userService = userService;
    // }
    @Autowired
    UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        vn.hoidanit.laptopshop.domain.User user = this.userRepository.findByEmail(username);
        if (user == null) {
            throw new UsernameNotFoundException("user not found");
        }

        return new User(
                user.getEmail(),
                user.getPassword(),
                Collections.singletonList(new SimpleGrantedAuthority("ROLE_" + user.getRole().getName())));
    }

}
