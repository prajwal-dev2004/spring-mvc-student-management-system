package mvc.sms.config;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("mvc.sms")
public class AppConfig {
	@Bean
	public EntityManagerFactory getFactory() {
		return Persistence.createEntityManagerFactory("dev");
	}

}
