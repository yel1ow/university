#pragma once
#include <string>
class Destination
{
	public:
	// �������� ����� ����������
	std::string description;
	// ���������� ����� ����������
	int x, y;

	Destination(std::string description, int x, int y);

	Destination(const Destination & destination);

	bool operator == (Destination dest) const;
};