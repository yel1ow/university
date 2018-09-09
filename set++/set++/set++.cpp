#define _CRTDBG_MAP_ALLOC
#include <stdlib.h>
#include <crtdbg.h>

#include <iostream>
#include <conio.h>
#include "set++.h"

int compare(int a, int b)
{
	if (a > b)
		return -1;
	else if (a == b)
		return 0;
	else return 1;
}

void work()
{
	Set<int> mySet1;//(compare);
	mySet1.add(1);
	mySet1.add(2);
	mySet1.add(4);
	mySet1.add(5);

	Set<int> mySet2;//(compare);
	mySet2.add(1);
	mySet2.add(3);
	mySet2.add(5);
	mySet2.add(6);

	Set<int> mySet3;//(compare);

	std::cout << "myset1: " << mySet1 << std::endl;
	std::cout << "myset2: " << mySet2 << std::endl;
	mySet3.uni(mySet1, mySet2);
	std::cout << "union: " << mySet3 << std::endl;
	mySet3.intersection(mySet1, mySet2);
	std::cout << "intersection: " << mySet3 << std::endl;
	mySet1.difference(mySet2);
	std::cout << "difference: " << mySet1 << std::endl;
	mySet1.uni(mySet1, mySet2);
	mySet1.discardMore(3);
	std::cout << "myset1 discard > 3: " << mySet1 << std::endl;
	_getch();
}

int main()
{

	work();

	_CrtDumpMemoryLeaks();

}