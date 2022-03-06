extends Control

func _ready():
	var _changed = Global.connect("changed",self,"_on_score_changed")
	_on_score_changed()

func _on_score_changed():
	$Score.text = str(Global.score)

func update_time():
	$Time.text = "Time     " + str(Global.time)

func _on_Timer_timeout():
	Global.update_time(-1)
