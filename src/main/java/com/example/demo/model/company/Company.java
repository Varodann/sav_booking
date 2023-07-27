package com.example.demo.model.company;

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
@Table(name = "Firma")
public class Company {
    private int company_id;
    private String company_name;
    private String NIP;
    private String owner;
}
