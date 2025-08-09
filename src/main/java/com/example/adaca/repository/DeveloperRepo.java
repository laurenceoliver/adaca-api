package com.example.adaca.repository;

import com.example.adaca.model.Developer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeveloperRepo extends JpaRepository<Developer,Integer> {
}
