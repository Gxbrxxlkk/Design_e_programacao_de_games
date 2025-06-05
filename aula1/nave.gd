extends Sprite2D

#declaracao de variaveis
var velocity:= Vector2(1,1)
var speed := 3
var direction := Vector2(0,0)

func _process(delta: float) -> void:
# Mover a nave
	#Captura das teclas de entrada
	direction.x = Input.get_axis("move_left","move_right")
	direction.y = Input.get_axis("move_up","move_down")
	
	#para nao ficar com velociade maior na diagonal
	direction = direction.normalized()
	
	#calculo da velocidade
	velocity = direction * speed

	#para travar a rotacao da nave
	if direction.x != 0 or direction.y != 0:
		rotation = direction.angle()
	
	#Para mudar a posicao da nave
	position+= velocity
	
