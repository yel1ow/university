#include "stdafx.h"
#include "iostream"
#include "conio.h"
#include "iomanip"
#include "ctime"

using namespace std;

const char tablo[2][10][6] = 
					   {4, ' ', '+', 'U', 'N', ' ',
						4, ',', '.', '?', '-', ' ',
						4, '�', '�', '�', '�', ' ',
						5, '�', '�', '�', '�', '�',
						4, '�', '�', '�', '�', ' ',
						4, '�', '�', '�', '�', ' ',
						4, '�', '�', '�', '�', ' ',
						4, '�', '�', '�', '�', ' ',
						4, '�', '�', '�', '�', ' ',
						4, '�', '�', '�', '�', ' ',

						4, ' ', '+', 'U', 'N', ' ',
						4, ',', '.', '?', '-', ' ',
						3, 'a', 'b', 'c', ' ', ' ',
						3, 'd', 'e', 'f', ' ', ' ',
						3, 'g', 'h', 'i', ' ', ' ',
						3, 'j', 'k', 'l', ' ', ' ',
						3, 'm', 'n', 'o', ' ', ' ',
						4, 'p', 'q', 'r', 's', ' ',
						3, 't', 'u', 'v', ' ', ' ',
						4, 'w', 'x', 'y', 'z', ' ',};

int dtmax = 1000;//ms
unsigned char c = 0, cur = 255;
unsigned char txt[1000], a[1000];
int cnt = 0, numb = 0, ind = 1, keyboard = 0, dt = 0, t = 0;
bool ChangeLanguage = false, pressed = false, big = false, NextBig = false, Bykvi = true;

void timeout()
{
	if (clock() - t > dtmax)
	{
		if (c == cur)
		{
			cnt++;
			a[cnt] = 32;
		}
		cur = 0;
	}
}

unsigned char UpCase(unsigned char c)
{
	if (c >= 97 && c <= 122)
		c = c - 32;
	if (c >= 160)// && c <= 175 || c >= 224 && c <= 239)
		c = c - 'a' + 'A';
	return c;
}

unsigned char Symb(unsigned char c)
{
	if (Bykvi)
	{
		if (big || NextBig)
			c = UpCase(c);
		NextBig = false;
		/*	return UpCase(c);
		else
		return c;*/
	}
	return c;
}

int main()
{
	setlocale(0, "");
	
	cout << "���������: " << "�������" << " (������� \"=\")" << endl << "�����: "
	<< "�������� (��� ���� ������� Tab)" << endl << "������� �����: " << endl << "���������: ";

	while (c != 13)
	{
		/*if (_kbhit())
		{
			while (_kbhit())
				cout << "kbhit is working..." << endl;
			pressed = true;
		}*/

		c = _getch();

		/*system("cls");
		cout << "���������: ";
		if (keyboard) cout << "������������";
		else cout << "�������";
		if (big)
			cout << " ��������� �����";
		else
			cout << " �������� �����";
		cout << " (������� \"=\")" << endl;*/

		if (c == 8)
		{
			a[cnt] = '-';
			cnt++;
			if(numb > 0)
			numb--;
		}

		if (c == '=')
		{
			a[cnt] = c;
			cnt++;
			keyboard = 1 - keyboard;
			
			//add
			big = false;

			ChangeLanguage = true;
		}

		if (c == 9)
		{
			Bykvi = !Bykvi;
		}
		
		if (c >= 48 && c <= 57)
		{
			timeout();

			a[cnt] = c;
			cnt++;

			if (c == cur && Bykvi)
			{
				ind++;
				if (ind > tablo[keyboard][c - 48][0])
					ind = 1;
				if (ChangeLanguage) numb++;
				/*if (pressed)
					txt[numb] = c - 48;
				else*/
				if (tablo[keyboard][c - 48][ind] == 'U')// && keyboard)
				{
					big = !big;
					numb--;
				}
				else
				if (tablo[keyboard][c - 48][ind] == 'N')// && keyboard)
				{
					big = false;
					NextBig = !NextBig;
				}
				else
					txt[numb] = Symb(tablo[keyboard][c - 48][ind]);
			} 
			else
			{
				numb++;
				ind = 1;
				if (Bykvi)
					txt[numb] = Symb(tablo[keyboard][c - 48][ind]);
				else
				{
					txt[numb] = c;
				}
			}
			cur = c;
			t = clock();
			ChangeLanguage = false;
			//pressed = false;
		}

		system("cls");
		cout << "���������: ";
		if (keyboard) cout << "������������";
		else cout << "�������";
		cout << " (������� \"=\")" << endl;
		if (Bykvi)
		{
			cout << "�����: ";
			if (big)
				cout << "���������";
			else if (NextBig)
				cout << "���������, ����� ��������";
			else
				cout << "��������";
			cout << " (��� ���� ������� Tab)";
		}
		else
		{
			cout << "�����";
			cout << " (��� ���� ������� Tab)";
		}
		
		cout << endl;
		cout << "������� �����: ";
		for (int i = 0; i < cnt; i++)
		{
			cout << a[i];
		}
		cout << endl;
		cout << "���������: ";
		for (int i = 1; i <= numb; i++)
		{
			cout << txt[i];
		}
	}
    return 0;
}