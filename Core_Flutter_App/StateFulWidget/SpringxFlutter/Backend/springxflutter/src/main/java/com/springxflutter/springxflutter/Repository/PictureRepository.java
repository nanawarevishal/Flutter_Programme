package com.springxflutter.springxflutter.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springxflutter.springxflutter.Model.Picture;

public interface PictureRepository extends JpaRepository<Picture,Long> {
    
}
