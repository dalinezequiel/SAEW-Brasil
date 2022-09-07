
/*TAB CONTROL*/
const tab = document.querySelectorAll(".tabcontrol");
tab[0].addEventListener('load', function(){
	window.alert("Clicado");
	tab[0].style.color = "#5d6d7e";
	tab[0].style.fontWeight = "bold";
	tab[0].style.borderBottom = "1.5px solid #5d6d7e";
});

/*CHECKBOX DE AVALIAÇÕES*/
const check_input = document.querySelectorAll(".check-item input");
for(var i=0; i<check_input.length; i++){
	check_input[i].disabled = true;
};

/*RADIO BUTTON DE AVALIACOES*/
const radio_input = document.querySelectorAll(".radio-ite input");
for(var i=0; i<radio_input.length; i++){
	radio_input[i].disabled = true;
};

/*CORTINA DE INFORMAÇÕES*/
const combobox = document.querySelectorAll(".comboBox select");
for(var i=0; i<combobox.length; i++){
	combobox[i].disabled = true;
};

/*CAMPOS DE DADOS DO PACIENTE*/
const text_input = document.querySelectorAll(".paciente input");
for(var i=0; i<text_input.length; i++){
	text_input[i].disabled = true;
};

/*CAMPO DE OBSERVAÇÕES*/
const text_area = document.querySelectorAll(".observacao textarea");
for(var i=0; i<text_area.length; i++){
	text_area[i].disabled = true;
};

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