package com.kgc.service;

import com.kgc.pojo.Person;

import java.util.List;

public interface PersonService {
    List<Person> selectAll();

    void inser(Person person);

    void del(int id);
}
