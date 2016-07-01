# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..50).size.times do |time|
  User.create(name:"テスト求職者#{time}番目の人",
	    name_kana: "てすと",
	    mail: "test+#{time}@rejob.co.jp",
	    password: "test",
	    password_confirmation: "test",
	    prefecture_id: "1",
	    city: "札幌市")
end

(1..50).size.times do |time|
  User.create(name:"テスト求職者#{time}番目の人",
	    name_kana: "てすと",
	    mail: "test+#{time}@rejob.co.jp",
	    password: "test",
	    password_confirmation: "test",
	    prefecture_id: "2",
	    city: "青森市")
end

(1..50).size.times do |time|
  User.create(name:"テスト求職者#{time}番目の人",
	    name_kana: "てすと",
	    mail: "test+#{time}@rejob.co.jp",
	    password: "test",
	    password_confirmation: "test",
	    prefecture_id: "3",
	    city: "てすと市")
end

(1..150).size.times do |time|
  JobTypesUser.create(job_type_id: "#{time % 7 + 1}", user_id: "#{time}")
end


User.create(name:"大貫っていう求職者",
	    name_kana: "おおぬき",
	    mail: "ohnuki@rejob.co.jp",
	    password: "test",
	    password_confirmation: "test",
	    prefecture_id: "1",
	    city: "東村山市")

User.create(name:"荒巻っていう求職者",
	    name_kana: "あらまき",
	    mail: "aramaki@rejob.co.jp",
	    password: "test",
	    password_confirmation: "test",
	    prefecture_id: "2",
	    city: "東松山市")


AdminUser.create(name: "大貫祐輝というadminuser",
	       mail: "ohnuki@rejob.co.jp",
	       password: "test")

Client.create(name:"大貫という企業",
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
	   message: "確かな技術を提供し続け創業29年。 

アーユルヴェーダを基本とした痩身効果の高いマッサージは20代〜70代の女性から高い支持を受け、雑誌やメディアにも多数取り上げられています。 

働くエステティシャンにはお客様の厚い信頼とともにスキルアップを目指してもらうため、常に技術の向上に取り組める環境をご用意しております。又、女性のライフスタイルの変化に合わせ長く働いていただける環境も整えています。 

私たちが心がけているのは、お客様から信頼を頂ける技術と接客。 
そんな技術と接客をただ学ぶだけではなく、楽しみながら安心して学んでいます。 

何よりも嬉しいのはお客様からの「ありがとう」　 
やりがいのあるチームワーク抜群の職場で、一緒に楽しく働きませんか?確実にレベルアップするための社内検定で自分の成長を感じながらゴッドハンドを手に入れて下さい。 

経験のある方には技術・サロン管理・スタッフ育成をお任せしていきます。 
当社でスキルアップをしながら活躍して下さい。 

☆『AEAエステティシャン』をはじめとした資格の取得も推奨しております。 

どうぞ、お気軽にご応募ください☆ 


◎女性専用で完全予約制なので安心落ち着いて働けます。 
◎オールハンドマッサージ、体質別オイル使用、シャワーあり充実したお店です。 
◎アーユルヴェーダ理論に基づいた技術が勉強できます。 
◎研修充実(アーユルヴェーダ理論・エステティック概論・解剖生理学・皮膚理論・栄養学・香粧品科学・フェイシャルとボディの技術と理論・接客マナー・関係法規・他)色々学べます。")
	   #top_photo: open("#{Rails.root}/db/data/shop_album.jpg"))


Job.create(client_id: "1",
	   shop_id: "1",
	   recommend_point:"0",
	   title: "大貫の二つ目に作った求人案件だよ",
	   prefecture_id: "1",
	   city: "新座市",
	   salary: "あなたの頑張り次第でいくらでも！",
	   message: "グッドプライス、ハイクオリティーを提供するサロン♪ 

【シャンティー】のコンセプト 

楽しく本気でやるを信念に活気あるサロン造りを行なっています! 
美容師の価値、社会的地位を少しでも高めたいとの思いでシャンティーをオープンしました。 
徹底した顧客満足度、スタッフ満足度を追求しています! 
好きな日、好きな時間に仕事をし、プライベート、趣味の時間も十分に確保できます! 
ライフスタイルに合わせて仕事が出来るのもシャンティーだからこそ可能です! 
完全歩合なのでやった分だけ自分に返って来ます!今までと違ったやりがいを感じて頂けたらと思います! バリバリやれる環境が整っています! 
とにかく、難しい事は考えずに、ご応募後一度でいいのでサロン見学、お話しをしにいらして頂けたらと思います! ")
	   #top_photo: open("#{Rails.root}/db/data/shop_album.jpg"))

Client.create(name:"荒巻という企業",
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
	   message: "SAKURAYA グループは京王線・JR青梅線沿線に美容室・ネイルサロンなど21店を運営している会社です。 

店舗はすべて駅前有名ショッピングセンターに出店しており、通勤便利で働く環境も整っています。 
リピート客の多い地域密着営業ながらショッピングセンター立地のため集客力の高いサロンです。 

週休2日(年間休日数112日)、健康保険・労災保険・厚生年金・健康診断・人間ドック・社員利用できるリゾート施設など、一般会社と変わらない福利厚生環境を実現しています。 

給与待遇はわかりやすく・明確な評価制度を導入していますので、歩合給のような不安定さが無く安心して仕事ができます。 
ボーナス支給・退職金制度も整えています。 

アシスタントカリキュラムはもちろん、スタイリストがすぐ現場で役立つ技術講習会もスケージュール化されていて、技術確認・スキルアップが確実にできます。 

寮も完備・定期的な飲み会・スキーツアーなどもあり、アットホームで安心できる社風です。 

創業54年、さらに進化する企業美容室の一員として豊かな人生を目指しませんか? 


代表取締役社長　桜井哲也 


創立55年の歴史があり、福利厚生などもしっかりしています。 

社内のレクリエーションがあり、結束力あるスタッフと人を中心とした教育があります。 

時代に対応した変化と大事なものを守っていく柔軟な会社です。")
	   #top_photo: open("#{Rails.root}/db/data/shop_album.jpg"))

Job.create(client_id: "2",
	   shop_id: "2",
	   recommend_point:"0",
	   title: "荒巻の二つ目にして最強のグレイトフルな求人案件だぜ",
	   prefecture_id: "2",
	   city: "志木市",
	   salary: "時給4001万円です",
	   message: "「emmi」や「W&E」でお客様に商品を紹介し、お客様が求めるライフスタイルのアドバイスしてください。 

★スポーツコンシェルジュ★ 
店内の数百足のスニーカーから選りすぐりの提案やヨガ・ラン・フィットネスウエアを担当し、外からの綺麗をサポートします。 

★インナービューティーコンシェルジュ★ 
カウンセリングを行い、お客様の内からの綺麗をサポートします。サプリメントコーナーやジューサリーも併設予定です。")
	   #top_photo: open("#{Rails.root}/db/data/shop_album.jpg"))


#Jobのデータを生成

(1..50).size.times do |time|
  Job.create(title: "テスト用の案件番号#{time}の求人",
  			 client_id: "2",
  			 shop_id: "2",
  			 prefecture_id: "1",
  			 city: "札幌市",
  			 salary: "【正社員】 月給 200,000円〜450,000円
※月給+能力給(店舗・個人) 
　◆前職の経験や能力等を考慮の上、優遇! 
　◆研修期間2ヶ月間は下記の給与 
未経験/月給:18万円　　〇経験者/月給:20万円 

◆◇◆年　収　例◆◇◆ 
<入社2年目/エステティシャン> 
　年収:450万円/月給:23万円(一律手当含む)+賞与(年2回) 
<入社3年目/店長> 
　年収:600万円/月給:30万円(一律手当含む)+賞与(年2回)
",
  			 message: "【GRACE/全国16店舗展開】 
GRACEは、常に進化を続け、カテゴリーにとらわれない新しいエステティックの形を追い続けています。これからもお客様が本当に求める「美」を追い求め、いままでになかった新しい「美しい」を叶え続ける場所でありつづけます。 
お客様の立場に立って考えた、丁寧な接客を心がけ、高い技術と適切なカウンセリングでお客様から厚い信頼を頂いています。 

年齢や社歴、経験など関係なくスタッフ同士の仲が良く、協力し合いながらサロンを盛り上げています♪ 

【仕事内容】 
◆脱毛フェイシャルサロン 
最新のマシンによる脱毛トリートメント 
美容に関するカウンセリングなどをお願い致します。 

その他、カウンセリング業務もお任せします。 


【研修制度】 
GRACEでは未経験からスタートし、活躍しているスタッフがたくさんいます◎ 
最新の知識と技術を身に付けることができるので、お客様だけでなくスタッフもどんどんキレイになれるんです♪ 

未経験の方には最新の技術や接客マナー、言葉遣いなど、社会人としての基礎から学んでいただきます。 
技術研修・OJT研修・フォローーアップ研修など働きながらプロの技術・知識が身に付く環境が整っております。 

研修後も分からないことは、現場で先輩スタッフが教えていくので安心して下さい。遠慮せず聞いて下さいね♪ 

【経験者の方】 
経験のある方も最新の技術や専門知識を習得することができ、スキルアップできる環境があります。 
スキルや頑張りを正当に評価し、収入UPできる環境、さらに幹部候補としてサロンの中心として活躍して頂ける環境をご用意しています。 

【スキルアップできる環境です☆】 
GRACEでは脱毛専門サロンもございます。まずはトータルエステサロンからスタートし、ご希望があれば脱毛専門サロンへということも可能ですので、様々な分野の技術を身に付けて頂けます♪",
  			 recommend_point: "0")
end

(1..50).size.times do |time|
  Job.create(title: "テスト用の案件番号#{time}の求人",
  			 client_id: "2",
  			 shop_id: "2",
  			 prefecture_id: "2",
  			 city: "志木市",
  			 salary: "【正社員】 月給 200,000円〜450,000円
※月給+能力給(店舗・個人) 
　◆前職の経験や能力等を考慮の上、優遇! 
　◆研修期間2ヶ月間は下記の給与 
未経験/月給:18万円　　〇経験者/月給:20万円 

◆◇◆年　収　例◆◇◆ 
<入社2年目/エステティシャン> 
　年収:450万円/月給:23万円(一律手当含む)+賞与(年2回) 
<入社3年目/店長> 
　年収:600万円/月給:30万円(一律手当含む)+賞与(年2回)
",
  			 message: "【GRACE/全国16店舗展開】 
GRACEは、常に進化を続け、カテゴリーにとらわれない新しいエステティックの形を追い続けています。これからもお客様が本当に求める「美」を追い求め、いままでになかった新しい「美しい」を叶え続ける場所でありつづけます。 
お客様の立場に立って考えた、丁寧な接客を心がけ、高い技術と適切なカウンセリングでお客様から厚い信頼を頂いています。 

年齢や社歴、経験など関係なくスタッフ同士の仲が良く、協力し合いながらサロンを盛り上げています♪ 

【仕事内容】 
◆脱毛フェイシャルサロン 
最新のマシンによる脱毛トリートメント 
美容に関するカウンセリングなどをお願い致します。 

その他、カウンセリング業務もお任せします。 


【研修制度】 
GRACEでは未経験からスタートし、活躍しているスタッフがたくさんいます◎ 
最新の知識と技術を身に付けることができるので、お客様だけでなくスタッフもどんどんキレイになれるんです♪ 

未経験の方には最新の技術や接客マナー、言葉遣いなど、社会人としての基礎から学んでいただきます。 
技術研修・OJT研修・フォローーアップ研修など働きながらプロの技術・知識が身に付く環境が整っております。 

研修後も分からないことは、現場で先輩スタッフが教えていくので安心して下さい。遠慮せず聞いて下さいね♪ 

【経験者の方】 
経験のある方も最新の技術や専門知識を習得することができ、スキルアップできる環境があります。 
スキルや頑張りを正当に評価し、収入UPできる環境、さらに幹部候補としてサロンの中心として活躍して頂ける環境をご用意しています。 

【スキルアップできる環境です☆】 
GRACEでは脱毛専門サロンもございます。まずはトータルエステサロンからスタートし、ご希望があれば脱毛専門サロンへということも可能ですので、様々な分野の技術を身に付けて頂けます♪",
  			 recommend_point: "0")
end

(1..50).size.times do |time|
  Job.create(title: "テスト用の案件番号#{time}の求人",
  			 client_id: "2",
  			 shop_id: "2",
  			 prefecture_id: "3",
  			 city: "志木市",
  			 salary: "【正社員】 月給 200,000円〜450,000円
※月給+能力給(店舗・個人) 
　◆前職の経験や能力等を考慮の上、優遇! 
　◆研修期間2ヶ月間は下記の給与 
未経験/月給:18万円　　〇経験者/月給:20万円 

◆◇◆年　収　例◆◇◆ 
<入社2年目/エステティシャン> 
　年収:450万円/月給:23万円(一律手当含む)+賞与(年2回) 
<入社3年目/店長> 
　年収:600万円/月給:30万円(一律手当含む)+賞与(年2回)
",
  			 message: "【GRACE/全国16店舗展開】 
GRACEは、常に進化を続け、カテゴリーにとらわれない新しいエステティックの形を追い続けています。これからもお客様が本当に求める「美」を追い求め、いままでになかった新しい「美しい」を叶え続ける場所でありつづけます。 
お客様の立場に立って考えた、丁寧な接客を心がけ、高い技術と適切なカウンセリングでお客様から厚い信頼を頂いています。 

年齢や社歴、経験など関係なくスタッフ同士の仲が良く、協力し合いながらサロンを盛り上げています♪ 

【仕事内容】 
◆脱毛フェイシャルサロン 
最新のマシンによる脱毛トリートメント 
美容に関するカウンセリングなどをお願い致します。 

その他、カウンセリング業務もお任せします。 


【研修制度】 
GRACEでは未経験からスタートし、活躍しているスタッフがたくさんいます◎ 
最新の知識と技術を身に付けることができるので、お客様だけでなくスタッフもどんどんキレイになれるんです♪ 

未経験の方には最新の技術や接客マナー、言葉遣いなど、社会人としての基礎から学んでいただきます。 
技術研修・OJT研修・フォローーアップ研修など働きながらプロの技術・知識が身に付く環境が整っております。 

研修後も分からないことは、現場で先輩スタッフが教えていくので安心して下さい。遠慮せず聞いて下さいね♪ 

【経験者の方】 
経験のある方も最新の技術や専門知識を習得することができ、スキルアップできる環境があります。 
スキルや頑張りを正当に評価し、収入UPできる環境、さらに幹部候補としてサロンの中心として活躍して頂ける環境をご用意しています。 

【スキルアップできる環境です☆】 
GRACEでは脱毛専門サロンもございます。まずはトータルエステサロンからスタートし、ご希望があれば脱毛専門サロンへということも可能ですので、様々な分野の技術を身に付けて頂けます♪",
  			 recommend_point: "0")
end




#JobTypeJobのデータを生成

(1..150).size.times do |time|
JobTypesJob.create(job_type_id: "#{time % 7 + 1}", job_id: "#{time}")
end







#Prefecture,JobType,SelectionStatusを生成

JobTypesJob.create(job_type_id: 1, job_id: 1)
JobTypesJob.create(job_type_id: 2, job_id: 1)
JobTypesJob.create(job_type_id: 3, job_id: 2)
JobTypesJob.create(job_type_id: 4, job_id: 3)
JobTypesJob.create(job_type_id: 5, job_id: 3)
JobTypesJob.create(job_type_id: 6, job_id: 3)
JobTypesJob.create(job_type_id: 7, job_id: 4)


Prefecture.create(id: 1, name: "北海道")
Prefecture.create(id: 2, name: "青森県")
Prefecture.create(id: 3, name: "岩手県")
# Prefecture.create(id: 4, name: "宮城県")
# Prefecture.create(id: 5, name: "秋田県")
# Prefecture.create(id: 6, name: "山形県")
# Prefecture.create(id: 7, name: "福島県")
# Prefecture.create(id: 8, name: "茨城県")
# Prefecture.create(id: 9, name: "栃木県")
# Prefecture.create(id: 10, name: "群馬県")
# Prefecture.create(id: 11, name: "埼玉県")
# Prefecture.create(id: 12, name: "千葉県")
# Prefecture.create(id: 13, name: "東京都")
# Prefecture.create(id: 14, name: "神奈川県")
# Prefecture.create(id: 15, name: "新潟県")
# Prefecture.create(id: 16, name: "富山県")
# Prefecture.create(id: 17, name: "石川県")
# Prefecture.create(id: 18, name: "福井県")
# Prefecture.create(id: 19, name: "山梨県")
# Prefecture.create(id: 20, name: "長野県")
# Prefecture.create(id: 21, name: "岐阜県")
# Prefecture.create(id: 22, name: "静岡県")
# Prefecture.create(id: 23, name: "愛知県")
# Prefecture.create(id: 24, name: "三重県")
# Prefecture.create(id: 25, name: "滋賀県")
# Prefecture.create(id: 26, name: "京都府")
# Prefecture.create(id: 27, name: "大阪府")
# Prefecture.create(id: 28, name: "兵庫県")
# Prefecture.create(id: 29, name: "奈良県")
# Prefecture.create(id: 30, name: "和歌山県")
# Prefecture.create(id: 31, name: "鳥取県")
# Prefecture.create(id: 32, name: "島根県")
# Prefecture.create(id: 33, name: "岡山県")
# Prefecture.create(id: 34, name: "広島県")
# Prefecture.create(id: 35, name: "山口県")
# Prefecture.create(id: 36, name: "徳島県")
# Prefecture.create(id: 37, name: "香川県")
# Prefecture.create(id: 38, name: "愛媛県")
# Prefecture.create(id: 39, name: "高知県")
# Prefecture.create(id: 40, name: "福岡県")
# Prefecture.create(id: 41, name: "佐賀県")
# Prefecture.create(id: 42, name: "長崎県")
# Prefecture.create(id: 43, name: "熊本県")
# Prefecture.create(id: 44, name: "大分県")
# Prefecture.create(id: 45, name: "宮崎県")
# Prefecture.create(id: 46, name: "鹿児島県")
# Prefecture.create(id: 47, name: "沖縄県")


JobType.create(id: 1, name: "エステ")
JobType.create(id: 2, name: "ネイリスト")
JobType.create(id: 3, name: "アイリスト")
JobType.create(id: 4, name: "美容師")
JobType.create(id: 5, name: "柔道整復師")
JobType.create(id: 6, name: "セラピスト")
JobType.create(id: 7, name: "ヨガ")



SelectionStatus.create(id: 1, name: "新規応募")
SelectionStatus.create(id: 2, name: "選考中")
SelectionStatus.create(id: 3, name: "採用")
SelectionStatus.create(id: 4, name: "不採用")
SelectionStatus.create(id: 5, name: "辞退")



