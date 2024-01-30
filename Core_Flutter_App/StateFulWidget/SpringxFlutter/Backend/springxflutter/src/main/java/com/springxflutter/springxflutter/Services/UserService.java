package com.springxflutter.springxflutter.Services;

import java.util.List;

import com.springxflutter.springxflutter.Model.User;

public interface UserService {

    public User addUser(User user);
    
    public User findById(Long userId);

    public List<User> findAllUsers();
}
