class CreateJoinTableTeamSchedule < ActiveRecord::Migration[5.1]
  def change
    create_join_table :nfl_teams, :schedules do |t|
      # t.index [:nfl_team_id, :schedule_id]
      # t.index [:schedule_id, :nfl_team_id]
    end
  end
end
