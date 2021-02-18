// This file contains a pareto-optimal circuit with respect to area and the fault-resilince parameter: p_fault.
    // This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
    // When used, please cite the following article(s):
    // 

// p_fault = 61.0 %    (Lower is better)
// gates = 30.0
// levels = 10
// area = 42.94    (For MCNC library relative to nand2)
// power = 258.3 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 18.1 ns    (Berkely-ABC for MCNC library)
// PDP = 4.67523e-12 J

// Pin mapping:
// {n0, n1, n2, n3} = A[3:0]
// {n4, n5, n6, n7} = B[3:0]
// {n25, n23, n20, n18, n39} = O[4:0]

module addr4u_area_41 (
n0, n1, n2, n3, n4, n5, n6, n7, 
n25, n23, n20, n18, n39
);

input n0, n1, n2, n3, n4, n5, n6, n7;
output n25, n23, n20, n18, n39;
wire n35, n13, n15, n34, n21, n33, n38, n26, n11, n24, n27, n16, n8, n14, n10, n31, n22, n19, n28, n30, 
n29, n32, n9, n12, n17;

xor (n8, n4, n0);
nand (n9, n4, n0);
nand (n10, n5, n1);
nand (n11, n6, n2);
nor (n12, n7, n3);
xor (n13, n6, n2);
and (n14, n7, n3);
xor (n15, n5, n1);
nor (n16, n12, n14);
nand (n17, n13, n14);
xor (n18, n13, n14);
nand (n19, n17, n11);
xor (n20, n15, n19);
nand (n21, n15, n19);
nand (n22, n21, n10);
xor (n23, n8, n22);
nand (n24, n8, n22);
nand (n25, n24, n9);
xnor (n26, n16, n16);
xnor (n27, n16, n16);
xnor (n28, n26, n26);
xnor (n29, n27, n27);
xnor (n30, n29, n28);
xnor (n31, n29, n28);
xnor (n32, n30, n31);
xnor (n33, n31, n32);
xor (n34, n30, n32);
nor (n35, n33, n34);
nand (n38, n35, n34);
and (n39, n16, n38);

endmodule