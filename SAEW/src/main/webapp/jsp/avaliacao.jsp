<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/avaliacao.css">
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
               <li><a>Enfermagem</a>
                   <i class="fa-solid fa-caret-down"></i>
               </li>
               <!-- <li><a href="">Utilitários</a>
                   <i class="fa-solid fa-caret-down"></i>
               </li> -->
               <li><a>Sistema</a>
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
                  <a class="butao">
                      <div class="butao-ico">
                         <i class="fa-solid fa-file-circle-plus"></i>
                      </div>
                      <div class="text">
                         <p>Nova Avaliaç.</p>
                      </div>
                  </a>
              </div>
              <div class="btn-enfermagem">
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-floppy-disk"></i>
                      </div>
                      <div class="text">
                          <p>Salvar Avaliaç.</p>
                      </div>
                  </a>
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-user-doctor"></i>
                      </div>
                      <div class="text">
                          <p>Buscar Pacient.</p>
                      </div>
                  </a>
                  <a href="" class="butao">
                      <div class="butao-ico">
                          <i class="fa-solid fa-list"></i>
                      </div>
                      <div class="text">
                          <p>Lista Avaliaç.</p>
                      </div>
                  </a>
              </div>
           </div>
      <div>
           <div class="btn-relatorio">
              <a class="butao">
                 <div class="butao-ico">
                     <i class="fa-solid fa-trash-can"></i>
                 </div>
                 <div class="text">
                   <p>Resetar Avalia.</p>
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
                             <button class="tabcontrol">Avaliação Gastrointestinal</button> <!--  style="color:#5d6d7e; font-weight:bold; border-bottom:1.5px solid #5d6d7e;" -->
                             <button class="tabcontrol">Cutâneo-Mucosa</button>
                             <button class="tabcontrol">Avaliação Respiratória</button>
                             <button class="tabcontrol">Avaliação Cardiovascular</button>
                             <button class="tabcontrol">Avaliação Neurológica</button>
                             <button class="tabcontrol">Avaliação Psicológica</button>
                         </div> 
                     </div>
                </div>
                
               </div>
               <div class="componente-item">
                   <!-- GASTROINTESTINAL TAB -->
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
                                          <option>SNG Aberta</option>
                                          <option>SNG Fechada</option>
                                          <option>SNE Aberta</option>
                                          <option>SNE Fechada</option>
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
                                         <label for="ileostomi" >Ileostom</label>
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
                   
                   
                   
                   
                   <!-- CUTANEO TAB -->
                   <div class="dir">
                      <form>
                         <!-- PARTONE -->
                          <div class="parteone">
                              <div class="dir-cont">
         
                              <div class="check-item">
                                  <div>
                                      <label>Hidratação</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Hidratada</option>
                                          <option>Desidratada</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>Coloração da Pele</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Pálida</option>
                                          <option>Ictérica</option>
                                          <option>Colorada</option>
                                          <option>Cianótica</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>Integridade da Pele</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Integra</option>
                                          <option>Lesada</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>Anasarca</label>
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
                                      <label>Edema. Local</label>
                                  </div>
                                  <div class="drenagem">
                                      <input type="text">
                                  </div>
                              </div>
                              <div class="check-item">
                                  <div>
                                      <label>Lesão Cutânea</label>
                                  </div>
                                  <div class="drenagem">
                                      <input type="text">
                                  </div>
                              </div>
                              <div class="check-item">
                                  <div>
                                      <label>Ferida Operatória</label>
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
                                      <label>Úlcera por Pressão</label>
                                  </div>
                                  <div class="drenagem">
                                      <input type="text">
                                  </div>
                              </div>
                              
                              <div class="grau">
                                  <div class="check-item">
                                      <div>
                                          <label>Grau</label>
                                      </div>
                                      <div class="drenagem grau-input-01">
                                          <input type="text">
                                      </div>
                                  </div>
                                  <div class="check-item">
                                      <div>
                                          <label>Local</label>
                                      </div>
                                      <div class="drenagem">
                                          <input type="text">
                                      </div>
                                  </div>
                              </div>
                              <div class="grau">
                                  <div class="check-item">
                                      <div>
                                          <label>Grau</label>
                                      </div>
                                      <div class="drenagem grau-input-01">
                                          <input type="text">
                                      </div>
                                  </div>
                                  <div class="check-item">
                                      <div>
                                          <label>Local</label>
                                      </div>
                                      <div class="drenagem">
                                          <input type="text">
                                      </div>
                                  </div>
                              </div>
                              <div class="grau">
                                  <div class="check-item">
                                      <div>
                                          <label>Grau</label>
                                      </div>
                                      <div class="drenagem grau-input-01">
                                          <input type="text">
                                      </div>
                                  </div>
                                  <div class="check-item">
                                      <div>
                                          <label>Local</label>
                                      </div>
                                      <div class="drenagem">
                                          <input type="text">
                                      </div>
                                  </div>
                              </div>
                              
                          </div>
                          
                          <div class="dir-cont-02">
                              <label>Fraturas</label>
                              <div class="radio-ite">
                                  <div class="btn-radio-01">
                                     <div class="il">
                                         <input id="clara" type="radio" name="radio-03">
                                     </div>
                                     <div>
                                         <label for="clara" >Sim</label>
                                     </div>
                                  </div>
                                  <div class="btn-radio-02">
                                     <div class="il">
                                         <input id="limpida" type="radio" name="radio-03">
                                     </div>
                                     <div>
                                         <label for="limpida" >Não</label>
                                     </div>
                                  </div>
                              </div>
                              <div>
                                 <p>Imagens Aqui!</p>
                                 <img src="image-placeholder.svg" alt="preview-img">
                              </div>
                              
                          </div>
                          </div>
                          
                          <!-- PARTETHREE -->
                          <div class="partethree">
                              <div class="dir-cont">
         
                              <div class="check-item">
                                  <div>
                                      <label>Torácico</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Direito</option>
                                          <option>Esquerdo</option>
                                      </select>
                                  </div>
                              </div>
                              
                              
                              <div class="check-item">
                                  <input id="checkbox-12" type="checkbox"> <label for="checkbox-12">Medlastino</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-13" type="checkbox"> <label for="checkbox-13">Penrose</label>
                              </div>
                              
                              <div class="check-item">
                                      <div>
                                          <label>Hemovácuo</label>
                                      </div>
                                      <div class="drenagem">
                                          <input type="text">
                                      </div>
                              </div>
                              <div class="check-item">
                                      <div class="drenagem">
                                          <input type="text" placeholder="Outros..">
                                      </div>
                              </div>
                          </div>
                          
                          <div class="dir-cont-02">
                              <div class="check-item">
                                  <div>
                                       <label>Acesso Periférico</label>
                                  </div>
                                  <div class="drenagem">
                                       <input type="text">
                                  </div>
                              </div>
                              <div class="check-item">
                                  <div>
                                       <label>Acesso Central</label>
                                  </div>
                                  <div class="drenagem">
                                       <input type="text">
                                  </div>
                              </div>
                              <div class="check-item">
                                  <div>
                                       <label>Punção Arterial</label>
                                  </div>
                                  <div class="drenagem">
                                       <input type="text">
                                  </div>
                              </div>
   
                          </div>
                          </div>
                          
                      </form>
                   </div>

                   
                   <!-- RESPIRATÓRIA TAB-->
                   <div class="dir">
                      <form>
                         <!-- PARTONE -->
                          <div class="parteone">
                              <div class="dir-cont">
         
                              <div class="check-item">
                                  <div>
                                      <label>Murmúrios Vesiculares</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Pulmão D</option>
                                          <option>Pulmão E</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>COT/ TQT</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>COT</option>
                                          <option>TQT</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                       <label>Número</label>
                                  </div>
                                  <div class="drenagem">
                                       <input type="text">
                                  </div>
                              </div>
                              
                              
                              <div class="check-item">
                                  <input id="checkbox-1" type="checkbox"> <label for="checkbox-1">Eupenico</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-2" type="checkbox"> <label for="checkbox-2">Dispénico</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-3" type="checkbox"> <label for="checkbox-3">Respiraç. espontânea</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-4" type="checkbox"> <label for="checkbox-4">O2 em tubo T</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-4" type="checkbox"> <label for="checkbox-4">O2 em cateter nasal</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-5" type="checkbox"> <label for="checkbox-5">O2 em máscara facial</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-6" type="checkbox"> <label for="checkbox-6">Ventilação não-invasiva</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-6" type="checkbox"> <label for="checkbox-6">Ventilação mecânica</label>
                              </div>
                          </div>
                          
                          <div class="dir-cont-022">
                              
                          </div>
                          </div>
                          
                          <!-- PARTETWO -->
                          <div class="partetwo">
                              <div class="dir-cont">
                              <div class="check-item">
                                  <div>
                                      <label>Roncos</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>D</option>
                                          <option>E</option>
                                      </select>
                                  </div>
                              </div>
                              <div class="check-item">
                                  <div>
                                      <label>Sibilos</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>D</option>
                                          <option>E</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>Estertores</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>D</option>
                                          <option>E</option>
                                      </select>
                                  </div>
                              </div>

                          </div>
                          
                          <!-- <div class="dir-cont-02">
                              
                             
                          </div> -->
                          </div>
                          
                          <!-- PARTETHREE -->
                          <div class="partethree">
                              <div class="dir-cont">
                              
                              <div class="check-item">
                                  <input id="checkbox-6" type="checkbox"> <label for="checkbox-6">Modalidade ventilatória</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-6" type="checkbox"> <label for="checkbox-6">FIO2</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-6" type="checkbox"> <label for="checkbox-6">PEEP</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-6" type="checkbox"> <label for="checkbox-6">Volume corrente</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-6" type="checkbox"> <label for="checkbox-6">Pressão suporte</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-6" type="checkbox"> <label for="checkbox-6">Saturação O2</label>
                              </div>
                          </div>
                          
                          <!-- <div class="dir-cont-02">
                              
                          </div> -->
                          </div>
                          
                      </form>
                   </div>
               
                   <!-- AVALIAÇÃO CARDIOVASCULAR -->
                   <div class="dir">
                      <form>
                         <!-- PARTONE -->
                          <div class="parteone">
                              <div class="dir-cont">
         
                              <div class="check-item">
                                  <div>
                                      <label>Ritmo cardiáco</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Regular</option>
                                          <option>Irregular</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>Perfusão periférica</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Normal</option>
                                          <option>Lenta</option>
                                          <option>Cianose</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>Marcapasso</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Temporário</option>
                                          <option>Permanente</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>Drogas vascativas</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Sim</option>
                                          <option>Não</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <input id="checkbox-1" type="checkbox"> <label for="checkbox-1">Frequência cardíaca</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-2" type="checkbox"> <label for="checkbox-2">Pressão arterial</label>
                              </div>
                          </div>
                          
                          <div class="dir-cont-022">

                          </div>
                          </div>
                          
                          <!-- PARTETWO -->
                          <div class="partetwo">
                          <div class="dir-contt">
                              
                          </div>
                          
                          <div class="dir-cont-022">
                          </div>
                          </div>
                          
                          <!-- PARTETHREE -->
                          <div class="partethree">
                          <div class="dir-contt">
                          </div>
                          
                          <div class="dir-cont-022">
                          </div>
                          </div>
                          
                      </form>
                   </div>
                   
                   <!-- AVALIAÇÃO NEUROLÓGICA -->
                   <div class="dir">
                      <form>
                         <!-- PARTONE -->
                          <div class="parteone-neurologica">
                              <div class="dir-cont">
         
                              <div class="check-item">
                                  <div>
                                      <label>Abertura ocular</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Nenhuma</option>
                                          <option>A dor</option>
                                          <option>A ordem verbal</option>
                                          <option>Espontânea</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>Resposta verbal</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Nenhuma</option>
                                          <option>Vocaliza sons</option>
                                          <option>Palavras desconexas</option>
                                          <option>Confuso</option>
                                          <option>Orientado</option>
                                      </select>
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>Resposta motora</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Nenhuma</option>
                                          <option>Reage com extensão patológica</option>
                                          <option>Reage com flexão patológica</option>
                                          <option>Reage sem localizar</option>
                                          <option>Localiza a dor</option>
                                          <option>Obedece a comandos</option>
                                      </select>
                                  </div>
                              </div>
                             
                          </div>
                          
                          <div class="dir-cont-02">
                                <div class="check-item">
                                  <div>
                                      <label>Causa da internação</label>
                                  </div>
                                  <div class="comboBox">
                                      <select>
                                          <option>Clínica</option>
                                          <option>Traumática</option>
                                          <option>Cirúrgica</option>
                                      </select>
                                  </div>
                              </div>
                          </div>
                          </div>
                          
                          
                          
                          <!-- PARTETHREE -->
                          <div class="partethree">
                          <div class="dir-contt">
                          </div>
                          
                          <div class="dir-cont-022">
                          </div>
                          </div>
                          
                      </form>
                   </div>
                   
                   <!-- AVALIAÇÃO PSICOLÓGICA -->
                   <div class="dir">
                      <form>
                         <!-- PARTONE -->
                          <div class="parteone">
                              <div class="dir-cont">
         
                              <div class="check-item">
                                  <input id="checkbox-1" type="checkbox"> <label for="checkbox-1">Agitado</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-2" type="checkbox"> <label for="checkbox-2">Confuso</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-1" type="checkbox"> <label for="checkbox-1">Agressivo</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-2" type="checkbox"> <label for="checkbox-2">Choroso</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-1" type="checkbox"> <label for="checkbox-1">Cooperativo</label>
                              </div>

                          </div>
                          
                          <div class="dir-cont-02">
                              <div class="check-item">
                                  <div>
                                      <label>Alergias</label>
                                  </div>
                                  <div class="drenagem">
                                      <input type="text">
                                  </div>
                              </div>
                              
                              <div class="check-item">
                                  <input id="checkbox-2" type="checkbox"> <label for="checkbox-2">Hipertensão</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-1" type="checkbox"> <label for="checkbox-1">Diabetes</label>
                              </div>
                              <div class="check-item">
                                  <input id="checkbox-2" type="checkbox"> <label for="checkbox-2">Cardiopatia</label>
                              </div>
                              
                              <div class="check-item">
                                  <div>
                                      <label>Outros</label>
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
                                      <label>Escala numérica de avaliação da dor</label>
                                  </div>
                                  <div class="drenagem">
                                      <input type="range" value="100" min="0" max="200">
                                  </div>
                              </div>
                          </div>
                          
                          <div class="dir-cont-022">
                          </div>
                          </div>
                          
                          <!-- PARTETHREE -->
                          <div class="partethree">
                          <div class="dir-contt">
                          </div>
                          
                          <div class="dir-cont-022">
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
                          <label>Cod. Avalia.</label>
                       </div>
                       <div class="text">
                          <input type="text">
                       </div>
                    </div>
                    <div class="input-leito">
                       <div>
                          <label>Cod. Pacnt.</label>
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
                          <input type="date">
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
                          <input type="date">
                       </div>
                    </div>
                    <!-- <div class="input-leito-nasc">
                       <div>
                          <label>Idade</label>
                       </div>
                       <div class="text-nasc">
                          <input type="text">
                       </div>
                    </div> -->
                </div>
                <div class="input-codigo-enfermeiro">
                       <div>
                          <label>Cod. Enfermeir.</label>
                       </div>
                       <div class="text">
                          <input type="text">
                       </div>
                    </div>
                <div class="input-paciente">
                     <div>
                          <label>Enfermeiro(a)</label>
                     </div>
                     <div class="text-paciente">
                          <input type="text">
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
<script type="text/javascript" src="../script/avaliacao.js"></script>
</body>
</html>