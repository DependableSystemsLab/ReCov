#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

long long fi_cycle_counter = 0;
long long cycleInterval = 1;
long long cycleFactor = 1;
extern int fiFlag;
long long bbCounter = 0;

long long qsCounter = 0;
long long maxQs = 1;
long long minQs = 1;
long long totalQs = 0;
long long qsNumber = 0;
long long preciseCounter = 0;
long long lastQsCounter = 0;

void latencyCount(long llfiIndex){
	preciseCounter++;

	if(1){
		fi_cycle_counter++;
		if(fi_cycle_counter >= cycleInterval*10){
			cycleInterval *= 10;
			cycleFactor = 1;
		}
		if(fi_cycle_counter > cycleInterval * cycleFactor){
			cycleFactor++;
			FILE *f = fopen("crashcount_latency.txt", "w");
			fprintf(f, "%lld", fi_cycle_counter);
			fclose(f);
		}
	}

}


void qsPlace(long llfiIndex){

	qsNumber++;
	//printf("%lld\n", preciseCounter-lastQsCounter);
	totalQs += preciseCounter-lastQsCounter;
	if(maxQs<preciseCounter-lastQsCounter) maxQs = preciseCounter-lastQsCounter;
	if(minQs>preciseCounter-lastQsCounter) minQs = preciseCounter-lastQsCounter;
	
	if(qsNumber%10000 == 0){
		//FILE *f = fopen("qs_trip.txt", "w");
		//fprintf(f, "%lld", (totalQs/qsNumber));
		//fclose(f);
		printf("\n\n\n***********\nAverage QS Distance: %lld\n", (totalQs/qsNumber));
		printf("Max/Min Qs Distance: %lld, %lld\n***********\n\n\n", maxQs, minQs);
	}

	lastQsCounter = preciseCounter;
}
