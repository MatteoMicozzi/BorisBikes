require 'Docking_Station'

describe DockingStation do
   it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'raise Error if releases a bike with none available' do
      expect { subject.release_bike }.to raise_error('You do not have any bikes!')
      subject.dock(Bike.new)
      subject.release_bike
      expect(subject.bikes.length).to eq(0)
    end
  end

describe '#dock' do
  it 'raise an error if the docking station is full' do
    20.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error('The docking station is full!')
  end
end

  it 'dock something' do
    bike = Bike.new
    amount = subject.bikes.length
    subject.dock(bike)
    expect(subject.bikes.length).to eq(amount + 1)
   end

   it 'returns docked bike' do
     bike = Bike.new
     subject.dock(bike)
     expect(bike).to eq(subject.bikes[0])
   end
end
