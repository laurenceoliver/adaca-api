package com.example.adaca.dto;

import com.example.adaca.model.Developer;
import com.example.adaca.model.Project;
import com.example.adaca.model.Task;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDate;

@Data
@Builder
public class TaskDTO {
    private Integer id;
    private String name;
    private int priority;
    private LocalDate dueDate;
    private int statusId;
    private int developerId;
    private int projectId;

    public Task toTask() {
        return Task.builder()
                .id(id)
                .name(name)
                .priority(priority)
                .dueDate(dueDate)
                .assignee(Developer.builder()
                        .developerId(developerId)
                        .build())
                .project(Project.builder()
                        .projectId(projectId)
                        .build())
                .status(statusId)
                .build();
    }
}
