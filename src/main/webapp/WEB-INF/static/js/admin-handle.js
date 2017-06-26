function sendTrainerRequest(fieldValue){
	if(fieldValue == 'fName'){
		var name = $("#name").val();
		
		$.ajax({
			url : "/tms/ajax/trainer/name",
			type : 'GET',
			contentType : "application/json",
			data : {
				name : name,
			},
			dataType : 'json',
			success : function(data) {
			},
			complete : function(r) {
				$('#formName').addClass('has-error')
				$('#nameResponse').html(r.responseText);
				if(r.responseText==''){
					$('#formName').removeClass('has-error');
					$('#formName').addClass('has-success');
				}
			},
			error : function(e) {
			}
		});
	}
	
	if(fieldValue == 'fEmail'){
		var email = $("#email").val();
		
		$.ajax({
			url : "/tms/ajax/trainer/email",
			type : 'GET',
			contentType : "application/json",
			data : {
				email : email,
			},
			dataType : 'json',
			success : function(data) {
			},
			complete : function(r) {
				$('#formEmail').addClass('has-error');
				$('#emailResponse').html(r.responseText);
				if(r.responseText==''){
					$('#formEmail').removeClass('has-error');
					$('#formEmail').addClass('has-success');
				}
			},
			error : function(e) {
			}
		});
	}
	
	if(fieldValue == 'fPassword'){
		var password = $("#password").val();
		
		$.ajax({
			url : "/tms/ajax/trainer/password",
			type : 'GET',
			contentType : "application/json",
			data : {
				password : password,
			},
			dataType : 'json',
			success : function(data) {
			},
			complete : function(r) {
				$('#formPassword').addClass('has-error');
				$('#passwordResponse').html(r.responseText);
				if(r.responseText==''){
					$('#formPassword').removeClass('has-error');
					$('#formPassword').addClass('has-success');
				}
			},
			error : function(e) {
			}
		});
	}
	
	if(fieldValue == 'fConfirmPassword'){
		var password = $("#password").val();
		var confirmPassword = $("#confirmPassword").val();
		
		$.ajax({
			url : "/tms/ajax/trainer/confirmPassword",
			type : 'GET',
			contentType : "application/json",
			data : {
				password: password,
				confirmPassword : confirmPassword,
			},
			dataType : 'json',
			success : function(data) {
			},
			complete : function(r) {
				$('#formConfirmPassword').addClass('has-error');
				$('#confirmPasswordResponse').html(r.responseText);
				if(r.responseText==''){
					$('#formConfirmPassword').removeClass('has-error');
					$('#formConfirmPassword').addClass('has-success');
				}
			},
			error : function(e) {
			}
		});
	}
}