package com.example.adaca.handler;

import com.example.adaca.model.ErrorMsg;
import lombok.extern.slf4j.Slf4j;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(DataIntegrityViolationException.class)
    public ResponseEntity<ErrorMsg> handleUniqueConstraint(DataIntegrityViolationException ex) {
        String message = "A task with the same name already exists in this project.";

        log.info("DataIntegrityViolation: {}", ex.getMessage());
        return ResponseEntity.status(HttpStatus.CONFLICT)
                .body(ErrorMsg.builder()
                        .key("duplicate_task")
                        .message(message)
                        .build());
    }
}
