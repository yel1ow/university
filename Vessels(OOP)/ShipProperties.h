#pragma once
#include <string>
// Свойства корабля: был ли корабль поврежден и отремонтирован; дата соответствующих событий.
// Если не был поврежден, то пустая строка.
struct ShipProperties
{
	// дата повреждения
	std::string* damaged;
	// дата ремонта
	std::string* repaired;
	// конструктор
	ShipProperties();

	ShipProperties(std::string _damaged, std::string _repaired);

	ShipProperties(const ShipProperties & props);

	void addDamageRecord(std::string s);

	void addRepaireRecord(std::string s);

	void clearRecords();

	~ShipProperties();
};