
#include "cryptonight/hash-ops.h"

__declspec(dllexport) void cryptonight(char *input, int size, char *output, int variant, int prehashed)			// uncomment for windows, comment for linux (before compilation)
//extern void cryptonight(char *input, int size, char *output, int variant, int prehashed)				// uncomment for linux, comment for windows (before compilation)
{	
	cn_slow_hash(input, size, output, variant, prehashed);
}
