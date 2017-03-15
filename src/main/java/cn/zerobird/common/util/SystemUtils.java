package cn.zerobird.common.util;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * 系统工具
 */
public class SystemUtils {

    private final static ThreadLocal<Map<String, Object>> local = new ThreadLocal<Map<String, Object>>();

    /**
     * 生成唯一的UUID
     *
     * @return 返回32为的UUID
     */
    public static String UUID() {
        String uuid = UUID.randomUUID().toString();
        return uuid.replaceAll("-", "");
    }

    /**
     * 设置当前线程的参数列表
     *
     * @param key
     * @param value
     */
    public static void setParam(String key, Object value) {
        Map<String, Object> current_param_list = local.get();
        if (current_param_list != null) {
            current_param_list.put(key, value);
            local.set(current_param_list);
        } else {
            Map<String, Object> new_param_list = new HashMap<String, Object>();
            new_param_list.put(key, value);
            local.set(new_param_list);
        }
    }

    /**
     * 获取当前线程的参数
     *
     * @param key
     * @return
     */
    public static Object getParam(String key) {
        Map<String, Object> current_param_list = local.get();
        Object value = null;
        if (current_param_list != null) {
            value = current_param_list.get(key);
        }
        return value;
    }
}
