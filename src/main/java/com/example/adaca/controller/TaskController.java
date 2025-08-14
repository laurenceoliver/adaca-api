package com.example.adaca.controller;

import com.example.adaca.dto.TaskDTO;
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
    public ResponseEntity<TaskDTO> create(
            @PathVariable Integer projectId,
            @RequestBody TaskDTO taskDTO
    ) {
        TaskDTO task = taskService.createTask(projectId, taskDTO);
        return ResponseEntity.ok(task);
    }

    @PutMapping("/{projectId}")
    public ResponseEntity<TaskDTO> update(
            @PathVariable Integer projectId,
            @RequestBody TaskDTO taskDTO
    ) {
        TaskDTO taskUpdate = taskService.updateTask(projectId, taskDTO);
        return ResponseEntity.ok(taskUpdate);
    }

    @GetMapping("/{projectId}")
    public Page<TaskDTO> getTasksByProject(
            @PathVariable Integer projectId,
            @RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate,
            @RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDate endDate,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "100") int size,
            @RequestParam(defaultValue = "dueDate") String sortBy) {
        return taskService.getTasksByProject(projectId, startDate, endDate, page, size, sortBy);
    }
}
