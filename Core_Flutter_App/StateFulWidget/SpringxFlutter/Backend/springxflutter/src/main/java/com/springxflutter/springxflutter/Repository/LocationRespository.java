package com.springxflutter.springxflutter.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springxflutter.springxflutter.Model.Location;

public interface LocationRespository extends JpaRepository<Location,Long>{
    
}
