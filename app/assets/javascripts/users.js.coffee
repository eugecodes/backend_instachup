$(document).on 'ready page:load', ->
  $("#registro").submit (e) ->
    e.preventDefault()
    form = this

    if $("#user_password").val() != $("#user_password_confirmation").val()
      alert "Las contraseñas no coinciden"
    else
      $.get "/mail_disponible/",
          busca_correo:$("#user_email").val()
        ,(existe) ->
          if existe
            alert "Ese email ya fue registrado"
          else
            $(form).off "submit"
            $(form).submit()