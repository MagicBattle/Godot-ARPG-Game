extends Node

var player_current_attack = false

var current_scene = "world" #world cliff_side 
var transition_scene = false 

var player_exit_cliffside_posx = 327 
var player_exit_cliffside_posy = 14  
var player_start_posx = 45 
var player_start_posy = 30  

var game_first_loadin = true

# ---------------------- NEW: Vector-based spawns ----------------------
# Use vectors instead of separate x/y when passing spawn positions between scenes.
# Example defaults (adjust to your map): 
var world_spawn_from_cliff: Vector2 = Vector2(100, 32)     # where to appear in WORLD when coming FROM CLIFF
var cliff_spawn_from_world: Vector2 = Vector2(48, 30)      # where to appear in CLIFF when coming FROM WORLD

# This is the “next spawn” the destination scene should use (Vector2.ZERO means “not set”).
var next_spawn: Vector2 = Vector2.ZERO
# -------------------- END NEW: Vector-based spawns --------------------

func finish_changescenes():
	if transition_scene == true: 
		transition_scene = false 
		if current_scene == "world":
			current_scene = "cliff_side" 
		else: 
			current_scene = "world"
