class InfoController < ApplicationController
  layout "obs"
  def skill
  end

  def downloadResume
    send_file "#{Rails.root}/public/data/MyResumeBlack.pdf", :type => "application/pdf"
  end

  def sourcecode

  end

end
