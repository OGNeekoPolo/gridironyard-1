class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :game_id
      t.string :game_day
      t.string :game_time
      t.string :home_team
      t.string :away_team

      t.timestamps
    end
  end
end
