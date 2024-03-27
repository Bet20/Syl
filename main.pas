program Syl(input, output, stdErr);
{$mode objFPC}

uses SysUtils;

var
  i: integer;
  ArgCount: integer;

const
  Vowels: array[0..4] of char = ('a', 'e', 'i', 'o', 'u');

// Provides usage info
procedure Usage;
begin
  Writeln('syb usage:');
  Writeln(' - syb [text]');
end;

function CountVowel(Input: string) : integer;
var
  I: integer;
  J: integer;
  InputSize: integer;
  Acc: integer = 0;

begin
  InputSize := Length(Input);
  for I := 0 to InputSize do
  begin
    for J := 0 to 4 do
    begin
      if Input[I] = Vowels[J] then
      begin
        Acc := Acc + 1;
      end;
    end;
  end;
  CountVowel := Acc
end;


begin
  ArgCount := paramCount();
  if ArgCount < 1 then
  begin
    Usage();
    Exit();
  end;

  for i := 1 to paramCount() do
  begin
    Writeln(paramStr(i));
    writeln(Format ('%d', [CountVowel(paramStr(i))]));
  end;
end.


