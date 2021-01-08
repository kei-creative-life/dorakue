class Brave
	# セッターの定義
	def name=(name)
		@name = name
	end

	def hp=(hp)
		@hp = hp
	end

	def offence=(offence)
		@offence = offence
	end

	def defence=(defence)
		@defence = defence
	end

	brave = Brave.new
	brave.name = "テリー"
	brave.hp = 500
	brave.offence = 150
	brave.defence = 100
end