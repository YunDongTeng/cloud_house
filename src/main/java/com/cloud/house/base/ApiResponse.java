package com.cloud.house.base;

public class ApiResponse {

    private int code;
    private String message;
    private Object data;

    private boolean more;

    public ApiResponse(int code,String message,Object data){
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public ApiResponse() {
        this.code = Status.SUCCESS.code;
        this.message = Status.SUCCESS.message;
    }

    public ApiResponse message(int code,String message){
        return new ApiResponse(code,message,null);
    }

    public ApiResponse success(Object data){
        return new ApiResponse(Status.SUCCESS.code,Status.SUCCESS.message,data);
    }

    public ApiResponse status(Status status){
        return new ApiResponse(status.code,status.message,null);
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
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

    public boolean isMore() {
        return more;
    }

    public void setMore(boolean more) {
        this.more = more;
    }
}
