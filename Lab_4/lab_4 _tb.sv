module lab_4_tb;
logic pl;
logic po;
logic ql;
logic qo;
logic w;
logic x;
logic y;
localparam period = 10;
Lab4 UUT(
.a1(pl),
.a0(po),
.b1(ql),
.b0(qo),
.r(w),
.g(x),
.b(y)
);
initial //initial block executes only once
begin
// Provide different combinations of the inputs to check validity of code
    pl = 0; po = 0; ql = 0; qo = 0;
    #period;
    pl = 0; po = 0; ql = 0; qo = 1;
    #period;
    pl = 0; po = 0; ql = 1; qo = 0;
    #period;
    pl = 0; po = 0; ql = 1; qo = 1;
    #period;
    pl = 0; po = 1; ql = 0; qo = 0;
    #period;
    pl = 0; po = 1; ql = 0; qo = 1;
    #period;
    pl = 0; po = 1; ql = 1; qo = 0;
    #period;
    pl = 0; po = 1; ql = 1; qo = 1;
    #period;
    pl = 1; po = 0; ql = 0; qo = 0;
    #period;
    pl = 1; po = 0; ql = 0; qo = 1;
    #period;
    pl = 1; po = 0; ql = 1; qo = 0;
    #period;
    pl = 1; po = 0; ql = 1; qo = 1;
    #period;
    pl = 1; po = 1; ql = 0; qo = 0;
    #period;
    pl = 1; po = 1; ql = 0; qo = 1;
    #period;
    pl = 1; po = 1; ql = 1; qo = 0;
    #period;
    pl = 1; po = 1; ql = 1; qo = 1;
    #period;
$stop;
end
initial
begin
/*the following system task will print out the signal values
every time they change on the Transcript Window */
$monitor("a1=%b, a0=%b, b1=%b, b0=%b, r=%b,g=%b,b=%b", pl,po,ql,qo,w,x,y);
end
endmodule