program LAB_NUM_1;  {Щуренков Степан ФН1-11Б}
{Задайте 4 целочисленных последовательных точки выпуклого четрехугольника, определите его вид и длину его сторон, иначе - выведите сообщение об ошибке}
        var x1,y1 : longint; {Координаты первой точки}
        var x2,y2 : longint; {Координаты второй точки}
        var x3,y3 : longint; {Координаты третьей точки}
        var x4,y4 : longint; {Координаты четвертой точки}
        var xx1, yy1 : double;
        var xx2, yy2 : double;
        var xx3, yy3 : double;
        var xx4, yy4 : double; {Вещественные координаты точек}
        var len12,len23,len34,len41 : double;    {переменные для длин сторон}
        var parallelity13, parallelity24 : boolean; {параллельность сторон}
        var perpendicularity12: boolean;
        {перпендикулярность сторон}
        var equality : boolean; {равенство сторон}
begin
     write('Enter coordinates of First point: ');
     readln(x1,y1);
     write('Enter coordinates of Second point:');
     readln(x2,y2);
     write('Enter coordinates of Third point: ');
     readln(x3,y3);
     write('Enter coordinates of Fourth point:');
     readln(x4,y4);     {Ввели точки}
     xx1 := x1 / 1.0;
     xx2 := x2 / 1.0;
     xx3 := x3 / 1.0;
     xx4 := x4 / 1.0;
     yy1 := y1 / 1.0;
     yy2 := y2 / 1.0;
     yy3 := y3 / 1.0;
     yy4 := y4 / 1.0;
     len12 := sqrt(sqr(xx1-xx2) + sqr(yy1-yy2));
     len23 := sqrt(sqr(xx2-xx3) + sqr(yy3-yy2));
     len34 := sqrt(sqr(xx3-xx4) + sqr(yy4-yy3));
     len41 := sqrt(sqr(xx1-xx4) + sqr(yy1-yy4)); {Считаем длины сторон}
     if (len12 = len23) and (len23 = len34) and (len34 = len41) then equality := True else equality := False; {Проверяем равенство всех сторон}

     if ((x2 - x1)*(x3 - x2) + (y2 - y1)*(y3 - y2) = 0) then perpendicularity12 := True else perpendicularity12 := False; {Проверяем перпендикулярность двух сторон}
     if x1 = 0 then xx1 := xx1 + 1 else x1 := x1;      {Избавляемся от ошибки деления на ноль}
     if x2 = 0 then xx2 := xx2 + 1 else x1 := x1;
     if x3 = 0 then xx3 := xx3 + 1 else x1 := x1;
     if x4 = 0 then xx4 := xx4 + 1 else x1 := x1;
     if y1 = 0 then yy1 := yy1 + 1 else x1 := x1;
     if y2 = 0 then yy2 := yy2 + 1 else x1 := x1;
     if y3 = 0 then yy3 := yy3 + 1 else x1 := x1;
     if y4 = 0 then yy4 := yy4 + 1 else x1 := x1;
     if ((xx1 / yy1) - (xx3 / yy3)) < 0.01 then parallelity13 := True else parallelity13 := False;
     if ((xx2 / yy2) - (xx4 / yy4)) < 0.01 then parallelity24 := True else parallelity24 := False; {Проверяем параллельность}
     writeln(' ');
     writeln('________State_________',' ____Value____'); {Вывод}
     writeln('Length of First Side:  ', len12:10:3);
     writeln('Length of Second Side: ', len23:10:3);
     writeln('Length of Third Side:  ', len34:10:3);
     writeln('Length of Fourth Side: ', len41:10:3);
     writeln(' ');

     case equality of                                           {Зная свойства, определяем тип четырехугольника}
          True: case perpendicularity12 of
                     True: writeln('This is square');
                     False: writeln('This is Parallelogram');
                end;
          False: case parallelity13 of
                      True: case parallelity24 of
                                 True: case perpendicularity12 of
                                            True: writeln('This is Rectangle');
                                            False: case len12 = len34 of
                                                        True: writeln('This is Parallelogram');
                                                        False: writeln('This is Trapezoid');
                                                   end;
                                       end;
                                 False: writeln('This is Trapezoid');
                            end;
                      False: case parallelity24 of
                                  True: writeln('This is Trapezoid');
                                  False: writeln('Wrong Figure');
                             end;
                 end;
     end;
     readln();
end.


