class RecordsController < ApplicationController
  before_action :load_record, only: [:show, :edit, :update, :destroy]

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new record_params
    if @record.save
      render json: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def record_params
    params.require(:record).permit(:title, :date, :amount)
  end

  def load_record
    @record = Record.find params[:id]
  end

end
