extends Area

func _on_WallButton_body_entered(body):
	
	if body.has_method("touch_with_right_hand"):
		body.touch_with_right_hand(self)

func _on_WallButton_body_exited(body):
	if body.has_method("stop_touch"):
		body.stop_touch()
