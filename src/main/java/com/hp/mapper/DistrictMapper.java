package com.hp.mapper;

import com.hp.pojo.District;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DistrictMapper {

    @Select("select * from h_district where parentid=#{did}")

    @Results({
            @Result(column = "dis_name",property = "disName")
    })
    List<District> getDisByParentId(Integer did);

}
