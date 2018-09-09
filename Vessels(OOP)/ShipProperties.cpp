#include "ShipProperties.h"
ShipProperties::ShipProperties()
{
	damaged = new std::string;
	*damaged = "";
	repaired = new std::string;
	*repaired = "";
}

ShipProperties::ShipProperties(std::string _damaged, std::string _repaired)
{
	damaged = new std::string;
	*damaged = _damaged;
	repaired = new std::string;
	*repaired = _repaired;
}

ShipProperties::ShipProperties(const ShipProperties & props)
{
	damaged = new std::string;
	*damaged = *props.damaged;
	repaired = new std::string;
	*repaired = *props.repaired;
}

void ShipProperties::addDamageRecord(std::string s)
{
	if (*damaged != "")
		*damaged += ", ";
	*damaged += s;
}

void ShipProperties::addRepaireRecord(std::string s)
{
	if (*repaired != "")
		*repaired += ", ";
	*repaired += s;
}

void ShipProperties::clearRecords()
{
	*damaged = "";
	*repaired = "";
}

ShipProperties::~ShipProperties()
{
	delete(damaged);
	delete(repaired);
}