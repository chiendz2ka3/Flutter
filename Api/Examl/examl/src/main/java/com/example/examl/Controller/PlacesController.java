package com.example.examl.Controller;

import com.example.examl.Entities.PlacesEntity;
import com.example.examl.Respository.PlacesRespository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/Place")
public class PlacesController {
    private final PlacesRespository _Place;
    public PlacesController(PlacesRespository Place){
        _Place = Place;
    }

    @GetMapping
    public List<PlacesEntity> getAllPlace() {
        return _Place.findAll();
    }
}
