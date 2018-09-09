#pragma once
#include <string>
class Destination
{
	public:
	// название порта назначения
	std::string description;
	// координаты места назначения
	int x, y;

	Destination(std::string description, int x, int y);

	Destination(const Destination & destination);

	bool operator == (Destination dest) const;
};