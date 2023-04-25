class OutputsController < ApplicationController
  def new
    @output = Output.new
  end
  
  def index
    @outputs = Output.all
  end
  
  def show
    @output = Output.find(params[:id])
  end
  
  def create
    Output.create(output_params)
    redirect_to root_path
  end
  
  def edit
    @output = Output.find(params[:id])
  end
  
  def update
    @output = Output.find(params[:id])
    if @output.update(output_params)
      redirect_to outputs_path, notice: "編集しました"
    else
      render 'edit'
    end
  end
  
  def destroy
    @output = Output.find(params[:id])
    @output.destroy
    redirect_to outputs_path, notice:"削除しました"
  end
  
  private
  
  def output_params
    params.require(:output).permit(:book_title, :diary, :thoughts, :goal, :reading_time, :page, :genre_id, :start_time)
  end
  
end
