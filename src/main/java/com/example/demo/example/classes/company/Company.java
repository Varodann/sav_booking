package org.example.classes.company;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@AllArgsConstructor
@Getter
@Setter
public class Company {
    private int id;
    private String name;
    private int nip;
    private String owner;
}