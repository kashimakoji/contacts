class ContactsController < ApplicationController
  def new   #フォームを作成。DBのレコードに追加。
    @contact = Contact.new
  end

  def create  #newで入力した値を取得
    Contact.create(name: params[:contact][:name], email:params[:contact][:email], content: params[:contact][:content])
    
  end
end
