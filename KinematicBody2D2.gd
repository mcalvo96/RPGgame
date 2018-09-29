extends KinematicBody2D

var direccion = 0
var mov_x = 0
var mov_y = 0
var anim=""


func _physics_process(delta):
	
	var new_anim = "quieto"
	
	if Input.is_action_pressed("ui_up"):
		mov_x = 0
		mov_y = -200
		new_anim = "arriba"
	elif Input.is_action_pressed("ui_down"):
		mov_x = 0
		mov_y = 200
		new_anim = "abajo"
	elif Input.is_action_pressed("ui_left"):
		mov_y = 0
		mov_x = -200
		new_anim = "izq"
	elif Input.is_action_pressed("ui_right"):
		mov_y = 0
		mov_x = 200
		new_anim = "der"
	else:
		mov_x = 0	
		mov_y = 0
	
			
	move_and_slide(Vector2(mov_x,mov_y),Vector2(0,-1))
	if new_anim != anim:
		anim = new_anim
		$anim.play(anim)
	