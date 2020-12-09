data test;
input a b$;
datalines;
101 aditi
102 joy
103 ray
104 jacob
105 edward
;
proc print data=test;

data t4;
set test;
if b = "aditi" then tag = "Data Scientist";
else tag = "IT";
run;

proc contents data=t4;
run;

proc freq data=t4;
run;

proc means data=t4;
var a;
run;

proc univariate data=t4;
var a;
run;


