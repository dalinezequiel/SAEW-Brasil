<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/historico.css">
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
               <!-- <li><a href="">Utilitários</a>
                   <i class="fa-solid fa-caret-down"></i>
               </li> -->
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
              
              <div class="btn-enfermagem">
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-trash-can"></i>
                      </div>
                      <div class="text">
                          <p>[1] Remover</p>
                      </div>
                  </a>
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-trash-can"></i>
                      </div>
                      <div class="text">
                          <p>Limpar Histórico</p>
                      </div>
                  </a>
              </div>
           </div>
      <div>
           <div class="btn-sair">
               <a href="menu.jsp" class="butao">
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
                      <h3>Histórico geral</h3>
                  </div>
                  <div class="pesquisa">
                       <div class="filter-icon">
                            <i class="fa-solid fa-filter"></i>
                       </div>
                       <div>
                            <input type="text" placeholder="Código">
                       </div>
                       <div class="pacient">
                            <input type="text" placeholder="Paciente">
                       </div>
                  </div>
                  
               </div>
               <div class="avaliacao-cont-sub">
                <table>
                   <thead>
                     <tr>
                         <td>Acesso</td>
                         <td>Usuário</td>
                         <td>Perfil</td>
                         <td>Hora</td>
                         <td>Data Acesso</td>
                     </tr>
                   </thead>
                 </table>
               </div>
               <div class="componente-item">
                   <div class="dir">
                      <form>
                          
                      </form>
                   </div>
                   <div class="esq">
                       <form>
                          
                      </form>
                   </div>
               </div>
            </div>
        </div>
       
    </div>
</div>
</div>
<script type="text/javascript" src="../script/diagnostico.js"></script>
</body>
</html>