require 'rspec'
require_relative 'app'


describe MagicBox do

  let(:ear) { double("ear", whisper: nil) }
  subject { described_class.new(ear) }

  it 'asks you for a secret' do
    expect(ear).to receive(:whisper).with('tell me a secret')
    subject.poke
  end

end
