	jQuery(document).ready(function($) {

		// validate signup form on keyup and submit
		$("#feedbackForm").validate({
			rules: {
				firstName:"required",
				lastName:"required",
				source:"required",
				comments:"required",
				
				emailId: {
					required: true,
					email: true
				},
				phoneNumber:{
					required: true,
					minlength: 10
				},
				zipcode:{
					required:true,
					minlength:5
				}
			},
			messages: {
				firstName:"Please enter your firstname",
				lastName:"Please enter your lastname",
				emailId: "Please enter a valid email address",
				zipcode: "Please enter a valid zipcode",
				source:"Please choose an option",
				comments:" Please enter a comment"
			}
		});
	});