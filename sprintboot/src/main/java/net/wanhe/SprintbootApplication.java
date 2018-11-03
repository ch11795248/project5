package net.wanhe;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("net.wanhe.mapper")
public class SprintbootApplication {

	public static void main(String[] args) {
		SpringApplication.run(SprintbootApplication.class, args);
	}
}
