package cn.zerobird.service;

import java.util.List;

public interface BaseService<T, keyType> {
    int removeByPrimaryKey(keyType recordId);

    int add(T record);

    int addSelective(T record);

    T findByPrimaryKey(keyType recordId);

    int modifyByPrimaryKeySelective(T record);

    int modifyByPrimaryKey(T record);

    List<T> findAll();
}
