// This file contains a pareto-optimal circuit with respect to area and the fault-resilince parameter: p_fault.
    // This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
    // When used, please cite the following article(s):
    // 

// p_fault = 52.9 %    (Lower is better)
// gates = 35.0
// levels = 14
// area = 51.23    (For MCNC library relative to nand2)
// power = 298.3 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 26.9 ns    (Berkely-ABC for MCNC library)
// PDP = 8.02427e-12 J

// Pin mapping:
// {n0, n1, n2, n3} = A[3:0]
// {n4, n5, n6, n7} = B[3:0]
// {n25, n23, n43, n17, n29} = O[4:0]

module addr4u_area_52 (
n0, n1, n2, n3, n4, n5, n6, n7, 
n25, n23, n43, n17, n29
);

input n0, n1, n2, n3, n4, n5, n6, n7;
output n25, n23, n43, n17, n29;
wire n15, n40, n20, n21, n33, n38, n26, n11, n18, n41, n31, n22, n28, n36, n39, n35, n13, n34, n27, n16, 
n8, n14, n10, n19, n30, n9, n42, n24, n32, n12;

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
xnor (n27, n21, n26);
xnor (n28, n26, n26);
and (n29, n18, n18);
xnor (n30, n27, n28);
xnor (n31, n28, n27);
xnor (n32, n30, n30);
xnor (n33, n32, n31);
xnor (n34, n33, n31);
xnor (n35, n32, n33);
xnor (n36, n34, n35);
xnor (n38, n34, n35);
xnor (n39, n38, n36);
xnor (n40, n38, n39);
and (n41, n21, n40);
or (n42, n21, n21);
or (n43, n42, n41);

endmodule