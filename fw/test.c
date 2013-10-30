#include<stdio.h>


int r = 0;
int g = 0;
int b = 0;

int loop_len = 16;
int iter = 0;
int r_val = 10;
int g_val = 0;
int b_val = 16;

void drive_init() {
	iter = 0;
}

void drive_step() {
	if (iter == 0) {
		if (r_val>0) r = 1;
		if (g_val>0) g = 1;
		if (b_val>0) b = 1;
	} else {
		if (r_val == iter) r = 0;
		if (g_val == iter) g = 0;
		if (b_val == iter) b = 0;
	}
	iter++;
	if (iter>=loop_len) iter=0;
	printf("%d%d%d\n",r,g,b);
}
void drive_test() {
	drive_init();
	for(int i=0; i<32; i++) {
		drive_step();
	}	
}


int main() {
	printf("-----test start-----\n");
	drive_test();
	printf("----test success----\n");
	return 0;
}
