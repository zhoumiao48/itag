package com.zm.itag.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

/**
 * @author zm
 * @date 2022/02/20 15:25
 * @description Mybatis配置类
 */
@Configuration
@MapperScan({"com.zm.itag.mbg.mapper","com.zm.itag.dao"})
public class MyBatisConfig {
}