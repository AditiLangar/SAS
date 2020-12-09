data test;
x=3; y=3;
run;


data test;
input a b;
cards;
12 34
37 45
32 88
run;

data new;
input a b c d;
cards;
12 13 14 15
16 17 18 19
20 21 22 23
24 25 26 27 
28 29 30 31
32 33 34 35
run;

data new_1;
x = 20; y =30; z =40;
run;

data new_2;
input x y z;
cards;
20 30 40
run;

data test;
input a $ b $6.;
cards;
1 aditi
2 abc
3 def
4 ghi
run;

data test;
input a $ b $4.;
cards;
1 aditi
2 abc
3 def
4 ghi
run;

data test;
input a $ b $4.;
datalines;
1 aditi
2 abc
3 def
4 ghi
run;

data test;
input a b $4.;
datalines;
1 aditi
2 abc
3 def
4 ghi
run;

data t;
input city $1-10 street $11-22 revenue 22-25 cost 26-28;
datalines;
banglore church st 234 23
chennai t nagar 675 67
delhi cp 564 34
kanpur mg road 455 36
run;

data t;
input city $ street $ revenue cost;
datalines;
banglore church_st 234 23
chennai t_nagar 675 67
delhi cp 564 34
kanpur mg_road 455 36
run;

data test2;
set t;
run;

data test;
input a b c;
datalines;
10 20 30
40 60 70
50 80 90
run;

data test1;
set test;
agg = 2+b-a;
run;

data test1(keep=a);
set test;
run;

data test1(drop=a);
set test;
run;

data test1(rename=(a = x b=y));
set test;
run;



