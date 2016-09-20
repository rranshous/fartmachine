require 'rspec'
require_relative 'app'


describe MagicBox do

  let(:ear) { double("ear", whisper: nil) }
  let(:mouth) { double("mouth", listen: response) }
  let(:response) { 'i like making friends' }
  subject { described_class.new(ear, mouth) }

  it 'asks you for a secret' do
    expect(ear).to receive(:whisper).with('tell me a secret')
    subject.poke
  end

  it 'is rude to you' do
    expect(ear).to receive(:whisper).with("#{response} FART")
  end

end
