class SectionsController < ApplicationController
  def index
    @chapter = Chapter.find(params[:chapter_id])
    @sections = @chapter.sections.all
  end
  def show
    @section = Section.find(params[:id])
  end

  def new
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new
  end

  def create
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new(section_params)
    if @section.save
      redirect_to chapter_path(@section.chapter)
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    @chapter = @section.chapter
    if @section.update(section_params)
      redirect_to chapter_path(@chapter)
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @chapter = @section.chapter
    @section.destroy
    redirect_to chapter_path(@chapter)
  end

private
  def section_params
    params.require(:section).permit(:title, :week)
  end
end
