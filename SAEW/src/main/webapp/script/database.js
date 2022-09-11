
/*CORTINA DE INFORMAÇÕES*/
const combobox = document.querySelectorAll(".comboBox select");
for(var i=0; i<combobox.length; i++){
	combobox[i].disabled = true;
};

/*CAMPOS DE DADOS*/
const text_input = document.querySelectorAll(".componente-item input");
for(var i=0; i<text_input.length; i++){
	text_input[i].disabled = true;
};

/*AÇÃO DO BUTÃO */
const button = document.querySelectorAll(".btn-avaliacao a");
for(var i=0; i<button.length; i++){
	button[0].addEventListener('click', function(){
        
        for(var i=0; i<text_input.length; i++){
	        text_input[i].disabled = false;
        };
        
        for(var i=0; i<combobox.length; i++){
	        combobox[i].disabled = false;
        };
	})
};
