<%@ page import="com.candidatoDB.pw2.entity.Utente"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.stream.Stream" %>
<%@ page import="java.util.Objects" %>
<%@ page import="java.lang.reflect.Field" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="com.candidatoDB.pw2.interfaces.impl.UtenteIMPL" %>
<%@ page import="com.candidatoDB.pw2.entity.CandidaturaUser" %>
<%@ page import="com.candidatoDB.pw2.interfaces.impl.CandidaturaIMPL" %>
<%@ page import="com.candidatoDB.pw2.entity.Posizione" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
UtenteIMPL utenteIMPL = new UtenteIMPL();
Utente utenteLoggato = (Utente) request.getSession().getAttribute("utente");
ArrayList<String> campi_vuoti = utenteIMPL.getEmptyParameters(utenteLoggato);
	CandidaturaIMPL candidaturaIMPL = new CandidaturaIMPL();
	CandidaturaUser candidaturaRecente = candidaturaIMPL.trovaCandidaturaPiùRecente(utenteLoggato.getId_user());
	System.out.println(candidaturaRecente);

	Posizione posizioneRecente = candidaturaIMPL.getPosizionebyCandidaturaId(candidaturaRecente);
	System.out.println(posizioneRecente);

%>

<html>
<head>
<title>Home</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/img/logoPag.png"
	style="border-radius: 10px">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="../css/card.css" />
</head>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/homeuser.css">

<body style="background-color: #d4d4d4">

	<header>
		<nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse "
			style="background-color: #0072BC">
			<div class="position-sticky">
				<div class="list-group list-group-flush mx-3 mt-5" style="gap: 3rem">
					<a href="${pageContext.request.contextPath}/home/profilo.jsp"
						class="list-group-item list-group-item-action py-2 ripple"
						aria-current="true"><i class="bi bi-person-circle"
						style="margin-right: 5px; font-size: 20px"></i><span>Profilo</span></a>
					<a href="#"
						class="list-group-item list-group-item-action py-2 ripple"><i
						class="bi bi-file-earmark-person"
						style="margin-right: 5px; font-size: 20px"></i><span>Curriculum</span></a>
					<a href="${pageContext.request.contextPath}/home/ricercaPosizioni.jsp"
						class="list-group-item list-group-item-action py-2 ripple"> <i
						class="bi bi-search" style="margin-right: 5px; font-size: 20px"></i>
						<span>Ricerca Posizioni</span>
					</a>

					<!--    <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i class="bi bi-search" style="margin-right: 5px;font-size: 20px"></i><span>Ricerca Posizioni</span></a>  -->
					<a href="${pageContext.request.contextPath}/findCandidature"
						class="list-group-item list-group-item-action py-2 ripple"><i
						class="bi bi-search" style="margin-right: 5px; font-size: 20px"></i><span>Candidature
							effettuate</span></a>
					<a href="${pageContext.request.contextPath}/logout"
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

				<a class="navbar-brand" href="homeuser.jsp"> <img
					src="${pageContext.request.contextPath}/img/logoPagina.png"
					height="50" alt="" loading="lazy" />
				</a>
				<h1 style="text-align: center; margin-top: 10px">
					Ciao
					<%=utenteLoggato.getNome()%></h1>
				<span> <a href="homeuser.jsp"><h1>
							<span style="float: right; font-family: Comic Sans MS">JOBHUNTER
								&thinsp;</span>
						</h1></a>
				</span>
			</div>
		</nav>

	</header>


	<main style="margin-top: 58px">
		<div class="container pt-3">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 d-flex align-items-stretch "
						style="padding-top: 50px;">
						<div class="card shadow-lg p-3 mb-5 bg-body rounded"
							style="width: 18rem;">
							<i class="bi bi-card-list"
								style="font-size: 10rem; text-align: center"></i>
							<div class="card-body">
								<h5 class="card-title" style="text-align: center">
									<a class="btn btn-info" href="../login.jsp">Statistiche
										Quiz</a>
								</h5>
							</div>
						</div>
					</div>
					<div class="col-lg-4 d-flex align-items-stretch"
						style="padding-top: 50px">
						<div class="card shadow-lg p-3 mb-5 bg-body rounded"
							style="width: 18rem;">
							<i class="bi bi-clipboard-data"
								style="font-size: 10rem; text-align: center"></i>
							<div class="card-body">
								<h5 class="card-title" style="text-align: center">
									<a class="btn btn-info" href="../login.jsp">Skills
										Verificate</a>
								</h5>
							</div>
						</div>
					</div>
					<div class="card col-lg-4 d-flex align-items-stretch" style=" background-color: #d4d4d4; border: none">
						<div class="slide slide1">
							<div class="content">
								<div class="icon">
									<i class="bi bi-person"
									   style="font-size: 10rem;text-align: center"><h1 style="font-size: 1rem">Completa il profilo</h1></i>
								</div>
							</div>
						</div>
						<div class="slide slide2">
							<div class="row">
								<table class=" table-borderless">
									<tbody>
									<% if(campi_vuoti.isEmpty()){
									%>
									<div class="alert alert-success  align-items-center border border-0" role="alert">
										<div>
											<i class="bi bi-check-circle-fill">Complimenti hai completato il profilo</i>
										</div>
									</div>

									<%
										};
									%>

									<%
										for(String campo : campi_vuoti){
									%>
									<tr>
										<td colspan="2"><%=campo%></td>
										<td><h6 class="mb-2"><span class="badge bg-warning"><i class="bi bi-exclamation-circle" style="font-size: 1rem"></i></span></h6></td>
									</tr>
									<%
										};
									%>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="card col-lg-4 d-flex align-items-stretch" style=" background-color: #d4d4d4; border: none">
						<div class="slide slide1">
							<div class="content">
								<div class="icon">
									<i class="bi bi-award"
									   style="font-size: 10rem;text-align: center"><h1 style="font-size: 1rem">Miglior Candidatura</h1></i>
								</div>
							</div>
						</div>
						<div class="slide slide2">
							<div class="content">
								<h3>
									Hello there!
								</h3>
								<p>Trust yourself and keep going.</p>
							</div>
						</div>
					</div>

					<div class="card col-lg-4 d-flex align-items-stretch" style=" background-color: #d4d4d4; border: none">
						<div class="slide slide1">
							<div class="content">
								<div class="icon">
									<i class="bi bi-receipt-cutoff"
									   style="font-size: 9rem;text-align: center"><h1 style="font-size: 1rem">Candidatura più recente</h1></i>
								</div>
							</div>
						</div>
						<div class="slide slide2">
							<div class="card-body p-4">
								<%
									if(posizioneRecente.getStato().equals("aperta")){
								%>
								<span class="badge rounded-pill bg-success float-md-end mb-3 mb-sm-0"><%=posizioneRecente.getStato()%></span>
								<%
									}else{
								%>
								<span class="badge rounded-pill bg-danger float-md-end mb-3 mb-sm-0"><%=posizioneRecente.getStato()%></span>
								<%
									};
								%>
								<h5><%=posizioneRecente.getRuolo()%></h5>
								<div class="mt-3">
									<span class="text-muted d-block"><i class="bi bi-calendar-check-fill m-1"></i><%=candidaturaRecente.getData_candidatura()%></span>
									<span class="text-muted d-block"><i class="bi bi-geo-alt-fill m-1"></i><%=posizioneRecente.getCitta().getNome()%></span>
								</div>
							</div>
						</div>
					</div>

					<div class="card col-lg-4 d-flex align-items-stretch" style=" background-color: #d4d4d4; border: none">
						<div class="slide slide1">
							<div class="content">
								<div class="icon">
									<i class="bi bi-calendar"
									   style="font-size: 10rem;text-align: center"><h1 style="font-size: 1rem">Annunci Recenti</h1></i>
								</div>
							</div>
						</div>
						<div class="slide slide2">

						</div>
					</div>


				</div>
			</div>
		</div>
	</main>





</body>
</html>



