package com.example.adaca.controller;

import com.example.adaca.model.Developer;
import com.example.adaca.model.Project;
import com.example.adaca.service.DeveloperService;
import com.example.adaca.service.ProjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/developers")
@RequiredArgsConstructor
public class DeveloperController {
    private final DeveloperService developerService;

    @GetMapping
    public ResponseEntity<List<Developer>> getAllDevelopers() {
        return ResponseEntity.ok(developerService.getAllDevelopers());
    }
}
