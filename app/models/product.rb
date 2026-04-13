class Product < ApplicationRecord
  has_one_attached :image

  # データの更新・削除後に "products" ストリームへリフレッシュ通知を送信する
  after_commit -> { broadcast_refresh_later_to "products" }
end
