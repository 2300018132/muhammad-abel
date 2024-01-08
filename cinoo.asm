

name "case-converter"

org 100h

.data
    msg db "Masukkan sebuah karakter: $"

.code
   
    mov dx, offset msg
    mov ah, 9
    int 21h

    
    mov ah, 1
    int 21h

   
    mov bl, al

    
    cmp al, 'A'
    jb not_letter
    cmp al, 'Z'
    ja not_letter

    
    add al, 20h
    jmp print

not_letter:
    
    cmp bl, 'a'
    jb not_letter2
    cmp bl, 'z'
    ja not_letter2

    
    sub al, 20h
    jmp print

not_letter2:
    

print:
   
    mov dl, al
    mov ah, 2
    int 21h

   
    mov ah, 4ch
    int 21h

end
