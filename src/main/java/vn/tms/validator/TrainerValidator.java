package vn.tms.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import vn.tms.entity.Trainer;
import vn.tms.services.TrainerServices;

@Component
public class TrainerValidator implements Validator {
	@Autowired
	TrainerServices trainerServices;

	@Override
	public boolean supports(Class<?> cls) {
		return Trainer.class.isAssignableFrom(cls);
	}

	@Override
	public void validate(Object o, Errors errors) {
		Trainer trainer = (Trainer) o;
		
		// Match password
		if(!trainer.getConfirmPassword().equals(trainer.getPassword())){
			errors.rejectValue("confirmPassword", "Match.trainer.confirmPassword");
		}
		
		// Unique email
		Trainer dbTrainer = trainerServices.findByEmail(trainer.getEmail());
		if (dbTrainer != null && dbTrainer.getId() != trainer.getId()) {
            errors.rejectValue("email", "Unique.trainer.email");
        }
	}

}
