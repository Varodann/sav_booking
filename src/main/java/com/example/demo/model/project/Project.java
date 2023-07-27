package com.example.demo.model.project;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "projekty")
public class Project {
    private int project_id;
    private String project_name;
    private Date start_date;
    private Date end_date;
    private double cost;
    private double revenue;
    private ProjectStatus project_status;
    private int supervisor_id;
}
