module Arbind
  def shark_attack!
    enemy_in_distress = opponents.first
    return hunt unless enemy_in_distress

    armor = enemy_in_distress.armor
    distance = robot.distance_to(enemy_in_distress)
    opponents.each do |enemy|
      next if enemy.armor > armor
      next if robot.distance_to(enemy) >= distance
      enemy_in_distress = enemy
      armor = enemy_in_distress.armor
      distance = robot.distance_to(enemy_in_distress)
    end
    frenzy enemy_in_distress
  end

  def frenzy(enemy)
    return fire_at! enemy, 1.0 if can_fire_at? enemy
    return move_towards! enemy if obscured? enemy
    return aim_at! enemy unless aiming_at? enemy
    return fire_at! enemy, 0.5
  end
end