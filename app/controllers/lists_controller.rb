class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      flash[:notice] = "投稿に成功しました。"
      redirect_to list_path(@list.id)
    else
      # flash.nowでフラッシュメッセージを定義する
      # renderとセットで使われることが多い
      # flashだとメッセージが残り続ける
      flash.now[:alert] = "投稿に失敗しました。" #CSS用にキーをalertに変更
      render :new
      # render :同じコントローラ内の別アクションのViewを表示
    end
  end

  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end
  
  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to lists_path
  end

  def destroy
    list = List.find(params[:id])  # データ（レコード）を1件取得
    list.destroy  # データ（レコード）を削除
    redirect_to '/lists'  # 投稿一覧画面へリダイレクト  
  end

  private
  # privateは一種の境界線で、ここから下はこのcontrollerの中でしか呼び出せませんの意味
  # privateメソッドの名前は、「モデル名_params」とすることが多いです

  # ストロングパラメータ
  # 保存できるカラムを限定する時に使う
  # ここではlistモデルのtitleとbodyの保存を許可する
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
