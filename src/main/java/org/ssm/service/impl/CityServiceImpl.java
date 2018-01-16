package org.ssm.service.impl;

import org.springframework.stereotype.Service;
import org.ssm.dao.AddressMapper;
import org.ssm.dao.CityMapper;
import org.ssm.entity.City;
import org.ssm.service.CityService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/4/1.
 */
@Service(value = "cityService")
public class CityServiceImpl implements CityService {
    @Resource
    private CityMapper cityDAO;
    @Override
    public List<City> findAllCity() {
        return cityDAO.selectAllCity();
    }
}
