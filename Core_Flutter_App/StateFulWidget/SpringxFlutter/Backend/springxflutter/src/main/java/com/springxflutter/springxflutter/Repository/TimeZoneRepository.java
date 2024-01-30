package com.springxflutter.springxflutter.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springxflutter.springxflutter.Model.TimeZone;

public interface TimeZoneRepository extends JpaRepository<TimeZone,Long> {
    
}
