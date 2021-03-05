package com.hp.mapper;


import com.hp.pojo.Users;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UsersMapper{

    @Select("select * from h_users")
    List<Users> selectAll();

    @Select("select * from h_users where role = '房东'")
    List<Users> selectLandlord();

}
