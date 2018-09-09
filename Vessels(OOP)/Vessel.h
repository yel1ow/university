#pragma once
#include "ShipProperties.h"
#include "Destination.h"
class Vessel
{
	private:
	// уникальный идентификатор
	int id;
	// пункт назначения
	Destination* destination;
	// сколько дней осталось время до прибытия
	int DTA;
	// свойства корабля
	ShipProperties* props;
	// Печать судна
	friend std::ostream& operator << (std::ostream& os, const Vessel& v);

	public:
	Vessel(int id, Destination* dest, int DTA, ShipProperties* props);

	Vessel(int id, std::string destination_description, int destination_x, int destination_y,
		   int DTA = 0, std::string properties_damaged = "", std::string properties_repaired = "");

	Vessel(const Vessel & v);

	int getId() const;

	const Destination& getDestination() const;

	int getDTA() const;

	const ShipProperties& getProperties() const;

	bool everDamaged() const;

	bool everRepaired() const;

	void addDamageRecord(std::string s);

	void addRepaireRecord(std::string s);

	void changeDestination(Destination* dest);

	std::string getDestinationDescription() const;

	virtual ~Vessel();
	// операция клонирования, должна присутствовать во всех наследуемых классах
	virtual Vessel* clone();
};