﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

#Warn  ; Enable warnings to assist with detecting common errors.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
#MenuMaskKey vkE8
	

;==========================MODO ZURDO================================================== 

^,::^x				;ctrl+, = cortar
^.::^c 				;ctrl+. = copiar 
^-::^v  			;ctrl+- = pegar

^Insert::Send ^c
+Insert::Send ^v
+Delete::Send ^x

!Backspace::SendInput ^z	 	;Alt + BackSpace = ctrl + z 
!+Backspace::SendInput ^+z 		;Alt + shift + BackSpace = ctrl + shift + Z
	
!ñ::!Tab 		;Alt + l = Alt + Tab
!q::@
Alt & +::~


^f9::SendInput, #v
^f10::SendInput, ^f
^f11::SendInput, ^a
^f12::SendInput, ^s

;+f9::SendInput, {f9}
;+f10::SendInput, {f10}
;+f11::SendInput, {f11}
;+f12::SendInput, {f12}

ScrollLock::#d	; teclaBloq = mostrar escritorio
Pause::#e	; teclaPausa = abrir exolorador de carpetas

NumpadIns::Tab	;numero 0 del numerico sea Tab

NumpadEnd::#Left   ;numero 1 del numerico = mover ventana a monitor izquierdo
NumpadDown::#Down  ;numero 2 del numerico = win + abajo
NumpadPgDn::#Right  ;numero 3 del numerico =  mover ventana a monitor derecho

NumpadLeft::+#Left	;numero 4 del numerico =
NumpadClear::#Up	;numero 5 del numerico = 
NumpadRight::+#Right 	;numero 6 del numerico= 

NumpadHome::^+Tab	;numero 7 del numerico = ctrl + shift + tab = moverse entre tabs atras
NumpadUp::^!Tab		;numero 8 del numerico = 					
NumpadPgUP::^Tab	;numero 9 del numerico = ctrl + tab = moverse entre tabs enfrente
	
NumpadDiv::Run "Chrome.exe"	  ;/ del numerico = deshacer

NumpadMult:: 
{
Send, ^c
Sleep 50
Run, http://www.google.com/search?q=%clipboard%
Return
} ;* del numerico = rehacer
	  	
NumpadSub::Run Notepad		;- del numerico
NumpadDel::Run "calc.exe" 	;. del numerico = rehacer2

;============= Otras Funciones ======================================

Capslock::Shift 	;Caps Lock actua como Shift
+Capslock::Capslock	;fijar mayusculas con ctrl + BloqMay

^!SPACE:: Winset, Alwaysontop, , A ; ctrl + alt + space ventana activa Always on Top

;=================== Abrir Programas directo con tecla WIN ===========================

;#n::Run Notepad  ;Win + n = abrir notepad
;#c::Run "calc.exe" ;Win + c = abrir calculadora

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
::lb-::Linea Base
::vobo::Visto Bueno



