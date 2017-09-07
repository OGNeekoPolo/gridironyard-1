class RemoveScheduleFromNflTeams < ActiveRecord::Migration[5.1]
  def change
    remove_column :nfl_teams, :schedule, :text
  end
end
