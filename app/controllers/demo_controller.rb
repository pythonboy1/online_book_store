class DemoController < ApplicationController
  layout "obs"

  before_action :confirm_login , :except => [:login, :access, :register, :create, :index]
  def index
    @val = params[:val]
  end

  def login
  end

  def register
    if params[:error] != nil
      session[:error] = params[:error]
      session[:mess] = params[:mess]
    end
  end

  def create
    @error = 00
    @register = User.new(user_params)
    if params[:password_confirmation] == ''
      @error = 10
      @mess = "Confirm Password Can't be Blank"
      redirect_to(:action => 'register', :mess => @mess , :error => @error)
    end
    @register.password_confirmation == params[:password_confirmation]
    if !@register.valid?
      @error = 10
      @mess = @register.errors.full_messages[0]
      redirect_to(:action => 'register',:error => @error, :mess => @mess)
    else
      lastval = User.last
      if lastval
        @comp_id = lastval.comp_id
        @comp_id = @comp_id.succ
      else
        @comp_id = "OBS0001"
      end
      if @register.new_record?
        @register.update_attribute(:comp_id, @comp_id)
      else
        print false
        redirect_to(:action => 'register',:error => @error)
      end
      if @register.save
        session[:user_id] = @register.comp_id
        session[:username] = @register.first_name
        redirect_to(:action => 'index',:username => @register.first_name)
      else
        render('login')
      end
    end

  end

  def access
    @error = 0
    @register = User.find_by(:email_id => access_params[:email_id])

    if @register != nil
      @error = 0
      authenticate = @register.authenticate(access_params[:password])
      if authenticate
        session[:user_id] = authenticate.comp_id
        session[:username] = authenticate.first_name
        @val = 0
        p session[:username]
        redirect_to(:action => "index", :username => authenticate.first_name, :val => @val)
      else
        render('login')
        @error = 1
      end
    else
      render('login')
      @error = 1
    end
  end

  def shop

  end

  def single
  end

  def books

  end

  def aboutme
  end

  def logout
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = "Logged Out"
    redirect_to(:action => 'login')
  end

  def tryit
    if params[:id] == '1'
      @book_name = 'Html Language Book'
      @author_name = 'Jeffery Way'
      nam = 'Book_html_part_1'
      @list = ['Book_html_2', nam, nam.succ, nam.succ.succ, nam.succ.succ, nam.succ.succ.succ]

    elsif params[:id] == '2'
      @book_name = 'Microsoft Office Book'
      @author_name = 'Peter Weverka'
      nam = 'Book_office_part_1'
      @list = ['Book_office_1', nam, nam.succ, nam.succ.succ, nam.succ.succ, nam.succ.succ.succ]
    elsif params[:id] == '3'
      @book_name = 'Cryptography Book'
      @author_name = 'William Stallings'
      nam = 'Book_cryptography_part_1'
      @list = ['Book_cryptography_1', nam, nam.succ, nam.succ.succ, nam.succ.succ, nam.succ.succ.succ]
    elsif params[:id] == '4'
      @book_name = 'C++ Game Development Book'
      @author_name = 'Michael Dawson'
      nam = 'Book_cpp_part_1'
      @list = ['Book_cpp_1', nam, nam.succ, nam.succ.succ, nam.succ.succ, nam.succ.succ.succ]
    elsif params[:id] == '5'
      @book_name = 'Computer Science Book'
      @author_name = 'College Board'
      nam = 'Book_cs_part_1'
      @list = ['Book_cs_1', nam, nam.succ, nam.succ.succ, nam.succ.succ, nam.succ.succ.succ]
    elsif params[:id] == '6'
      @book_name = "Oracle Programmer's Book"
      @author_name = 'Katty & Bert'
      nam = 'Book_oracle_part_1'
      @list = ['Book_oracle_1', nam, nam.succ, nam.succ.succ, nam.succ.succ, nam.succ.succ.succ]
    elsif params[:id] == '7'
      @book_name = 'Windows Programming Book'
      @author_name = 'Charles Petzold'
      nam = 'Book_windows_part_1'
      @list = ['Book_windows_1', nam, nam.succ, nam.succ.succ, nam.succ.succ, nam.succ.succ.succ]
    elsif params[:id] == '8'
      @book_name = 'R Language Book'
      @author_name = 'John & Braun'
      nam = 'Book_r_part_1'
      @list = ['Book_r_1', nam, nam.succ, nam.succ.succ, nam.succ.succ, nam.succ.succ.succ]

    end
  end

  private
  def user_params
    params.require(:user).permit(:comp_id,:first_name, :last_name, :email_id, :password, :password_confirmation)
  end
  def access_params
    params.require(:user).permit(:email_id, :password)
  end


end
