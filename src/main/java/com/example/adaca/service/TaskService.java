package com.example.adaca.service;

import com.example.adaca.model.Project;
import com.example.adaca.model.Task;
import com.example.adaca.repository.TaskRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.core.task.TaskExecutor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;

@Service
@RequiredArgsConstructor
public class TaskService {

    private final TaskRepo taskRepo;
    private final TaskExecutor taskExecutor;
    private final EmailService emailService;

    @Transactional
    public Task createOrUpdateTask(Integer projectId, Task task) {
        Integer id = task.getId();

        Task finalTask;

        // create new
        if (id == null) {
            task.setProject(Project.builder().projectId(projectId).build());
            finalTask =  taskRepo.save(task);

            taskExecutor.execute(() -> emailService.sendEmail("New task assigned!", finalTask));
        } else {
            // update status
            Task updateTask = taskRepo.findById(id).orElseThrow();
            updateTask.setStatus(task.getStatus());
            finalTask = updateTask;

            taskExecutor.execute(() -> emailService.sendEmail("Task updated!", finalTask));
        }

        System.out.println("Task commit!");
        return finalTask;
    }

    public Page<Task> getTasksByProject(Integer projectId, LocalDate startDate, LocalDate endDate, int page, int size, String sortBy) {
        // Default to current time if startDate is not provided
        if (startDate == null) {
            startDate = LocalDate.now();
        }

        // Default to current date + 7 days if endDate is not provided
        if (endDate == null) {
            endDate = LocalDate.now().plusDays(7);
        }
        Pageable pageable = PageRequest.of(page, size, Sort.by(sortBy).ascending());
        return taskRepo.findByProject_ProjectIdAndDueDateBetween(projectId, startDate, endDate, pageable);
    }
}
