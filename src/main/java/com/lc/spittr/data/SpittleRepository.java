package com.lc.spittr.data;

import com.lc.spittr.model.Spittle;

import java.util.List;

/**
 * @author DELL
 * @date 2022/1/20 19:44
 */
public interface SpittleRepository {
    List<Spittle> findSpittles(long max, int count);

    Spittle findOne(long id);
}
