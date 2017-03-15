package cn.zerobird.common;

/**
 * 系统常量
 */
public enum Constants {
    SESSION_USER("user", "用户在session中的标识");

    private String mark;
    private String explain;

    Constants(String mark, String explain) {
        this.mark = mark;
        this.explain = explain;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getExplain() {
        return explain;
    }

    public void setExplain(String explain) {
        this.explain = explain;
    }
}
