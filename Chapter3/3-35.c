long rfun(unsigned long x) {
	if (x == 0)
		return 0;
	unsigned long nx = x >> 1;
	long rv = rfun(nx);
	return rv + x;
}