
options fmtsearch=(work library);
%put FMTSEARCH option set to %sysfunc(getoption(FMTSEARCH));

proc sql;
  select sex, count(*) as freq 
  from amadeus.music 
  group by sex;
quit;

libname library "C:\Courses\Advanced SAS Programming\Data";

proc sql;
  select sex, count(*) as freq 
  from amadeus.music 
  group by sex;
quit;

libname library clear;

options fmtsearch=(work amadeus library);
