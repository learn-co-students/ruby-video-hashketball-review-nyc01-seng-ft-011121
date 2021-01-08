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

def num_points_scored(player_name)
  points_scored = 0
  
  game_hash.each do |location, team_attributes|
    team_attributes[:players].each do |player_attribute, value|
      if player_attribute[:player_name] == player_name 
         points_scored = player_attribute[:points]
      end
    end
  end
  points_scored
end

def shoe_size(player_name)
  size = 0 
  
  game_hash.each do |location, team_attributes|
    team_attributes[:players].each do |player_attribute, value|
      if player_attribute[:player_name] == player_name
        size = player_attribute[:shoe]
      end
    end
  end
  size
end

def team_colors(team_name)
  colors = ''
  
  game_hash.each do |location, team_attributes|
    if team_attributes[:team_name] == team_name
      colors = team_attributes[:colors]
    end
  end
  colors
end

def team_names
  array = []
  
  game_hash.each do |location, team_attributes|
    array.push(team_attributes[:team_name])
  end
  array
end

def player_numbers(team_name)
  jersey_array = []
  
  game_hash.each do |location, team_attributes|
    if team_attributes[:team_name] == team_name
      team_attributes[:players].each do |player_attribute, value|
        jersey_array.push(player_attribute[:number])
      end
    end
  end
  jersey_array
end
  
def player_stats(player_name)
  stat_hash = {}
  
  game_hash.each do |location, team_attributes|
    team_attributes[:players].each do |player_attribute, value|
      if player_attribute[:player_name] == player_name
        stat_hash = player_attribute
      end
    end
  end
  stat_hash
end

def big_shoe_rebounds
  current_biggest_shoe = 0
  rebounds = 0
  
  game_hash.each do |location, team_attributes|
    team_attributes[:players].each do |player_attribute, value|
      if player_attribute[:shoe] > current_biggest_shoe
        current_biggest_shoe = player_attribute[:shoe]
        rebounds = player_attribute[:rebounds]
      end
    end
  end
  rebounds
end
      