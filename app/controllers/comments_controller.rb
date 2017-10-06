class CommentsController < ApplicationController
  def new
  	@comment = Comment.new
  end

	def create
		Comment.new(comment_params).save 
		redirect_back(fallback_location: root_path)
	end

	def detrroy
		Comment.find_by_id(params[:id]).destroy
	end

	private

		def comment_params
			params.require("comment").permit(:id, :content, :post_id, :_destroy)
		end
end
