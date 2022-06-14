/*  Annother one  */

/*  Another Comment  */

/*  New Comment */

* Path to project root;
%let root = \\server\share\Project;

* Standard data libraries;
filename input   "&root\data\input";
libname  raw     "&root\data\raw";
libname  staging "&root\data\staging";
libname  detail  "&root\data\detail";
libname  marts   "&root\data\marts";
libname  except  "&root\data\exceptions";
libname  system  "&root\data\metadata";

* Shared SAS Objects, e.g. Formats and SAS Item Stores;
libname shared "&root\shared";

* Autocall macro library;
filename macros "&root\Macros";

* Standard SAS options;
options sasautos=(macros sasautos)
        fmtsearch=(shared)
        nofmterr
        msglevel=i
        mcompilenote=noautocall
        nodate
        nonumber
        missing="";
