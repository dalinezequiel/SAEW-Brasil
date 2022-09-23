
/*CHECKBOX DE AVALIAÇÕES*/
window.addEventListener('load', function() {
	for (var i = 0; i < text_input.length; i++) {
		if (i <= 1) {
			text_input[i].readOnly = true;
		}
	}
});

/*CHECKBOX DE AVALIAÇÕES*/
const check_input = document.querySelectorAll(".check-item input");
for(var i=0; i<check_input.length; i++){
	check_input[i].disabled = true;
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

/*CAMPO INPUT DO FIELDSET*/
const fieldset_input = document.querySelectorAll(".fieldset_input input");
for(var i=0; i<fieldset_input.length; i++){
	fieldset_input[i].disabled = true;
};

/*CAMPO CURATIVO*/
const cur_input = document.querySelectorAll(".curativo-item input");
for(var i=0; i<cur_input.length; i++){
	cur_input[i].disabled = true;
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
        
        for(var i=0; i<cur_input.length; i++){
	        cur_input[i].disabled = false;
        };
        
        for(var i=0; i<fieldset_input.length; i++){
	        fieldset_input[i].disabled = false;
        };
	})
};