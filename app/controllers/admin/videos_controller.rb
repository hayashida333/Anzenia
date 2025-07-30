# frozen_string_literal: true

module Admin
  class VideosController < Admin::ApplicationController
    before_action :set_video, only: %i[show edit update destroy]

    def index
      @videos = Video.order(created_at: :desc).page(params[:page]).per(10)
    end

    def show; end

    def new
      @video = Video.new
    end

    def edit; end

    def create
      @video = Video.new(video_params)
      @video.youtube_url = extract_youtube_id(params[:video][:youtube_url])

      respond_to do |format|
        if @video.save
          format.html { redirect_to admin_video_path(@video), notice: '投稿が正常に作成されました。' }
          format.json { render :show, status: :created, location: @video }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @video.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      if @video.update(video_params)
        redirect_to admin_video_path(@video), notice: '動画が更新されました。'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @video.destroy
      redirect_to admin_videos_path, notice: '動画が削除されました。'
    end

    private

    def set_video
      @video = Video.find(params[:id])
    end

    def video_params
      params.require(:video).permit(:title, :description, :youtube_url)
    end

    def extract_youtube_id(url)
      uri = begin
        URI.parse(url)
      rescue StandardError
        nil
      end
      return nil unless uri

      if uri.host == 'youtu.be'
        uri.path[1..]
      elsif uri.host&.include?('youtube.com')
        Rack::Utils.parse_query(uri.query)['v']
      end
    end
  end
end
