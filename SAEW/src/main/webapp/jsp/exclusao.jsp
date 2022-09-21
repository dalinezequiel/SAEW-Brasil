<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page
    import="java.util.ArrayList"
    import="com.sae.model.*, com.sae.dao.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/exclusao.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<div class="parent">
<nav>
   <div class="nav-menu">
      <div class="nav-logo">
         <h1>SAE</h1>
      </div>
      <div class="nav-item">
          <ul>
               <li><a href="">Enfermagem</a>
                   <i class="fa-solid fa-caret-down"></i>
               </li>
          </ul>
      </div>
   </div>
</nav>
<div class="corp">
<form action="../DiagnosticoExclusaoServlet" method="POST">
    <div class="componente">
        <div class="butao-cont">
           <div class="avaliargem">
              <div class="btn-enfermagem">
                   <button name="exclusao" value="<%= request.getParameter("idDiagnostico") +"%"+ request.getParameter("idPaciente")%>">
                     <i class="fa-solid fa-trash-can"></i>
                     Confirmar
                  </button>
                  
              </div>
           </div>
      <div>
           
           <div class="btn-sair">
               <a href="diagnostico_consult.jsp" class="butao">
                  <div class="butao-ico">
                     <i class="fa-sharp fa-solid fa-right-to-bracket"></i>
                  </div>
                 <div class="text">
                     <p>Voltar</p>
                 </div>
               </a>
           </div>
       </div>
       </div>
       <div class="avaliacao-cont">
               <div class="componente-item">
                   <%
                         ArrayList<DiagnosticoModel> listDiag = DiagnosticoDAO.listaDiagnosticoById(
                         Integer.parseInt(request.getParameter("idDiagnostico").trim()));
                   %>
                   <div class="questao">
                       <div>
                           <i class="fa-sharp fa-solid fa-question"></i>
                       </div>
                       <div class="avaliacao-titulo">
                            <h4 style="font-weight:350;">Tem a certeza que deseja <span style="color:red; font-weight:bold;">excluír</span>
                             o diagnóstico número [<span style="color:#5d6d7e; font-weight:bold;"><%out.print(request.getParameter("idDiagnostico").trim()); %></span>]
                            <br>do paciente <span style="color:#5d6d7e; font-weight:bold;"><%out.print(request.getParameter("paciente")); %></span>?</h4>
                       </div>
                  </div>
                  <div class="dir">
                   <table>
                   <thead>
                     <tr>
                         <td>Código</td>
                         <td>Diagnóstico</td>
                         <td>Resposta</td>
                         <td>Pacient.</td>
                         <td>Paciente</td>
                         <td>Última Actual.</td>
                         <td>Data Registo</td>
                     </tr>
                   </thead>
                   <tbody>
                     <%
                        //ArrayList<DiagnosticoModel> listDiag = DiagnosticoDAO.listaDiagnostico();
                        if(listDiag != null){
                        	 for(int i=0; i<listDiag.size(); i++){%>
                             <tr>
                                 <td><%out.print(listDiag.get(i).getIdDiagnostico()); %></td>
                                 <td><%out.print(listDiag.get(i).getDiagnostico()); %></td>
                                 <td><%out.print(listDiag.get(i).getResposta()); %></td>
                                 <td><%out.print(listDiag.get(i).getIdPaciente()); %></td>
                                 <td><%out.print(listDiag.get(i).getPaciente()); %></td>
                                 <td><%out.print(listDiag.get(i).getDataUltimaActualizacao()); %></td>
                                 <td><%out.print(listDiag.get(i).getDataRegisto()); %></td>
                             </tr>
                            <%}
                        }
                     %>
                   </tbody>
                </table>
                </div>

               </div>
        </div>
        
    </div>
    </form>
</div>
</div>
</body>
</html>