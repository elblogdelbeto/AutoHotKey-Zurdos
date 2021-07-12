#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

#Warn  ; Enable warnings to assist with detecting common errors.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
#MenuMaskKey vkE8
	

;==========================MODO ZURDO================================================== 


ScrollLock::Send ^f
+ScrollLock::Send ^h
^ScrollLock::Send ^s
+PrintScreen::Send ^x
+Pause::Send ^c
+Insert::Send ^v
^Insert::Send ^c
+Delete::Send ^x

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
 


NumpadEnd::^x		; cortar
NumpadDown::^c		; copiar
NumpadPgDn::^v  	; pegar
NumpadLeft::^z		; deshacer 
NumpadClear::^y		; rehacer
NumpadRight::^s 	; salvar
NumpadHome::^a		;seleccionar todo
NumpadUp::^f		; buscar
NumpadPgUP::^h		;reemplazar

NumpadIns & NumpadEnd::Run Notepad		;abrir notas
NumpadIns & NumpadDown::Run "calc.exe" 		; 
NumpadIns & NumpadPgDn::Run "chrome.exe"	; 
NumpadIns & NumpadLeft::Run "cmd"		; 
NumpadIns & NumpadClear::Run "Powershell"	; 
NumpadIns & NumpadRight::^s 			; 
NumpadIns & NumpadHome::^a			;
NumpadIns & NumpadUp::^f			; 
NumpadIns & NumpadPgUP::^h			;
NumpadIns & NumpadDiv:: 
  	Run http://google.com
 	 Return
NumpadIns & NumpadMult:: 
	{
	Send, ^c
	Sleep 50
	Run, http://www.google.com/search?q=%clipboard%
	Return
	} ;* del numerico
NumpadIns & NumpadSub::Send ^+{Esc}


#NumpadEnd::#Left   ;numero 1 del numerico = mover ventana a izquierda del monitor 
#NumpadDown::#Down  ;numero 2 del numerico = (win + abajo) minimizar ventana
#NumpadPgDn::#Right  ;numero 3 del numerico =  mover ventana a lado derecho del monitor
#NumpadLeft::+#Left	;numero 4 del numerico = mover ventana a monitor izquierdo
#NumpadClear::#Up	;numero 5 del numerico = maximizar ventana 
#NumpadRight::+#Right 	;numero 6 del numerico=  mover ventana a monitor derecho
#NumpadHome::^+Tab	;numero 7 del numerico = ctrl + shift + tab = moverse entre tabs atras
#NumpadUp::^!Tab		;numero 8 del numerico = mostrar mosaico apps abiertas					
#NumpadPgUP::^Tab	;numero 9 del numerico = ctrl + tab = moverse entre tabs enfrente
	

;============= Otras Funciones ======================================

Capslock::Shift 	;Caps Lock actua como Shift
+Capslock::Capslock	;fijar mayusculas con ctrl + BloqMay
				
^!SPACE:: Winset, Alwaysontop, , A ; ctrl + alt + space ventana activa Always on Top


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

::wb::workbeat

;===================Deshabilitadas sin usar===================

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