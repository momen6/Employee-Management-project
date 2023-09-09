package com.demo.service;

import com.demo.dao.EmployeeDaoImpl;
import com.demo.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Component
@Service
public class EmployeeService {

    @Autowired
    EmployeeDaoImpl employeeDao;

    //add employee
    public void addEmployee(Employee employee){
        employeeDao.addEmployee(employee);
    }

    //get all employees
    public List<Employee> getAllEmployees(){
        return employeeDao.getAllEmployees();
    }

    //get employee by ID
    public Employee getById(int id){
        return employeeDao.getEmployeeById(id);
    }

    //update employee
    public void updateEmployee(Employee employee){
        employeeDao.updateEmployee(employee);
    }
    //delete employee
    public void deleteEmployee(int id){
        employeeDao.deleteEmployee(id);
    }

}










