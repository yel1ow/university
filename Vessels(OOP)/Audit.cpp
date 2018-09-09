#include "Audit.h"
#include <iostream>
#include <list>
// ������ ���� �� � ����� ������ �������� ��������� ������������ ���� (� ������� destination ��������� � location)
bool Audit::isPassengerVesselsInPort(NavalFreightCompany& nfc)
{
	for (std::list<Vessel*>::const_iterator i = nfc.ships.begin(); i != nfc.ships.end(); i++)
	{
		if ((*i)->getDestination() == nfc.getLocation())
			return true;
	}
	return false;
}
// �������� ��� ��������, ������� ����� ������� (��������� ��������), ��������� ��������� ��������������
void Audit::compare1(NavalFreightCompany& c1, NavalFreightCompany& c2)
{
	if (c1.getNumberShips() > c2.getNumberShips())
		std::cout << c1;
	else std::cout << c2;
}
// �������� ��� ��������, ������� ����� �������� (������ �����-���� ����������������� �����), ��������� ��������� ��������������
void Audit::compare2(NavalFreightCompany& c1, NavalFreightCompany& c2)
{
	if (c1.getNumberRepairedShips() > c2.getNumberRepairedShips())
		std::cout << c2;
	else std::cout << c1;
}
// ����������������� ������������ ������� �� ������� ������� �������� ���������� ����� ��� �������� �� ���������
bool Audit::inspectPassengerVessel(PassengerVessel& v)
{
	return (v.getCurPax() > v.getMaxPax());
}
// ����������������� ������������ ������� �� ������� ������� �������� ���������� ����������� ��� �������� �� ���������
bool Audit::inspectCargoVessel(CargoVessel& v)
{
	if (v.getCurCargo() > v.getMaxCargo())
		return true;
	else return false;
}