package com.example.adaca.controller;

import com.example.adaca.model.Task;
import com.example.adaca.service.TaskService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@RestController
@RequestMapping("/api/tasks")
@RequiredArgsConstructor
public class TaskController {
    private final TaskService taskService;

    @PostMapping("/{projectId}")
    public ResponseEntity<Task> createTask(
            @PathVariable Integer projectId,
            @RequestBody Task task
    ) {
        Task created = taskService.createOrUpdateTask(projectId, task);
        return ResponseEntity.ok(created);
    }

    @GetMapping("/{projectId}")
    public Page<Task> getTasksByProject(
            @PathVariable Integer projectId,
            @RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate,
            @RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDate endDate,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "100") int size,
            @RequestParam(defaultValue = "dueDate") String sortBy) {
        return taskService.getTasksByProject(projectId, startDate, endDate, page, size, sortBy);
    }
}
