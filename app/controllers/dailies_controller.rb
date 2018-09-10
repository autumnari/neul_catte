class DailiesController < ApplicationController
  def index

  end

  def new
    @daily = Daily.new

    @musics = Music.all

    @music_tscollection = Array.new()
    @musics.each do |music|
      @music_tscollection.push music.ts
    end
  end

  def create
    daily = Daily.new

    daily.user_id = current_user.id
    daily.daily_title = params[:daily][:daily_title]
    daily.musicN = params[:daily][:musicN]
    daily.body = params[:daily][:body]
    daily.save

    redirect_to new_daily_path
  end

  def update
    @daily = Daily.find_by.params[:daily_id]
  end

  def edit
    @daily = Daily.find_by.params[:daily_id]
  end

  def show
    @daily = Daily.find(params[:id])
  end
end
