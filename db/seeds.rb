# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: 'user1@test.com',
  password: 'password1',
  name: '名前1',
  school: '学校1',
  grade: '1',
  department: '学部1',
  gender: '1'
)
User.create(
  email: 'user2@test.com',
  password: 'password2',
  name: '名前2',
  school: '学校2',
  grade: '2',
  department: '学部2',
  gender: '2'
)
User.create(
  email: 'user3@test.com',
  password: 'password3',
  name: '名前3',
  school: '学校3',
  grade: '3',
  department: '学部3',
  gender: '1'
)
User.create(
  email: 'user4@test.com',
  password: 'password4',
  name: '名前4',
  school: '学校4',
  grade: '4',
  department: '学部4',
  gender: '2'
)

Restaurant.create(
  email: 'restaurant1@test.com',
  password: 'password1',
  name: 'レストラン1',
  address: '住所1'
)
Restaurant.create(
  email: 'restaurant2@test.com',
  password: 'password2',
  name: 'レストラン2',
  address: '住所2'
)
Restaurant.create(
  email: 'restaurant3@test.com',
  password: 'password3',
  name: 'レストラン3',
  address: '住所3'
)

Coupon.create(
  min_setting_count: 4,
  content: '割引内容1',
  exp_date: '2020-07-25',
  restaurant_id: 1
)
Coupon.create(
  min_setting_count: 5,
  content: '割引内容2',
  exp_date: '2020-07-26',
  restaurant_id: 1
)
Coupon.create(
  min_setting_count: 4,
  content: '割引内容3',
  exp_date: '2020-07-27',
  restaurant_id: 2
)

Event.create(
  setting_count: '4',
  prace: '場所1',
  content: '内容1',
  event_date: '2020-07-20',
  deadline_date: '2020-07-18',
  coupon_id: 1,
  host_id: 1
)
Event.create(
  setting_count: '5',
  prace: '場所2',
  content: '内容2',
  event_date: '2020-07-21',
  deadline_date: '2020-07-19',
  coupon_id: 2,
  host_id: 2
)
Event.create(
  setting_count: '4',
  prace: '場所3',
  content: '内容3',
  event_date: '2020-07-22',
  deadline_date: '2020-07-20',
  coupon_id: 3,
  host_id: 3
)

EventUser.create(event_id: 1, member_id: 2)
EventUser.create(event_id: 1, member_id: 3)
EventUser.create(event_id: 2, member_id: 4)
