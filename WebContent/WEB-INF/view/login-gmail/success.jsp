<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WorkFast</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Login google -->
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="1012288331395-k24u9pj63e593k273179pbtrigshvj2p.apps.googleusercontent.com">

<!-- Fonte Google -->
<link href="https://fonts.googleapis.com/css?family=PT+Serif"
	rel="stylesheet">

<!-- Jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Jquery validate -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/localization/messages_pt_BR.js"></script>


<!-- C�digo JavaScript desta P�gina(P�gina de login) -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/entrar.js"></script>

<!-- C�digo css desta P�gina(P�gina de cadastro) -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/entrar.css" />


</head>
<body>

	<img id="myImg">
	<br>
	<p id="name"></p>


	<div id="status"></div>



	<script type="text/javascript">
		function onSignIn(googleUser) {
			// window.location.href='success.jsp';

			var profile = googleUser.getBasicProfile();
			var imagurl = profile.getImageUrl();
			var name = profile.getName();
			var email = profile.getEmail();
			document.getElementById("myImg").src = imagurl;
			document.getElementById("name").innerHTML = name;

			document.getElementById("myP").style.visibility = "hidden";

			document.getElementById("status").innerHTML = 'Bem vindo ' + name
					+ '! <a href="success.jsp"?email=' + email + '&name=' + name
					+ '/>Continue com o login do Google</a></p>'

		}
	</script>





	<button onclick="myFunction()">Sair</button>

	<script>
		function myFunction() {
			gapi.auth2.getAuthInstance().disconnect();
			location.reload();
		}
	</script>



</body>
</html>