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

<meta name='viewport' content='width=device-width, initial-scale=1'>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>

<body>

	<h1 class="display-4 text-center">Pricing Details</h1>

	<br />
	<br />
	<form:form action="confirmation" method="GET" modelAttribute="data">

		<form:hidden path="date" value="${data.date}" />
		<form:hidden path="hotel" value="${data.hotel}" />
		<form:hidden path="city" value="${data.city}" />


		<h5 class="text-center">
			Hi User, Congrats booking is <span class="text-success">available</span>
			for hotel <b>${data.hotel}</b> in <b>${data.city}</b> on <b>${data.date}</b>,
			please find details about our rooms offerings.
		</h5>

		<hr />
		<br />
		<br />
		<table class="mx-auto table table-hover">
			<thead>
				<th>Room Type</th>
				<th>Price</th>
				<th>GST</th>
				<th>Total</th>
			</thead>

			<tbody>
				<tr>
					<td>
						<div class="custom-control custom-radio custom-control-inline">
							<form:radiobutton name="suite" value="deluxe"
								class="custom-control-input" id="customRadioInline2"
								path="suite_type" required="required" />
							<label class="custom-control-label" for="customRadioInline2">Deluxe</label>
						</div>
					</td>
					<td>5000 Rs.</td>
					<td>200 Rs.</td>
					<td>5200 Rs.</td>
				</tr>
				<tr>
					<td>
						<div class="custom-control custom-radio custom-control-inline">
							<form:radiobutton name="suite" value="ac"
								class="custom-control-input" id="customRadioInline2"
								path="suite_type" required="required" />
							<label class="custom-control-label" for="customRadioInline2">A.C.</label>
						</div>
					</td>
					<td>4000 Rs.</td>
					<td>150 Rs.</td>
					<td>4150 Rs.</td>
				</tr>
				<tr>
					<td>
						<div class="custom-control custom-radio custom-control-inline">
							<form:radiobutton name="suite" value="non-ac"
								class="custom-control-input" id="customRadioInline2"
								path="suite_type" required="required" />
							<label class="custom-control-label" for="customRadioInline2">Non
								A.C.</label>
						</div>
					</td>
					<td>2500 Rs.</td>
					<td>100 Rs.</td>
					<td>2600 Rs.</td>
				</tr>
			</tbody>

		</table>
		<br />
		<br />


		<div class="text-center">
			<span><input type="submit" class="btn btn-success"
				value="Confirm" /></span> &nbsp;&nbsp; <span><a
				href="hotelSelector" role="button" class="btn btn-danger">Cancel</a></span>
		</div>

	</form:form>


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