<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<title>Hotel Gennie</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" />
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>
<body style="background-color: #f6f8fa;">


	<div class="alert alert-success">
	<strong>Hotel ${guestData.hotel}</strong>
	<br/>
	<br/>
		Dear <strong class="text-success">${guestData.name}</strong>, <br />  Thank you for choosing us  <br /> we are happy to
		inform that you booking is <strong class="text-success">Confirmed</strong>, it
		is our pleasure to have to here in <strong class="text-success">${guestData.city}</strong>.
		<br /> <br />

		<br /> <a href="hotelSelector">Back to Home</a>

	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"
		integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"
		integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG"
		crossorigin="anonymous"></script>

</body>
</html>