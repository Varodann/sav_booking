package com.example.demo.repository;

import org.springframework.stereotype.Repository;

@Repository
public class ProjectRepository extends JpaRepository<Project, Integer> {
}
