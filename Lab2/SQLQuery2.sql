use os44_db

select Lname,Fname,Salary,Dno from employee
where Dno=30 and Salary between 1000 and 2000


select Pname,Pnumber,Dnum from project

select CONCAT(Fname,Lname),(Salary*0.1*12) As ANNUAL_COMM from employee

select Fname,SSN from employee
where Salary*12>10000

select Fname,Salary from employee
where gender='f'

select Dname,Dnum from departments
where MGRSSN=968574

select Pnumber,Pname,Plocation from project
where Dnum in(10,20) and City in ('Cairo','Alex')

select Pname,Plocation from project
where Pname like 'a%'

select Dno,MAX(salary) as Mxsalary from employee
group by Dno
having count(Dno)>1

insert into employee(Fname,Lname,Dno,SSN,salary,Superssn) values('Moamen','Eltony',30,666666,1000,112233)

insert into employee(Fname,Lname,Dno,SSN) values('Mohamed','Ahmed',30,555555)

insert into departments(Dname,Dnum,MGRSSN,MGRStart) values('DEPT_IT',100,112233,'1-11-2006')

 select * from employee
update departments
set MGRSSN=555555
where Dnum=20

update departments
set MGRSSN=968574
where Dnum=100

update employee
set Superssn=666666
where SSN=555555

update departments
set MGRSSN=666666
where MGRSSN=223344

update employee
set Salary=Salary*1.2
where SSN=666666

update employee
set Superssn=666666
where Superssn=223344

delete from dependent
where ESSN=223344

delete from works_for
where ESSn=223344

delete from employee
where SSN=223344

