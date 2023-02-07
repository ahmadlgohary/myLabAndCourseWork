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



; Include derivative-specific definitions 
		INCLUDE 'derivative.inc' 




; code section
            
            ORG   $4000


;Program Start

Entry:
_Startup:

 ;**********************************************************
;*          Assignment 7.3                                 *
;***********************************************************      
    


              BSET    DDRP, %11111111       ;Config Port P for output
              LDAA    #%10000000            ;Prepare to drive PP7 high
              
MainLoop      STAA    PTP                   ;Drive PP7
              LDX     #$1FFF                ;Initialize loop counter 
Delay         DEX                           ;Decrement loop counter
              BNE     Delay                 ;If not done, continue loop
              EORA    #%10000000            ;Toggle MSB of ACCA
              BRA     MainLoop              ;Go to MainLoop





;**************************************************************
;*                 Interrupt Vectors                          *
;**************************************************************
            ORG   $FFFE
            DC.W  Entry           ; Reset Vector
