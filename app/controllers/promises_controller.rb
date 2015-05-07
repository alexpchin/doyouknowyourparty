class PromisesController < ApplicationController

  def index
    # @promises = Promise.includes(:party).all
    @promises = Party.all.map { |party| party.promises.sample(5) }.flatten.shuffle
    
    respond_to do |format|
      format.html
      format.json { render json: @promises, root: false }
    end
  end

  def check
    @scores = Promise.generate_answers(params[:promises])
    render json: @scores, root: false
  end

end
