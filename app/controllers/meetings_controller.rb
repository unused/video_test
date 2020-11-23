class MeetingsController < ApplicationController

  def new; end

  def create
    @access_key = create_access_key
    redirect_to action: :show, access_key: @access_key
  end

  def show
    @access_key = params.require :access_key
  end

  private

  def create_access_key
    Eyeson::Room.join(
      id: '59X4wRwESzXxk2',
      name: 'Test 1',
      user: user_attributes,
      options: room_options
    ).access_key
  end

  def user_attributes
    {
      id: SecureRandom.uuid,
      name: Faker::Name.name,
      avatar: Faker::Avatar.image
    }
  end

  def room_options
    {
      recording_available: false,
      broadcast_available: false,
      exit_url: "http://vm.com:3000/"
    }
  end
end
