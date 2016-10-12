 /**********************************************************************
 *   PRODUCT:   SAS
 *   VERSION:   9.4
 *   CREATOR:   External File Interface
 *   DATE:      12OCT16
 *   DESC:      Generated SAS Datastep Code
 *   TEMPLATE SOURCE:  (None Specified.)
 ***********************************************************************/
    data demo.iris    ;
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */
    infile 'C:\Users\sas\Documents\GitHub\Medicare_Readmissions_and_Deaths\iris.csv' delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=2 ;
       informat VAR1 $4. ;
       informat Sepal_Length best32. ;
       informat Sepal_Width best32. ;
       informat Petal_Length best32. ;
       informat Petal_Width best32. ;
       informat Species $8. ;
       format VAR1 $4. ;
       format Sepal_Length best12. ;
       format Sepal_Width best12. ;
       format Petal_Length best12. ;
       format Petal_Width best12. ;
       format Species $8. ;
    input
                VAR1 $
                Sepal_Length
                Sepal_Width
                Petal_Length
                Petal_Width
                Species $
    ;
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */
    run;
