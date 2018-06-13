﻿$PBExportHeader$w_wait.srw
forward
global type w_wait from window
end type
type ole_shockwave from olecustomcontrol within w_wait
end type
type p_1 from picture within w_wait
end type
type rr_1 from roundrectangle within w_wait
end type
end forward

global type w_wait from window
integer width = 1554
integer height = 656
boolean border = false
windowtype windowtype = popup!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
ole_shockwave ole_shockwave
p_1 p_1
rr_1 rr_1
end type
global w_wait w_wait

type variables
n_timing   in_time
end variables

on w_wait.create
this.ole_shockwave=create ole_shockwave
this.p_1=create p_1
this.rr_1=create rr_1
this.Control[]={this.ole_shockwave,&
this.p_1,&
this.rr_1}
end on

on w_wait.destroy
destroy(this.ole_shockwave)
destroy(this.p_1)
destroy(this.rr_1)
end on

event open;String ls_movie
ole_shockwave.width 	= PixelsToUnits(550, XPixelsToUnits!)
ole_shockwave.height 	= PixelsToUnits(400, YPixelsToUnits!)

this.width 		= ole_shockwave.width
this.height 	= ole_shockwave.height

ls_movie = getcurrentdir() + "\plugin\waiting.swf"
ole_shockwave.Object.Movie = ls_movie
ole_shockwave.Object.Play()
end event

event timer;this.SetRedRaw(True)
end event

type ole_shockwave from olecustomcontrol within w_wait
event onreadystatechange ( long newstate )
event onprogress ( long percentdone )
event fscommand ( string command,  string args )
event flashcall ( string request )
integer width = 1559
integer height = 656
integer taborder = 10
boolean border = false
boolean focusrectangle = false
string binarykey = "w_wait.win"
integer textsize = -9
integer weight = 400
fontcharset fontcharset = hangeul!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "굴림체"
long textcolor = 33554432
end type

type p_1 from picture within w_wait
boolean visible = false
integer width = 1559
integer height = 656
boolean originalsize = true
string picturename = "..\img\img_waiting.jpg"
boolean focusrectangle = false
end type

type rr_1 from roundrectangle within w_wait
integer linethickness = 4
long fillcolor = 16777215
integer x = 297
integer y = 480
integer width = 366
integer height = 184
integer cornerheight = 40
integer cornerwidth = 55
end type


Start of PowerBuilder Binary Data Section : Do NOT Edit
02w_wait.bin 
2D00000c00e011cfd0e11ab1a1000000000000000000000000000000000003003e0009fffe000000060000000000000000000000010000000100000000000010000000000200000001fffffffe0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdfffffffefffffffe00000004fffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff006f00520074006f004500200074006e00790072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050016ffffffffffffffff0000000100000000000000000000000000000000000000000000000000000000ce5f49c001ca158700000003000002800000000000500003004f0042005800430054005300450052004d0041000000000000000000000000000000000000000000000000000000000000000000000000000000000102001affffffff00000002ffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000011800000000004200500043004f00530058004f00540041005200450047000000000000000000000000000000000000000000000000000000000000000000000000000000000001001affffffffffffffff00000003d27cdb6e11cfae6d4544b8960000545300000000ce5f49c001ca1587ce5f49c001ca1587000000000000000000000000006f00430074006e006e00650073007400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001020012ffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000000000005000001180000000000000001000000020000000300000004fffffffe00000006000000070000000800000009fffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
2Effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff55665567000009000000233e000010f30002000800000000000000080008000000000000000e000800570000006e0069006f00640000007700060008002d00000000003100060008002d000000000031000a0008004800000067006900000068000200080000000000060008002d0000000000310000000800080000000000020008000000000010006800530077006f006c00410000006c00040008003000000008000000000004000000300002000800000000000000080008000000000002000d0000000000000000000000000000000000000004000800310000000800000000000400000030000000080008000000000004000000300008000800610000006c006c000800000000000c006100660073006c000000650000000000000000000000000000000000000000000000000000000000000000000000000000000055665567000009000000233e000010f30002000800000000000000080008000000000000000e000800570000006e0069006f00640000007700060008002d00000000003100060008002d000000000031000a0008004800000067006900000068000200080000000000060008002d0000000000310000000800080000000000020008000000000010006800530077006f006c00410000006c00040008003000000008000000000004000000300002000800000000000000080008000000000002000d0000000000000000000000000000000000000004000800310000000800000000000400000030000000080008000000000004000000300008000800610000006c006c000800000000000c006100660073006c000000650000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
12w_wait.bin 
End of PowerBuilder Binary Data Section : No Source Expected After This Point
