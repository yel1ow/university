// vessels
#define _CRTDBG_MAP_ALLOC
#include <stdlib.h>
#include <crtdbg.h>

#include <conio.h>
#include <iostream>

#include "ShipProperties.h"
#include "Destination.h"
#include "Vessel.h"
#include "CargoVessel.h"
#include "PassengerVessel.h"
#include "NavalFreightCompany.h"
#include "Audit.h"

// Необходимо реализовать функциональность, где надо исправить ошибки и недописанные куски.
// Интерфейс можно менять в целях исправления, при этом надо быть готовым обосновать.
// Интерфейс можно расширять в целях улучшения, тоже необходимо обосновать. Расставить const-ы.
// Типы данных менять нельзя, то есть если храним где-то указатель, нельзя начать хранить по значению.
// Кроме того, в конце будет необходимо модуляризовать код и написать вызовы демонстрирующие работу.

void main()
{
	CargoVessel* vessel_1 = new CargoVessel(1, new Destination("Russia", 33, 56), 14, new ShipProperties(), 5000, 1750, 
	{CargoVessel::FOOD, CargoVessel::FOOD, CargoVessel::FOOD, CargoVessel::GOOD, CargoVessel::WOOD, CargoVessel::FOOD});

	CargoVessel* vessel_2 = new CargoVessel(2, new Destination("Mexico", 70, 13), 27, new ShipProperties(), 5000, 3325,
	{CargoVessel::WOOD, CargoVessel::WOOD, CargoVessel::GOOD, CargoVessel::GOOD});

	CargoVessel* vessel_3 = new CargoVessel(3, new Destination("Netherlands", 13, 95), 7, new ShipProperties(), 15000, 17500,
	{CargoVessel::GOOD, CargoVessel::FOOD, CargoVessel::FOOD, CargoVessel::GOOD, CargoVessel::WOOD, CargoVessel::FOOD});

	PassengerVessel* vessel_4 = new PassengerVessel(4, new Destination("Spain", 14, 56), 2, new ShipProperties(), 500, 675,
	{PassengerVessel::FIRSTCLASS, PassengerVessel::SECONDCLASS, PassengerVessel::LUX, PassengerVessel::LUX, PassengerVessel::SECONDCLASS});

	PassengerVessel* vessel_5 = new PassengerVessel(5, new Destination("England", 59, 55), 5, new ShipProperties(), 250, 115,
	{PassengerVessel::SECONDCLASS, PassengerVessel::SECONDCLASS, PassengerVessel::FIRSTCLASS, PassengerVessel::LUX, PassengerVessel::SECONDCLASS});

	PassengerVessel* vessel_6 = new PassengerVessel(6, new Destination("Poland", 21, 32), 1, new ShipProperties(), 700, 100,
	{PassengerVessel::LUX, PassengerVessel::LUX, PassengerVessel::LUX, PassengerVessel::FIRSTCLASS, PassengerVessel::FIRSTCLASS});

	std::cout << *vessel_1;

	PassengerVessel* vessel_6_clone;

	vessel_6_clone = vessel_6->clone();

	std::cout << *vessel_6_clone;

	NavalFreightCompany* company_1 = new NavalFreightCompany(new Destination("Russia", 33, 56));
	
	company_1->add(vessel_1);
	company_1->add(vessel_4);
	company_1->add(vessel_5);
	company_1->add(vessel_6);

	std::cout << "Company 1:" << std::endl << *company_1;

	company_1->remove(vessel_6);

	std::cout << "Company 1:" << std::endl << *company_1;

	// В company_1 корабли 1 4 5

	company_1->markDamaged(4, new std::string("13.08.12"));
	company_1->markRepaired(4, new std::string("17.12.13"));

	std::cout << "Company 1:" << std::endl << *company_1;

	company_1->draft();

	std::cout << "Company 1:" << std::endl << *company_1;

	company_1->printHeadingTo("England");

	company_1->changeDestination(5, new Destination("Russia", 33, 56));

	company_1->printHeadingTo("England");

	company_1->printHeadingTo("Russia");

	Audit* inspect = new Audit;

	if (inspect->isPassengerVesselsInPort(*company_1))
		std::cout << "Company 1 has vessels in the port" << std::endl;
	else std::cout << "Company 1 hasn't vessels in the port" << std::endl;

	if (inspect->inspectPassengerVessel(*vessel_4))
		std::cout << "too many passengers on vessel 4" << std::endl;
	else std::cout << "Good" << std::endl;

	if (inspect->inspectCargoVessel(*vessel_2))
		std::cout << "too much cargo on vessel 2" << std::endl;
	else std::cout << "Good" << std::endl;

	NavalFreightCompany* company_2 = new NavalFreightCompany(new Destination("France", 49, 72));

	company_2->add(vessel_2);
	company_2->add(vessel_3);
	company_2->add(vessel_6);

	std::cout << "Compare companies 1, 2:" << std::endl;
	inspect->compare1(*company_1, *company_2);

	delete(vessel_1);
	delete(vessel_2);
	delete(vessel_3);
	delete(vessel_4);
	delete(vessel_5);
	delete(vessel_6);
	delete(vessel_6_clone);
	delete(company_1);
	delete(company_2);
	delete(inspect);

	_CrtDumpMemoryLeaks();

	_getch();
}