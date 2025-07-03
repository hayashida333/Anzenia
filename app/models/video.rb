class Video < ApplicationRecord
  def youtube_id
    return nil if youtube_url.blank?

    uri = URI.parse(youtube_url)
    
    # 通常の YouTube URL (https://www.youtube.com/watch?v=xxxxx)
    if uri.host&.include?("youtube.com") && uri.query
      params = CGI.parse(uri.query)
      return params["v"]&.first
    end

    # 短縮URL (https://youtu.be/xxxxx)
    if uri.host&.include?("youtu.be")
      return uri.path.delete_prefix("/")
    end

    nil
  rescue URI::InvalidURIError
    nil
  end
end