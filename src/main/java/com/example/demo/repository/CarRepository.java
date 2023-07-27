package com.example.demo.repository;

import org.springframework.stereotype.Repository;

@Repository
public class CarRepository extends JpaRepository<Car, Integer> {
}
