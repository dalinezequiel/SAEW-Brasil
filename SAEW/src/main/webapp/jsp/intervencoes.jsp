<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/intervencoes.css">
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
                         <p>Nova Intervenção</p>
                      </div>
                  </a>
              </div>
              <div class="btn-enfermagem">
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-sharp fa-solid fa-microscope"></i>
                      </div>
                      <div class="text">
                          <p>Buscar Paciente</p>
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
              </div>
           </div>
      <div>
           <div class="btn-relatorio">
              <a href="" class="butao">
                 <div class="butao-ico">
                     <i class="fa-solid fa-file-lines"></i>
                 </div>
                 <div class="text">
                   <p>Resetar</p>
                 </div>
              </a>
           </div>
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
                   <h3>Intervenções de Enfermagem</h3>
                </div>
                <!--<div class="pesquisa">
                   <input type="submit">
                </div>-->
               </div>
               <div class="componente-item">
                   <div class="dir">
                      <form>
                          <div class="check-item">
                              <div>
                                  <label>Realizar a troca de acesso<br> venoso periférico de 72 em 72horas</label>
                              </div>
                              <div class="comboBox">
                                  <select>
                                      <option>Hoje Sim</option>
                                      <option>Hoje Não</option>
                                  </select>
                              </div>
                          </div>
                          <div class="check-item">
                             <div>
                                 <label></label>
                             </div>
                             <div class="input_label">
                                 <div class="input-vezes">
                                    <label>N° Vezes</label>
                                    <input type="text" placeholder="Ex: 04">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <input type="date">
                                 </div>
                             </div>
                             <div class="input_label">
                                 <div class="input-vezes">
                                    <label>Há cada</label>
                                    <input type="text" placeholder="Ex: 04horas">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <div>
                                        <input type="date">
                                    </div>
                                 </div>
                             </div>
                             <div class="input_label">
                                 <div class="input-vezes">
                                    <label>Há cada</label>
                                    <input type="text" placeholder="Ex: 04horas">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <div>
                                        <input type="date">
                                    </div>
                                 </div>
                             </div>
                             <div class="input_label">
                                 <div class="input-vezes">
                                    <label>Há cada</label>
                                    <input type="text" placeholder="Ex: 04horas">
                                 </div>
                                 <div class="input-dia">
                                    <label>Data</label>
                                    <div>
                                        <input type="date">
                                    </div>
                                 </div>
                             </div>
                          </div>
                          
                      </form>
                   </div>
                   <div class="esq">
                       <form>
                          <div class="check-item">
                             <input id="checkbox-1" type="checkbox"> <label for="checkbox-1">Observação no leito de 4 em 4 horas 02 06 10 14 18 22</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-2" type="checkbox"> <label for="checkbox-2">Verificar sinais vitais de 08 em 08 horas 14 22 06</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-3" type="checkbox"> <label for="checkbox-3">Realizar mudança de decúbito de 2/2horas 08 10 12 14 16 18 20 22 24 02 04 06</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-4" type="checkbox"> <label for="checkbox-4">Avaliar e anotar eliminações vesícais e intestínais</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-5" type="checkbox"> <label for="checkbox-5">Manter a cabeceira elevada a 45graus</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-6" type="checkbox"> <label for="checkbox-6">Avaliar sinais de febrite</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-7" type="checkbox"> <label for="checkbox-7">Promover imobilização dos membros fraturados</label>
                          </div>
                          <div class="check-item">
                             <input id="checkbox-8" type="checkbox"> <label for="checkbox-8">Oferecer suporte emocional</label>
                          </div>
                          
                          <div class="curativo-item">
                             <div>
                                 <label>Realizar curativo</label>
                             </div>
                             <div class="input-curativo">
                                 <input type="text">
                             </div>
                          </div>
                          
                          <div class="observacao">
                             <div>
                                <label>Observações</label>
                             </div>
                             <div class="t-area">
                                 <textarea rows="" cols=""></textarea>
                             </div>
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
                          <input type="text" disabled>
                       </div>
                    </div>
                    <div class="input-leito">
                       <div>
                          <label>Leito</label>
                       </div>
                       <div class="text">
                          <input type="text" disabled>
                       </div>
                    </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Paciente</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text" disabled>
                     </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Queixa Principal</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text">
                     </div>
                </div>
                <div class="interna">
                    <div class="input-interna">
                       <div>
                          <label>Data de Internação</label>
                       </div>
                       <div class="text-internacao">
                          <input type="text">
                       </div>
                    </div>
                    <div class="input-leito-interna">
                       <div>
                          <label>Leito</label>
                       </div>
                       <div class="text-interna">
                          <input type="text">
                       </div>
                    </div>
                </div>
                <div class="nascimento">
                    <div class="input-nasc">
                       <div>
                          <label>Data de Nascimento</label>
                       </div>
                       <div class="text-nascimento">
                          <input type="text">
                       </div>
                    </div>
                    <div class="input-leito-nasc">
                       <div>
                          <label>Idade</label>
                       </div>
                       <div class="text-nasc">
                          <input type="text">
                       </div>
                    </div>
                </div>
                <div class="periodo">
                    <div class="check-item">
                              <div>
                                  <label>Periódo</label>
                              </div>
                              <div class="comboBox">
                                  <select>
                                      <option>Matutino</option>
                                      <option>Noturno</option>
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