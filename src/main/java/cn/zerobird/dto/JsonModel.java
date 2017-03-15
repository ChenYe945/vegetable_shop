package cn.zerobird.dto;

public class JsonModel {
    public static final String OP_SUCCESS = "success";
    public static final String OP_FAIL = "fail";

    private String status = OP_SUCCESS;
    private String message;
    private Object data;

    public JsonModel() {
    }

    public JsonModel(Object data) {
        this.data = data;
    }

    public JsonModel(String status, String message) {
        this.status = status;
        this.message = message;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
