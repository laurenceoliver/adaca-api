package com.example.adaca.service;

import com.example.adaca.model.Developer;
import com.example.adaca.repository.DeveloperRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DeveloperService {
    private final DeveloperRepo developerRepo;
    public List<Developer> getAllDevelopers() {
        return developerRepo.findAll();
    }
}
