class MessagesController < ApplicationController
http_basic_authenticate_with name: "admin", password: "secret", except: [:create]
    
    def index
        @messages = Message.all
    end
    
    def create
        @message = Message.create(message_params)
    
        if @message.save
            message = { notice: "Message sent!"}
        end
        
        redirect_to contact_path, flash: message
    end
    
    def destroy
    @message = Message.find(params[:id])
    @message.destroy
 
    redirect_to messages_path
  end
	
  private
    def message_params
      params.require(:message).permit(:title, :text)
    end

    
end
