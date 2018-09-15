extends KinematicBody2D

var direccion = 0
var mov_x = 0
var mov_y = 0
var anim=""

func _physics_process(delta):
	mov_y += 10
	var new_anim = "quieto"
	direccion = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")) # si direccion 1 es derecha si es -1 izq si se estripan los 2 es 0 no se mueve
	if direccion == 1:
		mov_x = 200
		new_anim = "der"
	elif direccion == -1:
		mov_x = -200
		new_anim = "izq"
	else:
		mov_x = 0
	
	if is_on_floor():
		mov_y = 0
		
		if Input.is_action_pressed("ui_up"):
			mov_y = -450
		
	move_and_slide(Vector2(mov_x,mov_y),Vector2(0,-1))
	if new_anim != anim:
		anim = new_anim
		$anim.play(anim)
	