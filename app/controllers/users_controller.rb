class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :correct_user?, :except => [:index, :show]

  def index
    @users = User.all

    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def edit
    @user = User.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user}
        format.json { render json: @user, status: :updated, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_enry}
      end
    end
  end


  def show
    @user = User.find(params[:id])
    @tricks = @user.tricks

    respond_to do |format|
      format.html
      format.json { render json: {:user => @user.to_json(:include => :tricks)}}
    end
  end

end
