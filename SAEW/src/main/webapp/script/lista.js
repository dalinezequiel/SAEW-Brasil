
/*CORTINA - O1*/
const sistema = document.querySelector(".sistema");
const cortina = document.querySelector(".cortina");
sistema.addEventListener('click', function(){
	cortina.style.height = "240px";
	cortina.style.transition = "0.5s";
	
	/*CORTINA_02 DEVE FECHAR*/
	cortina_02.style.height = "0px";
	cortina_02.style.transition = "0s";
	
	/*CORTINA_03 DEVE FECHAR*/
	cortina_03.style.height = "0px";
	cortina_03.style.transition = "0s";
});

cortina.addEventListener('mouseleave', function(){
	cortina.style.height = "0px";
	cortina.style.transition = "0.5s";
});

/*CORTINA - O2*/
const utilitario = document.querySelector(".utilitario");
const cortina_02 = document.querySelector(".cortina-02");
utilitario.addEventListener('click', function(){
	cortina_02.style.height = "240px";
	cortina_02.style.transition = "0.5s";
	
	/*CORTINA_01 DEVE FECHAR*/
	cortina.style.height = "0px";
	cortina.style.transition = "0s";
	
	/*CORTINA_03 DEVE FECHAR*/
	cortina_03.style.height = "0px";
	cortina_03.style.transition = "0s";
});

cortina_02.addEventListener('mouseleave', function(){
	cortina_02.style.height = "0px";
	cortina_02.style.transition = "0.5s";
});

/*CORTINA - O3*/
const enfermagem = document.querySelector(".enfermagem");
const cortina_03 = document.querySelector(".cortina-03");
enfermagem.addEventListener('click', function(){
	cortina_03.style.height = "240px";
	cortina_03.style.transition = "0.5s";
	
	/*CORTINA_01 DEVE FECHAR*/
	cortina.style.height = "0px";
	cortina.style.transition = "0s";
	
	/*CORTINA_02 DEVE FECHAR*/
	cortina_02.style.height = "0px";
	cortina_02.style.transition = "0s";
});

cortina_03.addEventListener('mouseleave', function(){
	cortina_03.style.height = "0px";
	cortina_03.style.transition = "0.5s";
});

/*NAVBAR - O3*/
/*const navbar = document.querySelector(".parent nav");
navbar.addEventListener('mouseover', function(){*/
	/*CORTINA_01 DEVE FECHAR*/
	/*cortina.style.height = "0px";
	cortina.style.transition = "0s";*/
	
	/*CORTINA_02 DEVE FECHAR*/
	/*cortina_02.style.height = "0px";
	cortina_02.style.transition = "0.5s";*/
	
	/*CORTINA_03 DEVE FECHAR*/
	/*cortina_03.style.height = "0px";
	cortina_03.style.transition = "0s";
});*/
