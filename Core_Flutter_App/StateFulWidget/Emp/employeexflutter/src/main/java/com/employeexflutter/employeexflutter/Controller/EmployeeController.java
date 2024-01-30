package com.employeexflutter.employeexflutter.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.employeexflutter.employeexflutter.Model.Employee;
import com.employeexflutter.employeexflutter.Service.EmployeeService;

@RestController
@CrossOrigin(origins = "*")
public class EmployeeController {
    
    @Autowired
    private EmployeeService employeeService;

    @GetMapping("getAllEmployee")
    public List<com.employeexflutter.employeexflutter.Model.Employee> getAllEmployee(){
        return employeeService.getAllEmployee();
    }

    @PostMapping("addEmployee")
    public String addEmployee(@RequestBody Employee employee){
        return employeeService.addEmployee(employee);
    }
    // @DeleteMapping("deleteEmployee")
    // public String deleteEmployee(@RequestBody Employee employee){
    //     return employeeService.removeEmployee(employee);
    // }
    // @PutMapping("updateEmployee")
    // public String updateEmployee(@RequestBody Employee employee){
    //     return employeeService.updateEmployee(employee);
    // }

}
