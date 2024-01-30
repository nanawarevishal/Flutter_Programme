package com.employeexflutter.employeexflutter.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.employeexflutter.employeexflutter.Model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee,Long> {
    
    // public boolean existsByfirstNameAndlastName(String firstName,String lastName);

    // public boolean existexistsById(long id);
}
