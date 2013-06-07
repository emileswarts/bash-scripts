#include <stdio.h>
#include <unistd.h>

int main()
{
	int time = 10;
	sleep(time);
	printf("Slept for 10 seconds\n");

	return 0;
}
