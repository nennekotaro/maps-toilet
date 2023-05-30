FactoryBot.define do
  factory :map_toilet do
    addresses                   { "#{Faker::Address.city_prefix}#{Faker::Address.city}#{Faker::Address.street_address}" }
    title                       { Faker::Lorem.characters(number: rand(1..10)) }
    info                        { Faker::Lorem.characters(number: rand(1..300)) }
    accessible_id               { Faker::Number.between(from: 2, to: Accessible.all.length) }
    baby_chair_id               { Faker::Number.between(from: 2, to: BabyChair.all.length) }
    change_table_id             { Faker::Number.between(from: 2, to: ChangeTable.all.length) }
    gender_id                   { Faker::Number.between(from: 2, to: Gender.all.length) }
    paper_id                    { Faker::Number.between(from: 2, to: Paper.all.length) }
    powder_room_id              { Faker::Number.between(from: 2, to: PowderRoom.all.length) }
    slippers_id                 { Faker::Number.between(from: 2, to: Slippers.all.length) }
    toilet_style_id             { Faker::Number.between(from: 2, to: ToiletStyle.all.length) }
    toilet_wipes_id             { Faker::Number.between(from: 2, to: ToiletWipes.all.length) }
    warm_id                     { Faker::Number.between(from: 2, to: Warm.all.length) }
    washlet_id                  { Faker::Number.between(from: 2, to: Washlet.all.length) }
  end
end
