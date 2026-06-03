extends Node3D

@export var projectile: PackedScene

var enemy_path: Path3D

@onready var turret_top: MeshInstance3D = $TurretBase/TurretTop

func _physics_process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	var shot = projectile.instantiate()
	add_child(shot)
	shot.global_position = turret_top.global_position
