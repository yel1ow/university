#pragma once
#include <string>
// �������� �������: ��� �� ������� ��������� � ��������������; ���� ��������������� �������.
// ���� �� ��� ���������, �� ������ ������.
struct ShipProperties
{
	// ���� �����������
	std::string* damaged;
	// ���� �������
	std::string* repaired;
	// �����������
	ShipProperties();

	ShipProperties(std::string _damaged, std::string _repaired);

	ShipProperties(const ShipProperties & props);

	void addDamageRecord(std::string s);

	void addRepaireRecord(std::string s);

	void clearRecords();

	~ShipProperties();
};