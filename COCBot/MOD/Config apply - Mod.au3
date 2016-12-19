; #FUNCTION# ====================================================================================================================
; Name ..........: Config apply - Mod.au3
; Description ...: Extension of applyConfig() for Mod
; Syntax ........: applyConfig()
; Parameters ....:
; Return values .:
; Author ........:
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

; Config Apply for SwitchAcc Mode - DEMEN
	Switch $ProfileType
	Case 1
	   GUICtrlSetState($radActiveProfile, $GUI_CHECKED)
	Case 2
	   GUICtrlSetState($radDonateProfile, $GUI_CHECKED)
	Case 3
	   GUICtrlSetState($radIdleProfile, $GUI_CHECKED)
	EndSwitch

	_GUICtrlCombobox_SetCurSel($cmbMatchProfileAcc, $MatchProfileAcc)

 	If $ichkSwitchAcc = 1 Then
 		GUICtrlSetState($chkSwitchAcc, $GUI_CHECKED)
 	Else
 		GUICtrlSetState($chkSwitchAcc, $GUI_UNCHECKED)
 	EndIf

	If $ichkSmartSwitch = 1 Then
	   GUICtrlSetState($radSmartSwitch, $GUI_CHECKED)
 	Else
	   GUICtrlSetState($radNormalSwitch, $GUI_CHECKED)
 	EndIf

	chkSwitchAcc()

	_GUICtrlCombobox_SetCurSel($cmbTotalAccount, $icmbTotalCoCAcc)	; 0 = AutoDetect

	If $ichkCloseTraining >= 1 Then
		GUICtrlSetState($chkUseTrainingClose, $GUI_CHECKED)
		If $ichkCloseTraining = 1 Then
			GUICtrlSetState($radCloseCoC, $GUI_CHECKED)
		Else
			GUICtrlSetState($radCloseAndroid, $GUI_CHECKED)
		EndIf
	Else
		GUICtrlSetState($chkUseTrainingClose, $GUI_UNCHECKED)
	EndIf

; Multi Finger (LunaEclipse) added rulesss
_GUICtrlComboBox_SetCurSel($cmbDBMultiFinger,$iMultiFingerStyle)
cmbDBMultiFinger()

_GUICtrlComboBox_SetCurSel($cmbCSVSpeed[$LB], $icmbCSVSpeed[$LB])
_GUICtrlComboBox_SetCurSel($cmbCSVSpeed[$DB], $icmbCSVSpeed[$DB])

If $iRadio_Army12 = 1 Then
	GUICtrlSetState($hRadio_Army12, $GUI_CHECKED)
Else
	GUICtrlSetState($hRadio_Army12, $GUI_UNCHECKED)
EndIf

If $iRadio_Army123 = 1 Then
	GUICtrlSetState($hRadio_Army123, $GUI_CHECKED)
Else
	GUICtrlSetState($hRadio_Army123, $GUI_UNCHECKED)
EndIf

;Tresorerie
If $ichkCollectTresory = 1 Then
	GUICtrlSetState($chkCollectTresory, $GUI_CHECKED)
	GUICtrlSetData($txtTreasuryGold, $itxtTreasuryGold)
	GUICtrlSetData($txtTreasuryElixir, $itxtTreasuryElixir)
	GUICtrlSetData($txtTreasuryDark, $itxtTreasuryDark)
	For $i = $leurequisertarienTresor To $btnResetDE
		GUICtrlSetState($i, $GUI_SHOW)
	Next
Else
	GUICtrlSetState($chkCollectTresory, $GUI_UNCHECKED)
	GUICtrlSetData($txtTreasuryGold, $itxtTreasuryGold)
	GUICtrlSetData($txtTreasuryElixir, $itxtTreasuryElixir)
	GUICtrlSetData($txtTreasuryDark, $itxtTreasuryDark)
	For $i = $leurequisertarienTresor To $btnResetDE
		GUICtrlSetState($i, $GUI_HIDE)
	Next
EndIf

If $ichkCollectTresoryGold = 1 Then
	GUICtrlSetState($chkCollectTresoryGold, $GUI_CHECKED)
	GUICtrlSetState($txtTreasuryGold, $GUI_SHOW)
	GUICtrlSetState($eIcnGold, $GUI_SHOW)
	GUICtrlSetState($btnResetOR, $GUI_SHOW)
Else
	GUICtrlSetState($chkCollectTresoryGold, $GUI_UNCHECKED)
EndIf
chkCollectTresoryGold()

If $ichkCollectTresoryElixir = 1 Then
	GUICtrlSetState($chkCollectTresoryElixir, $GUI_CHECKED)
Else
	GUICtrlSetState($chkCollectTresoryElixir, $GUI_UNCHECKED)
EndIf
chkCollectTresoryElixir()

If $ichkCollectTresoryDark = 1 Then
	GUICtrlSetState($chkCollectTresoryDark, $GUI_CHECKED)
Else
	GUICtrlSetState($chkCollectTresoryDark, $GUI_UNCHECKED)
EndIf
chkCollectTresoryDark()
chkCollectTresory()

If $ichkTRFull = 1 Then
	GUICtrlSetState($chkTRFull, $GUI_CHECKED)
Else
	GUICtrlSetState($chkTRFull, $GUI_UNCHECKED)
EndIf

If $ichkSmartUpgrade = 1 Then
	GUICtrlSetState($chkSmartUpgrade, $GUI_CHECKED)
Else
	GUICtrlSetState($chkSmartUpgrade, $GUI_UNCHECKED)
EndIf
chkSmartUpgrade()

GUICtrlSetData($SmartMinGold, $iSmartMinGold)
GUICtrlSetData($SmartMinElixir, $iSmartMinElixir)
GUICtrlSetData($SmartMinDark, $iSmartMinDark)

If $ichkIgnoreTH = 1 Then
	GUICtrlSetState($chkIgnoreTH, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreTH, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreKing = 1 Then
	GUICtrlSetState($chkIgnoreKing, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreKing, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreQueen = 1 Then
	GUICtrlSetState($chkIgnoreQueen, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreQueen, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreWarden = 1 Then
	GUICtrlSetState($chkIgnoreWarden, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreWarden, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreCC = 1 Then
	GUICtrlSetState($chkIgnoreCC, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreCC, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreLab = 1 Then
	GUICtrlSetState($chkIgnoreLab, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreLab, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreBarrack = 1 Then
	GUICtrlSetState($chkIgnoreBarrack, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreBarrack, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreDBarrack = 1 Then
	GUICtrlSetState($chkIgnoreDBarrack, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreDBarrack, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreFactory = 1 Then
	GUICtrlSetState($chkIgnoreFactory, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreFactory, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreDFactory = 1 Then
	GUICtrlSetState($chkIgnoreDFactory, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreDFactory, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreGColl = 1 Then
	GUICtrlSetState($chkIgnoreGColl, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreGColl, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreEColl = 1 Then
	GUICtrlSetState($chkIgnoreEColl, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreEColl, $GUI_UNCHECKED)
EndIf

If $ichkIgnoreDColl = 1 Then
	GUICtrlSetState($chkIgnoreDColl, $GUI_CHECKED)
Else
	GUICtrlSetState($chkIgnoreDColl, $GUI_UNCHECKED)
EndIf


If $ichkCoCStats = 1 Then
	GUICtrlSetState($chkCoCStats, $GUI_CHECKED)
Else
	GUICtrlSetState($chkCoCStats, $GUI_UNCHECKED)
EndIf
GUICtrlSetData($txtAPIKey, $MyApiKey)
chkCoCStats()

chkSmartUpgrade()