package com.cloud.house.web;

import com.cloud.house.base.ApiResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/house")
public class HouseController {



    @RequestMapping("/list")
    @ResponseBody
    public ApiResponse success(){
        return new ApiResponse().success("哈哈哈");
    }
}
