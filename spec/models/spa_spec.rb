require 'rails_helper'

RSpec.describe Spa, type: :model do
  before do 
    @spa = FactoryBot.build(:spa)
  end

  

  describe '施設情報の登録' do
    context '登録できる場合' do
      it "6項目が全て存在すれば登録できる" do
        expect(@spa).to be_valid
       end
    end
    context '登録できない場合' do
      it 'nameが空では登録できない' do
        @spa.name = ''
        @spa.valid?
        expect(@spa.errors.full_messages).to include "Name can't be blank"
      end
      it 'detailが空では登録できない' do
        @spa.detail = ''
        @spa.valid?
        expect(@spa.errors.full_messages).to include "Detail can't be blank"
      end
      it 'facilityが空では登録できない' do
        @spa.facility = ''
        @spa.valid?
        expect(@spa.errors.full_messages).to include "Facility can't be blank"
      end
      it 'business_hoursが空では登録できない' do
        @spa.business_hours = ''
        @spa.valid?
        expect(@spa.errors.full_messages).to include "Business hours can't be blank"
      end
      it 'accessが空では登録できない' do
        @spa.access = ''
        @spa.valid?
        expect(@spa.errors.full_messages).to include "Access can't be blank"
      end
      it 'imageが空では登録できない' do
        @spa.image = nil
        @spa.valid?
        expect(@spa.errors.full_messages).to include "Image can't be blank"
      end
      it 'companyが紐付いていなければ出品できない' do
        @spa.company = nil
        @spa.valid?
        expect(@spa.errors.full_messages).to include 'Company must exist'
      end
    end
  end
end
