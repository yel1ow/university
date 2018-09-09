#include "Audit.h"
#include <iostream>
#include <list>
// Узнать есть ли в порту данной компании дежурящие пассажирские суда (у которых destination совпадает с location)
bool Audit::isPassengerVesselsInPort(NavalFreightCompany& nfc)
{
	for (std::list<Vessel*>::const_iterator i = nfc.ships.begin(); i != nfc.ships.end(); i++)
	{
		if ((*i)->getDestination() == nfc.getLocation())
			return true;
	}
	return false;
}
// Сравнить две компании, вывести более крупную (считается суммарно), сигнатуру придумать самостоятельно
void Audit::compare1(NavalFreightCompany& c1, NavalFreightCompany& c2)
{
	if (c1.getNumberShips() > c2.getNumberShips())
		std::cout << c1;
	else std::cout << c2;
}
// Сравнить две компании, вывести более надежную (меньше когда-либо ремонтировавшихся судов), сигнатуру придумать самостоятельно
void Audit::compare2(NavalFreightCompany& c1, NavalFreightCompany& c2)
{
	if (c1.getNumberRepairedShips() > c2.getNumberRepairedShips())
		std::cout << c2;
	else std::cout << c1;
}
// проинспектировать пассажирский корабль на предмет наличия большего количества людей чем положено по нормативу
bool Audit::inspectPassengerVessel(PassengerVessel& v)
{
	return (v.getCurPax() > v.getMaxPax());
}
// проинспектировать пассажирский корабль на предмет наличия большего количества контейнеров чем положено по нормативу
bool Audit::inspectCargoVessel(CargoVessel& v)
{
	if (v.getCurCargo() > v.getMaxCargo())
		return true;
	else return false;
}