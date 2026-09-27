package mvc.sms;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import mvc.sms.config.AppConfig;



public class WebInitiazer extends AbstractAnnotationConfigDispatcherServletInitializer  {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		return new Class[] {AppConfig.class};
	}

	@Override
	protected String[] getServletMappings() {

		return new String[] {"/"};
	}

	

}
