extends TileMap

var Dirt : Vector2 = Vector2(0,0)
var Grass : Vector2 = Vector2(1,0)
var Wall : Vector2 = Vector2(0,0)

@onready var ground_layer: TileMapLayer = $GroundLayer
@onready var wall_layer: TileMapLayer = $WallLayer


func _process(delta: float) -> void:
	
	if(Input.is_action_pressed("mbleft")):
		SetTileAtMouse(0,0,Gm.TileID)
	if(Input.is_action_pressed("mbright")):
		SetTileAtMouse(0,0,Vector2(-1,-1))

func SetTileAtMouse(Layer : int = 0, ID : int = 0, Type : Vector2 =  Vector2(0,0)):
	if Gm.is_ground:
		ground_layer.set_cell(ground_layer.local_to_map(get_global_mouse_position()),ID,Type)
	else:
		wall_layer.set_cell(wall_layer.local_to_map(get_global_mouse_position()),ID,Type)
