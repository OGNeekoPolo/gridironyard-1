class TeamScheduleController < ApplicationController
  def setup
    @schedules = Schedule.all
    @schedules.each do |schedule|
      @home = NflTeam.find_by_short_name(schedule['home_team'])
      @away = NflTeam.find_by_short_name(schedule['away_team'])
      schedule.update(
        nfl_team_ids: [@home.id, @away.id]
      )
    end
    redirect_to teams_path
  end

  def index
    @teams = NflTeam.all
  end
end
