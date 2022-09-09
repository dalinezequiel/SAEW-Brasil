
/*TAB CONTROL*/
const tab = document.querySelectorAll(".tabcontrol");

/*PANEL DE AVALIACAO*/
const panel = document.querySelectorAll(".dir");

/*tab[0].addEventListener('load', function(){
	tab[0].style.color = "#5d6d7e";
	tab[0].style.borderBottom = "1.5px solid #5d6d7e";
});*/
tab[0].style.color = "#5d6d7e";
tab[0].style.borderBottom = "1.5px solid #5d6d7e";
for(var i=0; i<panel.length; i++){
	if(i != 0){
		 panel[i].style.display = "none"; 
	}
}

/*CLICK NA TAB CONTROL*/
function tab_click(index, tab_control){
    tab_control[index].addEventListener('click', function(){
	    /*ENTRANDO DA TAB CONTROL*/
	    tab_control[index].style.color = "#5d6d7e";
	    tab_control[index].style.borderBottom = "1.5px solid #5d6d7e";
	    panel[index].style.display = "block";
	     
	    /*SAINDO DA TAB CONTROL*/
	    for(var i=0; i<tab_control.length; i++){
	       if(i != index){
		       tab_control[i].style.color = "initial";
	           tab_control[i].style.borderBottom = "1.5px solid #ffffff";
	       }
        }
        
        /*OCULTANDO PANEL NÃO CLICADO*/
	    for(var i=0; i<panel.length; i++){
	       if(i != index){
		       panel[i].style.display = "none"; 
	       }
        }
    });
}
tab_click(0, tab);
tab_click(1, tab);
tab_click(2, tab);
tab_click(3, tab);
tab_click(4, tab);
tab_click(5, tab);


/*CHECKBOX DE AVALIAÇÕES*/
/*const check_input = document.querySelectorAll(".check-item input");
for(var i=0; i<check_input.length; i++){
	check_input[i].disabled = true;
};*/

/*RADIO BUTTON DE AVALIACOES*/
/*const radio_input = document.querySelectorAll(".radio-ite input");
for(var i=0; i<radio_input.length; i++){
	radio_input[i].disabled = true;
};*/

/*CORTINA DE INFORMAÇÕES*/
/*const combobox = document.querySelectorAll(".comboBox select");
for(var i=0; i<combobox.length; i++){
	combobox[i].disabled = true;
};*/

/*CAMPOS DE DADOS DO PACIENTE*/
/*const text_input = document.querySelectorAll(".paciente input");
for(var i=0; i<text_input.length; i++){
	text_input[i].disabled = true;
};*/

/*CAMPO DE OBSERVAÇÕES*/
/*const text_area = document.querySelectorAll(".observacao textarea");
for(var i=0; i<text_area.length; i++){
	text_area[i].disabled = true;
};*/

/*AÇÃO DO BUTÃO */
const button = document.querySelectorAll(".btn-avaliacao a");
for(var i=0; i<button.length; i++){
	button[0].addEventListener('click', function(){
		for(var j=0; j<check_input.length; j++){
	        check_input[j].disabled = false;
        };
        
        for(var i=0; i<text_input.length; i++){
	        text_input[i].disabled = false;
        };
        
        for(var i=0; i<text_area.length; i++){
	        text_area[i].disabled = false;
        };
        
        for(var i=0; i<combobox.length; i++){
	        combobox[i].disabled = false;
        };
        
        for(var i=0; i<radio_input.length; i++){
	        radio_input[i].disabled = false;
        };
	})
};