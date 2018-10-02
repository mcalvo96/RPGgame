extends KinematicBody2D

var direccion = 0
var mov_x = 0
var mov_y = 0
var anim=""
var lifeAnim=""
var health = 10


func _physics_process(delta):
	
	var new_anim = "quieto"
	var anim_health = "100%"
	
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
	
	if Input.is_action_pressed("hit"):
		health = health - 1
	
	if health == 10:
		print(health)
		anim_health = "100%"
	elif health == 9:
		print(health)
		anim_health = "90%"
	elif health == 8:
		print(health)
		anim_health = "80%"		
	elif health == 7:
		print(health)
		anim_health = "70%"
	elif health == 6:
		print(health)
		anim_health = "60%"		
	elif health == 5:
		print(health)
		anim_health = "50%"	
	elif health == 4:
		print(health)
		anim_health = "40%"	
	elif health == 3:
		print(health)
		anim_health = "30%"
	elif health == 2:
		print(health)
		anim_health = "20%"
	elif health == 1:
		print(health)
		anim_health = "10%"
	else:
		health = 0
		print(health)
		anim_health = "0%"
		
		
	move_and_slide(Vector2(mov_x,mov_y),Vector2(0,-1))
	if new_anim != anim:
		anim = new_anim
		$anim.play(anim)
	if anim_health != lifeAnim:
		lifeAnim = anim_health
		$life/life.play(lifeAnim)		
	