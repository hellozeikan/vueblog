package com.czq.blog.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;

@Configuration
@EnableSwagger2  //开启swagger
public class SwaggerConfig {

    @Bean//配置swagger docket实例
    public Docket docket(){
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .enable(true)//swagger开关
                .select()
                //RequestHandlerSelectors配置扫描的接口方式
                //any()扫描全部
                //withclass.....扫描类上的注解
                .apis(RequestHandlerSelectors.basePackage("com.czq.blog.controller"))
                .build();
    }
    //配置swagger信息apiInfo
    private ApiInfo apiInfo(){
        return new ApiInfo("接口swagger测试",
                "这里是描述",
                "1.0", "http://www.gsyj.xyz",
                new Contact("czq", "http://www.gsyj.xyz", "970561372@qq.com"),
                "Apache 2.0",
                "http://www.apache.org/licenses/LICENSE-2.0",
                new ArrayList());
    }
}
