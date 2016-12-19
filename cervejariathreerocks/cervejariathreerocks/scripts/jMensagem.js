/*
*	Método de Apresentação de Dialog Message
*	Parâmetros : 
*		Label : Texto do botão da Modal.
*		Button : Id do Botão que executa a função.
*		Message : Mensagem a ser apresentada.
*				  OBS: Pode se utilizar Html no mesmo.
*		Type : Definição de Cor da Janela Popup.	
*			"SUCCESS", "OK", "SUCESSO" - Cor Verde.
*			"DANGER", "ERRO", "ERROR", "FALHA" - Cor Vermelho.
*			"WARNING", "ALERTA", "ALERT" - Cor Amarelo.
*			"PRIMARY", "INFORMACAO", "INFORMAÇÃO", "INFO" - Cor Azul.
*/

function DialogMessage(label, focus, button, message, type) {

	switch (type.toUpperCase()) {
		case "SUCCESS":
		case "OK":
		case "SUCESSO":
			var title = "Sucesso";
			var tipo = BootstrapDialog.TYPE_SUCCESS;
			var css = "btn-success";
			break;
		
		case "DANGER":
		case "ERRO":
		case "ERROR":
		case "FALHA":
			var title = "Erro";
			var tipo = BootstrapDialog.TYPE_DANGER;
			var css = "btn-danger";
			break;		
		
		case "WARNING":
		case "ALERTA":
		case "ALERT":
			var title = "Alerta";
			var tipo = BootstrapDialog.TYPE_WARNING;
			var css = "btn-warning";
			break;		
			
		case "PRIMARY":
		case "INFORMACAO":
		case "INFORMAÇÃO":
		case "INFO":
			var title = "Informação";
			var tipo = BootstrapDialog.TYPE_PRIMARY;
			var css = "btn-primary";
			break;		
		
		default:
			var title = "Informação";
			var tipo = BootstrapDialog.TYPE_PRIMARY;
			var css = "btn-primary";
			break;
	}

	BootstrapDialog.show({
		title: title,
		type: tipo,
		message: message,
		onhide: function (dialogItself) {			
			if (button.length > 0) {
				$('#' + button).button('reset');
			}
		},
		onhidden: function(dialogRef){
			if (focus.length > 0) {
				$('#' + focus).focus();
			}
		},
		buttons: [{
			label: label,
			cssClass: css,
			action: function (dialogItself) {
				dialogItself.close();
				
				if (focus.length > 0) {
					$('#' + focus).focus();
				}
				
				if (button.length > 0) {
					$('#' + button).button('reset');
				}
			}
		}]
	});
	
}