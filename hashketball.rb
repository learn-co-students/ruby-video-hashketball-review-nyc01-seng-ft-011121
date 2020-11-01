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

# Write code here

def get_players 
  players = game_hash.keys.map do |team|
    game_hash[team][:players]
  end
  players.flatten
end

def num_points_scored(player_name)
  current_player = get_players.find do |the_player|
    the_player[:player_name] == player_name
  end
  current_player[:points]
  # binding.pry
end

def shoe_size(player_name)
 current_player = get_players.find do |the_player|
    the_player[:player_name] == player_name
  end
  current_player[:shoe]
end

def get_team
  players_team = game_hash.keys.map do |team|
    game_hash[team]
  end
end
# puts get_team

def team_colors(team_name)
  team_c = get_team.find do |the_color|
    the_color[:team_name] == team_name
  end
  team_c[:colors]
end

def team_names
  the_team_name = get_team.map do |team|
    team[:team_name]
  end
  # the_team_name
end
puts team_names

    
def player_numbers(team_name)
    team_players = []
      [:home, :away].each do |side|
        if team_name == game_hash[side][:team_name]
        team_players = game_hash[side][:players]
        end
      end
      team_players.map {|play_num| play_num[:number]}
end
puts player_numbers("Brooklyn Nets").to_s

def player_stats(player_name)
  all_stats = []
    get_players.map do |player| 
    if player[:player_name] == player_name
     all_stats = player
    end
  end
 all_stats
end
def player_shoe
  shoe_sizes = get_players.map do |find_shoes|
    find_shoes[:shoe]
  end
  shoe_sizes.max()
end
puts player_shoe
def big_shoe_rebounds
  found_rebounds = []

   get_players.find do |player_s|
    if player_s[:shoe] == player_shoe
      found_rebounds = player_s[:rebounds]
    end
  end
  found_rebounds
  
end

 
