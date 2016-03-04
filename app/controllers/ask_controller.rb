class AskController < ApplicationController
    def new
        @ask = Ask.new
         if params[:back]
           @ask = Ask.new(ask_params)
         end
    end
    
    def confirm
        @ask = Ask.new(ask_params)
        if @ask.valid?
              render :action=>'confirm'
        else
              @ask.errors.full_messages
               render :action=>'new'
        end
    end    
    
    def create
       @ask = Ask.new(ask_params)
       
     if params[:back]
           render :action=>'new'
      
     else respond_to do |format|
       if @ask.save
        AskMailer.received_email(@ask).deliver
        AskMailer.askfinished_email(@ask).deliver
        format.html { redirect_to controller:'ask',action:'finish' }
        format.json { render :finish, status: :created, location: @ask }
       else
        format.html { render :index }
        format.json { render json: @ask.errors, status: :unprocessable_entity }
       end
      end 
     end
    end
    

    private
     def ask_params
        params.require(:ask).permit(:name, :email, :content)
     end
end
