class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :setup_users, except: [:show]

  def index
    @messages = Message.where("from_id IN (:ids) AND to_id IN (:ids)",ids:@ids)
    @message = Message.new
  end


  def create
    @message = current_user.outgoing_messages.build(message_params)
    @message.to_id = params[:user_id] 
    puts "ここだよ"
    p @message.to_id
    p current_user
    p @message
    if @message.to_id != current_user.id
      @messages = Message.where("from_id IN (:ids) AND to_id IN (:ids)",ids:@ids)
      if @message.save
        redirect_to  action: "index", id: @to_user.id
        # respond_to do |format|
        #   format.html { redirect_to  messages_url(@to_user)}
        #   format.js { render "create"}
        # end
      else
        puts "ここだよ"
        p @message.errors.full_messages
        p @message.errors
        p @message.errors.count
        p @message.errors.any?
        #render  action: "index", id: @to_user.id, notice:"メッセージの送信に失敗しました"
        render :index, status: :unprocessable_entity
      end
    end  
  end
  
  def show
    @current_user_messages = Message.where(to_id: current_user.id).or(Message.where(from_id: current_user.id))
    @current_user_to_users = @current_user_messages.pluck(:to_id)
    @current_user_from_users = @current_user_messages.pluck(:from_id)
    @current_user_from_users.each do |current_user_from_user|
     @interacting_users = @current_user_to_users.append(current_user_from_user).uniq
    end
    if @interacting_users.include?(current_user.id)
     @interacting_users.delete(current_user.id)
    end 
    @users = User.where(id:@interacting_users)
    @message_last_sent = []
    @user_last_sent = []
    @users.each_with_index do |user, index|
     @ids = [user.id, current_user.id]  
     @message_last_sent[index] = Message.where("from_id IN (:ids) AND to_id IN (:ids)",ids:@ids).last
     @user_last_sent[index] = User.find(@message_last_sent[index].from_id)
    end
    
    puts "ここだよ"
    p @current_user_to_users
    p @current_user_from_users
    p @interacting_users
  end
  
  def destroy
   @message = Message.find(params[:id])
   puts "ここだよ"
   p params[:id]
   if @message.destroy
     redirect_to action: "index", user_id: @message.to_id, status: :see_other
   else
     render :index, notice:"削除に失敗しました"
   end
  end

  private
  def message_params
    params.require(:message).permit(:content)
  end

  def setup_users
    @to_user = User.find(params[:user_id])
    @ids = [@to_user.id,current_user.id]
  end
end
