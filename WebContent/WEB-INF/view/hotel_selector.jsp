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
		<div class="card border-primary mb-3" style="width: 24rem;">
			<div class="card-body">
				<div class="text-center">
					<span class="text-center"><h4>
							<b>Hotel Reservation System</b>
						</h4></span> <br /> <br /> <br />
					<form:form action="checkBookings" method="GET"
						modelAttribute="data">
						<table class="table mx-auto">
							<tr>
								<td>City <span class="text-danger">*</span>
								</td>
								<td><form:select path="city" class="custom-select"
										style="width: 12rem;height: 2rem;" name="city"
										required="required">
										<form:options items="${city}" />
									</form:select></td>
							</tr>

							<tr>
								<td>Hotel <span class="text-danger">*</span>
								</td>
								<td><form:select path="hotel" class="custom-select"
										style="width: 12rem;height: 2rem;" name="hotel"
										required="required">
										<form:options items="${hotel_name}" />
									</form:select></td>
							</tr>
							<tr>
								<td>Date <span class="text-danger">*</span>
								</td>

								<td><form:input type="date" path="date" onchange="isValid();"
										style="width: 12rem; height: 2rem;" required="required" /> <br />
									<span id="error"></span></td>
							</tr>

						</table>
						<span class="mx-auto"><input type="submit" onsubmit="isValid();"
							class="btn btn-primary" value=" Check Availability" /></span>
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

<%-- <input type="date" name="date"
									style="width: 12rem; height: 2rem;" required="required" />
								 --%>