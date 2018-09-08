class RecordsController < ApplicationController
  def new
    @list = Record.new


    @musics = Music.all

    @music_tscollection = Array.new()
    @musics.each do |music|
      @music_tscollection.push music.ts
    end
    # @list.user_id = current_user.id
    # @list.music_id = params[:record][:music_id]
    # @list.save
    #
    # redirect_to root_path
  end

  def create
    @list = Record.new
    @list.user_id = current_user.id
    @list.music_id = params[:record][:music_id]
    @list.save

    redirect_to root_path
  end
end
