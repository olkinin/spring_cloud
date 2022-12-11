package ru.geekbrains.front_service.controller;


import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;



@RestController

public class FrontController {


    @Bean
    @LoadBalanced
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }



    @GetMapping("/product")
    public Object getProducts() {

        Object data=restTemplate().getForObject("http://product_service/api/v1/products", String.class);
        return data;
    }

    @GetMapping
    private String Page(){
        return "index";
    }
}
