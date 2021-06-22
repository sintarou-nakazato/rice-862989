require 'rails_helper'
RSpec.describe Food, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'ユーザーコメント機能' do
    context '内容に問題がない場合' do
      it 'すべての項目の入力が存在すれば登録できる' do
        expect(@comment).to be_valid
      end
    end
    context '内容に問題がある場合' do
      it 'textが空では登録できない' do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include 'Textを入力してください'
      end
    end
  end
end
