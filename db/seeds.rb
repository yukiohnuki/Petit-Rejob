# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name:"大貫",
	    name_kana: "おおぬき",
	    mail: "ohnuki@rejob.co.jp",
	    password: "test",
	    password_confirmation: "test",
	    prefecture_id: "1",
	    city: "東村山市")

AdminUser.create(name: "大貫祐輝",
	       mail: "ohnuki@rejob.co.jp",
	       password: "test")

Client.create(name:"大貫",
	     mail:"ohnuki@rejob.co.jp",
	     password:"test",
	     password_confirmation: "test")

Shop.create(client_id:"1",
	    name:"大貫の店舗")

Job.create(client_id: "1",
	   shop_id: "1",
	   recommend_point:"0",
	   title: "大貫のテスト用の求人案件",
	   prefecture_id: "1",
	   city: "東村山市",
	   salary: "月給600万円です",
	   message: "我々とともに頑張ろう！")

Client.create(name:"荒巻",
	     mail:"aramaki@rejob.co.jp",
	     password:"test",
	     password_confirmation: "test")

Shop.create(client_id:"2",
	    name:"荒巻の店舗")

Job.create(client_id: "2",
	   shop_id: "2",
	   recommend_point:"0",
	   title: "荒巻のポケモンゲットだぜでテスト",
	   prefecture_id: "2",
	   city: "志木市",
	   salary: "時給2000万円です",
	   message: "やる気のある方募集！")

