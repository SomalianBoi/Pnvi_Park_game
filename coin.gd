extends Area3D

const ROT_SPEED = 0.002 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_y(rad_to_deg(ROT_SPEED))
	
	if has_overlapping_bodies():
		Global.coins += 1
		print(Global.coins)
		if Global.coins >= 4:
			get_tree().change_scene_to_file("res://grass.tscn")
		queue_free()
		
		
#func _on_body_entered(body):
	#Global.coins += 1
	#print(Global.coins)
	#set_collision_layer_value(3, false)
	#set_collision_mask_value(1, false)
