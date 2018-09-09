#pragma once
#include "CargoVessel.h"
#include "PassengerVessel.h"
#include "NavalFreightCompany.h"

class NavalFreightCompany;

// класс аудитор компании, делает различные проверки
class Audit
{
	public:
	// Узнать есть ли в порту данной компании дежурящие пассажирские суда (у которых destination совпадает с location)
	bool isPassengerVesselsInPort(NavalFreightCompany& nfc);
	// Сравнить две компании, вывести более крупную (считается суммарно), сигнатуру придумать самостоятельно
	void compare1(NavalFreightCompany& c1, NavalFreightCompany& c2);
	// Сравнить две компании, вывести более надежную (меньше когда-либо ремонтировавшихся судов), сигнатуру придумать самостоятельно
	void compare2(NavalFreightCompany& c1, NavalFreightCompany& c2);
	// проинспектировать пассажирский корабль на предмет наличия большего количества людей чем положено по нормативу
	bool inspectPassengerVessel(PassengerVessel& v);
	// проинспектировать пассажирский корабль на предмет наличия большего количества контейнеров чем положено по нормативу
	bool inspectCargoVessel(CargoVessel& v);
};