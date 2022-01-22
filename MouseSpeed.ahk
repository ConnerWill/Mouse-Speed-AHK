#SingleInstance, Force 
#Persistent


F1::
SPI_GETMOUSESPEED := 0x70
SPI_SETMOUSESPEED := 0x71
; Retrieve the current speed so that it can be restored later:
DllCall("SystemParametersInfo", "UInt", SPI_GETMOUSESPEED, "UInt", 0, "UIntP", OrigMouseSpeed, "UInt", 0)
; Now set the mouse to the slower speed specified in the next-to-last parameter (the range is 1-20, 10 is default):
DllCall("SystemParametersInfo", "UInt", SPI_SETMOUSESPEED, "UInt", 0, "Ptr", 3, "UInt", 0)
KeyWait F1  ; This prevents keyboard auto-repeat from doing the DllCall repeatedly.
return

F1 up::DllCall("SystemParametersInfo", "UInt", SPI_SETMOUSESPEED, "UInt", 0, "Ptr", OrigMouseSpeed, "UInt", 0)  ; Restore the original speed.