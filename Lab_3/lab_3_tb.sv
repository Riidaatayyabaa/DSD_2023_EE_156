module lab3_tb;
logic a1;
logic b1;
logic c1;
logic y1;
logic y2;
localparam period = 10;
dsd_lab3 UUT(
.a(a1),
.b(b1),
.c(c1),
.x(y1),
.y(y2)
);
initial //initial block executes only once
begin
// Provide different combinations of the inputs to check validity of code
a1 = 0; b1 = 0; c1 = 0;
#period;
a1 = 0; b1 = 0; c1 = 1;
#period;
a1 = 0; b1 = 1; c1 = 0;
#period;
a1 = 0; b1 = 1; c1 = 1;
#period;
a1 = 1; b1 = 0; c1 = 0;
#period;
a1 = 1; b1 = 0; c1 = 1;
#period;
a1 = 1; b1 = 1; c1 = 0;
#period;
a1 = 1; b1 = 1; c1 = 1;
#period;
$stop;
end
initial
begin
/*the following system task will print out the signal values
every time they change on the Transcript Window */
$monitor("x=%b, y=%b, a=%b, b=%b, c=%b", y1,y2,a1,b1,c1);
end
endmodule