long fun_b(unsigned long x) {
	long val = 0;
	long i;
	for (i = 64; i > 0; i--) {
		int tmp1 = 1 & x;
		val += val;
		val = val | tmp1;
		x = x >> 1;
	}
	return val;
}
