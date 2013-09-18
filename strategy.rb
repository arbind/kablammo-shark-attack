require './aggressive'
require './defensive'
require './arbind'

include Aggressive
include Defensive
include Arbind

on_turn do
  shark_attack!
end
