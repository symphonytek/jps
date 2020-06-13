create view v_mrks as
select sd.STUDID,sm.SUBJID,sm.SUBJDESC,
sm.SUBGRPID,sm.FMARKS,em.EXMDESC,sd.MARKS 
from sheetdet sd
inner join sheet s on s.SHEETID = sd.SHEETID
inner join exmmast em on em.EXMID = s.EXMID 
inner join exsubmast sm on s.SUBID = sm.SUBJID
where em.SLCT = 1

create view studmrks as
select STUDID,SUBGRPID,SUBID,SUBJDESC,
FMARKS,EXMDESC,MARKS  from v_mrks 
where SUBGRPID=0 
UNION
select STUDID,0,9999,'RANK',NULL FMARKS,
EXMDESC,NULL from v_mrks
where (SUBGRPID=0)
group by STUDID,EXMDESC 
union
select STUDID,0,9998,'G.TOTAL',getfmarks(studid) FMARKS,
EXMDESC,sum(MARKS) from v_mrks
where (SUBGRPID=0)
group by STUDID,EXMDESC 
order by 1,2,6,3

create view studmrksGrd as
select STUDID,SUBGRPID,subid,SUBJDESC,
NULL FMARKS,EXMDESC,getgrd(MARKS) MARKS  
from v_mrks
where SUBGRPID>0
order by 1,2,6,3


create view v_subgrp as
select distinct clcode,s.SUBGRPID,SUBGROUP,e.GRDMSG from exsubmast s
inner join exsubgroup e on s.SUBGRPID=e.SUBGRPID