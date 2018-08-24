class TapesController < ApplicationController
  def index
    @tapes = Tape.all
  end

  def new
    @tape = Tape.new

    @musics = Music.all

    @music_tscollection = Array.new()
    @musics.each do |music|
      @music_tscollection.push music.ts
    end
  end

  def create
    
    @correct_music1 = Music.find_by_ts(params[:tape][:m1])
    @correct_music2 = Music.find_by_ts(params[:tape][:m2])
    @correct_music3 = Music.find_by_ts(params[:tape][:m3])
    @correct_music4 = Music.find_by_ts(params[:tape][:m4])
    @correct_music5 = Music.find_by_ts(params[:tape][:m5])
    @correct_music6 = Music.find_by_ts(params[:tape][:m6])
    @correct_music7 = Music.find_by_ts(params[:tape][:m7])
    @correct_music8 = Music.find_by_ts(params[:tape][:m8])
    @correct_music9 = Music.find_by_ts(params[:tape][:m9])
    @correct_music10 = Music.find_by_ts(params[:tape][:m10])

    tape = Tape.new

    tape.tape_title = params[:tape][:tape_title]
    tape.user_id = current_user.id
    tape.m1 = @correct_music1.id
    tape.m2 = @correct_music2.id
    tape.m3 = @correct_music3.id
    tape.m4 = @correct_music4.id
    tape.m5 = @correct_music5.id
    tape.m6 = @correct_music6.id
    tape.m7 = @correct_music7.id
    tape.m8 = @correct_music8.id
    tape.m9 = @correct_music9.id
    tape.m10 = @correct_music10.id
    tape.save

    redirect_to new_tape_path
  end

  private
  def set_data
    @tape = find_by.params[:tape_id]
  end
end
