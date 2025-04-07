unsigned int *addr = (unsigned int*)0x20000000;
unsigned var = 0;

int main()
{
	while(1)
	{
		var = *addr;
		if (var != 0) break;
	}
}
	