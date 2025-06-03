class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to homes_top_path
  end

  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end

  private
  # privateは一種の境界線で、ここから下はこのcontrollerの中でしか呼び出せませんの意味
  # privateメソッドの名前は、「モデル名_params」とすることが多いです

  # ストロングパラメータ
  # 保存できるカラムを限定する時に使う
  # ここではlistモデルのtitleとbodyの保存を許可する
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
