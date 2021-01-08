class Brave
  # nameセッターの定義
  attr_writer :name

  # nameゲッターの定義
  attr_reader :name

  # hpセッターの定義
  attr_writer :hp

  # hpゲッターの定義
  attr_reader :hp

  # offenseセッターの定義
  attr_writer :offense

  # offenseゲッターの定義
  attr_reader :offense

  # defenseセッターの定義
  attr_writer :defense

  # defenseゲッターの定義
  attr_reader :defense
end

brave = Brave.new
brave.name = 'テリー'
brave.hp = 500
brave.offense = 150
brave.defense = 100

puts <<~TEXT
NAME：#{brave.name}
HP：#{brave.hp}
OFFENSE：#{brave.offense}
DEFENSE：#{brave.defense}
TEXT
