package com.zm.itag;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.zm.itag.mbg.mapper")
@SpringBootApplication
public class ItagApplication {

    public static void main(String[] args) {
        SpringApplication.run(ItagApplication.class, args);
    }

}
