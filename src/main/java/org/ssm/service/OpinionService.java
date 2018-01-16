package org.ssm.service;

import org.ssm.entity.Opinion;

import java.util.List;

/**
 * Created by Kenton on 2017/4/9.
 */
public interface OpinionService {
    List<Opinion> selectOpinionByVegetableID(Integer vegetableId);
    List<Opinion> selectAllOpinion();
}
