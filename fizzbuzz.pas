program FizzBuzz;
{$asmmode intel}

uses SysUtils;

label f0, f1, b0, b1;
var
    n, fi, bi: qword;
    f: array[0..2] of Pointer = (@f0, @f1, @f1);
    b: array[0..4] of Pointer = (@b0, @b1, @b1, @b1, @b1);
begin
    fi := 0; bi := 0;
    for n := 1 to 100 do
    begin
        fi := (fi + 8) mod 24;
        bi := (bi + 8) mod 40;
        asm
            lea rax, f
            add rax, fi
            call [rax]
            lea rax, b
            add rax, bi
            jmp [rax]
        end;
f0:     Write('Fizz');
f1:     asm ret end;
b0:     Write('Buzz');
b1:     WriteLn(LeftStr(IntToStr(n), 2 * fi * bi));
    end;
end.
