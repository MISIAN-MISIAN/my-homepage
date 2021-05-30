class ContactsController < ApplicationController

  def index
  end
  

  def new
    @contact = Contact.new
  end


  # def create
  #   @contact = Contact.new(contact_params)
  #   if @contact.save
  #     ContactMailer.contact_mail(@contact).deliver
  #     flash[:notice] = "お問い合わせを受けました"
  #     redirect_to root_path
  #   else
  #     render :new  
  #   end
  # end

  # 確認画面を作成する場合のコード
  # newアクションから入力内容を受け取り、
  # 送信ボタンを押されたらcreateアクションを実行される
  def confirm
    @contact = Contact.new(contact_params)
    if @contact.invalid?
      render :new
    end
  end
  

  # 入力内容に誤りがあった場合、入力内容を保持したまま前のページに戻る
  # backアクションを定義することで可能
  def back
    @contact = Contact.new(contact_params)
    render :new
  end

  # 実際に送信するアクション
  # ここで初めて入力内容を保存
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      redirect_to done_path
    else
      render :new
    end
  end

  # 送信完了画面を使用する場合お使いください。
  def done
  end


  private

  def contact_params
    params.require(:contact).permit(:email, :message, :name, :subject)
  end
end
