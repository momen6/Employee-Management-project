package com.demo.dao;

import com.demo.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.List;

@Component
public class EmployeeDaoImpl {

    @Autowired
    HibernateTemplate hibernateTemplate;

    @Transactional
    public void addEmployee(Employee employee) {
        hibernateTemplate.save(employee);
    }

    public List<Employee> getAllEmployees() {
        return hibernateTemplate.loadAll(Employee.class);
    }

    public Employee getEmployeeById(int id) {
        return hibernateTemplate.get(Employee.class, id);
    }

    @Transactional
    public void updateEmployee(Employee employee) {
        hibernateTemplate.update(employee);
    }

    @Transactional
    public void deleteEmployee(int id) {
        hibernateTemplate.delete(this.getEmployeeById(id));
    }
}
