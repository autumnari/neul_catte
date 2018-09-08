class TapesController < ApplicationController
  def index
    @tapes = Tape.all
  end

  def new
    @tape = Tape.new
    @musics = Music.all
    @music_tscollection = Music.pluck(:ts)
  end

  def edit
    @tape = Tape.find(params[:id])
    @musics = Music.all
    @music_tscollection = Music.pluck(:ts)
  end

  def update
    tape = Tape.find(params[:id])
    (1..10).to_a.each do |i|
      current_music = "m#{i}".to_sym
      music = nil
      if tape_params[current_music].present?
        music = Music.find_by_ts(tape_params[current_music][:ts])
      end
      tape_params[current_music] = music
    end
    tape.update!(tape_params)
    # tape.save!
    redirect_to edit_tape_path(tape), notice: "수정되었습니다."
  end

  def create
    @correct_music1 = Music.find_by_ts(params[:tape][:m1][:ts])
    @correct_music2 = Music.find_by_ts(params[:tape][:m2][:ts])
    @correct_music3 = Music.find_by_ts(params[:tape][:m3][:ts])
    @correct_music4 = Music.find_by_ts(params[:tape][:m4][:ts])
    @correct_music5 = Music.find_by_ts(params[:tape][:m5][:ts])
    @correct_music6 = Music.find_by_ts(params[:tape][:m6][:ts])
    @correct_music7 = Music.find_by_ts(params[:tape][:m7][:ts])
    @correct_music8 = Music.find_by_ts(params[:tape][:m8][:ts])
    @correct_music9 = Music.find_by_ts(params[:tape][:m9][:ts])
    @correct_music10 = Music.find_by_ts(params[:tape][:m10][:ts])

    tape = Tape.new

    tape.tape_title = params[:tape][:tape_title]
    tape.user_id = current_user.id
    tape.m1 = @correct_music1 || nil
    tape.m2 = @correct_music2 || nil
    tape.m3 = @correct_music3 || nil
    tape.m4 = @correct_music4 || nil
    tape.m5 = @correct_music5 || nil
    tape.m6 = @correct_music6 || nil
    tape.m7 = @correct_music7 || nil
    tape.m8 = @correct_music8 || nil
    tape.m9 = @correct_music9 || nil
    tape.m10 = @correct_music10 || nil
    tape.save
    redirect_to edit_tape_path(tape), notice: "테이프에 노래가 들어갔습니다."
  end


  def show
    @tape = Tape.find_by(id: params[:id])

    song = []
    song << @tape.m1
    song << @tape.m2
    song << @tape.m3
    song << @tape.m4
    song << @tape.m5
    song << @tape.m6
    song << @tape.m7
    song << @tape.m8
    song << @tape.m9
    song << @tape.m10

    @list = Music.where(id: song)
  end

  private

  def found_music(param)
    result = nil
    if param.is_a?(String)
      result = Music.find_by_ts(params[:tape][:m1])
    elsif param.is_a?(Music)
      result = Music.find_by_ts(params[:tape][:m1])
    end
    result
  end

  def set_data
    @tape = find_by.params[:tape_id]
  end

  def tape_params
    params.require(:tape).permit!
  end
end
