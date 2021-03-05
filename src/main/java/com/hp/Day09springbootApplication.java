package com.hp;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@MapperScan("com.hp.mapper")
@SpringBootApplication
public class Day09springbootApplication {

    public static void main(String[] args) {
        SpringApplication.run(Day09springbootApplication.class, args);
    }

}
