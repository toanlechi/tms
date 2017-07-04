package test;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import vn.tms.controller.MainController;
import vn.tms.services.UserServices;

public class LoginTest {

	@Mock
	private UserServices userServices;

	@InjectMocks
	private MainController mainController;
	private MockMvc mockMvc;

	@Before
	public void setup() {
		MockitoAnnotations.initMocks(this);
		this.mockMvc = MockMvcBuilders.standaloneSetup(mainController).build();
	}
	
	@Test
	public void testLoginUTC01() throws Exception{
		
	}

}
