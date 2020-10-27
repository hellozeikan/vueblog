package com.czq.blog.controller;


import com.czq.blog.common.lang.Result;
import com.czq.blog.entity.User;
import com.czq.blog.service.UserService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author 关注公众号：MarkerHub
 * @since 2020-08-08
 */
@RestController
@SuppressWarnings("all")
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequiresAuthentication
    @GetMapping("/index")
    public Result index(){
        User user = userService.getById(1L);
        return Result.success(user);
    }

    //注解校验
    @PostMapping("/save")
    public Result save(@Validated @RequestBody User user){

        return Result.success(user);
    }

}
