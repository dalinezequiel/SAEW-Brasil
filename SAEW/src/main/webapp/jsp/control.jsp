<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/control.css">
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
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-sharp fa-solid fa-microscope"></i>
                      </div>
                      <div class="text">
                          <p>Salvar Avaliação</p>
                      </div>
                  </a>
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-user-doctor"></i>
                      </div>
                      <div class="text">
                          <p>Buscar Paciente</p>
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
                   <p>Resetar Avaliação</p>
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
                <div class="tabe">
                     <div>
                         <div class="btn-tabe">
                             <button style="color:#5d6d7e; font-weight:bold;">Avaliação Gastrointestinal</button>
                             <button>Avaliação Psicológica</button>
                             <button>Avaliação Respiratória</button>
                             <button>Avaliação Cardiovascular</button>
                             <button>Cutâneo-Mucosa</button>
                             <button>Avaliação Neurológica</button>
                         </div> 
                     </div>
                </div>
                
               </div>
               <div class="componente-item">
                   <div class="dir">
                      <form>
                         <!-- PARTONE -->
                          <div class="parteone">
                              <div class="dir-cont">
         
                              <div class="check-item">
                                  <div>
                                      <label>RHA</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Positivo(+)</option>
                                          <option>Negativo(-)</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="radio-ite">
                                  <div class="btn-radio-01">
                                     <div class="il">
                                         <input id="plano" type="radio" name="radio-01">
                                     </div>
                                     <div>
                                         <label for="plano" >Plano</label>
                                     </div>
                                  </div>
                                  <div class="btn-radio-02">
                                     <div class="il">
                                         <input id="normotenso" type="radio" name="radio-01">
                                     </div>
                                     <div>
                                         <label for="normotenso" >Normotenso</label>
                                     </div>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <input id="checkbox-1" type="checkbox"> <label for="checkbox-1">Escavado</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-2" type="checkbox"> <label for="checkbox-2">Globoso</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-3" type="checkbox"> <label for="checkbox-3">Flácido</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-4" type="checkbox"> <label for="checkbox-4">Ascítico</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-5" type="checkbox"> <label for="checkbox-5">Timpânico</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-6" type="checkbox"> <label for="checkbox-6">Doloroso a palpação</label>
                              </div>
                          </div>
                          
                          <div class="dir-cont-02">
                              <div class="check-item">
                                  <div>
                                      <label>SNG/ SNE</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Positivo(+)</option>
                                          <option>Negativo(-)</option>
                                      </select>
                                  </div>
                              </div>
                              <div class="check-item">
                                  <div>
                                      <label>Drenagem</label>
                                  </div>
                                  <div class="drenagem">
                                      <input type="text">
                                  </div>
                              </div>
                              
                          </div>
                          </div>
                          
                          <!-- PARTETWO -->
                          <div class="partetwo">
                              <div class="dir-cont">
         
                              <div class="check-item">
                                  <div>
                                      <label>Perda de Apetite</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Sim</option>
                                          <option>Não</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>Não Deglute</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Sim</option>
                                          <option>Não</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="radio-ite">
                                  <div class="btn-radio-01">
                                     <div class="il">
                                         <input id="suspensa" type="radio" name="radio-02">
                                     </div>
                                     <div>
                                         <label for="suspensa" >Suspensa</label>
                                     </div>
                                  </div>
                                  <div class="btn-radio-02">
                                     <div class="il">
                                         <input id="zero" type="radio" name="radio-02">
                                     </div>
                                     <div>
                                         <label for="zero" >Zero</label>
                                     </div>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <input id="checkbox-7" type="checkbox"> <label for="checkbox-7">Oral</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-8" type="checkbox"> <label for="checkbox-8">Por Sonda</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-9" type="checkbox"> <label for="checkbox-9">Vômitos</label>
                              </div>
                          </div>
                          
                          <div class="dir-cont-02">
                              <div class="check-item">
                                  <div>
                                      <label>Volume</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Diminuída</option>
                                          <option>Normal</option>
                                          <option>Aumentada</option>
                                      </select>
                                  </div>
                              </div>
                              <div class="radio-ite">
                                  <div class="btn-radio-01">
                                     <div class="il">
                                         <input id="clara" type="radio" name="radio-03">
                                     </div>
                                     <div>
                                         <label for="clara" >Clara</label>
                                     </div>
                                  </div>
                                  <div class="btn-radio-02">
                                     <div class="il">
                                         <input id="limpida" type="radio" name="radio-03">
                                     </div>
                                     <div>
                                         <label for="limpida" >Límpida</label>
                                     </div>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <input id="checkbox-10" type="checkbox"> <label for="checkbox-10">Concetrada</label>
                              </div>
                              
                              <div class="radio-ite">
                                  <div class="btn-radio-01">
                                     <div class="il">
                                         <input id="hematúria" type="radio" name="radio-04">
                                     </div>
                                     <div>
                                         <label for="hematúria" >Hematúria</label>
                                     </div>
                                  </div>
                                  <div class="btn-radio-02">
                                     <div class="il">
                                         <input id="coluria" type="radio" name="radio-04">
                                     </div>
                                     <div>
                                         <label for="coluria" >Colúria</label>
                                     </div>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <input id="checkbox-11" type="checkbox"> <label for="checkbox-11">Com Sedimentos</label>
                              </div>
                          </div>
                          </div>
                          
                          <!-- PARTETHREE -->
                          <div class="partethree">
                              <div class="dir-cont">
         
                              <div class="check-item">
                                  <div>
                                      <label>SVD Dia</label>
                                  </div>
                                  <div class="svd-dia">
                                      <input type="date">
                                  </div>
                              </div>
                              
                              <div class="radio-ite">
                                  <div class="btn-radio-01">
                                     <div class="il">
                                         <input id="ardencia" type="radio" name="radio-05">
                                     </div>
                                     <div>
                                         <label for="ardencia" >Ardência</label>
                                     </div>
                                  </div>
                                  <div class="btn-radio-02">
                                     <div class="il">
                                         <input id="disuria" type="radio" name="radio-05">
                                     </div>
                                     <div>
                                         <label for="disuria" >Disúria</label>
                                     </div>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <input id="checkbox-12" type="checkbox"> <label for="checkbox-12">Espontânea</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-13" type="checkbox"> <label for="checkbox-13">Coletor Externo</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-14" type="checkbox"> <label for="checkbox-14">Incontinência</label>
                              </div>
                          </div>
                          
                          <div class="dir-cont-02">
                              <div class="check-item">
                                  <div>
                                      <label>Data Última Evacuação</label>
                                  </div>
                                  <div class="data">
                                      <input type="date">
                                  </div>
                              </div>
                              <div class="radio-ite">
                                  <div class="btn-radio-01">
                                     <div class="il">
                                         <input id="colostomia" type="radio" name="radio-06">
                                     </div>
                                     <div>
                                         <label for="colostomia" >Colostomia</label>
                                     </div>
                                  </div>
                                  <div class="btn-radio-02">
                                     <div class="il">
                                         <input id="ileostomi" type="radio" name="radio-06">
                                     </div>
                                     <div>
                                         <label for="ileostomi" >Ileostomi</label>
                                     </div>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <input id="checkbox-15" type="checkbox"> <label for="checkbox-15">Incontinência</label>
                              </div>
                              
                              <div class="check-item">
                                  <input id="checkbox-16" type="checkbox"> <label for="checkbox-16">Constipação</label>
                              </div>
                              
                              <div class="check-item">
                                  <input id="checkbox-17" type="checkbox"> <label for="checkbox-17">Diarreia</label>
                              </div>
                              
                              <div class="check-item">
                                  <input id="checkbox-18" type="checkbox"> <label for="checkbox-18">Melena</label>
                              </div>
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
                          <input type="text">
                       </div>
                    </div>
                    <div class="input-leito">
                       <div>
                          <label>Leito</label>
                       </div>
                       <div class="text">
                          <input type="text">
                       </div>
                    </div>
                </div>
                <div class="input-paciente">
                     <div>
                          <label>Paciente</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text">
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