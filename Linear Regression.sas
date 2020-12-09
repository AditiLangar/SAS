data train;
input x y;
datalines;
1 10
2 7
3 8
4 5
5 6
5.5 7
7 2
8 3.3
9 1.5
;
proc print data=train;


proc sgscatter data=train;
plot x*y;

proc reg data=train;
model y = x/clb;

data test;
input x y;
datalines;
8.5 .
;
proc print data=test;

data train;
set train test;
proc print data=train;

proc reg data= train;
model y = x/cli;

