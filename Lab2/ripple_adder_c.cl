unsigned short ripple_adder(unsigned int data_in){
	unsigned short a = data_in & 0x0000FFFF;
	unsigned short b = (data_in >> 16) & 0x0000FFFF;

	return a+b;	
}
