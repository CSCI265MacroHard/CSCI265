extends GutTest
#INFO
#this script tests the game importing component
#const import_script = 'res://global.gd'

func before_each():
	pass

func test_valid_game_func() -> void:
	
	#stubs as nulls other methods from script before loading
	stub('res://global.gd', '_ready').to_do_nothing()
	stub('res://global.gd', 'build_machines').to_do_nothing()
	
	#imports script with methods above removed as stubs
	var pd_import_script = partial_double('res://global.gd').new()
	
	#tests a game with a valid setup
	assert_eq(stub(pd_import_script.valid_game("res://tests/test_games/correct_setup")), true)
	
	#tests a game with an invalid setup
	assert_eq(stub(pd_import_script.valid_game("res://tests/test_games/missing_all_files")), false)

func test_fails():
	# this test will fail because those strings are not equal
	assert_eq('hello', 'goodbye')
