<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/menu.css">
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
               <li><a href="">Utilitários</a>
                   <i class="fa-solid fa-caret-down"></i>
               </li>
               <li><a href="">Sistema</a>
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
              <div class="btn-avaliacao">
                  <a href="" class="butao">
                      <div class="butao-ico">
                         <i class="fa-solid fa-file-circle-plus"></i>
                      </div>
                      <div class="text">
                         <p>Nova Avaliação</p>
                      </div>
                  </a>
              </div>
              <div class="btn-enfermagem">
                  <a href="diagnostico.jsp" class="butao">
                      <div class="butao-ico">
                          <i class="fa-sharp fa-solid fa-microscope"></i>
                      </div>
                      <div class="text">
                          <p>Diagnósticos</p>
                      </div>
                  </a>
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-user-doctor"></i>
                      </div>
                      <div class="text">
                          <p>Intervenções</p>
                      </div>
                  </a>
                  <a href="intervecoeslia.jsp" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-notes-medical"></i>
                      </div>
                      <div class="text">
                          <p>Avaliação Inter.</p>
                      </div>
                  </a>
              </div>
           </div>
      <div>
           <div class="btn-relatorio">
              <a href="" class="butao">
                 <div class="butao-ico">
                     <i class="fa-solid fa-file-lines"></i>
                 </div>
                 <div class="text">
                   <p>Relatório</p>
                 </div>
              </a>
           </div>
           <div class="btn-sair">
               <a href="../index.jsp" class="butao">
                  <div class="butao-ico">
                     <i class="fa-sharp fa-solid fa-right-to-bracket"></i>
                  </div>
                 <div class="text">
                     <p>Logout</p>
                 </div>
               </a>
           </div>
       </div>
       </div>
        <div class="avaliacao-cont">
            <div class="avaliacao-head">
               <div class="filtro">
                <div class="avaliacao-titulo">
                   <h3>Avaliações</h3>
                </div>
                <div class="pesquisa">
                   <div class="filter-icon">
                       <i class="fa-solid fa-filter"></i>
                   </div>
                   <div>
                       <input type="text" placeholder="Código">
                   </div>
                   <div class="paciente">
                       <input type="text" placeholder="Paciente">
                   </div>
                </div>
               </div>
               <div class="avaliacao-cont-sub">
                <table>
                   <thead>
                     <tr>
                         <td>ID</td>
                         <td>Paciente</td>
                         <td>Genero</td>
                         <td>Idade</td>
                         <td>Genero</td>
                         <td>Idade</td>
                         <td>Genero</td>
                         <td>Data Registo</td>
                         <td style="padding:10px 6px;">Opção</td>
                         <td style="padding:10px 6px;">Opção</td>
                     </tr>
                   </thead>
                   <tbody>
                     <tr>
                         <td>10104</td>
                         <td>Maria Paulo McCart</td>
                         <td>Femenino</td>
                         <td>24</td>
                         <td>Masculino</td>
                         <td>24</td>
                         <td>Masculino</td>
                         <td>15-04-2022 12:23:45 PM</td>
                         <td><a href=""><i style="color:#efd429; font-size:16px;" 
                         class="fa-solid fa-edit"></i></a></td>
                         <td><a href=""><i style="color:#e44848; font-size:16px;" 
                         class="fa-solid fa-trash"></i></a></td>
                     </tr>
                     <tr>
                         <td>10105</td>
                         <td>Antonio Francisco Matsinhe</td>
                         <td>Masculino</td>
                         <td>19</td>
                         <td>Masculino</td>
                         <td>19</td>
                         <td>Masculino</td>
                         <td>03-05-2022 10:05:11 AM</td>
                         <td><a href=""><i style="color:#efd429; font-size:16px;" 
                         class="fa-solid fa-edit"></i></a></td>
                         <td><a href=""><i style="color:#e44848; font-size:16px;" 
                         class="fa-solid fa-trash"></i></a></td>
                     </tr>
                     <tr>
                         <td>10104</td>
                         <td>Maria Paulo McCart</td>
                         <td>Femenino</td>
                         <td>24</td>
                         <td>Femenino</td>
                         <td>24</td>
                         <td>Femenino</td>
                         <td>15-04-2022 12:23:45 PM</td>
                         <td><a href=""><i style="color:#efd429; font-size:16px;" 
                         class="fa-solid fa-edit"></i></a></td>
                         <td><a href=""><i style="color:#e44848; font-size:16px;" 
                         class="fa-solid fa-trash"></i></a></td>
                     </tr>
                     <tr>
                         <td>10105</td>
                         <td>Antonio Francisco Matsinhe</td>
                         <td>Masculino</td>
                         <td>19</td>
                         <td>Masculino</td>
                         <td>19</td>
                         <td>Masculino</td>
                         <td>03-05-2022 10:05:11 AM</td>
                         <td><a href=""><i style="color:#efd429; font-size:16px;" 
                         class="fa-solid fa-edit"></i></a></td>
                         <td><a href=""><i style="color:#e44848; font-size:16px;" 
                         class="fa-solid fa-trash"></i></a></td>
                     </tr>
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
                      <label>10</label>
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
</body>
</html>