class DemoController < ApplicationController
  layout "obs"
  @username = "Unknown"
  def index
    session[:username] = params[:username]
    p session[:username]
  end

  def login
  end

  def register
    lastval = User.last
    @comp_id = lastval.comp_id
    @comp_id  = @comp_id.succ
    @register = User.new
  end
  def create
    lastval = User.last
    @comp_id = lastval.comp_id
    @comp_id  = @comp_id.succ
    @register = User.new(user_params)
    if @register.new_record?
      @register.update_attribute(:comp_id,@comp_id)
    else
      print false
    end
    if @register.save
      redirect_to(:action => 'index')

    else
      render('login')
    end
  end

  def access
    @error = 0
    @register = User.find_by({:email_id => access_params[:email_id],:password => access_params[:password]})
    if @register != nil
      @error = 0
      session[:username] = @register.first_name
      p session[:username]
      redirect_to(:action => "index", :username => @register.first_name)
    else
      render('login')
      @error = 1
    end
  end

  def shop
  end

  def single
  end

  def aboutme
  end

  private
  def user_params
    params.require(:user).permit(:comp_id,:first_name, :last_name, :email_id, :password)
  end
  def access_params
    params.require(:user).permit(:email_id, :password)
  end

end
