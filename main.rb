class Brave
  # initializeを定義
  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
  # nameゲッターの定義
  attr_reader :name

  # hpゲッターの定義
  attr_reader :hp

  # offenseゲッターの定義
  attr_reader :offense

  # defenseゲッターの定義
  attr_reader :defense
end

brave = Brave.new(name: 'テリー', hp: 500, offense: 150, defense: 100)

puts <<~TEXT
  NAME：#{brave.name}
  HP：#{brave.hp}
  OFFENSE：#{brave.offense}
  DEFENSE：#{brave.defense}
TEXT
