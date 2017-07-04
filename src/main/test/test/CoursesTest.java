package test;

import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import vn.tms.controller.CoursesController;
import vn.tms.entity.Courses;
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
	public void testGetList() throws Exception{
		List<Courses> courses = new ArrayList<>();
		courses.add(new Courses("A", "asdasd"));
		courses.add(new Courses("A", "asdasd"));
		
		when(coursesServices.findAll()).thenReturn(courses);
		
			
	}
}

