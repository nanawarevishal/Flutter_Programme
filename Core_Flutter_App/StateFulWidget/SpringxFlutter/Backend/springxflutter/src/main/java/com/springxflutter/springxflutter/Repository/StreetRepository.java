package com.springxflutter.springxflutter.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springxflutter.springxflutter.Model.Street;

public interface StreetRepository extends JpaRepository<Street,Long> {
    
}
