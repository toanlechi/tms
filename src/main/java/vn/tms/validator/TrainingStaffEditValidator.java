package vn.tms.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import vn.tms.entity.TrainingStaff;
import vn.tms.services.TrainingStaffServices;

@Component
public class TrainingStaffEditValidator implements Validator {
	@Autowired
	TrainingStaffServices trainingStaffServices;

	@Override
	public boolean supports(Class<?> cls) {
		return TrainingStaff.class.isAssignableFrom(cls);
	}

	@Override
	public void validate(Object o, Errors errors) {
		TrainingStaff trainingStaff = (TrainingStaff) o;
		
		// Unique email
		TrainingStaff dbTrainingStaff = trainingStaffServices.findByEmail(trainingStaff.getEmail());
		if (dbTrainingStaff != null && dbTrainingStaff.getId() != trainingStaff.getId()) {
            errors.rejectValue("email", "Unique.trainingStaff.email");
        }
	}
}
