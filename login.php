<html>
<head>
	<meta charset="UTF-8">
	<title>Đăng nhập hệ thống</title>
	<link href="login1.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="jquery.min.js"></script>
	<script type="text/javascript" src="jquery.validate.min.js"></script>
</head>
<body>
		
	<form method="post" id="form_login1" class="form_login1">
		<fieldset>
			<legend>Đăng nhập vào hệ thống</legend>
			<div class="clear"></div>
			<div class="item">
				<label>Username:</label>
				<input type="text" name="txtuser" placeholder="usename">
			</div>
			<div class="item">
				<label>Password</label>
				<input type="password" name="txtpass" placeholder="password">
			</div>
			<div class="button">
				<button type="submit">Login</button>
				<button type="reset">Reset</button>
			</div>
			<div class="link">
				<a href="index.html">Về trang chủ</a> /
				<a href="signup.php" class="last">Đăng ký</a>
			</div>
		</fieldset>
	</form>
	<script type="text/javascript">
		$('#form_login').validate({
		    rules: {        
		        txtuser: {
		            required: true, 
		            remote: {
	                    url: 'ajax.php?thamso=ajax_check_user',
	                    type: "post",
	                    dataType: 'json',
	                    data: {
	                        txtuser: function () {
	                            return $('#form_login :input[name="txtuser"]').val();
	                        }
	                    }
	                }
		        },
		        txtpass:{ 
		            required: true, 
		           	remote: {
	                    url:  'ajax.php?thamso=ajax_check_pass',
	                    type: "post",
	                    dataType: 'json',
	                    data: {
	                        txtuser: function () {
	                            return $('#form_login :input[name="txtuser"]').val();
	                        },
	                        txtpass: function () {
	                            return $('#form_login :input[name="txtpass"]').val();
	                        }
	                    }
	                }
		        }
		    },

		    messages: {          
		        txtuser: {
		            required: "Tên đăng nhập không được bỏ trống!",
		            remote: "Tên đăng nhập không tồn tại",  
		        },
		        txtpass: {
		            required: "Mật khẩu không được bỏ trống!",
		            remote: "Mật khẩu không đúng",  
		        }
		    },

		    submitHandler: function (form) {
		        $.ajax({
		            type: 'post',
		            url: '/ajax.php?thamso=ajax_login',
		            data: $(form).serialize(),
		            success: function (res) {
		            	if(res === 'TRUE'){
		            		alert("Đăng nhập thành công");
		            	}else{
		            		alert("Đăng nhập không thành công");
		            	}		            
		            }
		        });
		    }
		});
	</script>
</body>
</html>