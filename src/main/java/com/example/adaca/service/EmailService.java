package com.example.adaca.service;

import com.example.adaca.model.Task;
import com.example.adaca.repository.DeveloperRepo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@RequiredArgsConstructor
public class EmailService {

    private final DeveloperRepo developerRepo;

    public void sendEmail(String subject, Task task) {
        developerRepo.findById(task.getAssignee().getDeveloperId()).ifPresent(developer -> {
            // no smtp needed
            log.info("Sending email to {}, subject {}, body {}", developer.getEmail(), subject, task);
        });
    }

}
