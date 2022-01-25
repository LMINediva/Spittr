package com.lc.spittr.data;

import com.lc.spittr.model.Spitter;

/**
 * @author DELL
 * @date 2022/1/23 12:19
 */
public class SpitterData implements SpitterRepository {
    @Override
    public Spitter save(Spitter spitter) {
        return spitter;
    }

    @Override
    public Spitter findByUsername(String username) {
        return new Spitter(24L, username, "1387640liu", "刘",
                "海洋", "2424097242@qq.com");
    }
}
