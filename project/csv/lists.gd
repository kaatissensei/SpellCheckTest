extends Node

#WebGL is annoying, and I'm being lazy, so I'll just do it this way for now
const g1 = []
const g2 = []
const g3 = ["", "", "", 
"danger,危険（性）,,3,3,1,32
extinction,絶滅,,3,3,1,32
challenge,難問,,3,3,1,32
human,人間の、人間的な,,3,3,1,32
endangered,絶滅の危機にさらされている,,3,3,1,32
survive,生き残る,,3,3,1,32
trouble,困難,,3,3,1,32
be in danger of,…の危険がある,,3,3,1,32
cheetah,チーター,,3,3,2,33
sea otter,ラッコ,,3,3,2,33
article,記事,,3,3,2,33
hear of,…について聞く,,3,3,2,33
population,（動物の）個体数、人口,,3,3,3,35
rapidly,速く、急速に,,3,3,3,35
beginning,最初の部分,,3,3,3,35
century,世紀,,3,3,3,35
shock,…に衝撃［ショック］を与える,,3,3,3,35
safely,安全に,,3,3,3,35
overhunting,乱獲,,3,3,3,35
oil,油、石油,,3,3,3,35
spill,（液体・粉などの）こぼれ、流出,,3,3,3,35
hunting,狩り,,3,3,3,35
killer whale,シャチ,,3,3,3,35
as a result,（…の）結果として,,3,3,3,35
native,（その土地に）固有の,,3,3,4,37
logging,伐採,,3,3,4,37
traffic accident,交通事故,,3,3,4,37
research,研究、調査,,3,3,4,37
categorize,…を分類する,,3,3,4,37
critically,危機的な、危険な状態で,,3,3,4,37
citizen,市民,,3,3,4,37
ecosystem,生態系,,3,3,4,37
human beings,人間（全体）,,3,3,4,37
relate,…を（～に）関係させる,,3,3,4,37
action,アクション、行動,,3,3,4,37",

"rode,rideの過去形,,3,4,4,55
biycle,自転車,,3,4,4,55
toward,…に向かって,,3,4,4,55
apartment,アパート,,3,4,4,55
caught,catchの過去形,,3,4,4,55
tsunami,津波,,3,4,4,55
sudden,突然の,,3,4,4,55
news,知らせ,,3,4,4,55
shortly,まもなく,,3,4,4,55
corner,コーナー,,3,4,4,55
exchange,交流,,3,4,4,55
program,プログラム,,3,4,4,55
support,…を支える、支援する,,3,4,4,55
ordinary,ふつうの、通常,,3,4,4,55
crisis,危機,,3,4,4,55
several,いくつかの,,3,4,3,54
bridge,かけ橋,,3,4,3,54
between,…の間,,3,4,3,54
energetic,エネルギッシュな,,3,4,3,54
encourage,…を励ます,,3,4,3,54
personality,性格,,3,4,3,54
hit,襲う,,3,4,3,54
comfort,…を元気づける,,3,4,3,54
nearby,近くの,,3,4,3,54
safe,安全な,,3,4,3,54
ALT,外国語指導補助教員,,3,4,3,54
all the time,常に,,3,4,3,54
done,doの過去分詞,,3,4,2,53
prepare,（…の）準備をする、備える,,3,4,2,53
emergency,緊急事態,,3,4,2,53
kit,道具［用具］一式,,3,4,2,53
recommend,…をすすめる,,3,4,2,53
earthquake,地震,,3,4,2,53
we've,<= we have,,3,4,2,53
hasn't,<= has not,,3,4,2,53
prepared,用意ができている、備えた,,3,4,1,52
disaster,災害,,3,4,1,52
shelter,避難所,,3,4,1,52
store,…を蓄える,,3,4,1,52
case,場合,,3,4,1,52
extinguisher,消火器,,3,4,1,52
in case of,…の場合には,,3,4,1,52"
]

func get_list(grade : int = 3, unit: int = 4, list_num: int = 4) -> Array[Vocab]:
	var list_text : Array = []
	var unit_text : Array
	var return_list : Array[Vocab]
	
	match grade:
		1:
			list_text.assign(g1)
		2:
			list_text.assign(g2)
		3:
			list_text.assign(g3)
		_:
			pass 
	unit_text = list_text[unit].split("\n")
	#take each array in unit_text and make into a Vocab
	for vocabulary in unit_text:
		var vocab_arr = vocabulary.split(",")
		var new_vocab : Vocab 
		if int(vocab_arr[5]) == list_num:
			new_vocab = Vocab.new(vocab_arr)
			return_list.push_back(new_vocab)
	return return_list
