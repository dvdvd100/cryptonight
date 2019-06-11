
#include "cryptonight/hash-ops.h"

__declspec(dllexport) void cryptonight(char *input, int size, char *output, int variant, int prehashed, unsigned long height)
{	
	cn_slow_hash(input, size, output, variant, prehashed, height);
}
