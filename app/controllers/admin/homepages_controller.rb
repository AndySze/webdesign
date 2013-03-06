class Admin::HomepagesController < ApplicationController
  def index
    @settings = Homepage.first_or_create()
  end

  def update
    @settings = Homepage.first_or_create()
    if @settings.update_attributes(params[:homepage])
      redirect_to admin_homepages_path(@settings), notice: '首页设置已经更新'
    else
      render action: "edit"
    end
  end
end
