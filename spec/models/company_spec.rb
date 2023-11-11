require 'rails_helper'

RSpec.describe Company, type: :model do
  before do
    @company = FactoryBot.build(:company)
  end

  describe '事業者の新規登録' do
    context '新規登録できる場合' do
      it "10項目が全て存在すれば登録できる" do
       expect(@company).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'emailが空では登録できない' do
        @company.email = ''
        @company.valid?
        expect(@company.errors.full_messages).to include "Email can't be blank"
      end
      it 'passwordが空では登録できない' do
        @company.password = ''
        @company.valid?
        expect(@company.errors.full_messages).to include "Password can't be blank"
      end
      it 'encrypted_passwordが空では登録できない' do
        @company.encrypted_password = ''
        @company.valid?
        expect(@company.errors.full_messages).to include "Encrypted password can't be blank"
      end
      it 'company_nameが空では登録できない' do
        @company.company_name = ''
        @company.valid?
        expect(@company.errors.full_messages).to include "Company name can't be blank"
      end
      it 'company_name_kanaが空では登録できない' do
        @company.company_name_kana = ''
        @company.valid?
        expect(@company.errors.full_messages).to include "Company name kana can't be blank"
      end
      it 'user_nameが空では登録できない' do
        @company.user_name = ''
        @company.valid?
        expect(@company.errors.full_messages).to include "User name can't be blank"
      end
      it 'user_name_kanaが空では登録できない' do
        @company.user_name_kana = ''
        @company.valid?
        expect(@company.errors.full_messages).to include "User name kana can't be blank"
      end
      it 'post_codeが空では登録できない' do
        @company.post_code = ''
        @company.valid?
        expect(@company.errors.full_messages).to include "Post code can't be blank"
      end
      it 'addressが空では登録できない' do
        @company.address = ''
        @company.valid?
        expect(@company.errors.full_messages).to include "Address can't be blank"
      end
      it 'telephoneが空では登録できない' do
        @company.telephone = ''
        @company.valid?
        expect(@company.errors.full_messages).to include "Telephone can't be blank"
      end
      it '重複したemailは登録できない' do
        @company.save
        another_company = FactoryBot.build(:company, email: @company.email)
        another_company.valid?
        expect(another_company.errors.full_messages).to include 'Email has already been taken'
      end
      it '@を含んでないemailは登録できない' do
        @company.email = 'kb.ezweb.jp'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Email is invalid'
      end
      it '５文字以下のパスワードは登録できない' do
        @company.password = '12aaa'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Password is too short (minimum is 6 characters)'
      end
      it 'passwordは129文字以上では、登録できない' do
        @company.password = Faker::Internet.password(min_length: 129, max_length: 150)
        @company.password_confirmation = @company.password
        @company.valid?
        expect(@company.errors.full_messages).to include 'Password is too long (maximum is 128 characters)'
      end
      it 'パスワードと確認用パスワードは一致していないと登録できない' do
        @company.password = '123aaa'
        @company.password_confirmation = '123bbb'
        @company.valid?
        expect(@company.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
      it 'パスワードは全角英語が含まれていたら、登録できない' do
        @company.password = 'ｋ11111'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Password には英字と数字の両方を含めて設定してください'
      end
      it 'パスワードは全角数字が含まれていたら、登録できない' do
        @company.password = '８aaaaa'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Password には英字と数字の両方を含めて設定してください'
      end
      it 'パスワードは半角英語だけでは登録できない' do
        @company.password = 'aaazzz'
        @company.password_confirmation = 'aaazzz'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Password には英字と数字の両方を含めて設定してください'
      end
      it 'パスワードは半角数字だけでは登録できない' do
        @company.password = '111222'
        @company.password_confirmation = '111222'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Password には英字と数字の両方を含めて設定してください'
      end
      it '会社名（漢字・ひらがな・カタカナ）は半角文字が含まれていたら、登録できない' do
        @company.company_name = 'ｷ'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Company name 全角（漢字・ひらがな・カタカナ）を使用してください'
      end
      it '申込責任者の名前（漢字・ひらがな・カタカナ）は半角文字が含まれていたら、登録できない' do
        @company.user_name = 'ｷ'
        @company.valid?
        expect(@company.errors.full_messages).to include 'User name 全角（漢字・ひらがな・カタカナ）を使用してください'
      end
      it '会社名（かな）は漢字・カタカナが含まれていたら、登録できない' do
        @company.company_name_kana = 'ヤ木'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Company name kana 全角（ひらがな）を使用してください'
      end
      it '申込責任者（かな）は漢字・カタカナが含まれていたら、登録できない' do
        @company.user_name_kana = 'ヤ狗'
        @company.valid?
        expect(@company.errors.full_messages).to include 'User name kana 全角（ひらがな）を使用してください'
      end
      it '郵便番号は全角数字では、登録できない' do
        @company.post_code = '１２３-１２３４'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Post code is invalid'
      end
      it '郵便番号は-なしでは、登録できない' do
        @company.post_code = '1234567'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Post code is invalid'
      end
      it '電話番号は10桁では、登録できない' do
        @company.telephone = '1234567891'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Telephone is invalid'
      end
      it '電話番号は12桁では、登録できない' do
        @company.telephone = '123456789123'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Telephone is invalid'
      end
      it '電話番号は-ありでは、登録できない' do
        @company.telephone = '123-4567-8989'
        @company.valid?
        expect(@company.errors.full_messages).to include 'Telephone is invalid'
      end
      
      
    end
  end

end
