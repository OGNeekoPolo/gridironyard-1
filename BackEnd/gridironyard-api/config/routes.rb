Rails.application.routes.draw do
  post 'users/new', to: 'users#create', default: {format: :json}
  post '/users', to: 'sessions#create', default: {format: :json}
  get '/nfl_teams/api', to: 'nfl_teams#index', as: 'nfl_teams', default: {format: :json}

  # Caches Team Data
  get '/nfl_teams/team_cache', to: 'nfl_teams#team_cache', as: 'team_cache'

  get '/stats', to: 'players#player_stats', default: {format: :json}

  get '/stats_api', to: 'game_stats#index'
  get '/home_stats_api', to: 'game_stats#home_team_stats'
  get '/away_stats_api', to: 'game_stats#away_team_stats'
  get 'players_cache', to: 'players#player_cache'
  get '/players_api', to: 'players#index', as: 'players', format: 'json'

  get '/schedules', to: 'schedules#index', as: 'schedules'
  get '/schedules/set', to: 'schedules#set_schedule'

  get '/team/setup', to: "team_schedule#setup", as: 'setup', format: 'json'
  get '/team_schedules', to: 'team_schedule#index', as: 'teams', format: 'json'
end
