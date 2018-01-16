package org.ssm.service.impl;

import org.springframework.stereotype.Service;
import org.ssm.dao.OpinionMapper;
import org.ssm.entity.Opinion;
import org.ssm.service.OpinionService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/4/9.
 */
@Service(value = "opinionService")
public class OpinionServiceImpl implements OpinionService {
    @Resource
    private OpinionMapper opinionDAO;
    @Override
    public List<Opinion> selectOpinionByVegetableID(Integer vegetableId) {
        return opinionDAO.selectOpinionByVegetableID(vegetableId);
    }

    @Override
    public List<Opinion> selectAllOpinion() {
        return opinionDAO.selectAllOpinion();
    }
}
