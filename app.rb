
class MagicBox
  def initialize ear, mouth
    @ear = ear
    @mouth = mouth
  end

  def poke
    @ear.whisper 'tell me a secret'
    secret = @mouth.listen
    @ear.whisper "#{secret} FART"
  end
end

class Ear
  def whisper heard
    Kernel.puts heard
  end
end
