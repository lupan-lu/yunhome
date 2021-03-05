package com.hp.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.sql.DataSource;

@EnableWebSecurity
public class SecurityCongig extends WebSecurityConfigurerAdapter {

    @Autowired
    private DataSource dataSource;
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//        auth.inMemoryAuthentication()
//                .passwordEncoder(encoder)
//                .withUser("曹操")
//                .password(encoder.encode("666"))
//                .roles("房东")
//                .and()
//                .withUser("貂蝉")
//                .password(encoder.encode("123"))
//                .roles("租客");
        String p666 = encoder.encode("666");
        String p123 = encoder.encode("123");
        System.out.println(p666);
        System.out.println(p123);

        auth.jdbcAuthentication().passwordEncoder(encoder)
                .dataSource(dataSource)
                .usersByUsernameQuery("select name, psw, 1 from h_users where name=?")
                .authoritiesByUsernameQuery("select name, role from h_users where name=?");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
//                .antMatchers("/").permitAll()
                .antMatchers("/house/**","/users/**","/admin","/index").hasAuthority("房东")
                .antMatchers("/index").hasAuthority("租客")
                .anyRequest().authenticated()
                .and().formLogin();
    }

}
