package vn.tms.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import vn.tms.entity.TrainingStaff;
import vn.tms.services.TrainingStaffServices;

@Component
public class TrainingStaffProfileValidator implements Validator {
	@Autowired
	TrainingStaffServices trainingStaffServices;

	@Autowired
	private PasswordEncoder passwordEncode;

	@Override
	public boolean supports(Class<?> cls) {
		return TrainingStaff.class.isAssignableFrom(cls);
	}

	@Override
	public void validate(Object o, Errors errors) {
		TrainingStaff trainingStaff = (TrainingStaff) o;

		TrainingStaff tmp = trainingStaffServices.findByEmail(trainingStaff.getEmail());

		if (passwordEncode.matches(trainingStaff.getPassword(), tmp.getPassword())) {
			errors.rejectValue("password", "Match.trainingStaff.confirmPassword");
		}

		// Match password
		if (!trainingStaff.getConfirmPassword().equals(trainingStaff.getPassword())) {
			errors.rejectValue("confirmPassword", "Match.trainingStaff.confirmPassword");
		}

	}

}
