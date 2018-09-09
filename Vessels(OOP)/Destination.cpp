#include "Destination.h"
Destination::Destination(std::string description, int x, int y)
{
	this->description = description;
	this->x = x;
	this->y = y;
}

Destination::Destination(const Destination & destination)
{
	description = destination.description;
	x = destination.x;
	y = destination.y;
}

bool Destination::operator == (Destination dest) const
{
	if (description == dest.description && x == dest.x && y == dest.y)
		return true;
	else return false;
}
