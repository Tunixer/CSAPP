/* linked list element */
typedef struct ELE {
    long val;
    struct ELE *next;
} *list_ptr;

/* copy_block - Copy src to dest and return xor checksum of src */
//src:rdi, dest:rsi, len:rdx
long copy_block(long *src, long *dest, long len)
{
    long result = 0;
    while (len > 0) {
	long val = *src++;
	*dest++ = val;
	result ^= val;
	len--;
    }
    return result;
}
