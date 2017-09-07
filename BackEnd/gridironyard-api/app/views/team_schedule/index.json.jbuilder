json.nfl_teams @teams do |team|
  json.id team.id
  json.name team.name
  json.short_name team.short_name

  json.schedules team.schedules do |schedule|
    json.game_id schedule.game_id
    json.game_day schedule.game_day
    json.game_time schedule.game_time
    json.home_team schedule.home_team
    json.away_team schedule.away_team
  end
end
