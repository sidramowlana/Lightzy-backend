package com.example.lightzybackend.Controller;

import com.example.lightzybackend.Model.User;
import com.example.lightzybackend.Request.AuthRequest;
import com.example.lightzybackend.Service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping("/api/auth")
@RestController
public class AuthController {
    private AuthService authService;

    @Autowired
    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/register")
    public ResponseEntity<?> registerUser(@Valid @RequestBody User registerUser) {
        System.out.println("start");
        return authService.registerUserService(registerUser);
    }

    @PostMapping("/login")
    public ResponseEntity<?> loginUser(@Valid @RequestBody AuthRequest authRequest) {
        return authService.loginUserService(authRequest);
    }
}