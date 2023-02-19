program LAB_NUM_1;
        var x1,x2,x3,x4,y1,y2,y3,y4: integer;
        var parallel, perpendicular : boolean;
        var len12,len23,len34,len41 : extended;
begin
     write('Введите координаты первой точки:');
     read(x1,y1);
     writeln('Введите координаты второй точки:');
     read(x2,y2);
     writeln('Введите координаты третьей точки:');
     read(x3,y3);
     writeln('Введите координаты четвертой точки:');
     read(x4,y4);
     len12 := sqrt(sqr(abs(x1-x2)) + sqr(abs(y1-y2)));
     len23 := sqrt(sqr(abs(x2-x3)) + sqr(abs(y3-y2)));
     len34 := sqrt(sqr(abs(x3-x4)) + sqr(abs(y4-y3)));
     len41 := sqrt(sqr(abs(x1-x4)) + sqr(abs(y1-y4)));
     writeln('Длина первой стороны: ', len12);
     writeln('Длина второй стороны: ', len23);
     writeln('Длина третьей стороны: ', len34);
     writeln('Длина четвертой стороны: ', len41);
end.

