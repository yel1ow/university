#pragma once
#include "Vessel.h"
#include <vector>
class CargoVessel: public Vessel
{
	public:
	// ����  �����
	enum CargoType
	{
		FOOD, WOOD, GOOD
	};

	private:
	// ������������ ����������������
	int maxcargo;
	// ������� ������ ���������
	int curcargo;
	// ������ �����������
	int container_num;

	CargoType* containerContent;

	std::string toStr(CargoType x) const;

	// ������ ��������� �����
	friend std::ostream& operator << (std::ostream& os, const CargoVessel& v);

	public:
	CargoVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxcargo, int curcargo, int container_num, CargoType* containerContent);

	CargoVessel(int id, Destination* dest, int DTA, ShipProperties* props, int maxcargo, int curcargo, std::vector<CargoType> containerContent);

	CargoVessel(const CargoVessel & v);

	int getMaxCargo() const;

	int getCurCargo() const;

	int getContainerNum() const;

	const CargoType* getcontainerContent() const;

	virtual ~CargoVessel();

	virtual CargoVessel* clone();
};