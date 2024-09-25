;Test                   GetInt.ASM
;
;        Objective: Test GetLInt and GetInt macro behavior with characters and strings. 
;            Input: Requests strings from the user usimg GetInt.
;           Output: Outputs the stored value.
%include  "io.mac"
	
.DATA
input_prompt   db  "Please enter a text: ",0
end_msg        db  "Stored value: ",0

.CODE
     .STARTUP

     PutStr input_prompt 
     GetInt DX
     nwln
     PutStr end_msg
     PutInt DX
     nwln

     PutStr input_prompt 
     GetLInt EDX
     nwln
     PutStr end_msg
     PutLInt EDX
     nwln


     .EXIT