package vn.tms.config;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.CacheControl;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.resource.WebJarsResourceResolver;

@Configuration
@EnableWebMvc
@ComponentScan({ "vn.tms" })
public class WebMvcConfig extends WebMvcConfigurerAdapter {
	private static final Charset UTF8 = Charset.forName("UTF-8");

	// Cấu hình để sử dụng các file nguồn tĩnh (html, image, ..)
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// registry.addResourceHandler("/js/**").addResourceLocations("/js/").setCachePeriod(31556926);

		registry.addResourceHandler("/styles/**").addResourceLocations("/WEB-INF/resources/").setCachePeriod(31556926);

		

		 registry.addResourceHandler("/static/**")
         .addResourceLocations("/resources/", "/webjars/")
         .setCacheControl(
                 CacheControl.maxAge(30L, TimeUnit.DAYS).cachePublic())
         .resourceChain(true)
         .addResolver(new WebJarsResourceResolver());
		   

	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}

	// // Cấu hình UTF-8 cho các trang.
	@Override
	public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
		StringHttpMessageConverter stringConverter = new StringHttpMessageConverter();
		stringConverter.setSupportedMediaTypes(Arrays.asList(new MediaType("text", "plain", UTF8)));
		converters.add(stringConverter);

		// Add other converters ...
	}
}
