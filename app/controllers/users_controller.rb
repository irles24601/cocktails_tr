class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @cocktails = @user.cocktails.page(params[:page]).reverse_order
  end
end
