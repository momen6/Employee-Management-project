package com.demo.controller;

import com.demo.model.Employee;
import com.demo.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @RequestMapping(value = "/insertEmployee", method = RequestMethod.POST)
    public String insertEmployee(@ModelAttribute Employee employee){
        employeeService.addEmployee(employee);
        return "redirect:/employeeReport";
    }
    //load employee data
    @RequestMapping("/employeeReport")
    public String loadEmployee(Model model){
        model.addAttribute("employee",employeeService.getAllEmployees());
        model.addAttribute("title","Employee Report");

        return "employeeReport";
    }

    //load edit form
    @RequestMapping("/editEmployee/{id}")
    public String editEmployee(@PathVariable(value = "id") int id, Model model){
        Employee employee = employeeService.getById(id);
        model.addAttribute("employee",employee);
        model.addAttribute("title","Edit Employee");

        return "editEmployee";
    }

    @RequestMapping(value = "/editEmployee/updateEmployee",method = RequestMethod.POST)
    public String updateEmployee(@ModelAttribute("updateEmployee") Employee employee){
        employeeService.updateEmployee(employee);
        return "redirect:/employeeReport";
    }

    @RequestMapping("/deleteEmployee/{id}")
    public String deleteEmployee(@PathVariable(value = "id") int id){
        employeeService.deleteEmployee(id);
        return "redirect:/employeeReport";
    }


}
