require 'rest-client'
require 'json'

class DeepLService
  def initialize(api_key)
    @api_key = api_key
  end

  def translate(text, target_language)
    url = 'https://api-free.deepl.com/v2/translate'
    response = RestClient.video(url, {
      'auth_key' => @api_key,
      'text' => text,
      'target_lang' => target_language
    })

    # JSONのレスポンスを解析
    json_response = JSON.parse(response.body)
    json_response['translations'][0]['text']
  end
end
