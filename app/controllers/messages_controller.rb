class MessagesController < ApplicationController
	
	skip_before_filter :verify_authenticity_token

	def index
		@messages=Message.all
		@messages=Message.order('created_at DESC')
	end

	def show
		@messages=Message.find(params[:id])
	end

	def new
		@messages=Message.new
	end

	def create
		@messages=Message.new(message_params)
		
		if @messages.save
			redirect_to "/messages"
		else
			render :new
		end
	end

	private

	def message_params
		params.require(:message).permit(:title,:body,:number)
	end
end