package com.example.demo.model.employee;

import jakarta.persistence.*;
import lombok.*;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "pracownicy")
public class Employee {
    @Id
    @GeneratedValue
    private int employee_id;
    private String first_name;
    private String last_name;
    @Column(name="pesel", unique = true)
    private String pesel;
    private String email;
    private String telephone;
    private EmployeePosition position;
}
