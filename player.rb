class Player
  attr_accessor :name, :lives
    def initailize(name)
      @name = name
      self.lives = 3
    end
  end

  def lose_life()
    self.lives -= 1
    puts "#{name} has #{lives}/3 lives left!"
end

