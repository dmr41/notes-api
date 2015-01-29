class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json:{notes: @notes}
  end

  def show
    @note = Note.find(params[:id])
    render json:{note: @note}
  end

  def update
    @note = Note.find(params[:id])
    @note.update(user_params)
    render json:{note: @note}
  end

  def create
    @note = Note.new(user_params)
    @note.save
    render json:{note: @note}
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    head :no_content
  end

  def user_params
    params.require(:note).permit(:title, :body)
  end



end
