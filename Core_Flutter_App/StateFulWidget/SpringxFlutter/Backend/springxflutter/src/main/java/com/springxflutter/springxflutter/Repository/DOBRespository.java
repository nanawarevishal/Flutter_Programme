package com.springxflutter.springxflutter.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springxflutter.springxflutter.Model.DOB;

public interface DOBRespository extends JpaRepository<DOB,Long> {
    
}
