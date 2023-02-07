;*****************************************************************
;* This stationery serves as the framework for a                 *
;* user application (single file, absolute assembly application) *
;* For a more comprehensive program that                         *
;* demonstrates the more advanced functionality of this          *
;* processor, please see the demonstration applications          *
;* located in the examples subdirectory of the                   *
;* Freescale CodeWarrior for the HC12 Program directory          *
;*****************************************************************

; export symbols
      XDEF Entry, _Startup            ; export 'Entry' symbol
      ABSENTRY Entry        ; for absolute assembly: mark this as application entry point



      INCLUDE 'derivative.inc'


; variable/data section

; code section
            org   $3500
                           
Entry:
_Startup:
*to run a part "uncomment" it and comment the other parts *
;start       LDAB #11
;mb          PSHA
;            nop
;end         DBNE B,mb            

start        LDAA #22
             LDAB #21
             LDX  #9
             MUL
             STAB $41
end          SWI         
             


*part 1*

;            LDAA #$FF             ; ACCA = $FF
;            STAA DDRH             ; Config. Port H for output
;            STAA PERT             ; Enab. pull-up res. of Port T
;             
;  Loop:     LDAA PTT              ; Read Port T
;            STAA PTH              ; Display SW1 on LED1 connected to Port H
;            BRA Loop              ; Loop
          
*part 2*
             
;            BSET DDRP,%11111111   ; Configure Port P for output (LED2 cntrl) 
;            BSET DDRE,%00010000   ; Configure pin PE4 for output (enable bit)
;            BCLR PORTE,%00010000  ; Enable keypad
          
;  Loop:     LDAA PTS              ; Read a key code into AccA
;            LSRA                  ; Shift right AccA
;            LSRA                  ; -"-
;            LSRA                  ; -"-
;            LSRA                  ; -"-
;            STAA PTP              ; Output AccA content to LED2
;            BRA Loop              ; Loop


; *part 3*
;  
;            BSET DDRP,%11111111 ; Config. Port P for output
;            LDAA #%10000000     ; Prepare to drive PP7 high
; 
; MainLoop:  STAA PTP            ; Drive PP7
;            LDX  #$1FFF          ; Initialize the loop counter
;  Delay:     DEX                 ; Decrement the loop counter
;            BNE  Delay           ; If not done, continue to loop
;            EORA #%10000000     ; Toggle the MSB of AccA
;            BRA MainLoop

 
  
;**************************************************************
;*                 Interrupt Vectors                          *
;**************************************************************
            ORG   $FFFE
            DC.W  Entry           ; Reset Vector

