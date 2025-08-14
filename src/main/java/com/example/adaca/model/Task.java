package com.example.adaca.model;

import com.example.adaca.dto.TaskDTO;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(
        name = "task",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = {"name", "project_id"})
        }
)
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private int priority;
    private LocalDate dueDate;

    @ManyToOne
    @JoinColumn(name = "developer_id", nullable = false) // Maps to Developer.developerId
    private Developer assignee;

    @ManyToOne
    @JoinColumn(name = "project_id", nullable = false) // Maps to Project.projectId
    private Project project;

    private Integer status; // 1:PENDING, 2:IN_PROGRESS, 3:COMPLETED

    public TaskDTO getTaskDTO() {
        return TaskDTO.builder()
                .id(id)
                .name(name)
                .priority(priority)
                .dueDate(dueDate)
                .statusId(status)
                .projectId(project.getProjectId())
                .developerId(assignee.getDeveloperId())
                .build();
    }
}
