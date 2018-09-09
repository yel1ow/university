#pragma once
#include "Vessel.h"
#include <vector>
class CargoVessel: public Vessel
{
	public:
	// Типы  груза
	enum CargoType
	{
		FOOD, WOOD, GOOD
	};

	private:
	// максимальная грузоподъемность
	int maxcargo;
	// сколько сейчас загружено
	int curcargo;
	// массив контейнеров
	int container_num;

	CargoType* containerContent;

	std::string toStr(CargoType x) const;

	// Печать грузового судна
	friend std::ostream& operator << (std::ostream& os, const CargoVessel& v);

	public:
	CargoVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxcargo, int curcargo, int container_num, CargoType* containerContent);

	CargoVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxcargo, int curcargo, std::vector<CargoType> containerContent);

	CargoVessel(const CargoVessel & v);

	int getMaxCargo() const;

	int getCurCargo() const;

	int getContainerNum() const;

	const CargoType* getcontainerContent() const;

	virtual ~CargoVessel();

	virtual CargoVessel* clone();
};