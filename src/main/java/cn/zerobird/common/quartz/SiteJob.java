package cn.zerobird.common.quartz;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * Created by Kinney on 2016/11/12.
 */

@Component
public class SiteJob {
    private final static Logger logger = LoggerFactory.getLogger(SiteJob.class);

    public void testJob() {
        logger.info("测试定时任务");
    }
}
