class TopController < ApplicationController
  def index
    render json: { "responses" => { "200" => { "data" => "LT会議 ライトニングトーク" } } }
  end
end
