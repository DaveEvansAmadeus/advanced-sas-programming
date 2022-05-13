
proc sql;
  select memname, name,type,length
    from dictionary.columns
    where upcase(libname)='AMADEUS'
    and upcase(name)='CUSTNO';
quit;

proc sql;
  select memname, name,type,length
    from sashelp.vcolumn
    where upcase(libname)='AMADEUS'
    and upcase(name)='CUSTNO';
quit;

proc sql;
  select distinct memname,memlabel from dictionary.dictionaries;
quit;
