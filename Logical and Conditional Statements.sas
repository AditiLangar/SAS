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

data new;
set test;
where a = 101
;
run;

data new;
set test;
where a > 102
;
run;

data t2 t3;
set test;
if b = "aditi" then output t2;
else output t3;
run;

data t4;
set test;
if b = "aditi" then tag = "Data Scientist";
else tag = "IT";
run;


data t5;
set test;
select(a);
when(101) type = "Data Scientist";
when(103) type = "HR";
otherwise type = "IT";
END;
RUN;