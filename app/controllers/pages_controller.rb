class PagesController < ApplicationController
  respond_to :html

  def index
  end

  def solve
    @puzzle = params[:board]
    @puzzle.gsub!("\r\n", "\n")
    time1 = Time.now
    @solution = SudokuGem.solve(@puzzle)
    time2 = Time.now
    @performance = time2 - time1
  end
end
