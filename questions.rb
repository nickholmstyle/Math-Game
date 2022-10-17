class Questions
  attr_accessor :question, :answer, :num1, :num2

  def initailize()
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = num1 + num2
  end
  #could this be drier?
  def newQuestion()
    self.num1 = rand(1...20)
    self.num2 = rand(1...20)
    self.answer = num1 + num2
  end
  
  def question()
    "#{num1} + #{num2}"
  end
end

