package com.czq.blog.controller;

import cn.hutool.core.map.MapUtil;
import cn.hutool.crypto.SecureUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.czq.blog.common.dto.LoginDto;
import com.czq.blog.common.lang.Result;
import com.czq.blog.entity.User;
import com.czq.blog.service.UserService;
import com.czq.blog.util.JwtUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

@RestController
public class AccountController {

    @Autowired
    UserService userService;

    @Autowired
    JwtUtils jwtUtils;
    @PostMapping("/login")
    public Result login(@Validated @RequestBody LoginDto loginDto, HttpServletResponse response){

        User username = userService.getOne(new QueryWrapper<User>().eq("username", loginDto.getUsername()));
        Assert.notNull(username,"用户不存在");
        System.out.println("username.getPassword() = " + username.getPassword());
        System.out.println("loginDto.getPassword() = " + loginDto.getPassword());

        System.out.println("SecureUtil.md5(loginDto.getPassword()) = " + SecureUtil.md5(loginDto.getPassword()));
        if (!username.getPassword().equals(SecureUtil.md5(loginDto.getPassword()))){
            return  Result.fail("密码不正确");
        }
        String jwt = jwtUtils.generateToken(username.getId());
        response.setHeader("Authorization",jwt);
        response.setHeader("Access-control-Expose-Headers","Authorization");
        return Result.success(MapUtil.builder()
                .put("id",username.getId())
                .put("username",username.getUsername())
                .put("avatar",username.getAvatar())
                .put("email",username.getEmail())
                .map()
        );
    }

    @RequiresAuthentication
    @GetMapping("/logout")
    public Result logout(){
        SecurityUtils.getSubject().logout();
        return Result.success(null);
    }

}
