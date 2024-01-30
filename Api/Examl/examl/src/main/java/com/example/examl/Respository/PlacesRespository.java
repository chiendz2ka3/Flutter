package com.example.examl.Respository;

import com.example.examl.Entities.PlacesEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlacesRespository extends JpaRepository<PlacesEntity, Long> {
}
