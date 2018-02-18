module TotalVoice
  class Audio < TotalVoice::Base
    # Send audo message to the given number
    #
    #
    #
    def send(phone_number, audio_url, wait_for_user_anwser=false, shown_number=nil)
      body = {
        numero_destino: phone_number,
        url_audio: audio_url,
        resposta_usuario: wait_for_user_anwser,
        shown_number: shown_number
      }

      puts self.class.post('/audio', {body: body.to_json})
    end
  end
end
