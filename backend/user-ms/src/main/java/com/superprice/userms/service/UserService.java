package com.superprice.userms.service;

import com.superprice.userms.dto.UserDto;
import com.superprice.userms.dto.UserResponseDto;
import com.superprice.userms.model.User;

public interface UserService {
    UserDto userRegistration(UserDto userDto);
    boolean authenticateUser(String email, String enteredPassword);

    UserResponseDto getUserDetailsByEmail(String email);
}
