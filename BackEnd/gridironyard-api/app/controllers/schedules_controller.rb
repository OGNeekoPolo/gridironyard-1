# create_table "schedules", force: :cascade do |t|
#   t.string "game_id"
#   t.string "game_day"
#   t.string "game_time"
#   t.string "home_team"
#   t.string "away_team"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end



class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
    render json: @schedules
  end

  def set_schedule
    set_api
    set_week(0, "week1")
    set_week(1, "week2")
    set_week(2, "week3")
    set_week(3, "week4")
    set_week(4, "week5")
    set_week(5, "week6")
    set_week(6, "week7")
    set_week(7, "week8")
    set_week(8, "week9")
    set_week(9, "week10")
    set_week(10, "week11")
    set_week(11, "week12")
    set_week(12, "week13")
    set_week(13, "week14")
    set_week(14, "week15")
    set_week(15, "week16")
    set_week(16, "week17")
    redirect_to schedules_path
  end

  private
    def set_api
      schedules = File.read('lib/nflschedule.json')
      @json = JSON.parse(schedules)
    end

    def set_week(num, week)
      @games = @json[num][week]['g']
      @games.each do |game|
        Schedule.create(
          game_id: game["-eid"],
          game_day: game["-d"],
          game_time: game["-t"],
          home_team: game["-h"],
          away_team: game["-v"]
        )
      end
    end
end
