package com.wanfangdata.javatemplete.util;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

/**
 * 〈一句话功能简述〉
 * 〈功能详细描述〉
 * Created on 2017/7/7.
 *
 * @author meibr
 */
@Service
public class RandomNum {
    @Cacheable(value = "myCache")
    public int getRandomInt(){
        java.util.Random r=new java.util.Random();
        return r.nextInt();
    }
}
