require "test_helper"

class AudioTest < Minitest::Test
  def test_send
    audio = TotalVoice::Audio.new
    audio.send('5555555', 'https://github.com/brunofrank/totalvoice-ruby/tree/master/test/assets/piano.mp3')
  end
end
