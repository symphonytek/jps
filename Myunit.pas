unit myunit;

interface
Function numtoword(num1:real=0;oflg:boolean=True):string;
implementation
Function numtoword(num1:real=0;oflg:boolean=True):string;
const ostr:array[1..20] of string=('One ','Two ','Three ','Four ','Five ','Six '
,'Seven ','Eight ','Nine ','Ten ','Eleven ','Twelve ','Thirteen ','Fourteen ','Fifteen '
,'Sixteen ','Seventeen ','Eighteen ','Ninteen ','Twenty ');
tstr:array[1..9] of string=('Ten ','Twenty ','Thirty ','Forty ','Fifty ','Sixty '
,'Seventy ','Eighty ','Ninty ');
hstr:array[1..4] of string=('Hundred ','Thousand ','Lacs ','Crore ');
var
{Variable declaration of main}
num,i:longint;lflag:boolean;
j:real;
nstr:string;
Function ostr1(i:integer):string;
begin
ostr1:='';if i>0 then ostr1:=ostr[i];
end;
Function hstr1(i:integer):string;
begin
hstr1:='';if i>0 then hstr1:=hstr[i];
end;
Function tconv(n:longint):string;
var t2,temp,tmpstr:string;
i:longint;
begin
t2:='';temp:='';tmpstr:='';
    if n>99 then
  begin
   if n div 100<>0 then tmpstr:=ostr1(n div 100)+'Hundred ';
   n:=n mod 100;
  end;
  if n>20 then
  begin
   i:=n div 10;if i<>0 then temp:=tstr[i] else temp:='';
   i:=n mod 10;if i<>0 then t2:=ostr1(i) else t2:='';
   tmpstr:=tmpstr+temp+t2;
  end
  else tmpstr:=tmpstr+ostr1(n);
tconv:=tmpstr;
end;

begin
if num1>0 then
begin
  lflag:=True;num:=trunc(num1);nstr:='';
  j:=(num1-num)*100;if j>0 then nstr:='and '+tconv(trunc(j))
  +'Paise ';
  if num<1000 then nstr:=tconv(num)+nstr
  else
  begin
       nstr:=tconv(num mod 1000)+nstr;
       num:=num div 1000;lflag:=False;
  end;i:=2;
if not lflag then begin
     while num>=100 do begin
       if num mod 100 <>0 then
       nstr:=tconv(num mod 100)+hstr[i]+nstr;
       num:=num div 100;i:=i+1;
      end;
nstr:=tconv(num)+hstr1(i)+nstr;end;
if not (nstr[1]=' ') and oflg then
numtoword:=nstr+'Only';
end
 else numtoword:='Zero';
end;
end.
