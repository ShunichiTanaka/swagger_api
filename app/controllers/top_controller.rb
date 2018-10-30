class TopController < ApplicationController
  def index
    render json: { status: 200, data: 'LT会議 ライトニングトーク' }
  end
end
