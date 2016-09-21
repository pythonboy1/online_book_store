class InfoController < ApplicationController
  layout "obs"
  def skill
  end

  def downloadResume
    send_file "#{Rails.root}/public/data/MyResumeBlack.pdf", :type => "application/pdf"
  end

  def sourcecode
  end

  def books
    if params[:id] == '1'
      send_file "#{Rails.root}/public/data/Decoding.HTML5.pdf", :type => "application/pdf"
    elsif params[:id] == '2'
      send_file "#{Rails.root}/public/data/Office 2013 All-In-One For Dummies.pdf", :type => "application/pdf"
    elsif params[:id] == '3'
      send_file "#{Rails.root}/public/data/Cryptography and Network Security.pdf", :type => "application/pdf"
    elsif params[:id] == '4'
      send_file "#{Rails.root}/public/data/C++_Through_Game_Programming.pdf", :type => "application/pdf"
    elsif params[:id] == '5'
      send_file "#{Rails.root}/public/data/ap-computer-science-principles-curriculum-framework.pdf", :type => "application/pdf"
    elsif params[:id] == '6'
      send_file "#{Rails.root}/public/data/OCAOCP Java SE 7.pdf", :type => "application/pdf"
    elsif params[:id] == '7'
      send_file "#{Rails.root}/public/data/Programming.Windows.pdf", :type => "application/pdf"
    elsif params[:id] == '8'
      send_file "#{Rails.root}/public/data/Data Analysis and Graphics Using R.pdf", :type => "application/pdf"
    end

  end

end
