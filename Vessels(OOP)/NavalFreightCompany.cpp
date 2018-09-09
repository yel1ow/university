#include "NavalFreightCompany.h"
#include "CargoVessel.h"
#include "PassengerVessel.h"
#include <iostream>

const Destination& NavalFreightCompany::getLocation()
{
	return *location;
}

int NavalFreightCompany::getNumberShips() const
{
	return ships.size();
}

int NavalFreightCompany::getNumberRepairedShips() const
{
	int k = 0;
	for (std::list<Vessel*>::const_iterator i = ships.begin(); i != ships.end(); i++)
	{
		if ((*i)->everRepaired())
		{
			k++;
		}
	}
	return k;
}

NavalFreightCompany::NavalFreightCompany(Destination* location):
	location(location)
{}

void NavalFreightCompany::add(Vessel* v)
{
	ships.push_back(v);
}

int NavalFreightCompany::remove(Vessel* v)
{
	for (std::list<Vessel*>::const_iterator i = ships.begin(); i != ships.end(); i++)
	{
		if (*i == v)
		{
			ships.erase(i);
			break;
		}
	}
	return 0;
}

int NavalFreightCompany::remove(int id)
{
	for (std::list<Vessel*>::const_iterator i = ships.begin(); i != ships.end(); i++)
	{
		if (id == (*i)->getId())
		{
			ships.erase(i);
			break;
		}
	}
	return 0;
}

// списать весь хлам - когда-либо ремонтировавшиеся суда
void NavalFreightCompany::draft()
{
	bool f = true;
	while (f)
	{
		f = false;
		for (std::list<Vessel*>::const_iterator i = ships.begin(); i != ships.end(); i++)
		{
			if ((*i)->everRepaired())
			{
				ships.erase(i);
				f = true;
				break;
			}
		}
	}

}

// напечатать статистику: сколько пассажирских, сколько грузовых, из них когда-либо ломавшихся
void NavalFreightCompany::printStats() const
{
	int passengerVessels = 0, passengerVesselsEverDamaged = 0, cargoVessels = 0, cargoVesselsEverDamaged = 0;
	for (std::list<Vessel*>::const_iterator i = ships.begin(); i != ships.end(); i++)
	{
		if (typeid(*i).hash_code() == typeid(CargoVessel*).hash_code())
		{
			cargoVessels++;
			if ((*i)->everDamaged())
			{
				cargoVesselsEverDamaged++;
			}
		}
		else if (typeid(*i).hash_code() == typeid(PassengerVessel*).hash_code())
		{
			passengerVessels++;
			if ((*i)->everDamaged())
			{
				passengerVesselsEverDamaged++;
			}
		}
	}
	std::cout << "Stats: " << std::endl;
	std::cout << "\tPassenger vessels: " << passengerVessels << std::endl;
	std::cout << "\tEver damaged: " << passengerVesselsEverDamaged << std::endl;
	std::cout << "\tCargo vessels: " << cargoVessels << std::endl;
	std::cout << "\tEver damaged: " << cargoVesselsEverDamaged << std::endl << std::endl;
}

// внести запись о ремонте корабля по id
void NavalFreightCompany::markRepaired(int id, std::string* date_repaired)
{
	for (std::list<Vessel*>::const_iterator i = ships.begin(); i != ships.end(); i++)
	{
		if (id == (*i)->getId())
		{
			(*i)->addRepaireRecord(*date_repaired);
			break;
		}
	}
	delete(date_repaired);
}

// внести запись о повреждении корабля по id
void NavalFreightCompany::markDamaged(int id, std::string* date_damaged)
{
	for (std::list<Vessel*>::const_iterator i = ships.begin(); i != ships.end(); i++)
	{
		if (id == (*i)->getId())
		{
			(*i)->addDamageRecord(*date_damaged);
			break;
		}
	}
	delete(date_damaged);
}

// поменять пункт назначения корабля
void NavalFreightCompany::changeDestination(int id, Destination* dest)
{
	for (std::list<Vessel*>::const_iterator i = ships.begin(); i != ships.end(); i++)
	{
		if (id == (*i)->getId())
		{
			(*i)->changeDestination(dest);
			break;
		}
	}
}

// напечатать сколько кораблей идут в пункт назначения X
void NavalFreightCompany::printHeadingTo(std::string s)
{
	std::cout << "Vessels floating to " << s << ": ";
	int k = 0;
	for (std::list<Vessel*>::const_iterator i = ships.begin(); i != ships.end(); i++)
	{
		if ((*i)->getDestinationDescription() == s)
		{
			k++;
		}
	}
	std::cout << k << std::endl << std::endl;
}

NavalFreightCompany::~NavalFreightCompany()
{
	delete(location);
}

std::ostream& operator << (std::ostream& os, const NavalFreightCompany& v)
{
	os << "Location: " << v.location->description << "(" << v.location->x << "," << v.location->y << ")" << std::endl;
	v.printStats();
	for (std::list<Vessel*>::const_iterator i = v.ships.begin(); i != v.ships.end(); i++)
	{
		if (typeid(*i).hash_code() == typeid(CargoVessel*).hash_code())
			std::cout << *(CargoVessel*)*i;
		if (typeid(*i).hash_code() == typeid(PassengerVessel*).hash_code())
			std::cout << *(PassengerVessel*)*i;
	}
	return os;
}