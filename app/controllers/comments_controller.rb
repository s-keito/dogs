class CommentsController < ApplicationController
  
  def new
  end

  def create
  end

  def destroy
  end


private

 def comment_params
  params.requier(:comment).permit(:comment)
 end  
end