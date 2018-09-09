#include "CargoVessel.h"
#include <iostream>
CargoVessel::CargoVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxcargo, int curcargo, int container_num, CargoType* containerContent):
	Vessel(id, dest, DTA, props), maxcargo(maxcargo), curcargo(curcargo), container_num(container_num)
{
	this->containerContent = new CargoType[container_num];
	for (int i = 0; i < container_num; i++)
	{
		this->containerContent[i] = containerContent[i];
	}
}

CargoVessel::CargoVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxcargo, int curcargo, std::vector<CargoType> containerContent):
	Vessel(id, dest, DTA, props), maxcargo(maxcargo), curcargo(curcargo)
{
	this->container_num = containerContent.size();
	this->containerContent = new CargoType[containerContent.size()];
	for (size_t i = 0; i < containerContent.size(); i++)
	{
		this->containerContent[i] = containerContent[i];
	}
}

CargoVessel::CargoVessel(const CargoVessel & v):
	CargoVessel(v.getId(), new Destination(v.getDestination()), v.getDTA(), new ShipProperties(v.getProperties()), maxcargo, curcargo,
				v.container_num, v.containerContent){}

int CargoVessel::getMaxCargo() const
{
	return maxcargo;
}

int CargoVessel::getCurCargo() const
{
	return curcargo;
}

int CargoVessel::getContainerNum() const
{
	return container_num;
}

const CargoVessel::CargoType* CargoVessel::getcontainerContent() const
{
	return containerContent;
}

CargoVessel::~CargoVessel()
{
	delete[] containerContent;
}

CargoVessel* CargoVessel::clone()
{
	return new CargoVessel(*this);
}

std::string CargoVessel::toStr(CargoType x) const
{
	switch (x)
	{
		case CargoVessel::FOOD:
			return "FOOD";
		case CargoVessel::WOOD:
			return "WOOD";
		case CargoVessel::GOOD:
			return "GOOD";
		default:
			return "";
	}
}

std::ostream& operator << (std::ostream& os, const CargoVessel& v)
{
	std::cout << "Cargo ";
	std::cout << (Vessel)v;
	os << "Max cargo: " << v.maxcargo << std::endl;
	os << "Current cargo: " << v.curcargo << std::endl;
	os << "Container number: " << v.container_num << std::endl;
	os << "Container content: ";
	for (int i = 0; i < v.container_num; i++)
	{
		os << v.toStr(v.containerContent[i]);
		if (i < v.container_num - 1)
			os << ", ";
	}
	os << std::endl << std::endl;
	return os;
}