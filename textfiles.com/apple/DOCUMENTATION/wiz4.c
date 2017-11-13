/*  Wizardry 4 Mordor Charge Number Generator V1.0
    Created by Len Borowski  10/22/1995
    Based on APPLESOFT BASIC code posted to comp.emulators.apple2 by Matt Ghio

    Yes, This is chicken scratch code but it works!
    The COLUMNS defintion tells how many 16 digit codes to print per row.
*/

#include <stdio.h>

#define COLUMNS 3
main()
{
 int a[20] = { 1080,1211,1386,1556,1607,1735,2138,2293,2338,2395,2470,2788,
2892,2919,2990,3137,3303,3463,3587,3852 };
 int b[20] = { 1086,1219,1516,1588,1669,1753,2194,2301,2362,2437,2480,2800,
2897,2922,3014,3243,3369,3538,3779,3868 };
 int c[20] = { 1193,1282,1529,1602,1712,1757,2219,2313,2377,2451,2770,2812,
2910,2941,3032,3278,3414,3547,3816,3996 }; 
 int d[20] = { 8771,1280,6528,8090,9125,8696,4261,1026,6375,6353,3160,2544,
5107,3105,1102,3205,6727,4306,7452,4943 };
 int e[20] = {    0,1488,7814, 399,1330,6704, 354,7565,3161,6150,2293,1764,
4925,3479,5023,8265,7684,7509,6269,3350 };
 int f[20] = {    0,8510, 475,1451,  12,8556,8449, 190,8896,8981,8866, 871,
1315,1190,8839, 832, 682,1065,1374, 299 };
 int g,i,x,y,z,counter;

 counter = 0;
 for (x = 0;x < 20;x++)
   for (y = 0;y < 20;y++)
     for (z = 0;z < 20;z++)
       {
	 g = d[x] + e[y] + f[z];
	 while (g > 10000) { g = g - 9000; }
	 printf("%04d %04d %04d %04d",a[x],b[y],c[z],g);
	 counter++;
	 if ((counter % COLUMNS) == 0) 
	   { printf("\n"); }
	 printf("   ");
       }
printf("\n");
}
