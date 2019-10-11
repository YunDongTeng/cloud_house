package com.cloud.house.base;

public enum Status {
    SUCCESS(200,"请求成功"),
    BAD_REQUEST(400,"请求失败"),
    SERVER_ERROR(500,"服务器错误");

    int code;
    String message;

    Status(int code, String message) {
        this.code = code;
        this.message = message;
    }
}
