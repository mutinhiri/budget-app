require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.new(name: 'Bunbee', email: 'bunbee@gmail.com', password: 'password')
    @user.save
    @apple = @user.groups.new(name: 'Apple',
                              icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMtUNM5uBlCbUIkVzVgo7JnBsxmEDebV_vTw&usqp=CAU')
  end
  it 'valid when all fields are not nil' do
    expect(@apple).to be_valid
  end
  it 'name field is required' do
    @apple.name = nil
    expect(@apple).to_not be_valid
  end
  it 'icon field is required' do
    @apple.icon = nil
    expect(@apple).to_not be_valid
  end
  it 'should belong to an user' do
    @apple.user_id = nil
    expect(@apple).to_not be_valid
  end
  it 'should render correct name' do
    expect(@user).to be_valid
  end
  it 'should return username' do
    expect(@user.name).to eq('Bunbee')
  end
end
