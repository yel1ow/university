#pragma once
#include "CargoVessel.h"
#include "PassengerVessel.h"
#include "NavalFreightCompany.h"

class NavalFreightCompany;

// ����� ������� ��������, ������ ��������� ��������
class Audit
{
	public:
	// ������ ���� �� � ����� ������ �������� ��������� ������������ ���� (� ������� destination ��������� � location)
	bool isPassengerVesselsInPort(NavalFreightCompany& nfc);
	// �������� ��� ��������, ������� ����� ������� (��������� ��������), ��������� ��������� ��������������
	void compare1(NavalFreightCompany& c1, NavalFreightCompany& c2);
	// �������� ��� ��������, ������� ����� �������� (������ �����-���� ����������������� �����), ��������� ��������� ��������������
	void compare2(NavalFreightCompany& c1, NavalFreightCompany& c2);
	// ����������������� ������������ ������� �� ������� ������� �������� ���������� ����� ��� �������� �� ���������
	bool inspectPassengerVessel(PassengerVessel& v);
	// ����������������� ������������ ������� �� ������� ������� �������� ���������� ����������� ��� �������� �� ���������
	bool inspectCargoVessel(CargoVessel& v);
};