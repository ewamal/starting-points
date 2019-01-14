require 'spec_helper'

describe "World" do
  subject { World.new }
  it 'should create a new world' do
    expect(subject).to be_instance_of(World)
  end

  it 'should create grid on init' do
    expect(subject.grid.is_a? Array).to be true
  end

  it 'grid should have a length of columns' do
    expect(subject.grid.size).to eq 3
  end

  context 'cell' do
    subject { Cell.new }
    it 'should create a new cell' do
      expect(subject).to be_instance_of(Cell)
    end

    it "should init with alive false" do
      expect(subject.alive).to be false
    end

  end


end
