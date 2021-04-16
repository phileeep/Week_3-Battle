require 'player.rb'

describe Player do 
  it 'It returns its name' do 
    subject = Player.new("hello")
    expect(subject.name).to eq("hello")
  end
end 