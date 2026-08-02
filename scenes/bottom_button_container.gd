extends PanelContainer
@onready var button_audio_stream_player: AudioStreamPlayer = $BottomContainer/ButtonAudioStreamPlayer
@onready var bottom_container: HBoxContainer = $BottomContainer
@export var tab_container: TabContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var index=0;
	for button in bottom_container.get_children():
		
		if button is Button:
			button.button_down.connect(_on_mouse_down.bind(button,index))
			index+=1
			
	pass # Replace with function body.


func _on_mouse_down(button:Button,index:int):
	print(str(index )+ "===>" +str(min(index,3)))
	if button.button_pressed==false:
		#设置index最大为1
		tab_container.current_tab = min(index,3)
		
		button_audio_stream_player.play(0.04)
	pass
