#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

#Warn  ; Enable warnings to assist with detecting common errors.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
#MenuMaskKey vkE8
	

;==========================MODO ZURDO================================================== 

^,::^x  ;ctrl+, = cortar
^.::^c  ;ctrl+. = copiar 
^-::^v  ;ctrl+- = pegar

!Backspace::Send, ^z	 	;Alt + BackSpace = ctrl + z 
!+Backspace::Send, ^+z 		;Alt + shift + BackSpace = ctrl + shift + Z
	
<!ñ::AltTab		;Alt + l = Alt + Tab
<!l::ShiftAltTab	;Alt + ñ = Alt + Shift + Tab

^f9::Send ^f	;ctrl + f9 = buscar
^f10::f3	;ctrl + f10 = busqueda siguiente
^f11::^s	;ctrl + f11 = guardar
^f12::^g	;ctrl + f12 = guardar en español

ScrollLock::^z	; teclaBloq = deshacer (ctrl+z)
Pause::^y	; teclaPausa = rehacer (ctrl+y)

NumpadIns::Tab	;numero 0 del numerico sea Tab

NumpadEnd::^x   ;numero 1 del numerico = cortar
NumpadDown::^c  ;numero 2 del numerico = copiar
NumpadPgDn::^v  ;numero 3 del numerico = pegar

NumpadLeft::!Left	;numero 4 del numerico = atras
NumpadClear::!Up	;numero 5 del numerico = arriba
NumpadRight::!Right 	;numero 6 del numerico= adelante

NumpadHome::^+Tab	;numero 7 del numerico = ctrl + shift + tab = moverse entre tabs atras
NumpadUp::^!Tab		;numero 8 del numerico = ctrl + alt + tab = ver todas las apps abiertas					
NumpadPgUP::^Tab	;numero 9 del numerico = ctrl + tab = moverse entre tabs enfrente
	
NumpadDiv::^z	  ;/ del numerico = deshacer
NumpadMult::^+z	  ;* del numerico = rehacer
NumpadSub::^y	  ;- del numerico = rehacer2

;============= Otras Funciones ======================================

Capslock::Shift 	;Caps Lock actua como Shift
+Capslock::Capslock	;fijar mayusculas con ctrl + BloqMay

^!SPACE:: Winset, Alwaysontop, , A ; ctrl + alt + space ventana activa Always on Top

;=================== Abrir Programas directo con tecla WIN ===========================

#n::Run Notepad  ;Win + n = abrir notepad
#c::Run "calc.exe" ;Win + c = abrir calculadora

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



