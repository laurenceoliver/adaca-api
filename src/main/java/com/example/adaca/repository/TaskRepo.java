package com.example.adaca.repository;

import com.example.adaca.model.Task;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;

@Repository
public interface TaskRepo extends JpaRepository<Task, Integer> {
    Page<Task> findByProject_ProjectIdAndDueDateBetween(
            Integer projectId, LocalDate start, LocalDate end, Pageable pageable);
}
