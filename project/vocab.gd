class_name Vocab extends Resource

@export var english : String
@export var japanese : String
@export var part_of_speech : String
@export var grade_num : int
@export var unit : String
#@export var list_num : int
@export var page_num : int
@export var include : bool

func _init(vocab_array: Array[String] = ["Eng", "”, 日本語", "3", "0", "U0"]):
	#if vocab_array[6] == "〇": #Now doing in SELECT statement
	populate_vocab(vocab_array)
#OLD
#func _init(vocab_array: Array[String] = ["Eng", "日本語", "単語", "3", "0", "0"]):
	#populate_vocab(vocab_array)

##Format: English, PoS, Japanese, Grade, Page, Unit

func populate_vocab(vocab_array) :
	english = vocab_array[0]
	part_of_speech = vocab_array[1]
	japanese = vocab_array[2]
	grade_num = vocab_array[3].to_int()
	page_num = vocab_array[4].to_int() 
	unit = vocab_array[5]
	#list_num = vocab_array[5].to_int()
	
