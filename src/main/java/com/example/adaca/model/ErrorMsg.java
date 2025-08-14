package com.example.adaca.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@AllArgsConstructor
@Builder
@Data
public class ErrorMsg {
    private String key;
    private String message;
}
