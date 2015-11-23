class Participation < ActiveRecord::Base

  validates :name, length: { presence: true, minimum: 2, maxmum: 32, message: 'を入力してください' }
  validates :telphone, numericality: { only_integer: true, is: 11, message: 'は数字のみで入力してください'}
  validates :mail, length: { presence: true, minimum: 0, message: 'を入力してください' }
end
