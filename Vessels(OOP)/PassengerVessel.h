#pragma once
#include "Vessel.h"
#include <iostream>
#include <vector>
class PassengerVessel: public Vessel
{
	public:
	// типы кают
	enum CabinType
	{
		LUX, FIRSTCLASS, SECONDCLASS
	};

	private:
	// максимальная вместимость пассажиров
	int maxpax;
	// сколько сейчас пассажиров
	int curpax;
	// сколько кают на данном корабле
	int cabin_num;
	// список кают с типом
	CabinType* cabinContent;

	std::string toStr(CabinType x) const;

	// Печать пассажирского судна
	friend std::ostream& operator << (std::ostream& os, const PassengerVessel& v);

	public:
	PassengerVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxpax, int curpax, int cabin_num, CabinType* cabinContent);

	PassengerVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxpax, int curpax, std::vector<CabinType> cabinContent);

	PassengerVessel(const PassengerVessel & v);

	int getMaxPax() const;

	int getCurPax() const;

	int getCabinNum() const;

	const CabinType* getCabinContent() const;

	virtual ~PassengerVessel();

	virtual PassengerVessel* clone();
};