class TapesController < ApplicationController
  def index
    @tapes = Tape.all
  end

  def new
    @tape = Tape.new
  end

  def create
    tape = Tape.new

    tape.tape_title = params[:tape][:tape_title]
    tape.user_id = current_user.id
    tape.m1 = params[:tape][:m1]
    tape.m2 = params[:tape][:m2]
    tape.m3 = params[:tape][:m3]
    tape.m4 = params[:tape][:m4]
    tape.m5 = params[:tape][:m5]
    tape.m6 = params[:tape][:m6]
    tape.m7 = params[:tape][:m7]
    tape.m8 = params[:tape][:m8]
    tape.m9 = params[:tape][:m9]
    tape.m10 = params[:tape][:m10]
    tape.save

    redirect_to new_tape_path
  end

  private
  def set_data
    @tape = find_by.params[:tape_id]
  end
end
