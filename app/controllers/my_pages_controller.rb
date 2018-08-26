class MyPagesController < ApplicationController
  def index
    list = []
    current_user.records.each { |x| list << x.music_id }
    # Record.where(user_id: current_user.id).each { |x| list << x.music_id }

    @list = Music.find(list)

  end
end
