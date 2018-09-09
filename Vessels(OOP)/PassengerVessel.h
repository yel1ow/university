#pragma once
#include "Vessel.h"
#include <iostream>
#include <vector>
class PassengerVessel: public Vessel
{
	public:
	// ���� ����
	enum CabinType
	{
		LUX, FIRSTCLASS, SECONDCLASS
	};

	private:
	// ������������ ����������� ����������
	int maxpax;
	// ������� ������ ����������
	int curpax;
	// ������� ���� �� ������ �������
	int cabin_num;
	// ������ ���� � �����
	CabinType* cabinContent;

	std::string toStr(CabinType x) const;

	// ������ ������������� �����
	friend std::ostream& operator << (std::ostream& os, const PassengerVessel& v);

	public:
	PassengerVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxpax, int curpax, int cabin_num, CabinType* cabinContent);

	PassengerVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxpax, int curpax, std::vector<CabinType> cabinContent);

	PassengerVessel(const PassengerVessel & v);

	int getMaxPax() const;

	int getCurPax() const;

	int getCabinNum() const;

	const CabinType* getCabinContent() const;

	virtual ~PassengerVessel();

	virtual PassengerVessel* clone();
};