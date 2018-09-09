#include "PassengerVessel.h"
PassengerVessel::PassengerVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxpax, int curpax, int cabin_num, CabinType* cabinContent):
	Vessel(id, dest, DTA, props), maxpax(maxpax), curpax(curpax)
{
	this->cabin_num = cabin_num;
	this->cabinContent = new CabinType[cabin_num];
	for (int i = 0; i < cabin_num; i++)
	{
		this->cabinContent[i] = cabinContent[i];
	}
}

PassengerVessel::PassengerVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxpax, int curpax, std::vector<CabinType> cabinContent):
	Vessel(id, dest, DTA, props), maxpax(maxpax), curpax(curpax)
{
	this->cabin_num = cabinContent.size();
	this->cabinContent = new CabinType[cabinContent.size()];
	for (size_t i = 0; i < cabinContent.size(); i++)
	{
		this->cabinContent[i] = cabinContent[i];
	}
}

PassengerVessel::PassengerVessel(const PassengerVessel & v):
	PassengerVessel(v.getId(), new Destination(v.getDestination()), v.getDTA(), new ShipProperties(v.getProperties()), v.maxpax, v.curpax,
					v.cabin_num, v.cabinContent){}

int PassengerVessel::getMaxPax() const
{
	return maxpax;
}

int PassengerVessel::getCurPax() const
{
	return curpax;
}

int PassengerVessel::getCabinNum() const
{
	return cabin_num;
}

const PassengerVessel::CabinType* PassengerVessel::getCabinContent() const
{
	return cabinContent;
}

PassengerVessel::~PassengerVessel()
{
	delete[] cabinContent;
}

PassengerVessel* PassengerVessel::clone()
{
	return new PassengerVessel(*this);
}

std::string PassengerVessel::toStr(CabinType x) const
{
	switch (x)
	{
		case PassengerVessel::LUX:
			return "LUX";
			break;
		case PassengerVessel::FIRSTCLASS:
			return "FIRSTCLASS";
			break;
		case PassengerVessel::SECONDCLASS:
			return "SECONDCLASS";
			break;
		default:
			return "";
			break;
	}
}

std::ostream& operator << (std::ostream& os, const PassengerVessel& v)
{
	std::cout << "Passenger ";
	std::cout << (Vessel)v;
	os << "Max pax: " << v.maxpax << std::endl;
	os << "Current pax: " << v.curpax << std::endl;
	os << "Cabin number: " << v.cabin_num << std::endl;
	os << "Cabin content: ";
	for (int i = 0; i < v.cabin_num; i++)
	{
		os << v.toStr(v.cabinContent[i]);
		if (i < v.cabin_num - 1)
			os << ", ";
	}
	os << std::endl << std::endl;
	return os;
}
