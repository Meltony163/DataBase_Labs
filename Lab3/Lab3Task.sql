select Dnum,Dname,MGRSSN,Fname
from departments d,employee e
where d.MGRSSN=e.SSN

select Dname,Pname
from departments d,project p
where d.Dnum=p.Dnum

select e.Fname,d.dependent_name
from dependent d,employee e
where d.ESSN=e.SSN

select Fname,Pname
from employee e,works_for w,project p,departments d
where e.SSN=w.ESSn and w.Pno=p.Pnumber and d.Dnum=e.Dno and p.Pname='AL Rabwah' and w.Hours>=10 and d.Dnum=10

select e.Fname
from employee e,employee s
where e.Superssn=s.SSN and s.Fname='Moamen' and s.Lname='Eltony'


select Lname 
from employee
where SSN in(select Distinct Superssn from employee) and SSN not in (select Distinct Essn from dependent)

select Dname 
from departments d, employee e
where e.SSN=(select MIN(SSN) from employee) and d.Dnum=e.Dno

select Dname,MAX(e.Salary) as Max_Salary ,MIN(e.Salary) as Min_Salary,AVG(e.Salary) as Avg_Salary
from departments d, employee e
where d.Dnum=e.Dno
group by Dname

select Dname,Dnum,COUNT(e.SSN) as EmplyeeCount
from departments d, employee e
where d.Dnum=e.Dno
group by Dname,Dnum
having AVG(e.Salary)<1200

select Fname,Pname
from employee e,works_for w,project p,departments d
where e.SSN=w.ESSn and w.Pno=p.Pnumber and d.Dnum=e.Dno
order by d.Dnum,e.Lname,e.Fname

select p.Pnumber,d.Dname,e.Lname as Manager_Name,e.Address,e.Bdate
from employee e,project p,departments d
where p.Dnum=d.Dnum and d.MGRSSN=e.SSN and p.City='Cairo'


