extends HBoxContainer

var font_size = 40

func _load(num: int = 1, jpn: String = "", ans: String = "", new_font_size: int = 40) -> void:
	font_size = new_font_size
	_number(num)
	_japanese(jpn)
	_answer(ans)

func _number(num: int):
	get_child(0).text = str(num)
	get_child(0).add_theme_font_size_override("normal_font_size", font_size)

func _japanese(jpn: String):
	get_child(1).text = jpn
	get_child(1).add_theme_font_size_override("normal_font_size", font_size)

func _answer(ans: String):
	get_child(2).text = ans
	get_child(2).add_theme_font_size_override("normal_font_size", font_size)
