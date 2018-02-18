require "test_helper"

class ConfigTest < Minitest::Test
  def test_check_token_env_var
    TotalVoice::Config.access_token = nil
    ENV['TOTAL_VOICE_ACCESS_TOKEN'] = 'ZZZ'

    assert_equal TotalVoice::Config.access_token, 'ZZZ'
  end

  def test_check_token_defined
    TotalVoice::Config.access_token = 'XXX'
    assert_equal TotalVoice::Config.access_token, 'XXX'
  end
end
