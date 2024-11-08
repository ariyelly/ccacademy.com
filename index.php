<?php
 include('header.php'); 
?>

<div class="container-fluid p-0">
	<div class="col-md-12 p-0">
		<img src="images/bg.jpg" class="img-fluid " />
	</div>
	<div id="about" class="col-md-12 pt-4 pb-4">
		<div class="col-md-8 mx-auto mt-4 text-center pt-4 pb-4">
			<h2 class="text-info">About us</h2>
			<p class="mt-4 text-dark">This bring us more knowledge in our (ICSLIS) curriculum in City College of Angeles.</p>
		</div>
	</div>
	<div id="contact" class="col-md-12 pt-4 pb-4 bgsection">
		<div class="col-md-8 mx-auto mt-4 text-center pt-4 pb-4">
			<h2 class="text-white">Contact us</h2>
			<p class="mt-4 text-white">Address: Arayat Boulevard Barangay Pampang, Angeles City <br> Facebook: City College of Angeles <br> Email: op@cca.edu.ph</p>
		</div>
	</div>
	<div id="a_login" class="col-md-12">
		<div class="col-md-4 mx-auto shadow-lg p-3 mb-5 bg-white rounded lgndiv">
			<div class="col-md-12 text-center">
				<h4 class="text-info">Admin Login</h4>
			</div>
			<form id="admin_form" method="post">
				<div class="form-group">
					<label for="email">Admin Id:</label>
					<input type="text" class="form-control" name="admin_email" required />
				</div>
				<div class="form-group">
					<label for="pwd">Password:</label>
					<input type="password" class="form-control" name="admin_pwd" required />
					
				</div> 
				<button type="submit" id="adminLogin" class="btn btn-info bg-info text-white" >Login</button>
			</form>
		</div>
	</div>
	<div id="u_login" class="col-md-12 pt-4 pb-4 bgsection">
		<div class="col-md-4 mx-auto border p-3 mb-5 rounded lgndiv">
			<div class="col-md-12 text-center">
				<h4 class="text-white">User Login</h4>
			</div>
			<form id="user_form" method="post">
				<div class="form-group">
					<label class="text-white" for="email">Email address:</label>
					<input type="email" class="form-control" name="user_email" style="color: white;" />
				</div>
				<div class="form-group">
					<label class="text-white" color="white" for="pwd">Password:</label>
					<input type="password" class="form-control" name="user_pwd" />
					
				</div> 
				<button type="submit" id="userLogin" class="btn btn-secondary bg-white text-info">Login</button>
				<label class="text-white">Not Registered? <u><a href="register.php" class="text-white"> Create An Acccount</a></u></label>
			</form>
		</div>
	</div>
</div>
</div>

<script>
function togglePasswordVisibility(passwordId, icon) {
    var passwordField = document.getElementById(passwordId);
    var iconElement = icon.querySelector('i');
    if (passwordField.type === 'password') {
        passwordField.type = 'text';
        iconElement.classList.remove('fa-eye');
        iconElement.classList.add('fa-eye-slash');
    } else {
        passwordField.type = 'password';
        iconElement.classList.remove('fa-eye-slash');
        iconElement.classList.add('fa-eye');
    }
}
</script>

<?php include('Footer.php'); ?>

<script>
$(document).on('submit', '#admin_form', function(event){
	event.preventDefault();
	$.ajax({
		url:"login.php",
		method:"POST",
		data:new FormData(this),
		contentType: false,
		cache: false,
		processData:false,
		success:function(data)
		{
			if(data == "successfull")
			{
				window.location.href = "ViewUser.php";
			}
			else
			{
				swal(data);
			}	
		}
	});
});

$(document).on('submit', '#user_form', function(event){
	event.preventDefault();
	$.ajax({
			url:"login.php",
			method:"POST",
			data:new FormData(this),
			contentType: false,
			cache: false,
			processData:false,
			success:function(data)
			{
				if(data == "successfull")
				{
					window.location.href = "user/Query.php";
				}
				else
				{
					swal(data);
				}	
			}
		});
});
</script>

</body>
</html>