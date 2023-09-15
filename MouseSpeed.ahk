#SingleInstance, Force
#Persistent

F1::
SPI_GETMOUSESPEED := 0x70
SPI_SETMOUSESPEED := 0x71
OrigMouseSpeed := 0  ; Initialize OrigMouseSpeed to 0

; Check if F1 is pressed for a certain duration before adjusting the mouse speed
KeyWait, F1, T0.5  ; Wait for 500 milliseconds (adjust this duration as needed)

if ErrorLevel {  ; If F1 was released before 500 milliseconds

    ; This part of the script will execute when F1 is pressed and released quickly
    Send {F1}  ; Send a single F1 keypress (simulate normal keypress)
}
else {
    ; This part of the script will execute when F1 is held for 500 milliseconds or more
    ; Retrieve the current speed so that it can be restored later:
    DllCall("SystemParametersInfo", "UInt", SPI_GETMOUSESPEED, "UInt", 0, "UIntP", OrigMouseSpeed, "UInt", 0)

    ; Now set the mouse to the slower speed specified in the next-to-last parameter (the range is 1-20, 10 is default):
    DllCall("SystemParametersInfo", "UInt", SPI_SETMOUSESPEED, "UInt", 0, "Ptr", 3, "UInt", 0)
    KeyWait, F1  ; This prevents keyboard auto-repeat from doing the DllCall repeatedly.

    ; Restore the original speed when F1 is released
    DllCall("SystemParametersInfo", "UInt", SPI_SETMOUSESPEED, "UInt", 0, "Ptr", OrigMouseSpeed, "UInt", 0)
}
return
