#pragma once
#include "Vessel.h"
#include "Audit.h"
#include <list>

class Audit;

class NavalFreightCompany
{
	private:
	// ��������� �������
	std::list<Vessel*> ships;
	// ����� ��� ���� ����������
	Destination* location;
	// ������ ���� ������ � ��������
	friend std::ostream& operator << (std::ostream& os, const NavalFreightCompany& v);

	public:
	//std::list<Vessel*>::const_iterator getFirstShip();

	//std::list<Vessel*>::const_iterator getLastShip();

	const Destination& getLocation();

	int getNumberShips() const;

	int getNumberRepairedShips() const;

	NavalFreightCompany(Destination* location);
	// ���������� �������
	void add(Vessel* v);
	// �������� �������
	int remove(Vessel* v);

	int remove(int id);
	// ������� ���� ���� - �����-���� ����������������� ����
	void draft();
	// ���������� ����������: ������� ������������, ������� ��������, �� ��� �����-���� ����������
	void printStats() const;
	// ������ ������ � ������� ������� �� id
	void markRepaired(int id, std::string* date_repaired);
	// ������ ������ � ����������� ������� �� id
	void markDamaged(int id, std::string* date_damaged);
	// �������� ����� ���������� �������
	void changeDestination(int id, Destination* dest);
	// ���������� ������� �������� ���� � ����� ���������� X
	void printHeadingTo(std::string s);

	~NavalFreightCompany();

	friend Audit;
};