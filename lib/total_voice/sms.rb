module TotalVoice
  class SMS < TotalVoice::Base
    # Send audo message to the given number
    #
    #
    #
    def send(phone_number, message, wait_for_user_anwser=false, slow_multi_sms=false)
      body = {
        numero_destino: phone_number,
        mensagem: message,
        resposta_usuario: wait_for_user_anwser,
        multi_sms: slow_multi_sms
      }

      puts self.class.post('/sms', {body: body.to_json})
    end
  end
end
