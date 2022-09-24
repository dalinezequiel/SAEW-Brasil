<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page
    import="java.util.ArrayList"
    import="com.sae.model.*, com.sae.dao.IntervencaoDAO, com.sae.controller.*"%>

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
    <form action="" method="post">
    <div class="componente">
        <div class="butao-cont">
           <div class="avaliargem">
              <div class="btn-enfermagem">
                  <button>
                     <i class="fa-sharp fa-solid fa-print"></i>
                     Gerar Relatório
                  </button>
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
               <a href="intervencoes.jsp" class="butao">
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
                   <h3>Lista de intervenções</h3>
                </div>
                <div class="pesquisa">
                   <div class="filter-icon">
                       <i class="fa-solid fa-filter"></i>
                   </div>
                   <div>
                       <input type="text" placeholder="Queixa Principal" name="queixa_psq">
                   </div>
                   <div>
                       <input type="text" placeholder="Código interv" name="codigo_psq">
                   </div>
                   <div>
                       <input type="text" placeholder="Paciente" name="paciente_psq">
                   </div>
                </div>
               </div>
               <div class="avaliacao-cont-sub">
                <table>
                   <thead>
                     <tr>
                         <td>Código</td>
                         <td>Intervenção</td>
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
                        IntervencaoModel interModel = new IntervencaoModel();
                        //DiagnosticoModel diagModel = new DiagnosticoModel();
                        ArrayList<IntervencaoModel> listInter = null;
                        interModel.setTotal(IntervencaoDAO.getTotalIntervencaoWithDistinct().get(0).getTotal());
                        if( request.getParameter("codigo_psq") == null && request.getParameter("paciente_psq") == null && request.getParameter("queixa_psq") == null){
                        	listInter = IntervencaoDAO.listaIntervencao();

                        }else if(request.getParameter("codigo_psq").equals("") && request.getParameter("paciente_psq").equals("") && request.getParameter("queixa_psq").equals("") ){
                        	listInter = IntervencaoDAO.listaIntervencao();
                        	
                        }else if(request.getParameter("codigo_psq").equals("") && (!request.getParameter("paciente_psq").equals("") || !request.getParameter("queixa_psq").equals(""))){
                        	listInter = IntervencaoDAO.listaIntervencaoByMultipleParameters(
                        			Integer.parseInt("0"), 
                        			request.getParameter("paciente_psq").trim(), 
                        			request.getParameter("queixa_psq").trim());
                        	        interModel.setTotal(IntervencaoDAO.getTotalIntervencaoWithDistinct(0, request.getParameter("paciente_psq"), request.getParameter("queixa_psq")));
                        }else{
                        	        
                        	if(VerificacaoJSP.verificarSeRealmenteEInt(request.getParameter("codigo_psq"))){
                        		listInter = IntervencaoDAO.listaIntervencaoByMultipleParameters(
                    			        Integer.parseInt(request.getParameter("codigo_psq")), 
                    			        request.getParameter("paciente_psq").trim(), 
                    			        request.getParameter("queixa_psq").trim());
                        		interModel.setTotal(IntervencaoDAO.getTotalIntervencaoWithDistinct(listInter.get(0).getIdIntervencao(), request.getParameter("paciente_psq"), request.getParameter("queixa_psq")));
                        	
                        	}else{
                        		interModel.setTotal(0);
                        	}
                        }

                        if(listInter != null){
                        	 for(int i=0; i<listInter.size(); i++){%>
                             <tr>
                                 <td><%out.print(listInter.get(i).getIdIntervencao()); %></td>
                                 <td><%out.print(listInter.get(i).getIntervencao()); %></td>
                                 <td><%out.print(listInter.get(i).getResposta()); %></td>
                                 <td><%out.print(listInter.get(i).getIdPaciente()); %></td>
                                 <td><%out.print(listInter.get(i).getPaciente()); %></td>
                                 <td><%out.print(listInter.get(i).getDataUltimaActualizacao()); %></td>
                                 <td><%out.print(listInter.get(i).getDataRegisto()); %></td>
                                 <td><a href="intervencao_edit.jsp?idIntervencao= <%=listInter.get(i).getIdIntervencao() %> &idPaciente= <%=listInter.get(i).getIdPaciente() %>"><i class="fa-solid fa-edit"></i>
                                     </a></td>
                                 <td><a href="intervencao_exclusao.jsp?idIntervencao= <%=listInter.get(i).getIdIntervencao() %> &paciente= <%=listInter.get(i).getPaciente() %> &idPaciente= <%=listInter.get(i).getIdPaciente() %>"><i class="fa-solid fa-trash"></i>
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
                      <label><%out.print(IntervencaoDAO.listaIntervencao().size()); %></label>
                   </div>
                </div>
                <div class="total-item">
                   <div class="afasta">
                      <label>Intervenção:</label>
                   </div>
                   <div>
                      <label><%out.print(interModel.getTotal()); %> de <%if(listInter != null){out.print(listInter.size());}else{out.print(0);} %></label>
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