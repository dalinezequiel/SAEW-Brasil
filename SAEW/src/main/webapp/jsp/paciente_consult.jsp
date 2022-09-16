<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page
    import="java.util.ArrayList"
    import="com.sae.model.PacienteModel, com.sae.dao.PacienteDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/paciente_consult.css">
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
                   <h3>Lista de pacientes</h3>
                </div>
                <div class="pesquisa">
                   <div class="filter-icon">
                       <i class="fa-solid fa-filter"></i>
                   </div>
                   <div>
                       <input type="text" placeholder="Queixa Principal">
                   </div>
                   <div>
                       <input type="text" placeholder="Código">
                   </div>
                   <div>
                       <input type="text" placeholder="Paciente">
                   </div>
                </div>
               </div>
               <div class="avaliacao-cont-sub">
                <table>
                   <thead>
                     <tr>
                         <td>Código</td>
                         <td>Paciente</td>
                         <td>Data Nasimento</td>
                         <td>Leito</td>
                         <td>Queixa Principal</td>
                         <td>Data Internaç.</td>
                         <td>Data Regist.</td>
                         <td>Opção</td>
                         <td>Opção</td>
                     </tr>
                   </thead>
                   <tbody>
                     <%
                        ArrayList<PacienteModel> listPac = PacienteDAO.listaPaciente();
                        for(int i=0; i<listPac.size(); i++){%>
                        <tr>
                            <td><%out.print(listPac.get(i).getIdPaciente()); %></td>
                            <td><%out.print(listPac.get(i).getPaciente()); %></td>
                            <td><%out.print(listPac.get(i).getDataNascimento()); %></td>
                            <td><%out.print(listPac.get(i).getLeito()); %></td>
                            <td><%out.print(listPac.get(i).getQueixaPrincipal()); %></td>
                            <td><%out.print(listPac.get(i).getDataInternacao()); %></td>
                            <td><%out.print(listPac.get(i).getDataRegisto()); %></td>
                            <td><a href="#"><i class="fa-solid fa-edit"></i>
                                </a></td>
                            <td><a href=""><i class="fa-solid fa-trash"></i>
                                </a></td>
                        </tr>
                       <%}
                     %>
                   </tbody>
                </table>
            </div>
            </div>
            <div class="avaliacao-footer">
                <div class="total-item">
                   <div class="afasta">
                      <label>Total:</label>
                   </div>
                   <div>
                      <label><%out.print(listPac.size()); %></label>
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
</div>
</div>
<script type="text/javascript" src="../script/menu.js"></script>
</body>
</html>