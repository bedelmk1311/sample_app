class List < ApplicationRecord
  # ActiveStorageを使って画像を表示する際には、どのモデルに対して画像を使うのかを宣言
  has_one_attached :image
end
