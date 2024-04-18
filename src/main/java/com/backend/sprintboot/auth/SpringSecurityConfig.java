package com.backend.sprintboot.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfiguration;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
public class SpringSecurityConfig extends WebSecurityConfiguration {
	
	@Autowired
	private UserDetailsService usuarioService;

    @Bean
    static BCryptPasswordEncoder passwordEncoder() {
		return new  BCryptPasswordEncoder();
	}
	
	
//	@Override
//	protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception{
//		auth.userDetailsService(this.usuarioService).passwordEncoder(passwordEncoder());
//	}
	
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
    	auth.userDetailsService(this.usuarioService).passwordEncoder(passwordEncoder());
    }
	
           
	@Bean("authenticationManager")
	protected AuthenticationManager authenticationManager() throws Exception {
		return authenticationManager();
		
	}	
	
	
	public void configure(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests(requests -> requests
                .anyRequest().authenticated())
                .csrf(csrf -> csrf.disable())
                .sessionManagement(management -> management.sessionCreationPolicy(SessionCreationPolicy.STATELESS));
	}


}
