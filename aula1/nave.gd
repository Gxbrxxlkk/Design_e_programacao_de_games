extends Sprite2D

var velocity:= Vector2(1,1)
var speed := 3
var direction := Vector2(0,0)
func _process(delta: float) -> void:
# Mover a nave

	direction.x = Input.get_axis("move_left","move_right")
	direction.y = Input.get_axis("move_up","move_down")
	velocity.x = direction.x * speed
	velocity.y = direction.y * speed
	position.x += velocity.x
	position.y += velocity.y
	rotation = direction.angle()
