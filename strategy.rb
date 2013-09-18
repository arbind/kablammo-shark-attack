require './aggressive'
require './defensive'
require './arbind'

def include mod
  self.class.send :include, mod
end

include Aggressive
include Defensive
include Arbind

on_turn do
  shark_attack!
end
