#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

#Warn  ; Enable warnings to assist with detecting common errors.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
#MenuMaskKey vkE8
	

;==========================MODO ZURDO================================================== 


<^>!F4::Send !{f4}

^Insert::Send ^c
+Insert::Send ^v
+Delete::Send ^x
^Delete::Send ^z
^+Delete::Send ^+z

!Backspace::Send ^z	 	;Alt + BackSpace = ctrl + z 
!+Backspace::Send ^+z 		;Alt + shift + BackSpace = ctrl + shift + Z
		
!ñ::!Tab				;Alt + ñ = Alt + Tab	
!q::@					;Alt + Q = @
!2::@					;Alt + 2 = @
!1::Send {U+007C}			;Alt + 1 = |
!'::\					;Alt + ' = \
!|::¬                                   ;Alt + | = ¬
LAlt & {::Send {U+005E}			;Alt + { = ^
LAlt & +::Send {U+007E} 		;Alt + + = ~
!}::Send {U+0060}			;Alt + } = `
 

^#c::Run "calc.exe" 
^#n::Run "Notepad.exe" 

^#g::Run "chrome.exe" 
!#g::   
	{
	Send, ^c
	Sleep 50	
	url=http://www.google.com/search?q=%clipboard%
	run % "chrome.exe" ( winExist("ahk_class Chrome_WidgetWin_1") ? " --new-window " : " " ) url
	Return
	} 

^#e::Run "msedge.exe"
!#e::  
	{
	Send, ^c
	Sleep 50
	url=http://www.google.com/search?q=%clipboard%
	run % "msedge.exe" ( winExist("ahk_class Chrome_WidgetWin_1") ? " --new-window " : " " ) url
	Return
	} 

^#m::Run "D:\alberto\Desktop\Correo"
^#p::Run "mspaint.exe"
^#t::Run "C:\Users\alberto\AppData\Roaming\Telegram Desktop\Telegram.exe" 
^#v::Run "C:\Program Files\Microsoft VS Code\Code.exe"
^#w::Run "WINWORD.EXE"


NumpadEnd::^x		; cortar
NumpadDown::^c		; copiar
NumpadPgDn::^v  	; pegar
NumpadLeft::^z		; deshacer 
NumpadClear::^y		; rehacer
NumpadRight::^s 	; salvar
NumpadHome::^a		;seleccionar todo
NumpadUp::^f		; buscar
NumpadPgUP::^h		;reemplazar

NumpadIns & Up::Send {Up 10} 
NumpadIns & Down::Send {Down 10} 
NumpadIns & Left::Send {Left 10} 
NumpadIns & Right::Send {Right 10}  
NumpadIns & NumpadEnd::#Left  		 ;numero 1 del numerico = mover ventana a izquierda del monitor 
NumpadIns & NumpadDown::#Down 		 ;numero 2 del numerico = (win + abajo) minimizar ventana
NumpadIns & NumpadPgDn::#Right	 	 ;numero 3 del numerico =  mover ventana a lado derecho del monitor
NumpadIns & NumpadLeft::+#Left		;numero 4 del numerico = mover ventana a monitor izquierdo
NumpadIns & NumpadClear::#Up		;numero 5 del numerico = maximizar ventana 
NumpadIns & NumpadRight::+#Right 	;numero 6 del numerico=  mover ventana a monitor derecho
NumpadIns & NumpadHome::^+Tab		;numero 7 del numerico = ctrl + shift + tab = moverse entre tabs atras
NumpadIns & NumpadUp::^!Tab		;numero 8 del numerico = mostrar mosaico apps abiertas					
NumpadIns & NumpadPgUP::^Tab		;numero 9 del numerico = ctrl + tab = moverse entre tabs enfrente
	

;============= Otras Funciones ======================================

Capslock::Shift 	;Caps Lock actua como Shift
+Capslock::Capslock	;fijar mayusculas con ctrl + BloqMay
				
^!SPACE:: Winset, Alwaysontop, , A ; ctrl + alt + space ventana activa Always on Top

; Shift + Wheel for horizontal scrolling
+WheelDown::WheelRight
+WheelUp::WheelLeft


;==================Macros específicos en Programas============================

#IfWinActive, ahk_exe notepad++.exe ;formater un json
^1::
Send, {Alt down}p{Alt up}
Send, j
Send, f





;===================Autocompletar Abreviaciones al escribir===================

::nsfw::nsfw (No es apto para verlo en el trabajo)
::brb::vuelvo en un momento
::dm::mensaje directo
::fb::FaceBook
::gtg::me tengo que ir
::asap::tan pronto como sea poosible
::hth::espero que eso te ayude
::imo::en mi opinión
::jk::solo estoy bromeando
::lol::League of Legends
::lmao::me dió mucha risa
::omg::Por todos los dioses
::omw::estoy en camino
::afk::alejado de la computadora
::vobo::Visto Bueno

::gd::
SendInput %A_YYYY%-%A_MM%-%A_DD%
return 


;===================Deshabilitadas sin usar===================


;ScrollLock::Send ^f
;+ScrollLock::Send ^h
;^ScrollLock::Send ^s
;+PrintScreen::Send ^x
;+Pause::Send ^c

;^,::^x				;ctrl+, = cortar
;^.::^c 			;ctrl+. = copiar 
;^-::^v  			;ctrl+- = pegar

;^f9::SendInput, #v
;^f10::SendInput, ^f
;^f11::SendInput, ^a		
;^f12::SendInput, ^s
	
;+f9::SendInput, {f9}
;+f10::SendInput, {f10}
;+f11::SendInput, {f11}
;+f12::SendInput, {f12}	

;ScrollLock::#d	; teclaBloq = mostrar escritorio
;Pause::#e	; teclaPausa = abrir exolorador de carpetas

;NumpadDiv::Run "Chrome.exe"	  ;/ del numerico = deshacer

; Abrir Programas directo con tecla WIN ----------
;#n::Run Notepad  ;Win + n = abrir notepad
;#c::Run "calc.exe" ;Win + c = abrir calculadora
