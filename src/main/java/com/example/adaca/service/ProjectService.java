package com.example.adaca.service;

import com.example.adaca.model.Project;
import com.example.adaca.repository.ProjectRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProjectService {
    private final ProjectRepo projectRepo;

    public List<Project> getAllProjects() {
        return projectRepo.findAll();
    }
}
