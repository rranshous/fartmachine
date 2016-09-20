
class MagicBox
  def initialize ear, mouth
    @ear = ear
    @mouth = mouth
  end

  def poke
    @ear.whisper 'tell me a secret'
    secret = @mouth.listen
    @ear.whisper "#{secret.strip} ... FART"
  end
end

class Ear
  def whisper heard
    Kernel.puts heard
  end
end

class Mouth
  def listen
    Kernel.gets
  end
end

if __FILE__ == $0
  box = MagicBox.new(Ear.new, Mouth.new)
  box.poke
end
