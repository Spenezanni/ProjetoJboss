package br.com.java.projetoJboss.conf;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import br.com.java.projetoJboss.controllers.HomeController;
import br.com.java.projetoJboss.daos.ProdutoDAO;

@EnableWebMvc
@ComponentScan(basePackageClasses= {HomeController.class, ProdutoDAO.class})
public class AppWebConfiguration {
	
    @Bean
	public InternalResourceViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
    
    
    @Bean
    public MessageSource messageSource() {
    	ReloadableResourceBundleMessageSource messageSource
    		= new ReloadableResourceBundleMessageSource();
    	messageSource.setBasename("/WEB-INF/messages");
    	messageSource.setDefaultEncoding("UTF-8");
    	messageSource.setCacheSeconds(1);
    	
		return messageSource;
    	}
	
}
