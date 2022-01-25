package com.lc.spittr.data;

import com.lc.spittr.model.Spittle;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author DELL
 * @date 2022/1/22 11:21
 */
public class SpittleData implements SpittleRepository {
    @Override
    public List<Spittle> findSpittles(long max, int count) {
        List<Spittle> spittles = new ArrayList<>();
        for (int i = 0; i < count; i++) {
            spittles.add(new Spittle("文章" + i, new Date()));
        }
        return spittles;
    }

    @Override
    public Spittle findOne(long id) {
        return new Spittle("你好" + id, new Date());
    }
}
