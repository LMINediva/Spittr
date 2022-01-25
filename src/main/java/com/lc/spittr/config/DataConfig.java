package com.lc.spittr.config;

import com.lc.spittr.data.SpitterData;
import com.lc.spittr.data.SpitterRepository;
import com.lc.spittr.data.SpittleData;
import com.lc.spittr.data.SpittleRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author DELL
 * @date 2022/1/22 11:40
 */
@Configuration
public class DataConfig {
    @Bean
    public SpittleRepository spittleRepository() {
        return new SpittleData();
    }

    @Bean
    public SpitterRepository spitterRepository() {
        return new SpitterData();
    }
}
