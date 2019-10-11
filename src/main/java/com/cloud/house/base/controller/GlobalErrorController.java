package com.cloud.house.base.controller;

import com.cloud.house.base.ApiResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ErrorAttributes;
import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * 全局异常统一处理类
 */
@Controller
public class GlobalErrorController implements ErrorController {

    private static final String ERROR_PATH = "/error";

    private ErrorAttributes errorAttributes;

    @Override
    public String getErrorPath() {
        return ERROR_PATH;
    }

    @Autowired
    public GlobalErrorController(ErrorAttributes errorAttributes) {
        this.errorAttributes = errorAttributes;
    }

    /**
     * web页面错误处理
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = ERROR_PATH, produces = "text/html")
    public String errorPageHandler(HttpServletRequest request, HttpServletResponse response) {
        int status = response.getStatus();
        switch (status) {
            case 400:
                return "error/400";
            case 404:
                return "error/404";
            case 405:
                return "error/405";
            case 500:
                return "error/500";
        }

        return "index";
    }

    /**
     * API接口错误处理
     * @param request
     * @return
     */
    @RequestMapping(value = ERROR_PATH)
    @ResponseBody
    public ApiResponse errorApiHandler(HttpServletRequest request) {
        RequestAttributes requestAttributes = new ServletRequestAttributes(request);

        Map<String, Object> map = this.errorAttributes.getErrorAttributes(requestAttributes, false);
        int status = getStatus(request);
        return new ApiResponse(status, (String) map.getOrDefault("message", "error"),null);
    }

    public int getStatus(HttpServletRequest request) {
        int status = (Integer) request.getAttribute("javax.servlet.error.status_code");
        return status;
    }


}
