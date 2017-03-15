package cn.zerobird.service.impl;

import cn.zerobird.dao.BaseDAO;
import cn.zerobird.service.BaseService;

import java.util.List;

public class BaseServiceImpl<T, keyType> implements BaseService<T, keyType> {
    protected BaseDAO<T, keyType> baseDAO;

    @Override
    public int removeByPrimaryKey(keyType recordId) {
        return baseDAO.deleteByPrimaryKey(recordId);
    }

    @Override
    public int add(T record) {
        return baseDAO.insert(record);
    }

    @Override
    public int addSelective(T record) {
        return baseDAO.insertSelective(record);
    }

    @Override
    public T findByPrimaryKey(keyType recordId) {
        return baseDAO.selectByPrimaryKey(recordId);
    }

    @Override
    public int modifyByPrimaryKeySelective(T record) {
        return baseDAO.updateByPrimaryKeySelective(record);
    }

    @Override
    public int modifyByPrimaryKey(T record) {
        return baseDAO.updateByPrimaryKey(record);
    }

    @Override
    public List<T> findAll() {
        return baseDAO.selectAll();
    }
}
