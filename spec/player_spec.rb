require 'player'

describe Player do

  let (:subject) {Player.new("Player1")}

  describe "#name" do

    it "Returns its name" do
      expect(subject.name).to eq("Player1")
    end

    it "can change its name" do
      subject.change_name("Sherwin")
      expect(subject.name).to eq("Sherwin")
    end
  end
  
  describe "hitpoints" do
    it "returns hitpoints" do
      expect(subject.hitpoints).to eq(100)
    end

    it "can reduce hitpoints by 10" do
      expect(subject).to receive(:rand).and_return(10)
      expect { subject.take_damage }.to change { subject.hitpoints }.by(-10)
    end
  end

end