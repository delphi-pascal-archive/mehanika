unit Unit1;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, ExtCtrls, ComCtrls, TeEngine, Series, TeeProcs, Chart,
 Menus;

type
 TForm1 = class(TForm)
  Label1: TLabel;
  Label2: TLabel;
  Label3: TLabel;
  Label4: TLabel;
  Label5: TLabel;
  Label7: TLabel;
  Timer1: TTimer;
  Label8: TLabel;
  TrackBar1: TTrackBar;
  Label9: TLabel;
  TrackBar2: TTrackBar;
  Label10: TLabel;
  TrackBar3: TTrackBar;
  TrackBar4: TTrackBar;
  TrackBar5: TTrackBar;
  TrackBar6: TTrackBar;
  TrackBar7: TTrackBar;
  Label6: TLabel;
  TrackBar8: TTrackBar;
  TrackBar9: TTrackBar;
  MainMenu1: TMainMenu;
  N1: TMenuItem;
  N3: TMenuItem;
  N4: TMenuItem;
  SaveDialog1: TSaveDialog;
  OpenDialog1: TOpenDialog;
  Button1: TButton;
  Label11: TLabel;
  TrackBar10: TTrackBar;
  TrackBar11: TTrackBar;
  Label12: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Chart1: TChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    RadioGroup1: TRadioGroup;
    N2: TMenuItem;
    N5: TMenuItem;
  Procedure FormCreate(Sender: TObject);
  Procedure Timer1Timer(Sender: TObject);
  Procedure Edit1Change(Sender: TObject);
  Procedure TrackBar1Change(Sender: TObject);
  Procedure FormResize(Sender: TObject);
  Procedure TrackBar2Change(Sender: TObject);
  Procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
   Shift: TShiftState; X, Y: Integer);
  Procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
   Shift: TShiftState; X, Y: Integer);
  Procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
   Y: Integer);
  Procedure N7Click(Sender: TObject);
  Procedure N3Click(Sender: TObject);
  Procedure N4Click(Sender: TObject);
  Procedure Button1Click(Sender: TObject);
  Procedure TrackBar11Change(Sender: TObject);
  Procedure OpenAs(const n:string);
  Procedure SaveAs(const n:string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
 private
  Stop: cardinal; // время работы механизма
  Vmex: real;
  bit: Tbitmap; // битмапа в которую все прорисоввываеться
  cx, cy, L1, L2, L3, L4, A, B: integer; // переменные для хранения длин звеньев и др. параметров
  L_1, L_2, L_3, L_4, a_, b_, TmpX, tmpY: integer;
  angle, angle1: real;
  moved: boolean;
  a1, b1: real;
  V1, V2: real;
 public

 end;
 
var
 Form1: TForm1;
 
implementation

uses math; // модуль с математическими функциями стандартный
{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 Application.Title:='Механика';
 bit:=Tbitmap.Create;
 bit.Width:=Image1.Width;
 bit.Height:=Image1.Height;
 Image1.Picture.Bitmap:=bit;
 // сделать так чтобы битмап принадлежал картинке, что бы изображение не моргало
 cy:=Image1.Height div 2; // центер экрана по высоте
 Edit1Change(Sender); // вызов процедуры изменения параметров
 cx:=L1+5;
 OpenAs('Default.txt');
 TrackBar2Change(self);
 TrackBar11Change(self);
 Series1.Title:='точка C';
 Series2.Title:='точка D';
 Timer1Timer(self); // если таймер выключен то обновляем изображение
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
 x, y: integer; // временные переменые для прорисовки
 x1, y1: integer;
 x2, y2: integer;
 x3, y3: integer;
 tmp, L5, L6: integer;
 ang1, tmp1: real;
 x_1, y_1: real;
 x_2, y_2: real;
 x_3, y_3: real;
begin
 if sender=Timer1
 then // если вызываеться от имени таймера то прибовляем угол поворота . .
  begin
   angle:=angle+(2*pi*Vmex/6000); // вычисление угла поворота первого звена
   inc(stop);
  end;
 if angle>2*pi // если угол больше 360 градусов
 then angle:=0; // то угол равен 0
 with bit.Canvas do // рисуем
  begin
   brush.Color:=clblack;
   pen.Width:=1;
   fillrect(ClipRect);
   pen.Color:=cllime; //заливка
   x:=Round(cx+cos(angle)*L1); // вычисление координаты Х точки В исходя из угла поворота
   y:=Round(cy+Sin(angle)*L1); // тоже для координаты Y
   y1:=cy+A; // расстояние от точки О до точки С
   X2:=cx+B; // расстояние от точки О до точки D
   y_1:=y1;
   // вычисление координаты точки С исходя из позиции точки В и длинны звена ВС
   if sqr(L2)-sqr(y-y1)>0
   then x_1:=x+sqrT(sqr(L2)-sqr(y-y1))
   else x_1:=x+sqrT(sqr(y-y1)-sqr(L2));
   x1:=Round(x_1);
   // вычисление координаты точки D исходя из координат точки С и длинным звена CD . .
   x_2:=cx+B;
   x2:=Round(x_2);
   if sqr(L3)-sqr(x1-x2)>0
   then y_2:=y1-sqrT(sqr(L3)-sqr(x1-x2))
   else y_2:=y1-sqrT(sqr(x1-x2)-sqr(L3));
   y2:=Round(y_2);
   pen.Color:=clblue;
   // прорисовка всего этого хламья
   moveto(cx, cy); lineto(cx + 5, cy + 8); lineto(cx - 5, cy + 8); lineto(cx, cy);
   moveto(cx - L1, cy + A); lineto(cx + L1 + L2, cy + A);
   moveto(cx + B, cy + A - L3); lineto(cx + B, Cy + A - 5);
   tmp:=Round((cx + L1 + L2 + L4) - L4 / Tan(angle1));
   moveto(cx + L1 + L2 + L4, cy + A);
   lineto(tmp, cy + A + L4);
   L5:=cx + L1 + L2 + L4 - x1;
   ang1:=(-L5 * sin(angle1) * 180 / pi) / L4;
   L6:=Round((-L4 * sin((180 - angle1 * 180 / pi - ang1) * pi / 180)) / sin(angle1));
   //
   x_3:=L5+x1-cos(angle1)*L6;
   x3:=Round(x_3);
   y_3:=cy+A+sin(angle1)*L6;
   y3:=Round(y_3);
   //
   pen.Color:=cllime;
   pen.Width := 2;
   moveto(cx, cy); lineto(x, y);
   lineto(x1, y1); lineto(x2, y2);
   moveto(x1, y1); lineto(x3, y3);
   pen.Color := clred; pen.Width := 1;
   Ellipse(cx - 3, cy - 3, cx + 3, cy + 3);
   Ellipse(x - 3, y - 3, x + 3, y + 3);
   Ellipse(x1 - 3, y1 - 3, x1 + 3, y1 + 3);
   Ellipse(x2 - 3, y2 - 3, x2 + 3, y2 + 3);
   Ellipse(x3 - 3, y3 - 3, x3 + 3, y3 + 3);
   Font.Color := clwhite;
   SetBkMode(handle, Transparent);
   textout(cx + 3, cy + 3, 'O');
   textout(x + 5, y + 5, 'В');
   textout(x1, y1 + 5, 'C');
   textout(x2 + 5, y2, 'D');
   textout(x3 + 3, y3 + 3, 'E');
   // вычисление скоростей и ускорений
   if a1=0
   then a1:=x_1;
   if b1=0
   then b1:=y_2;
   textout(10, 10, 'Скорость точки В - ' + floattostr(sqr(L_1 / 10) * pi * Vmex / 60) + ' cм/c');
   textout(10, 22, 'Ускорение точки В - '+inttostr(TrackBar11.Position)+' см/с*с');
   // textout(10, 22, 'Скорость  точки C - ' + floattostr((a1 - x_1) * 100) + ' cм/c');
   // textout(10, 34, 'Скорость  точки D - ' + floattostr((b1 - y_2) * 100) + ' cм/c');
   textout(10, image1.Height-16, 'Осталось работать - '+inttostr((TrackBar10.Position * 1000 Div 10-stop) div 100)+' с.');
   if (TrackBar2.Position>0)
   and (sender = timer1)
   then
    // если скорость больше нуля и вызываеться от имени таймера
    begin
     if RadioGroup1.ItemIndex=0
     then // если отмечено что надо скорость
      begin
       Series1.AddY((a1 - x_1) * 100); // показываем скорость
       Series2.AddY((b1 - y_2) * 100);
      end
     else // если ускорение
      begin
       Series1.AddY((V1 - (a1 - x_1) * 100) * 100); // показываем ускорение
       Series2.AddY((v2 - (b1 - y_2) * 100) * 100);
      end;
    end;
   a1:=x_1; // запоминаем скорости
   b1:=y_2;
   V1:=(a1-x_1)*100; // и ускорения
   V2:=(b1-y_2)*100;
  end;
 Image1.Canvas.Draw(0,0,bit);
  // обновляем изображение
 if stop>TrackBar10.Position*1000 div 10 // в 1 секунду 1000 миллисекунд, а таймер вызывается с интрервалом в 10 миллисекунд
 then
  begin
   Timer1.Enabled:=false;
   Button1.Caption:='Пуск';
  end; 
 Vmex:=Vmex+TrackBar11.Position/6;
 if Abs(Trunc(vmex)-Vmex)<0.001
 then
  begin
   TrackBar2.Position:=trunc(vmex);
   TrackBar2Change(self);
  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
var
 k: boolean;
begin
 // часть которая отвечает за то что бы звенья не были больше и меньше положеного размера
 TrackBar5.Min:=TrackBar3.Position+2;
 TrackBar4.Min:=TrackBar5.Position+TrackBar3.Position + 2;
 TrackBar5.Max:=TrackBar4.Position-TrackBar3.Position + 2;
 TrackBar6.Min:=Round(sqrT(sqr(TrackBar3.Position + TrackBar4.Position) - sqr(TrackBar5.Position)) + 2);
 TrackBar7.Min:=TrackBar6.Position - Round(sqrT(sqr(TrackBar4.Position - TrackBar3.Position) - sqr(TrackBar5.Position))) + 3;
 k:=timer1.Enabled; // сохранение режима работы таймера
 Timer1.Enabled:=false; // выключение таймера
 try // это можно в принципе убрать
  L_1:=TrackBar3.Position;
  A_:=TrackBar5.Position;
  L_2:=TrackBar4.Position;
  L_3:=TrackBar7.Position;
  L_4:=TrackBar9.Position;
  B_:=TrackBar6.Position;
  L1:=Round(L_1*TrackBar1.Position/100);
  L2:=Round(L_2*TrackBar1.Position/100);
  L3:=Round(L_3*TrackBar1.Position/100);
  L4:=Round(L_4*TrackBar1.Position/100);
  A:=Round(A_*TrackBar1.Position/100);
  B:=Round(B_*TrackBar1.Position/100);
  angle1:=TrackBar8.Position*pi/180;
 except
  exit; // если ты убрала то что в принципе можно было убрать то убери и это
 end;
 // обновление текстовых меток, чтоб они показывали реальные длины звеньев др.
 Label2.Caption:='L(OB) = '+inttostr(TrackBar3.Position);
 Label7.Caption:='A = ' + inttostr(TrackBar5.Position);
 Label8.Caption:='Б = ' + inttostr(TrackBar6.Position);
 Label3.Caption:='L(ВC) = '+inttostr(TrackBar4.Position);
 Label4.Caption:='L(CD) = '+inttostr(TrackBar7.Position);
 Label5.Caption:='L(CE) = '+inttostr(TrackBar9.Position);
 Label6.Caption:='а = '+inttostr(TrackBar8.Position)+' градусов';
 timer1.Enabled:=k; // востановление режима работы таймера . .
 if not k
 then Timer1Timer(self)
end;

procedure TForm1.TrackBar1Change(Sender: TObject); // вызываеться когда меняеться масштаб
begin
 Label9.Caption:='Масштаб - '+inttostr(TrackBar1.Position)+' %'; // изменение масштаба изображения
 Edit1Change(sender);
end;

procedure TForm1.FormResize(Sender: TObject); // вызываеться когда изменяеться размер окна
var
 k: boolean;
begin
 k:=Timer1.Enabled; // сохранение режима работы таймера
 Timer1.Enabled:=false; // выключение таймера
 bit.Width:=Image1.Width; // установка новых размеров битмапа
 bit.Height:=Image1.Height;
 Image1.Picture.Bitmap:=bit;
 Timer1.Enabled:=k; // востановление режима работы таймера
 if not k
 then Timer1Timer(self);
end;

procedure TForm1.TrackBar2Change(Sender: TObject); // вызываеться когда меняеться скорость
begin
 if (sender=TrackBar2) or (sender=Form1)
  or(sender=Timer1)
 then
  begin
   Label10.Caption:='Скорость - ' + inttostr(TrackBar2.Position) + ' об/мин';
   if sender<>timer1
   then Vmex:=TrackBar2.Position;
  end;
 if (sender = TrackBar10) or (sender = form1)
 then Label11.Caption:='Время работы механизма '+inttostr(TrackBar10.Position)+' c.';
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
 Shift: TShiftState; X, Y: Integer); // вызываеться когда ты кликнешь по картинке с изображением . .
begin
 moved:=true;
 TmpX:=X;
 TmpY:=Y;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
 Shift: TShiftState; X, Y: Integer); // вызываеться когда та откликнешь от картинки . . :)
begin
 moved:=false
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
 Y: Integer); // вызываеться когда ты перетаскиваешь крысу по картинке
var
 k: boolean;
begin
 if moved
 then // если ты перед этим на крысу нажала
  begin
   k:=timer1.Enabled; // сохранение режима работы таймера
   timer1.Enabled:=false;
   cx:=cx+(x-tmpx);
   cy:=cy+(y-tmpy);
   TmpX:=X;
   tmpY:=Y;
   if not k
   then Timer1Timer(self); // если таймер выключен то обновляем изображение
   timer1.Enabled:=k;
  end;
end;

procedure TForm1.N7Click(Sender: TObject); // вызываеться когда ты меняешь график / скорость / ускорение
var
 k:boolean;
begin
 k:=Timer1.Enabled;
 timer1.Enabled:=false;
 Series1.Clear; // очистка графика
 Series2.Clear; // очистка графика
 if RadioGroup1.Itemindex=0 then Chart1.Title.Text[0]:='Скорость'
 else Chart1.Title.Text[0]:='Ускорение';
 Timer1.Enabled:=k;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
 if SaveDialog1.Execute
 Then saveas(SaveDialog1.FileName);
end;

procedure TForm1.N4Click(Sender: TObject);
begin
 if OpenDialog1.Execute
 then openAs(OpenDialog1.FileName);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if stop=0
 then
  begin
   stop:=0;
   Timer1.Enabled:=true;
   Button1.Caption:='Стоп';
   Series1.Clear; // очистка графика
   Series2.Clear; // очистка графика
  end
 else
  begin
   stop:=0;
   Timer1.Enabled:=false;
   Button1.Caption:='Пуск';
  end;
end;

procedure TForm1.TrackBar11Change(Sender: TObject);
begin
 Label12.Caption:='Ускорение - '+inttostr(TrackBar11.Position)+' см/(с*с)';
end;

procedure TForm1.OpenAs(const n: string);
var
 x: integer;
 s: string;
 f: TextFile;
begin
 assignfile(f, n); // открытие файла для чтения
 {$I-}
 reset(F);
 {$I+}
 if IOResult<>0
 then
  begin
   ShowMessage('Ошибка при работе с файлом');
   Exit;
  end;
 Readln(f, s); // чтение идентификатора
 // если идентификатор не тот то...
 if s<>'vt[fybrf'
 then showmessage('Файл не является файлом данных программы '+Application.Title)
 else
  for x:=1 to 11 do
   begin
    readln(f, s); // чтение параметров и запись
    try
     (Findcomponent('TrackBar' + IntToStr(x)) as TTrackBar).Position:=strtoint(s);
    except ShowMessage('Ошибка конвертации данных!');
    end;
   end;
 Closefile(f);
end;

procedure TForm1.SaveAs(const n: string);
var
 x: integer;
 s: string;
 f: TextFile;
begin
 assignfile(f, n); // открытие файла для записи
 {$I-}
 Rewrite(F);
 {$I+}
 if IOResult<>0
 then
  begin
   ShowMessage('Ошибка при работе с файлом!');
   Exit;
  end;
 s:='vt[fybrf'; // идентификатор данных чтоб не перепутать с другими
 Writeln(f, s); // запись идентификатора
 for x:=1 to 11 do // запись размеров и параметров
  begin
   s:=inttostr((Findcomponent('TrackBar'+IntToStr(x)) as TTrackBar).Position);
   // поиск компонента с названием TrackBar и номером Х
   // и запись его параметров
   Writeln(f, s);
  end;
 Closefile(f);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 saveAs('Default.txt');
end;

procedure TForm1.N2Click(Sender: TObject);
begin
 Close;
end;

end.






