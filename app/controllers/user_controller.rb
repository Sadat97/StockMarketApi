class UserController < ApplicationController

def create
  User.create(user_param)
end

private

def user_param
params.require(:user).permit(:name)
end

end