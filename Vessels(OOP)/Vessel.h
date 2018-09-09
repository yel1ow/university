#pragma once
#include "ShipProperties.h"
#include "Destination.h"
class Vessel
{
	private:
	// ���������� �������������
	int id;
	// ����� ����������
	Destination* destination;
	// ������� ���� �������� ����� �� ��������
	int DTA;
	// �������� �������
	ShipProperties* props;
	// ������ �����
	friend std::ostream& operator << (std::ostream& os, const Vessel& v);

	public:
	Vessel(int id, Destination* dest, int DTA, ShipProperties* props);

	Vessel(int id, std::string destination_description, int destination_x, int destination_y,
		   int DTA = 0, std::string properties_damaged = "", std::string properties_repaired = "");

	Vessel(const Vessel & v);

	int getId() const;

	const Destination& getDestination() const;

	int getDTA() const;

	const ShipProperties& getProperties() const;

	bool everDamaged() const;

	bool everRepaired() const;

	void addDamageRecord(std::string s);

	void addRepaireRecord(std::string s);

	void changeDestination(Destination* dest);

	std::string getDestinationDescription() const;

	virtual ~Vessel();
	// �������� ������������, ������ �������������� �� ���� ����������� �������
	virtual Vessel* clone();
};