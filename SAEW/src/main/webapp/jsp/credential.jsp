<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/credential.css">
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
              <div class="btn-avaliacao">
                  <a href="#" class="butao">
                      <div class="butao-ico">
                         <i class="fa-solid fa-user-plus"></i>
                      </div>
                      <div class="text">
                         <p>Criar Credêncial</p>
                      </div>
                  </a>
              </div>
              <div class="btn-enfermagem">
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-user-shield"></i>
                      </div>
                      <div class="text">
                          <p>Alterar Credêncial</p>
                      </div>
                  </a>
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-user-xmark"></i>
                      </div>
                      <div class="text">
                          <p>Excluir Credêncial</p>
                      </div>
                  </a>
              </div>
           </div>
      <div>
           <!-- <div class="btn-relatorio">
              <a href="" class="butao">
                 <div class="butao-ico">
                     <i class="fa-solid fa-trash-can"></i>
                 </div>
                 <div class="text">
                   <p>Resetar Diagnóst.</p>
                 </div>
              </a>
           </div> -->
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
                      <h3>Atribuição de credênciais</h3>
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
               <div class="componente-item">
                   <div class="dir">
                      <form>
                          <div class="check-item">
                              <div>
                                  <label>Perfil</label>
                              </div>
                              <div class="comboBox">
                                  <select>
                                      <option>Téc. Enfermagem</option>
                                      <option>Enfermeiro</option>
                                  </select>
                              </div>
                          </div>
                          
                          <div class="check-item">
                              <div>
                                  <label>Email</label>
                              </div>
                              <div class="drenagem">
                                  <input type="email">
                              </div>
                          </div>
                          <div class="check-item">
                              <div>
                                  <label>Usuário</label>
                              </div>
                              <div class="drenagem">
                                  <input type="text">
                              </div>
                          </div>
                          <div class="check-item">
                              <div>
                                  <label>Senha</label>
                              </div>
                              <div class="drenagem">
                                  <input type="password">
                              </div>
                          </div>
                          <div class="check-item">
                              <div>
                                  <label>Confirma Senha</label>
                              </div>
                              <div class="drenagem">
                                  <input type="password">
                              </div>
                          </div>
                          
                      </form>
                   </div>
                   <div class="esq">
                       <form>
                          <div class="check-item">
                             <input id="checkbox-16" type="checkbox"> <label for="checkbox-16">Realizar avaliação ao paciente</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-17" type="checkbox"> <label for="checkbox-17">Acesso a diagnósticos de enfermagem</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-18" type="checkbox"> <label for="checkbox-18">Acesso a intervenções de enfermagem</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-19" type="checkbox"> <label for="checkbox-19">Acesso a avaliação das intervenções</label>
                          </div>
                          
                      </form>
                   </div>
               </div>
            </div>
        </div>
        <div class="paciente">
            <div>
                <div class="codito">
                    <div class="input-codigo">
                       <div>
                          <label>Código</label>
                       </div>
                       <div class="text">
                          <input type="text">
                       </div>
                    </div>
                    <div class="input-leito">
                       <div>
                          <label>Registo n°</label>
                       </div>
                       <div class="text">
                          <input type="text">
                       </div>
                    </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Usuário</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text">
                     </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Perfil</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text">
                     </div>
                </div>
                <div class="interna">
                    <div class="input-interna">
                       <div>
                          <label>Data de Adimissão</label>
                       </div>
                       <div class="text-internacao">
                          <input type="text">
                       </div>
                    </div>
                    <div class="input-leito-interna">
                       <div>
                          <label>Tempo</label>
                       </div>
                       <div class="text-interna">
                          <input type="text">
                       </div>
                    </div>
                </div>
                
                
            </div>
        </div>
    </div>
</div>
</div>
<script type="text/javascript" src="../script/credential.js"></script> 
</body>
</html>