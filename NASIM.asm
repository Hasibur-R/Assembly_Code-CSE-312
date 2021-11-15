.MODEL SMALL 
.DATA
X DB '?'
Y DB '?'
A DB '?'

STR1 DB "ENTER THE VALUE OF X : $"
STR2 DB "ENTER THE VALUE OF Y : $"
STR4 DB "ENTER THE A: $"


STR3 DB "THE RESULT IS: $" 
STR5 DB "A IS NOT 1$"
.CODE    
MAIN PROC
      
         MOV AX,@DATA
         MOV DS,AX
         
         MOV AH,9H
         LEA DX,STR1   ; DISPLAY STRING
         INT 21H
         
         ;INPUT FOR X
         MOV AH,1H     ; INPUT   ASCII
         INT 21H              
         
         SUB AL,30H   ; MAKEING NUMBER
         MOV X,AL    
         
         
         MOV AH,2H
         MOV DL,0AH    ; NEW LINE
         INT 21H         
         MOV DL,0DH    ;CARRIAGE RETURN
         INT 21H
         
  
         
         MOV AH,9H
         LEA DX,STR2   ; DISPLAY STRING
         INT 21H
         
         ;INPUT FOR Y
         MOV AH,1H     ; INPUT   ASCII
         INT 21H              
         
         SUB AL, 30H   ; MAKEING NUMBER
         MOV Y,AL    
         
         
         MOV AH,2H
         MOV DL,0AH    ; NEW LINE
         INT 21H         
         MOV DL,0DH    ;CARRIAGE RETURN
         INT 21H
         
         
         MOV AH,9H
         LEA DX,STR4   ; DISPLAY STRING
         INT 21H
         
         ;INPUT FOR S
         MOV AH,1H     ; INPUT   ASCII
         INT 21H              
         
         SUB AL,30H   ; MAKEING NUMBER
         MOV A,AL 
        
         CMP A,1H      
         JE EQ1        ;IF A=1
         JNE EQ2
             
             
             
             
         EQ1:          ; IF A IS EQUAL TO 1
         MOV AH,2H
         MOV DL,0AH    ; NEW LINE
         INT 21H         
         MOV DL,0DH    ;CARRIAGE RETURN  
         INT 21H    
         
         MOV BL, X
         ADD BL, Y     ;ADDING 0
         MOV X, BL
         
         MOV AH,9H
         LEA DX,STR3  ; DISPLAY STRING
         INT 21H   
         
         
         MOV AH, 2H
         ADD X, 30H
         MOV DL,X
         INT 21H
         JMP EXIT  
   
         EQ2:
         MOV AH,2H
         MOV DL,0AH    ; NEW LINE
         INT 21H         
         MOV DL,0DH    ;CARRIAGE RETURN  
         INT 21H
         
         
         MOV AH,9H
         LEA DX,STR5   ; DISPLAY STRING
         INT 21H  
         
         JMP EXIT
              
              
         EXIT:
         MOV AH, 4CH
         INT 21H
         
     
       MAIN ENDP 
END MAIN
 
 