package com.byu.devclub.service;

import com.byu.devclub.model.User;
import com.byu.devclub.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User findById(Long id) {
        return this.userRepository.findById(id).orElse(null);
    }
    public List<User> findAll() {
        return this.userRepository.findAll();
    }

    public int createUser(User user) {
        return this.userRepository.save(user).getId();
    }

    // TODO: Change to make sure user exists first
    public int updateUser(User user) {
        return this.userRepository.save(user).getId();
    }

    public void deleteUser(long id) {
        this.userRepository.deleteById(id);
    }

}
