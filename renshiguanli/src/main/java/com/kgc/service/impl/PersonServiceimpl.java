package com.kgc.service.impl;

import com.kgc.mapper.PersonMapper;
import com.kgc.pojo.Person;
import com.kgc.service.PersonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("personService")
public class PersonServiceimpl implements PersonService{
    @Resource
    PersonMapper personMapper;
    @Override
    public List<Person> selectAll() {
        return personMapper.selectByExample(null);
    }

    @Override
    public void inser(Person person) {
       personMapper.insert(person);
    }

    @Override
    public void del(int id) {
        personMapper.deleteByPrimaryKey(id);
    }
}
