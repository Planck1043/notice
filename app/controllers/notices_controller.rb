class NoticesController < ApplicationController
  def index
    @notice = Notice.all
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new

    if @notice.save
      redirect_to @notice
    else
      render "new"
    end
  end

  private

  def notice_params
    params.require(:notice).permit(:title, :text)
  end
end
