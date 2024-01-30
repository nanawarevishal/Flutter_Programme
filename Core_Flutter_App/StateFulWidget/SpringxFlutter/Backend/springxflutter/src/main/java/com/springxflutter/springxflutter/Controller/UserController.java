package com.springxflutter.springxflutter.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springxflutter.springxflutter.ApiResponse.APIResponse;
import com.springxflutter.springxflutter.Model.User;
import com.springxflutter.springxflutter.Services.UserServiceImpl;

@RestController
@RequestMapping("/api/user/")
@CrossOrigin(origins = "*")
public class UserController {

    @Autowired
    private UserServiceImpl userServiceImpl;

    @PostMapping("addUser")
    public ResponseEntity<APIResponse> addUser(@RequestBody User user){

        userServiceImpl.addUser(user);

        APIResponse response = new APIResponse("User Added Successfully...!", true);

        return new ResponseEntity<APIResponse>(response, HttpStatus.ACCEPTED);
    }

    @GetMapping("allUsers")
    public ResponseEntity<List<User>> getAllUserHandler(){

        List<User>users = userServiceImpl.findAllUsers();

        return new ResponseEntity<List<User>>(users,HttpStatus.ACCEPTED);
    }
}
