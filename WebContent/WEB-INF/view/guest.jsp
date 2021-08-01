<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<title>Hotel Gennie</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" />
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

<meta name='viewport' content='width=device-width, initial-scale=1'>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

</head>
<body>

	<div class="main">
		<div class="card border-success mb-3" style="width: 24rem;">
			<div class="card-body">
				<div class="text-center">
					<span class="text-center"><b>Reservation Form</b></span> <br /> <br />
					<br />

					<form:form action="bookGuest" method="POST"
						modelAttribute="guestData">

						<form:hidden path="hotel" value="${guestData.hotel}" />
						<form:hidden path="city" value="${guestData.city}" />
						<form:hidden path="date" value="${guestData.date}" />


						<table class="table mx-auto">
							<tr>
								<td>Guest Name <span class="text-danger">*</span>
								</td>

								<td><form:input type="text" path="name"
										style="width: 12rem; height: 2rem;" required="required"
										min="1" maxlength="50" /><br /> <form:errors class="a"
										path="name"></form:errors></td>
							</tr>
							<tr>
								<td>Age <span class="text-danger">*</span>
								</td>
								<td><form:input type="number" path="age"
										style="width: 12rem; height: 2rem;" required="required"
										min="1" max="100" /><br /> <form:errors class="a" path="age"></form:errors>
								</td>
							</tr>
							<tr>
								<td>Gender <span class="text-danger">*</span>
								</td>
								<td><form:select path="gender" class="custom-select"
										style="width: 12rem; height: 2rem;" required="required">

										<form:option value="">Gender</form:option>
										<form:option value="male">Male</form:option>
										<form:option value="female">Female</form:option>
										<form:option value="other">Other</form:option>
									</form:select><br /> <form:errors class="a" path="gender"></form:errors></td>
							</tr>
							<tr>
								<td>Email</td>
								<td><form:input type="email" path="email"
										style="width: 12rem; height: 2rem;" /></td>
							</tr>
							<tr>
								<td>Contact <span class="text-danger">*</span>
								</td>
								<td><form:input type="tel" path="contact"
										style="width: 12rem; height: 2rem;" required="required"
										min="1" max="10" /> <br /></td>
								<form:errors class="a" path="contact"></form:errors>
							</tr>
						</table>
						<span class="mx-auto"><input type="submit"
							class="btn btn-success" value="book" /></span>
					</form:form>
				</div>
			</div>
		</div>
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