#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

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

!Backspace::Send ^z	 	;Alt + BackSpace = ctrl + z 
!+Backspace::Send ^+z 		;Alt + shift + BackSpace = ctrl + shift + Z
	
<!ñ::!Tab			;Alt + l = Alt + Tab

$f1::^q
$f2::^w
$f3::^e
$f4::^y
$f5::^z
$f6::^x
$f7::^c
$f8::^v
$f9::#v
$f10::^f
^f10::f3
$f11::^a
$f12::^s

+f1::SendInput, {f1}
+f2::SendInput, {f2}
+f3::SendInput, {f3}
+f4::SendInput, {f4}
+!f4::SendInput, !{f4}
+f5::SendInput, {f5}
+f6::SendInput, {f6}
+f7::SendInput, {f7}
+f8::SendInput, {f8}
+f9::SendInput, {f9}
+f10::SendInput, {f10}
+f11::SendInput, {f11}
+f12::SendInput, {f12}

ScrollLock::#d	; teclaBloq = mostrar escritorio
Pause::#e	; teclaPausa = abrir exolorador de carpetas

NumpadIns::Tab	;numero 0 del numerico sea Tab

NumpadEnd::+#Left   ;numero 1 del numerico = mover ventana a monitor izquierdo
NumpadDown::#Down  ;numero 2 del numerico = win + abajo
NumpadPgDn::+#Right  ;numero 3 del numerico =  mover ventana a monitor izquierdo

NumpadLeft::#^Left	;numero 4 del numerico =
NumpadClear::#Tab	;numero 5 del numerico = 
NumpadRight::#^Right 	;numero 6 del numerico= 

NumpadHome::^+Tab	;numero 7 del numerico = ctrl + shift + tab = moverse entre tabs atras
NumpadUp::^!Tab		;numero 8 del numerico = 					
NumpadPgUP::^Tab	;numero 9 del numerico = ctrl + tab = moverse entre tabs enfrente
	
NumpadDiv::Run "Chrome.exe"	  ;/ del numerico = deshacer
NumpadMult::Run Notepad 	  ;* del numerico = rehacer
NumpadSub::Run "calc.exe" 	  ;- del numerico = rehacer2
NumpadDel::Run "calc.exe" 	  ;- del numerico = rehacer2

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



