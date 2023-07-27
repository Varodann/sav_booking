package com.example.demo.model.car;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "samochody")
public class Car {
    private int car_id;
    private String model;
    private String registration_number;
    private int owner_id;
}
