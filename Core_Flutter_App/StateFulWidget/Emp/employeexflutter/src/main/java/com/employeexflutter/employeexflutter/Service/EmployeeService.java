package com.employeexflutter.employeexflutter.Service;

import java.util.*;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employeexflutter.employeexflutter.Model.Employee;
import com.employeexflutter.employeexflutter.Repository.EmployeeRepository;


@Service
public class EmployeeService {
    
    @Autowired
    private EmployeeRepository employeeRepository;

    public List<Employee> getAllEmployee(){
        
        try{

            List<Employee>employees = employeeRepository.findAll();

            List<Employee>custoEmployees = new ArrayList<>();

            employees.stream().forEach(e->{
                Employee employee = new Employee();
                BeanUtils.copyProperties(e, employee);
                custoEmployees.add(employee);
            });

            return custoEmployees;
           
        }catch(Exception e){
            throw e;
        }
    }

    public String addEmployee(Employee employee){
        try{

            employeeRepository.save(employee);
            return "Employee added successfully";
        }catch(Exception e){
            throw e;
        }
    }

    // public String removeEmployee(Employee employee){
    //    try{

    //         if(employeeRepository.existsByfirstNameAndlastName(employee.getFirstName(),employee.getLastName())){
    //             employeeRepository.delete(employee);
    //             return "Successfully deleted";
    //         }else{
    //             return "This employee not exist in database";
    //         }
    //     }catch(Exception e){
    //         throw e;
    //     }
    // }


    // public String updateEmployee(Employee employee){
    //     try{

    //         if(!employeeRepository.existexistsById(employee.getId())){
    //             employeeRepository.save(employee);
    //             return "Successfully updated saved";
    //         }else{
    //             return "This employee not exist in database";
    //         }
    //     }catch(Exception e){
    //         throw e;
    //     }
    // }
}
