<!DOCTYPE html>
<html>
<head>
<title>Home</title>
</head>
<body>
	<header>
		<nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse "
			style="background-color: #0072BC">
			<div class="position-sticky">
				<div class="list-group list-group-flush mx-3 mt-5" style="gap: 3rem">
					<a href="${pageContext.request.contextPath}/profilo/profilo.jsp"
						class="list-group-item list-group-item-action py-2 ripple"
						aria-current="true"><i class="bi bi-person-circle"
						style="margin-right: 5px; font-size: 20px"></i><span>Profilo</span></a>
					<a href="#"
						class="list-group-item list-group-item-action py-2 ripple"><i
						class="bi bi-file-earmark-person"
						style="margin-right: 5px; font-size: 20px"></i><span>Curriculum</span></a>
					<a href="${pageContext.request.contextPath}/ricercaPosizioni.jsp"
						class="list-group-item list-group-item-action py-2 ripple"> <i
						class="bi bi-search" style="margin-right: 5px; font-size: 20px"></i>
						<span>Ricerca Posizioni</span>
					</a>

					<!--    <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i class="bi bi-search" style="margin-right: 5px;font-size: 20px"></i><span>Ricerca Posizioni</span></a>  -->
					<a href="${pageContext.request.contextPath}/findCandidature"
						class="list-group-item list-group-item-action py-2 ripple"><i
						class="bi bi-search" style="margin-right: 5px; font-size: 20px"></i><span>Candidature
							effettuate</span></a> <a href="${pageContext.request.contextPath}/logout"
						class="list-group-item list-group-item-action py-2 ripple"><i
						class="bi bi-box-arrow-right"
						style="margin-right: 5px; font-size: 20px"></i><span>Logout</span></a>
				</div>
			</div>
		</nav>
		<nav id="main-navbar"
			class="navbar navbar-expand-lg navbar-light bg-white fixed-top"
			style="background-color: white;">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
					aria-controls="sidebarMenu" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<a class="navbar-brand" href="${pageContext.request.contextPath}/home/homeuser.jsp"> <img
					src="${pageContext.request.contextPath}/img/logoPagina.png"
					height="50" alt="" loading="lazy" />
				</a>
				<h1 style="text-align: center; margin-top: 10px">

				<span> <a href="homeuser.jsp"><h1>
							<span style="float: right; font-family: Comic Sans MS">JOBHUNTER
								&thinsp;</span>
						</h1></a>
				</span>
			</div>
		</nav>

	</header>

</body>
</html>






