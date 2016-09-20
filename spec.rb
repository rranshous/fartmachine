require 'rspec'
require_relative 'app'


describe MagicBox do

  let(:ear) { double("ear", whisper: nil) }
  let(:mouth) { double("mouth", listen: response) }
  let(:response) { "i like making friends\n" }
  subject { described_class.new(ear, mouth) }

  it 'asks you for a secret' do
    expect(ear).to receive(:whisper).with('tell me a secret')
    subject.poke
  end

  it 'is rude to you' do
    expect(ear).to receive(:whisper).with("#{response.strip} ... FART")
    subject.poke
  end

end

describe Ear do
  let(:thing_heard) { "my fav # is #{rand(1000).to_s}" }
  subject { described_class.new }
  it 'connects voices to the brain' do
    expect(Kernel).to receive(:puts).with(thing_heard)
    subject.whisper thing_heard
  end
end

describe Mouth do
  let(:said) { "thing i think #{rand(1000).to_s}" }
  it 'connects the brain to the voices' do
    allow(Kernel).to receive(:gets).and_return(said)
    expect(subject.listen).to eq said
  end
end
