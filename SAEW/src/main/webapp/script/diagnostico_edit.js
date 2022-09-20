
/*CAMPOS DE CODIGOS DIAGNOSTICO E PACIENTE*/
const text_input = document.querySelectorAll(".paciente input");
window.addEventListener('load', function() {
	for (var i = 0; i < text_input.length; i++) {
		if (i <= 1) {
			text_input[i].readOnly = true;
		}
	}
});