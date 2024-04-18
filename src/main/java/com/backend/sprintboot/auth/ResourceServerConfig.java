package com.backend.sprintboot.auth;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;


@Configuration
@EnableWebSecurity
public class ResourceServerConfig extends ResourceServerConfigurerAdapter{

	
	@Override
	public void configure(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests (requests -> requests.requestMatchers(HttpMethod.GET, "/api/clientes").permitAll()
                .anyRequest().authenticated());	
	}
	

}
