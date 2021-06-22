require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '内容に問題がない場合' do
      it 'すべての項目の入力が存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
        @user.password = '000000a'
        @user.password_confirmation = '000000a'
        expect(@user).to be_valid
      end
    end
    context '内容に問題がある場合' do
      it 'nameが空では登録できない' do
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include '名前を入力してください'
      end
      it 'profileが空なら登録できない' do
        @user.profile = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'プロフィールを入力してください'
      end
      it 'emailが空なら登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'メールアドレスを入力してください'
      end
      it 'passwordが空なら登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードを入力してください'
      end
      it 'passwordが存在してもpassword_confirmationが無い場合は登録できないこと' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password confirmationとパスワードの入力が一致しません'
      end
      it 'passwordが半角英数字でなければ登録できない' do
        @user.password = 'ABC'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは不正な値です'
      end
      it 'passwordが半角英字だけでは登録できないこと' do
        @user.password = 'aaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは不正な値です'
      end
      it 'passwordが半角数字だけでは登録できないこと' do
        @user.password = '00000000'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは不正な値です'
      end
      it 'emailに@がなければ登録できない' do
        @user.email = 'i'
        @user.valid?
        expect(@user.errors.full_messages).to include 'メールアドレスは不正な値です'
      end
      it '重複したemailが存在する場合は登録できないこと' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include 'メールアドレスはすでに存在します'
      end
    end
  end
end
