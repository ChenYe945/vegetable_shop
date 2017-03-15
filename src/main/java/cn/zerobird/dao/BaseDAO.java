package cn.zerobird.dao;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository(value = "baseDAO")
public interface BaseDAO<T, keyType> {
    int deleteByPrimaryKey(keyType recordId);

    int insert(T record);

    int insertSelective(T record);

    T selectByPrimaryKey(keyType recordId);

    int updateByPrimaryKeySelective(T record);

    int updateByPrimaryKey(T record);

    List<T> selectAll();
}
