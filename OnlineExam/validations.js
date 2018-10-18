//email format validation
function checkEmail(email) {
	if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)){
		return (true)
	}
  //alert("Please enter valide email!")
  return (false)
}
$(document).ready(function(){
	// allow only numaric keys for phone fields
	$("#txtPhone").keydown(function(event) {
		// Allow: backspace, delete, tab and escape
		if ( event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || 
			 // Allow: Ctrl+A
			(event.keyCode == 65 && event.ctrlKey === true) || 
			 // Allow: home, end, left, right
			(event.keyCode >= 35 && event.keyCode <= 39)) {
				 // let it happen, don't do anything
				 return;
		}
		else {
			// Ensure that it is a number and stop the keypress
			if ((event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105 )) {
				event.preventDefault(); 
			}   
		}
	});
	
	// Contact form validation
	$('#contactForm').submit(function(){	
		var name = $("#txtName").val();
		var email = $("#txtEmail").val();
		var phone = $("#txtPhone").val();
		
		if ((name == "") || name == "" || name == "Please Enter your name" ) {
			$("#txtName").val("Please Enter your name").addClass("errorMsg");
			$("#txtName").focus(function(){$("#txtName").val("");$("#txtName").removeClass("errorMsg");});
			return false;
		}else if (email == "" || email == "Please Enter your Email Address"){
			$("#txtEmail").val("Please Enter your Email Address").addClass("errorMsg");
			$("#txtEmail").focus(function(){$("#txtEmail").val("");$("#txtEmail").removeClass("errorMsg");});		
			return false;
		}else if(!checkEmail($("#txtEmail").val())){
			$("#txtEmail").val("Please enter valid email address").addClass("errorMsg");
			$("#txtEmail").focus(function(){$("#txtEmail").val(email);$("#txtEmail").removeClass("errorMsg");});		
			return false;
		}else if (phone == "" || txtPhone == "Please Enter Phone Number"){
			$("#txtPhone").val("Please Enter Phone Number").addClass("errorMsg");
			$("#txtPhone").focus(function(){$("#txtPhone").val("");$("#txtPhone").removeClass("errorMsg");});		
			return false;
		}else{
			return true;
		}
	});
	
	// Contact form validation
	$('#resultsForm').submit(function(){	
		var department = $("#department").val();
		var year = $("#year").val();
		var seatNo = $("#txtSeatNo").val();
		var dob = $("#txtDob").val();
				
		if (department == "Select" ) {
			$("#department").addClass("errorMsg");
			$("#department").focus(function(){$("#department").removeClass("errorMsg");});
			return false;
		}else if (year == "Select" ) {
			$("#year").addClass("errorMsg");
			$("#year").focus(function(){$("#year").removeClass("errorMsg");});
			return false;
		}else if (seatNo == "" || seatNo == "Please Enter Seat Number"){
			$("#txtSeatNo").val("Please Enter Seat Number").addClass("errorMsg");
			$("#txtSeatNo").focus(function(){$("#txtSeatNo").val("");$("#txtSeatNo").removeClass("errorMsg");});		
			return false;
		}else if (dob == "" || dob == "Please Enter Date of Birth"){
			$("#txtDob").val("Please Enter Date of Birth").addClass("errorMsg");
			$("#txtDob").focus(function(){$("#txtDob").val("");$("#txtDob").removeClass("errorMsg");});		
			return false;
		}else{
			return true;
		}
	});
});