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
    list = record_params.values

    list[0].each do |x|
      @list = Record.new
      @list.music_id = x
      @list.user_id = current_user.id
      @list.save
    end

    tape_list = Record.where(user_id: current_user.id).last(10)

    tape = Tape.new
    tape.tape_title = "인생열곡"
    tape.user_id = current_user.id
    tape.m1 = Music.find_by(id: tape_list[0].music_id)
    tape.m2 = Music.find_by(id: tape_list[1].music_id)
    tape.m3 = Music.find_by(id: tape_list[2].music_id)
    tape.m4 = Music.find_by(id: tape_list[3].music_id)
    tape.m5 = Music.find_by(id: tape_list[4].music_id)
    tape.m6 = Music.find_by(id: tape_list[5].music_id)
    tape.m7 = Music.find_by(id: tape_list[6].music_id)
    tape.m8 = Music.find_by(id: tape_list[7].music_id)
    tape.m9 = Music.find_by(id: tape_list[8].music_id)
    tape.m10 = Music.find_by(id: tape_list[9].music_id)
    tape.save

    redirect_to root_path
  end

  def add

    record = Record.new
    record.user_id = current_user.id
    record.music_id = params[:id]
    record.save

    redirect_back(fallback_location: root_path)
  end

  private
  def record_params
      params.require(:record).permit(:music_id => [])
    end
end
