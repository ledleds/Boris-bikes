require 'dockingstation'

describe DockingStation do
  let(:dockingstation) {described_class.new}
  it {is_expected.to respond_to(:release_bike)}

  it 'checks if bike is working' do
    expect(dockingstation.release_bike).to be_working
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'Checks if a bike is returned' do
    outside_bike = Bike.new
    expect(dockingstation.dock(outside_bike)).to eq outside_bike
  end
end
