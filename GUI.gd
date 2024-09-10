extends CanvasLayer


func DirtPressed() -> void:
	Gm.TileID = Vector2(0,0)
	Gm.is_ground = true


func GrassPressed() -> void:
	Gm.TileID = Vector2(1,0)
	Gm.is_ground = true


func WallPressed() -> void:
	Gm.TileID = Vector2(0,0)
	Gm.is_ground = false
