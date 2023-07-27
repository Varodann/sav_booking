package org.example.classes.employee;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@ToString
public class Employee {
    private int id;
    private String firstName;
    private String lastName;
    private int pesel;
    private String email;
    private int phoneNumer;
    private EmployeePosition position;

}