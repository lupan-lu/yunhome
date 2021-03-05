package com.hp.mapper;

import com.hp.pojo.Type;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TypeMapper {

    @Select("select * from h_type")
    List<Type> selectAll();
}
