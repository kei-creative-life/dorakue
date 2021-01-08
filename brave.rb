require './character'
class Brave < Character
  # 必殺攻撃の計算に使う定数
  SPECIAL_ATTACK_CONSTANT = 1.5

  def attack(monster)
    attack_type = decision_attack_type
    damage = calculate_damage(target: monster, attack_type: attack_type)

    cause_damage(target: monster, damage: damage)
    # puts "#{@name}の攻撃"
    attack_message(attack_type:attack_type)
    # puts "#{monster.name}の残りHPは#{monster.hp}だ"
  end

  private

  def decision_attack_type
    attack_num = rand(4)
    if attack_num == 0
      'special_attack'
    else
      'normal_attack'
    end
  end

  def calculate_damage(**params)
    target = params[:target]
    attack_type = params[:attack_type]
    if attack_type == 'special_attack'
      calculate_special_attack - target.defense
    else
      @offense - target.defense
    end
  end

  def cause_damage(**params)
    damage = params[:damage]
    target = params[:target]
    target.hp -= damage
    target.hp = 0 if target.hp < 0
    # puts "#{target.name}は#{damage}のダメージを受けた"
  end

  def calculate_special_attack
    @offense * SPECIAL_ATTACK_CONSTANT
  end
end
