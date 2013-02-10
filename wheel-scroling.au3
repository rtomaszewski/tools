;
; This program adjust scroling of the mouse wheel on windows.;
; based: http://www.autoitscript.com/forum/topic/69061-need-help-with-script/
; more info: http://rtomaszewski.blogspot.co.uk/2013/02/how-to-automatically-adjust-mouse-wheel.html

GLOBAL CONST $SPI_SETWHEELSCROLLLINES = 105

$SPIF_UPDATEINIFILE = 0x1
$SPIF_SENDWININICHANGE = 0x2
$SPIF_SENDCHANGE = $SPIF_SENDWININICHANGE

$WHEEL_PAGESCROLL = 4294967295 ; Use this, if you want scroll one Screen at a time

$linesToScroll = 3 ; Here come the lines
   $err = DllCall("user32.dll", "int", "SystemParametersInfo", _
   "int", $SPI_SETWHEELSCROLLLINES, _
   "int", $linesToScroll, _
   "int", 0, _
   "int", BitOR($SPIF_UPDATEINIFILE, $SPIF_SENDWININICHANGE))
			   
   If @error <> 0 Then
	  MsgBox( 4096, "Dll Error!!!", "There was an error making the Dll call." & @CR & "Error Code: " & @error )
   EndIf
