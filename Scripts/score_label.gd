extends RichTextLabel

var defult_text = ' '

func _process(_delta):
	var text = str(defult_text, str(Global.current_score))
	self.text = (text)
