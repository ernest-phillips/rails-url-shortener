class ShortenedUrlsController < ApplicationController
  def def new
    @shortened_url = ShortenedUrl.new
  end

  def create_table
    @shortened_url = ShortenedUrl.create(original_url: params[:original_url])

    @shortened_url.short_code = SecureRandom.urlsafe_base64(6)
    @shortened_url.after_save
    redirect_to @shortened_url
  end

  def show
    @shortened_url = ShortenedUrl.find(params[:id])
  end

  def redirect
    @shortened_url = ShortenedUrl.find_by(short_code: params[:short_code])
    redirect_to @shortened_url.original_url
  end


end
