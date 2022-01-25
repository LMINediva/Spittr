package com.lc.spittr.data;

import com.lc.spittr.model.Spitter;

/**
 * @author DELL
 * @date 2022/1/23 12:15
 */
public interface SpitterRepository {
    Spitter save(Spitter spitter);

    Spitter findByUsername(String username);
}