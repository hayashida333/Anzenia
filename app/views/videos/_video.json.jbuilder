# frozen_string_literal: true

json.extract! video, :id, :body, :youtube_url, :created_at, :updated_at
json.url video_url(video, format: :json)
