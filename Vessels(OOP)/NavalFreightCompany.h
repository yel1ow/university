#pragma once
#include "Vessel.h"
#include "Audit.h"
#include <list>

class Audit;

class NavalFreightCompany
{
	private:
	// имеющиеся корабли
	std::list<Vessel*> ships;
	// место где порт расположен
	Destination* location;
	// Печать всех данных о компании
	friend std::ostream& operator << (std::ostream& os, const NavalFreightCompany& v);

	public:
	//std::list<Vessel*>::const_iterator getFirstShip();

	//std::list<Vessel*>::const_iterator getLastShip();

	const Destination& getLocation();

	int getNumberShips() const;

	int getNumberRepairedShips() const;

	NavalFreightCompany(Destination* location);
	// добавление корабля
	void add(Vessel* v);
	// удаление корабля
	int remove(Vessel* v);

	int remove(int id);
	// списать весь хлам - когда-либо ремонтировавшиеся суда
	void draft();
	// напечатать статистику: сколько пассажирских, сколько грузовых, из них когда-либо ломавшихся
	void printStats() const;
	// внести запись о ремонте корабля по id
	void markRepaired(int id, std::string* date_repaired);
	// внести запись о повреждении корабля по id
	void markDamaged(int id, std::string* date_damaged);
	// поменять пункт назначения корабля
	void changeDestination(int id, Destination* dest);
	// напечатать сколько кораблей идут в пункт назначения X
	void printHeadingTo(std::string s);

	~NavalFreightCompany();

	friend Audit;
};