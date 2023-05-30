require 'rails_helper'

RSpec.describe MapToilet, type: :model do
  describe 'トイレマーカーの保存' do
    before do
      user = FactoryBot.create(:user)
      @map_toilet = FactoryBot.build(:map_toilet, user_id: user.id)
    end

    context '内容に問題ない場合' do
      it '全ての値が正しく入力されていれば保存できること' do
        expect(@map_toilet).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'addressesが空だと保存できない'  do
        @map_toilet.addresses = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Addresses can't be blank")
      end
      it 'titleが空だと保存できない'  do
        @map_toilet.title = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Title can't be blank")
      end
      it 'infoが空だと保存できない'  do
        @map_toilet.info = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Info can't be blank")
      end
      it 'accessibleを選択していないと保存できないこと' do
        @map_toilet.accessible_id = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Accessible can't be blank")
      end
      it 'baby_chairを選択していないと保存できないこと' do
        @map_toilet.baby_chair_id = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Baby chair can't be blank")
      end
      it 'change_tableを選択していないと保存できないこと' do
        @map_toilet.change_table_id = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Change table can't be blank")
      end
      it 'genderを選択していないと保存できないこと' do
        @map_toilet.gender_id = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Gender can't be blank")
      end
      it 'paperを選択していないと保存できないこと' do
        @map_toilet.paper_id = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Paper can't be blank")
      end
      it 'powder_roomを選択していないと保存できないこと' do
        @map_toilet.powder_room_id = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Powder room can't be blank")
      end
      it 'slippersを選択していないと保存できないこと' do
        @map_toilet.slippers_id = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Slippers can't be blank")
      end
      it 'toilet_styleを選択していないと保存できないこと' do
        @map_toilet.toilet_style_id = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Toilet style can't be blank")
      end
      it 'toilet_wipesを選択していないと保存できないこと' do
        @map_toilet.toilet_wipes_id = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Toilet wipes can't be blank")
      end
      it 'warmを選択していないと保存できないこと' do
        @map_toilet.warm_id = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Warm can't be blank")
      end
      it 'washletを選択していないと保存できないこと' do
        @map_toilet.washlet_id = ''
        @map_toilet.valid?
        expect(@map_toilet.errors.full_messages).to include("Washlet can't be blank")
      end
    end
  end
end
