package com.hp.controller.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hp.mapper.DistrictMapper;
import com.hp.mapper.HouseMapper;
import com.hp.mapper.TypeMapper;
import com.hp.mapper.UsersMapper;
import com.hp.pojo.District;
import com.hp.pojo.House;
import com.hp.pojo.Type;
import com.hp.pojo.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;

@Controller
@RequestMapping("/house")
public class HouseController {

    @Autowired
    private HouseMapper houseMapper;

    @Autowired
    private UsersMapper usersMapper;

    @Autowired
    private DistrictMapper districtMapper;

    @Autowired
    private TypeMapper typeMapper;


    @RequestMapping("/addPage")
    public String addPage(Model model){
        List<Users> users = usersMapper.selectLandlord();
        List<District> districts = districtMapper.getDisByParentId(1);
        List<Type> types = typeMapper.selectAll();
        model.addAttribute("users",users);
        model.addAttribute("districts",districts);
        model.addAttribute("types",types);
        return "admin/house/add_house";
    }

    @RequestMapping("/getStreetsById")
    @ResponseBody//城区和街道二级联动
    public List<District> streets(Integer did){
        return districtMapper.getDisByParentId(did);
    }

    @RequestMapping("/add")
    public String add(House house){
        System.out.println(house);
        houseMapper.addHouse(house);
        return "admin/admin";
    }

    @RequestMapping("/show")
    public String show(Model model,
                       @RequestParam(defaultValue = "1") Integer pageNo,
                       @RequestParam(defaultValue = "3") Integer pageSize){
        //1.分页查询
        PageHelper.startPage(pageNo,pageSize);
       List<House> house = houseMapper.getHouse();
        PageInfo<House> pageInfo = new PageInfo<>(house);
        //2.存进model
        model.addAttribute("pageInfo",pageInfo);
        //3.跳转到users下的show页面
        return "admin/house/show_house";
    }
}
