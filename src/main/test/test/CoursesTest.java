package test;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import vn.tms.controller.CoursesController;
import vn.tms.services.CoursesServices;

public class CoursesTest {
	@Mock
	private CoursesServices coursesServices;

	@InjectMocks
	private CoursesController controller;
	private MockMvc mockMvc;

	@Before
	public void setup() {
		MockitoAnnotations.initMocks(this);
		this.mockMvc = MockMvcBuilders.standaloneSetup(controller).build();
	}
	
	@Test
	public void testLoginUTC01() throws Exception{
		
	}
}
