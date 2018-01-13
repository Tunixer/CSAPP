#include <stdlib.h>
struct ELE {
	long v;
	struct ELE* p;
};
long fun(struct ELE* ptr) {
	int sum = 0;
	while (ptr != NULL) {
		sum += ptr->v;
		ptr = ptr->p;
	}
	return sum;
}