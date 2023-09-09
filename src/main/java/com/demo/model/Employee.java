package com.demo.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String ename;
    private String address;
    private String department;
    private Double salary;
    private String jobTitle;

}
