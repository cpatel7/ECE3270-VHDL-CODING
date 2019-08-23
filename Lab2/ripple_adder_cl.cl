
short ripple_adder(int);

__kernel void ripple_kernel(global unsigned short* restrict A, global unsigned short* restrict B, 
			    global unsigned short* sum)

{
	int i = get_global_id(0);

	int temp = 0;

	temp = A[i];
	temp = (temp << 16) | B[i];
	sum[i] = ripple_adder(temp);
	
}
