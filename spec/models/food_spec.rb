require 'rails_helper'
RSpec.describe Food, type: :model do
  before do
    @food = FactoryBot.build(:food)
  end

  describe 'ユーザー投稿機能' do
    context '内容に問題がない場合' do
      it 'すべての項目の入力が存在すれば登録できる' do
        expect(@food).to be_valid
      end
    end
    context '内容に問題がある場合' do
      it 'titleが空では登録できない' do
        @food.title = ''
        @food.valid?
        expect(@food.errors.full_messages).to include "タイトルを入力してください"
      end
      it 'catch_copyが空なら登録できない' do
        @food.catch_copy = ''
        @food.valid?
        expect(@food.errors.full_messages).to include "キャッチコピーを入力してください"
      end
      it 'menuが空なら登録できない' do
        @food.menu = ''
        @food.valid?
        expect(@food.errors.full_messages).to include "レシピを入力してください"
      end
      it 'image何からなら登録できない' do
        @food.image = nil
        @food.valid?
        expect(@food.errors.full_messages).to include "画像を入力してください"
      end
    end
  end
end