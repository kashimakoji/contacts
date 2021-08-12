class ContactsController < ApplicationController
  def new   #フォームの値を新規作成、内容取得。
    @contact = Contact.new
  end

  def create  #newで入力した値を保存。DBのレコードに追加。#paramsメソッドで、フォームの入力値を取得
    #下に修正→Contact.create(name: params[:contact][:name], email:params[:contact][:email], content: params[:contact][:content])
    #更に修正、メソッドにする→Contact.create(params.require(:contact).permit(:name, :email, :content))
    Contact.create(contact_params)
    redirect_to new_contact_path
  end
  private   #strong Parameters〜セキュリティ強化
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
end
