// This file contains a pareto-optimal circuit with respect to area and the fault-resilince parameter p_fault which is defined as:
// "For all input vectors, the ratio of the no. of faults observable at the POs to the no. of total possible faults in the circuit".
// This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
// When used, please cite the following article(s):
// U. Afzaal, A.S. Hassan, M. Usman and J.A. Lee, "On the Evolutionary Synthesis of Increased Fault-resilience Arithmetic Circuits".

// p_fault = 71.8 %    (Lower is better)
// gates = 27.0
// levels = 10
// area = 36.96    (For MCNC library relative to nand2)
// power = 135.8 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 18.4 ns    (Berkely-ABC for MCNC library)
// PDP = 2.49872e-12 J

// Pin mapping:
// {n0, n1, n2, n3} = A[3:0]
// {n4, n5, n6, n7} = B[3:0]
// {n25, n23, n39, n17, n29} = O[4:0]

module addr4u_area_48 (
n0, n1, n2, n3, n4, n5, n6, n7, 
n25, n23, n39, n17, n29
);

input n0, n1, n2, n3, n4, n5, n6, n7;
output n25, n23, n39, n17, n29;
wire n13, n18, n24, n20, n9, n14, n16, n35, n22, n8, n15, n10, n31, n26, n19, n21, n36, n33, n27, n11, 
n28, n12;

nand (n8, n6, n2);
xor (n9, n5, n1);
and (n10, n7, n3);
nor (n11, n7, n3);
xor (n12, n6, n2);
nand (n13, n4, n0);
xor (n14, n4, n0);
nand (n15, n5, n1);
nand (n16, n12, n10);
xor (n17, n12, n10);
nor (n18, n11, n10);
nand (n19, n16, n8);
nand (n20, n9, n19);
xor (n21, n9, n19);
nand (n22, n20, n15);
xor (n23, n14, n22);
nand (n24, n14, n22);
nand (n25, n24, n13);
xnor (n26, n18, n18);
nand (n27, n26, n26);
xnor (n28, n18, n27);
and (n29, n18, n18);
xnor (n31, n28, n28);
xnor (n33, n27, n31);
nor (n35, n33, n31);
and (n36, n35, n33);
or (n39, n21, n36);

endmodule