package org.ssm.dao;

import org.ssm.entity.Trading;

public interface TradingMapper {
    int deleteByPrimaryKey(Integer tradingId);

    int insert(Trading record);

    int insertSelective(Trading record);

    Trading selectByPrimaryKey(Integer tradingId);

    int updateByPrimaryKeySelective(Trading record);

    int updateByPrimaryKey(Trading record);
}