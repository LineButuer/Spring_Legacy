package com.raspberry.spring_jsp02.dto;

import lombok.Data;

@Data
public class MemberDto {
    private String id;
    private String pass;
    private String name;
    private int age;
}
