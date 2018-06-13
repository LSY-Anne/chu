﻿$PBExportHeader$w_hfn_print_form3.srw
$PBExportComments$회계관리 출력 Form 1(기준년월(F.T), 회계단위, 수지구분)
forward
global type w_hfn_print_form3 from w_msheet
end type
type uo_yearmonth from cuo_yearmonth_fromto within w_hfn_print_form3
end type
type uo_slip_class from cuo_slip_class within w_hfn_print_form3
end type
type uo_acct_class from cuo_acct_class within w_hfn_print_form3
end type
type st_back from statictext within w_hfn_print_form3
end type
type dw_print from cuo_dwprint within w_hfn_print_form3
end type
type st_2 from statictext within w_hfn_print_form3
end type
type st_1 from statictext within w_hfn_print_form3
end type
type gb_3 from groupbox within w_hfn_print_form3
end type
end forward

global type w_hfn_print_form3 from w_msheet
integer height = 2616
uo_yearmonth uo_yearmonth
uo_slip_class uo_slip_class
uo_acct_class uo_acct_class
st_back st_back
dw_print dw_print
st_2 st_2
st_1 st_1
gb_3 gb_3
end type
global w_hfn_print_form3 w_hfn_print_form3

type variables
datawindowchild	idw_child

string	is_str_yearmonth, is_end_yearmonth			// 조회년월
integer	ii_acct_class										// 회계단위
integer	ii_str_acct_class, ii_end_acct_class		// 회계단위
string	is_slip_class										// 수입/지출

end variables

forward prototypes
public subroutine wf_button_control ()
public subroutine wf_retrieve ()
end prototypes

public subroutine wf_button_control ();// ------------------------------------------------------------------------------------------
// Function Name	:	wf_button_control
// Function 설명	:	버튼을 Control 한다.
// Argument			:	
// Return			:	
// ------------------------------------------------------------------------------------------

//wf_setMenu('INSERT',		FALSE)
//wf_setMenu('DELETE',		FALSE)
//wf_setMenu('RETRIEVE',	TRUE)
//wf_setMenu('UPDATE',		FALSE)
//wf_setMenu('PRINT',		TRUE)
//
end subroutine

public subroutine wf_retrieve ();// ==========================================================================================
// 기    능	:	Datawindow Retrieve
// 작 성 인 : 	이현수
// 작성일자 : 	2002.11
// 함수원형 : 	wf_retrieve()
// 인    수 :
// 되 돌 림 :
// 주의사항 :
// 수정사항 :
// ==========================================================================================


end subroutine

on w_hfn_print_form3.create
int iCurrent
call super::create
this.uo_yearmonth=create uo_yearmonth
this.uo_slip_class=create uo_slip_class
this.uo_acct_class=create uo_acct_class
this.st_back=create st_back
this.dw_print=create dw_print
this.st_2=create st_2
this.st_1=create st_1
this.gb_3=create gb_3
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.uo_yearmonth
this.Control[iCurrent+2]=this.uo_slip_class
this.Control[iCurrent+3]=this.uo_acct_class
this.Control[iCurrent+4]=this.st_back
this.Control[iCurrent+5]=this.dw_print
this.Control[iCurrent+6]=this.st_2
this.Control[iCurrent+7]=this.st_1
this.Control[iCurrent+8]=this.gb_3
end on

on w_hfn_print_form3.destroy
call super::destroy
destroy(this.uo_yearmonth)
destroy(this.uo_slip_class)
destroy(this.uo_acct_class)
destroy(this.st_back)
destroy(this.dw_print)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.gb_3)
end on

event ue_open;call super::ue_open;// ==========================================================================================
// 작성목정 :	Window Open
// 작 성 인 : 	이현수
// 작성일자 : 	2002.11
// 변 경 인 :
// 변경일자 :
// 변경사유 :
// ==========================================================================================

is_str_yearmonth	=	uo_yearmonth.uf_str_getyearmonth()
is_end_yearmonth	=	uo_yearmonth.uf_end_getyearmonth()

is_slip_class		=	uo_slip_class.uf_getcode()

st_back.bringtotop = true

wf_button_control()

uo_yearmonth.em_str_yearmonth.setfocus()
end event

event ue_print;call super::ue_print;////////////////////////////////////////////////////////////////////////////////////////////
////	이 벤 트 명: ue_print
////	기 능 설 명: 자료출력 처리
////	주 의 사 항: 
////////////////////////////////////////////////////////////////////////////////////////////
//
//IF dw_print.RowCount() < 1 THEN	return
//
//OpenWithParm(w_printoption, dw_print)
//
end event

event ue_retrieve;call super::ue_retrieve;

st_back.bringtotop	=	true

wf_retrieve()

if dw_print.rowcount() > 0	then	st_back.bringtotop	=	false

return 1


end event

type ln_templeft from w_msheet`ln_templeft within w_hfn_print_form3
end type

type ln_tempright from w_msheet`ln_tempright within w_hfn_print_form3
end type

type ln_temptop from w_msheet`ln_temptop within w_hfn_print_form3
end type

type ln_tempbuttom from w_msheet`ln_tempbuttom within w_hfn_print_form3
end type

type ln_tempbutton from w_msheet`ln_tempbutton within w_hfn_print_form3
end type

type ln_tempstart from w_msheet`ln_tempstart within w_hfn_print_form3
end type

type uc_retrieve from w_msheet`uc_retrieve within w_hfn_print_form3
end type

type uc_insert from w_msheet`uc_insert within w_hfn_print_form3
end type

type uc_delete from w_msheet`uc_delete within w_hfn_print_form3
end type

type uc_save from w_msheet`uc_save within w_hfn_print_form3
end type

type uc_excel from w_msheet`uc_excel within w_hfn_print_form3
end type

type uc_print from w_msheet`uc_print within w_hfn_print_form3
end type

type st_line1 from w_msheet`st_line1 within w_hfn_print_form3
end type

type st_line2 from w_msheet`st_line2 within w_hfn_print_form3
end type

type st_line3 from w_msheet`st_line3 within w_hfn_print_form3
end type

type uc_excelroad from w_msheet`uc_excelroad within w_hfn_print_form3
end type

type ln_dwcon from w_msheet`ln_dwcon within w_hfn_print_form3
end type

type uo_yearmonth from cuo_yearmonth_fromto within w_hfn_print_form3
event destroy ( )
integer x = 78
integer y = 84
integer taborder = 50
boolean border = false
end type

on uo_yearmonth.destroy
call cuo_yearmonth_fromto::destroy
end on

event ue_itemchange;call super::ue_itemchange;is_str_yearmonth	=	uo_yearmonth.uf_str_getyearmonth()
is_end_yearmonth	=	uo_yearmonth.uf_end_getyearmonth()
end event

type uo_slip_class from cuo_slip_class within w_hfn_print_form3
event destroy ( )
integer x = 2363
integer y = 80
integer taborder = 30
boolean bringtotop = true
end type

on uo_slip_class.destroy
call cuo_slip_class::destroy
end on

event ue_itemchanged;call super::ue_itemchanged;is_slip_class	=	uf_getcode()

end event

type uo_acct_class from cuo_acct_class within w_hfn_print_form3
integer x = 1321
integer y = 84
integer width = 1079
integer taborder = 90
end type

event ue_itemchanged;call super::ue_itemchanged;ii_acct_class	=	uf_getcode()

if ii_acct_class = 0 then
	ii_str_acct_class	=	0
	ii_end_acct_class	=	9
else
	ii_str_acct_class	=	ii_acct_class
	ii_end_acct_class	=	ii_acct_class
end if


end event

on uo_acct_class.destroy
call cuo_acct_class::destroy
end on

type st_back from statictext within w_hfn_print_form3
integer y = 216
integer width = 3881
integer height = 2268
integer textsize = -10
integer weight = 400
fontcharset fontcharset = hangeul!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "굴림체"
long backcolor = 80263581
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type dw_print from cuo_dwprint within w_hfn_print_form3
integer y = 216
integer width = 3881
integer height = 2268
integer taborder = 40
boolean hscrollbar = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_hfn_print_form3
integer x = 3328
integer y = 72
integer width = 539
integer height = 48
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = hangeul!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "굴림체"
long textcolor = 8388608
long backcolor = 67108864
string text = "※ 반드시 조회를"
boolean focusrectangle = false
end type

type st_1 from statictext within w_hfn_print_form3
integer x = 3328
integer y = 136
integer width = 539
integer height = 48
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = hangeul!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "굴림체"
long textcolor = 8388608
long backcolor = 67108864
string text = "   하시기 바랍니다."
boolean focusrectangle = false
end type

type gb_3 from groupbox within w_hfn_print_form3
integer y = 12
integer width = 3881
integer height = 200
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = hangeul!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "굴림체"
long textcolor = 33554432
long backcolor = 67108864
string text = "조회 조건"
end type
