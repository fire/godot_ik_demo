tool
extends Spatial

func _process(delta):
	
	look_at($Node/Pole.get_transform().origin, Vector3(0,1,0))
