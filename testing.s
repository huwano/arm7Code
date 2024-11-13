    AREA MyCode, CODE, READONLY    ; Definiert den Codebereich
    EXPORT _start                  ; Exportiert den Startpunkt f�r den Linker

_start                              ; Startpunkt des Programms
    MOV R0, #5                      ; Lade die Zahl 5 in Register R0
    MOV R1, #10                     ; Lade die Zahl 10 in Register R1
    ADD R2, R0, R1                  ; Addiere die Werte in R0 und R1 und speichere das Ergebnis in R2

    ; Optional: Beenden des Programms (Linux exit syscall)
    MOV R7, #1                      ; Linux-Systemaufrufnummer f�r exit
    MOV R0, #0                      ; R�ckgabewert 0
    SWI 0                           ; Software-Interrupt f�r den Systemaufruf

    END                             ; Markiert das Ende des Programms