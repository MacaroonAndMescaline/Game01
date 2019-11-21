//This is changing the overall game speed by either increasing or decreasing by 20%

moveDir = argument0
amount_for_changing = .2

global.GAME_SPEED += amount_for_changing * moveDir
if(global.GAME_SPEED<0) global.GAME_SPEED = 0
if(global.GAME_SPEED>1) global.GAME_SPEED = 1

ini_open("settings/misc.ini")
ini_write_real("misc","gamespeed",global.GAME_SPEED)
ini_close()