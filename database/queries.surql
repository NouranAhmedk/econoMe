/*
create "user:baher" set
    username = "baher",
    email="baher",
    password="sad"
;

create node:baher1 set
    amount=100,
    interval=10,
    name="sad",
    startDate="2022-07-03T07:18:52Z",
    total=1000
;

create node:baher2 set
    amount=-100,
    interval=10,
    name="sad",
    startDate="2022-07-03T07:18:52Z",
    total=-1000
;


create transactions:baher set balance = 0,expensice=0,income=0;


relate user:baher->has->transactions:baher;

relate transactions:baher->contains->node:baher1;
relate transactions:baher->contains->node:baher2;

*/
// select ->has->transactions->contains->node.* as a from user:baher;
select * from user:baher->has->transactions->contains->node where amount > 0
//select * from node where amount > 0
/*


select ->has->income->contains from user 
*/
