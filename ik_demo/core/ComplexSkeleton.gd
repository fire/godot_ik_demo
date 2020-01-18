extends KinematicBody

func touch_with_right_hand(target_node):
	$"xbot/Armature/Skeleton/SkeletonIK".set_target_node(target_node.get_path())
	$AnimationPlayer.play("ik")
	
func stop_touch():
	$AnimationPlayer.stop()
	stop_all_ik() # Mandatory because animation player was interrupted
	
func stop_all_ik():
	$"xbot/Armature/Skeleton/SkeletonIK".stop()

#
#
# MOVEMENT

func _physics_process(delta):
	
	var dir = Vector3() # Where does the player intend to walk to
	
	if (Input.is_action_pressed("move_forward")):
		dir.z += 1
	if (Input.is_action_pressed("move_backwards")):
		dir.z += -1
	if (Input.is_action_pressed("move_left")):
		dir.x += 1
	if (Input.is_action_pressed("move_right")):
		dir.x += -1
	
	move_and_slide(dir*2, Vector3(0,1,0))
