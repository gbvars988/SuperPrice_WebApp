package com.superprice.userms.controller;


import com.superprice.userms.dto.UserDto;
import com.superprice.userms.dto.UserLoginRequest;
import com.superprice.userms.model.User;
import com.superprice.userms.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("user")
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    /**
     * HTTP Method: POST
     * Endpoint: "/user/register"
     * Description: Register a new user.
     *
     * @param userDto The user registration information in JSON format.
     * @return HTTP 201 Created with the registered user information if successful
     */
    @PostMapping("/register")
    public ResponseEntity<Object> userRegistration(@RequestBody UserDto userDto) {
        UserDto registeredUser = userService.userRegistration(userDto);

        if (registeredUser.getUserID() > 0) {
            // remove the password from the response
            registeredUser.setPassword(null);
            return ResponseEntity.status(HttpStatus.CREATED).body(registeredUser);
        } else {
            Map<String, String> errorResponse = new HashMap<>();
            errorResponse.put("message", "Failed to register user.");
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(errorResponse);
        }
    }

    /**
     * HTTP Method: POST
     * Endpoint: "/user/authenticate"
     * Description: Authenticate a user.
     *
     * @param userLoginRequest The user login request containing email and password in JSON format.
     * @return HTTP 200 OK with "Authentication successful" if authentication is successful,
     * or HTTP 401 Unauthorized with "Authentication failed" if authentication fails.
     */
    @PostMapping("/authenticate")
    public ResponseEntity<String> authenticateUser(@RequestBody UserLoginRequest userLoginRequest) {
        String email = userLoginRequest.getEmail();
        String password = userLoginRequest.getPassword();

        boolean isAuthenticated = userService.authenticateUser(email, password);

        if (isAuthenticated) {
            return ResponseEntity.ok("Authentication successful");
        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Authentication failed");
        }
    }


}
