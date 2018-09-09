#include "Vessel.h"
Vessel::Vessel(int id, Destination* dest, int DTA, ShipProperties* props)
{
	this->id = id;
	this->destination = dest;
	this->DTA = DTA;
	this->props = props;
}

Vessel::Vessel(int id, std::string destination_description, int destination_x, int destination_y, int DTA, 
			   std::string properties_damaged, std::string properties_repaired):
	Vessel(id, new Destination(destination_description, destination_x, destination_y),
		   DTA, new ShipProperties(properties_damaged, properties_repaired)) {}

Vessel::Vessel(const Vessel & v):
	Vessel(v.id, new Destination(v.destination->description, v.destination->x, v.destination->y),
		   v.DTA, new ShipProperties(*v.props->damaged, *v.props->repaired))
{}

int Vessel::getId() const
{
	return id;
}

const Destination& Vessel::getDestination() const
{
	return *destination;
}

int Vessel::getDTA() const
{
	return DTA;
}

const ShipProperties& Vessel::getProperties() const
{
	return *props;
}

bool Vessel::everDamaged() const
{
	return (*props->damaged != "");
}

bool Vessel::everRepaired() const
{
	return (*props->repaired != "");
}

void Vessel::addDamageRecord(std::string s)
{
	props->addDamageRecord(s);
}

void Vessel::addRepaireRecord(std::string s)
{
	props->addRepaireRecord(s);
}

void Vessel::changeDestination(Destination* dest)
{
	delete destination;
	destination = dest;
}

std::string Vessel::getDestinationDescription() const
{
	return destination->description;
}

Vessel::~Vessel()
{
	delete destination;
	delete props;
}

Vessel* Vessel::clone()
{
	return new Vessel(*this);
}

std::ostream& operator << (std::ostream& os, const Vessel& v)
{
	os << "vessel(Id: " << v.id << ")" << std::endl;
	os << "Destination:" << std::endl << "\t" << "Port: " << v.destination->description << "(" << v.destination->x << "," << v.destination->y << ")" << std::endl;
	os << "Properties:" << std::endl << "\t" << "Damaged: " << *(v.props->damaged) << std::endl << "\t" << "Repaired: " << *(v.props->repaired) << std::endl;
	return os;
}