package com.ute.shopping;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.ute.shopping.config.AppProperties;

@SpringBootApplication
@EntityScan({"com.ute.common","com.ute.shopping"})
@EnableConfigurationProperties(AppProperties.class)
public class EWebShoppingApplication {

	public static void main(String[] args) {
		SpringApplication.run(EWebShoppingApplication.class, args);
	}

}
