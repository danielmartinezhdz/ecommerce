$(document).on "ajax:beforeSend", "#emails-form", ()->
	console.log "Se esta enviando el formulario"
	$("#email-info").html "Se esta enviado su información"
$(document).on "ajax:success", "#emails-form", (e,data,estado,xhr)->
	$(this).slideUp()
	$("#email-info").html "Ya estas en la lista de invitaciones beta"
$(document).on "ajax:error", "#emails-form", (e,data,estado,xhr)->
	$("#email-info").html data.responseJSON.email[0]