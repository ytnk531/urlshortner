class UrlsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @url = Url.new
  end

  def create
    @url = Url.new
    @url.orig = params[:url][:orig]
    @url.short= gen_name
    @url.save
  end
    
  def view
    @url = Url.find_by_short(params[:id])
    redirect_to @url.orig ,status => :moved_permanently
  end

  private
  def gen_name
    [*0..9, *'a'..'z', *'A'..'Z'].sample(10).join
  end
end
