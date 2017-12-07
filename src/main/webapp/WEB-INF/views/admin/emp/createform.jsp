<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Empresa</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<style>
	.error {color: #ff0000; }
</style>
	
</head>
<body>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="col-md-6">
				<h4 class="text-center">Crear Empresa</h4>
				<form:form method="post" action="create" modelAttribute="empresa">
				
					<div class="form-group">
						<label for="nombre">Nombre: </label>
						<form:input path="nombre" class="form-control" />
						<form:errors path="descripcion" cssClass="error" />
					</div>
					<div class="form-group">
						<label for="descripcion">Descripcion: </label>
						<form:input path="descripcion" class="form-control" />
						<form:errors path="descripcion" cssClass="error" />	
					</div>
					
			
					<div class="form-group">
						<input type="submit" value="Create" class="btn btn-success" />
						<a href="<%=request.getContextPath()%>/admin/emp/list" class="btn btn-danger">Cancel</a>
					</div>
				</form:form>
				<font color="red">${message}</font>
			</div>
		</div>
	</div>


</body>
</html>