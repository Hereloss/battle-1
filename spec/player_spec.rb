require 'player'

describe Player do

  let (:subject) {Player.new("Player1")}

  describe "#Name" do

  it "Returns its name" do
    expect(subject.name).to eq("Player1")
  end

  end
end