uses crt;
var
        i,n,j,spavai,spsen,k,lv,sp,rptime:integer;
        txt,tam1,tam2,tam3:ansistring;
begin
        clrscr;
        write('insert sentence: ');
        readln(txt);
        write('insert space per line: ');readln(lv);
        write('insert repeat time: ');readln(rptime);
        txt:=txt+#32;
        i:=1;
        while i<=length(txt) do
                begin
                        if txt[i]=#32 then spsen:=spsen+1;
                        i:=i+1;
                end;
{---------------------------------phan_chia-----------------------------}
        tam1:='';
        spavai:=0;
        for i:=1 to length(txt) do
        begin
                if txt[i]=#32 then spavai:=spavai+1;
                if (spavai+1)<=(spsen div 2) then
                        tam1:=tam1+txt[i]
                        else
                        tam2:=tam2+txt[i];
        end;
        if tam2[1]=#32 then delete(tam2,1,1);
        for j:=1 to rptime do
        begin
        sp:=lv;
        for k:=1 to lv do
        begin
                write('                                  ');
                for i:=1 to sp do write(#32);
                write(tam1);
                for i:=1 to (lv-sp)*2 do write(#32);
                write(tam2);
                writeln;
                delay(50);
                sp:=sp-1;
        end;
        for k:=1 to lv do
        begin
                sp:=sp+1;
                write('                                  ');
                for i:=1 to sp do write(#32);
                write(tam1);
                for i:=1 to (lv-sp)*2 do write(#32);
                write(tam2);
                writeln;
                delay(50);
        end;
        tam3:=tam1;
        tam1:=tam2;
        tam2:=tam3;
        end;
readln;
end.

