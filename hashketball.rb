# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player)
  points = 0
  game_hash.each do |k, v|
    v[:players].each do |starting_five|
      if starting_five[:player_name] == player
        points = starting_five[:points]
      end
    end
  end
  points
end

def shoe_size(player)
  shoe = 0
  game_hash.each do |k, v|
    v[:players].each do |starting_five|
      if starting_five[:player_name] == player
        shoe = starting_five[:shoe]
      end
    end
  end
  shoe
end

def team_colors(team)
  color = ""
  game_hash.each do |k, v|
    if v[:team_name] == team
      color = v[:colors]
    end
  end
  color
end

def team_names
  teams = [] 
  game_hash.each do |k, v|
    teams << v[:team_name]
  end
  teams
end

def player_numbers(team)
  jersey_numbers =[]
  game_hash.each do |k, v|
    if v[:team_name] == team
      v[:players].each do |starting_five|
        jersey_numbers << starting_five[:number]
      end
    end
  end
  jersey_numbers
end

def player_stats(player)
  stats = {}
  game_hash.each do |k, v|
    v[:players].each do |starting_five|
      if starting_five[:player_name] == player
        stats = starting_five
      end
    end
  end
  stats
end

def big_shoe_rebounds
  shoe = 0
  rebound = 0
  game_hash.each do |k, v|
    v[:players].each do |starting_five|
      if starting_five[:shoe] > shoe
        shoe = starting_five[:shoe]
      end
    end
    v[:players].each do |starting_five|
      if starting_five[:shoe] == shoe
        rebound = starting_five[:rebounds]
      end
    end
  end
  rebound
end

def most_points_scored
  points = 0
  most_point_player = ""
  game_hash.each do |k, v|
    v[:players].each do |starting_five|
      if starting_five[:points] > points
        points = starting_five[:points]
      end
    end
    v[:players].each do |starting_five|
      if starting_five[:points] == points
        most_point_player = starting_five[:player_name]
      end
    end
  end
  most_point_player
end

def winning_team
  home_team_points = 0
  away_team_points = 0
  
  game_hash[:home][:players].each do |starting_five|
    home_team_points = starting_five[:points] + home_team_points
  end
  game_hash[:away][:players].each do |starting_five|
    away_team_points = starting_five[:points] + away_team_points
  end
  if home_team_points > away_team_points
    game_hash[:home][:team_name]
    else
    game_hash[:away][:team_name]
  end
end
