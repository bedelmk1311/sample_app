class List < ApplicationRecord
  # ActiveStorageを使って画像を表示する際には、どのモデルに対して画像を使うのかを宣言
  has_one_attached :image

  # validates presence（存在）をチェック
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
