package com.springxflutter.springxflutter.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springxflutter.springxflutter.Model.Coordinates;

public interface CoordinatesRepository extends JpaRepository<Coordinates,Long> {
    
}
