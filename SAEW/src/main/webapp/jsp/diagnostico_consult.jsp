<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page
    import="java.util.ArrayList"
    import="com.sae.model.DiagnosticoModel, com.sae.dao.DiagnosticoDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/diagnostico_consult.css">
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
               <li class="enfermagem">
                   <a>Enfermagem</a>
                   <i class="fa-solid fa-caret-down"></i>
               </li>
          </ul>
      </div>
   </div>
</nav>
<div class="corp">
    <form action="diagnostico_edit.jsp" method="post">
    <div class="componente">
        <div class="butao-cont">
           <div class="avaliargem">
              <div class="btn-enfermagem">
                  <a href="#" class="butao">
                      <div class="butao-ico">
                          <i class="fa-sharp fa-solid fa-print"></i>
                      </div>
                      <div class="text">
                          <p>Gerar Relatório</p>
                      </div>
                  </a>
                  <a href="#" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-trash-can"></i>
                      </div>
                      <div class="text">
                          <p>Limpar Lista</p>
                      </div>
                  </a>
              </div>
           </div>
      <div>
           <div class="btn-sair">
               <a href="diagnostico.jsp" class="butao">
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
           
            <div class="avaliacao-head">
               <div class="filtro">
                <div class="avaliacao-titulo">
                   <h3>Lista de diagnósticos</h3>
                </div>
                <div class="pesquisa">
                   <div class="filter-icon">
                       <i class="fa-solid fa-filter"></i>
                   </div>
                   <div>
                       <input type="text" placeholder="Queixa Principal" name="queixa_psq">
                   </div>
                   <div>
                       <input type="text" placeholder="Código" name="codigo_psq">
                   </div>
                   <div>
                       <input type="text" placeholder="Paciente" name="codigo_psq">
                   </div>
                </div>
               </div>
               <div class="avaliacao-cont-sub">
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
                         <td>Opção</td>
                         <td>Opção</td>
                     </tr>
                   </thead>
                   <tbody>
                     <%
                        ArrayList<DiagnosticoModel> listDiag = DiagnosticoDAO.listaDiagnostico();
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
                                 <td><a href="diagnostico_edit.jsp?idDiagnostico= <%=listDiag.get(i).getIdDiagnostico() %> &idPaciente= <%=listDiag.get(i).getIdPaciente() %>"><i class="fa-solid fa-edit"></i>
                                     </a></td>
                                 <td><a href="exclusao.jsp?idDiagnostico= <%=listDiag.get(i).getIdDiagnostico() %> &paciente= <%=listDiag.get(i).getPaciente() %> &idPaciente= <%=listDiag.get(i).getIdPaciente() %>"><i class="fa-solid fa-trash"></i>
                                     </a></td>
                             </tr>
                            <%}
                        }
                     %>
                   </tbody>
                </table>
            </div>
            </div>
            <div class="avaliacao-footer">
                <div class="estatistica-footer">
                <div class="total-item">
                   <div class="afasta">
                      <label>Total:</label>
                   </div>
                   <div>
                      <label><%out.print(listDiag.size()); %></label>
                   </div>
                </div>
                <div class="total-item">
                   <div class="afasta">
                      <label>Diagnóstico:</label>
                   </div>
                   <div>
                      <label><%out.print(DiagnosticoDAO.getTotalDiagnosticoWithDistinct().get(0).getTotal()); %></label>
                   </div>
                </div>
                </div>
                <div class="ordem-mostra">
                   <div class="ordem-item">
                       <div class="afasta">
                            <label>Ordenar por:</label>
                       </div>
                       <div>
                          <select>
                              <option>Padrão</option>
                              <option>Alfabética crescente</option>
                              <option>Alfabética decrescente</option>
                          </select>
                       </div>
                   </div>
                   <div class="mostra-item">
                       <div class="afasta">
                            <label>Mostrar:</label>
                       </div>
                       <div>
                          <select>
                              <option>Todos</option>
                              <option>Hoje</option>
                              <option>Ontem</option>
                              <option>Última semana</option>
                              <option>Último mês</option>
                              <option>Ültimo ano</option>
                          </select>
                       </div>
                   </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</div>
</div>
<script type="text/javascript" src="../script/menu.js"></script>
</body>
</html>