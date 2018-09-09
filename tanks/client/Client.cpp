// World of tanks.cpp: определяет точку входа для консольного приложения.
//

#include "stdafx.h"
#include "iostream"
#include "conio.h"
#include "windows.h"
#include "fstream"
#include "cmath"
#include "ctime"
#define _WINSOCK_DEPRECATED_NO_WARNINGS
#include "winsock.h"
#include "thread"

#pragma comment(lib, "Ws2_32.lib")

#define cube (char)219

//using namespace std;

//direction
const int Up = 0,
Right = 1,
Down = 2,
Left = 3,
Space = 4;
//action tank
const int no = 0,
moving = 1,
hold = 2;

//action shot
const int explosion = 3;

//field trash
const int border = 9;

const int CellSize = 5, PoleSize = 7;
int Field[PoleSize][PoleSize];

void SetCursorPosition(int x, int y)
{
	COORD coord;
	coord.X = x;
	coord.Y = y;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), coord);
}

inline void FillCell(int x, int y, char c)
{
	for (int il = 0; il < CellSize; il++)
	{
		SetCursorPosition(x * CellSize, y * CellSize + il);
		for (int jl = 0; jl < CellSize; jl++)
			std::cout << c;
	}
}

class obj
{
	public:
	obj * next;
	int type, team;
	int health;
	int localx, localy;
	int dx, dy;
	int globalx, globaly;
	int offs;
	int speed, explosionspeed, tact;
	int action;
	int stage;
	int cooldown;
	int reloading;

	obj(int Ntype, int Nteam, int x, int y)
	{
		type = Ntype;
		team = Nteam;
		health = 3;
		localx = x;
		localy = y;
		dx = 1;
		dy = 0;
		//pole
		if (type != 0)
			Field[x][y] = team;
		//pole
		globalx = localx * CellSize;
		globaly = localy * CellSize;
		offs = 0;
		speed = 5000;
		explosionspeed = 15000;
		tact = 0;
		action = 0;
		stage = 0;
		cooldown = 50000;
		reloading = 0;
	}

	void ClearMyCell()
	{
		for (int il = 0; il < CellSize; il++)
		{
			SetCursorPosition(globalx, globaly + il);
			for (int jl = 0; jl < CellSize; jl++)
				std::cout << ' ';
		}
	}

	void SetLocalPosition(int NewX, int NewY)
	{
		ClearMyCell();
		Field[localx][localy] = 0;
		localx = NewX;
		localy = NewY;
		Field[localx][localy] = team;
		Show();
	}

	void SetGlobalPosition(int NewX, int NewY)
	{
		ClearMyCell();
		globalx = NewX;
		globaly = NewY;
		Show();
	}

	void SetDirection(int Newdx, int Newdy)
	{
		ClearMyCell();
		dx = Newdx;
		dy = Newdy;
		Show();
	}

	void IncOffs()
	{
		offs++;
		if (offs == CellSize)
		{
			offs = 0;
			Field[localx][localy] = 0;
			localx += dx;
			localy += dy;
			action = no;
			Field[localx][localy] = type;
		}
		globalx = localx * CellSize + dx * offs;
		globaly = localy * CellSize + dy * offs;
	}

	void Move()
	{
		if (reloading > 0)
			reloading--;
		if (action == moving)
		{
			tact++;
			if (tact == speed)
			{
				tact = 0;
				ClearMyCell();
				IncOffs();
				Show();
			}
		}

		if (action == explosion)
		{
			tact++;
			if (tact == explosionspeed)
			{
				tact = 0;
				//FillCell(globalx, globaly, ' ');//steret'
				stage++;
				Show();//narisovat'
			}
		}
	}

	inline void ShowTankStage()
	{
		globalx = localx * CellSize + dx * offs;
		globaly = localy * CellSize + dy * offs;
		switch (stage)
		{
			case 0:
				SetCursorPosition(globalx, globaly);
				std::cout << "     ";
				SetCursorPosition(globalx, globaly + 1);
				std::cout << ' ' << cube << cube << cube << ' ';
				SetCursorPosition(globalx, globaly + 2);
				std::cout << ' ' << cube << cube << cube << ' ';
				SetCursorPosition(globalx, globaly + 3);
				std::cout << ' ' << cube << cube << cube << ' ';
				SetCursorPosition(globalx, globaly + 4);
				std::cout << "   " << health;//";
				SetCursorPosition(globalx + 2 + dx * 2, globaly + 2 + dy * 2);
				std::cout << cube;
				break;
			case 1:
				SetCursorPosition(globalx, globaly);
				std::cout << "     ";
				SetCursorPosition(globalx, globaly + 1);
				std::cout << ' ' << cube << cube << cube << ' ';
				SetCursorPosition(globalx, globaly + 2);
				std::cout << ' ' << cube << cube << cube << ' ';
				SetCursorPosition(globalx, globaly + 3);
				std::cout << ' ' << cube << cube << cube << ' ';
				SetCursorPosition(globalx, globaly + 4);
				std::cout << "     ";
				SetCursorPosition(globalx + 2 + dx * 2, globaly + 2 + dy * 2);
				std::cout << cube;
				SetCursorPosition(globalx + 1, globaly + 1);
				std::cout << "***";
				SetCursorPosition(globalx + 1, globaly + 2);
				std::cout << "* *";
				SetCursorPosition(globalx + 1, globaly + 3);
				std::cout << "***";
				break;
			case 2:
				SetCursorPosition(globalx, globaly);
				std::cout << "*****";
				SetCursorPosition(globalx, globaly + 1);
				std::cout << "*   *";
				SetCursorPosition(globalx, globaly + 2);
				std::cout << "*   *";
				SetCursorPosition(globalx, globaly + 3);
				std::cout << "*   *";
				SetCursorPosition(globalx, globaly + 4);
				std::cout << "*****";
				break;
			case 3:
				FillCell(localx, localy, ' ');
				Field[localx][localy] = 0;
				break;
			default:
				break;
		}
	}

	void Show()
	{
		ShowTankStage();
	}

	template <class T1>
	void Fire(T1 * shots)
	{
		if (reloading == 0)
		{
			reloading = cooldown;
			shots->insert(new shot(1, type, localx, localy, dx, dy));
		}
	}

};

class shot
{
	public:
	shot * next;
	int type, team;
	int damage;
	int localx, localy;
	int globalx, globaly;
	int dx, dy;
	int offs;
	int speed, explosionspeed, tact;
	int action;
	int stage;

	shot(int Ntype, int Nteam, int Nx, int Ny, int Newdx, int Newdy)
	{
		type = Ntype;
		team = Nteam;
		damage = 1;
		localx = Nx;
		localy = Ny;
		globalx = localx * CellSize + 2;
		globaly = localy * CellSize + 2;
		dx = Newdx;
		dy = Newdy;
		offs = 2;
		speed = 2000;
		explosionspeed = 100;
		tact = 0;
		action = moving;
		stage = 0;
	}

	void ClearMyCell()
	{
		SetCursorPosition(globalx + 2, globaly + 2);
		std::cout << ' ';
	}

	void SetPosition(int NewX, int NewY)
	{
		globalx = NewX;
		globaly = NewY;
	}

	void SetDirection(int Newdx, int Newdy)
	{
		dx = Newdx;
		dy = Newdy;
	}

	void Move()
	{
		if (action == moving)
		{
			tact++;
			if (tact == speed)
			{
				tact = 0;
				ClearMyCell();//steret'

				offs++;
				if (offs == CellSize)
				{
					offs = 0;
					localx += dx;
					localy += dy;
				}
				globalx = localx * CellSize + dx * offs;
				globaly = localy * CellSize + dy * offs;

				Show();//narisovat'
			}
		}
		if (action == explosion)
		{
			tact++;
			if (tact == explosionspeed)
			{
				tact = 0;
				//FillCell(globalx, globaly, ' ');//steret'
				stage++;
				Show();//narisovat'
			}
		}

	}

	void Show()
	{
		switch (stage)
		{
			case 0:
				SetCursorPosition(globalx + 2, globaly + 2);
				std::cout << '*';
				break;
			case 1:
				SetCursorPosition(globalx + 1, globaly + 1);
				std::cout << "\\*/";
				SetCursorPosition(globalx + 1, globaly + 2);
				std::cout << "* *";
				SetCursorPosition(globalx + 1, globaly + 3);
				std::cout << "/*\\";
				break;
			case 6:
				if (globalx / CellSize == 0 || globaly / CellSize == 0 || globalx / CellSize == PoleSize - 1 || globaly / CellSize == PoleSize - 1)
				{
					SetCursorPosition(globalx, globaly);
					std::cout << cube << cube << cube << cube << cube;
					SetCursorPosition(globalx, globaly + 1);
					std::cout << cube << cube << cube << cube << cube;
					SetCursorPosition(globalx, globaly + 2);
					std::cout << cube << cube << cube << cube << cube;
					SetCursorPosition(globalx, globaly + 3);
					std::cout << cube << cube << cube << cube << cube;
					SetCursorPosition(globalx, globaly + 4);
					std::cout << cube << cube << cube << cube << cube;
				}
				else
				{
					SetCursorPosition(globalx + 1, globaly + 1);
					std::cout << "   ";
					SetCursorPosition(globalx + 1, globaly + 2);
					std::cout << "   ";
					SetCursorPosition(globalx + 1, globaly + 3);
					std::cout << "   ";
				}
				/*case 2:
				SetCursorPosition(globalx, globaly);
				std::cout << "*****";
				SetCursorPosition(globalx, globaly + 1);
				std::cout << "*   *";
				SetCursorPosition(globalx, globaly + 2);
				std::cout << "*   *";
				SetCursorPosition(globalx, globaly + 3);
				std::cout << "*   *";
				SetCursorPosition(globalx, globaly + 4);
				std::cout << "*****";
				break;*/
			default:
				break;
		}

	}
};

class Ttanks
{
	public:
	obj * first;

	Ttanks(obj * Nfirst)
	{
		first = Nfirst;
		first->next = first;
	}
	void insert(obj * cur)
	{
		cur->next = first->next;
		first->next = cur;
	}

	bool Delete(obj * cur)
	{
		obj * tz = first;
		while (tz->next != cur && tz->next != first)
		{
			tz = tz->next;
		}
		if (tz->next == first)
			return false;
		cur->ClearMyCell();
		Field[cur->localx][cur->localy] = 0;
		tz->next = cur->next;
		delete(cur);
		return true;
	}

	void Move()
	{
		obj * cur = first->next;
		while (cur != first)
		{
			cur->Move();
			if (cur->localx < 0 || cur->localy < 0 || cur->localx >= PoleSize || cur->localy >= PoleSize)
			{
				SetCursorPosition(40, 40);
				std::cout << "OOPS Tank za polem!!!!";
				Delete(cur);
				cur = first;
			}
			if (cur->stage > 2)
			{
				Delete(cur);
				cur = first;
			}
			cur = cur->next;
		}
	}

	void Show()
	{
		obj * cur = first->next;
		while (cur != first)
		{
			//if (cur->action == moving)
			cur->Show();
			cur = cur->next;
		}
	}
};

obj * GetObjectXY(Ttanks * tanks, int x, int y)
{
	obj * cur = tanks->first->next;
	while (cur != tanks->first)
	{
		if (cur->localx == x && cur->localy == y)
			return cur;
		cur = cur->next;
	}
	return 0;
}

class Tshots
{
	public:
	shot * first;

	Tshots(shot * Nfirst)
	{
		first = Nfirst;
		first->next = first;
	}

	void insert(shot * cur)
	{
		cur->next = first->next;
		first->next = cur;
	}

	bool Delete(shot * cur)
	{
		shot * tz = first;
		while (tz->next != cur && tz->next != first)
		{
			tz = tz->next;
		}
		if (tz->next == first)
			return false;
		//cur->ClearMyCell();
		tz->next = cur->next;
		delete(cur);
		return true;
	}

	void Move()
	{
		shot * cur = first->next;
		while (cur != first)
		{
			cur->Move();
			//
			cur = cur->next;
		}
	}

	void CheckCollision(Ttanks * tanks)
	{
		shot * cur = first->next;
		while (cur != first)
		{
			if (Field[cur->localx][cur->localy] != 0 && Field[cur->localx][cur->localy] != cur->team && cur->action == moving)
			{
				cur->action = explosion;
				//cur = first;
			}
			//
			if (cur->stage > 2 || cur->localx < 0 || cur->localy < 0 || cur->localx >= PoleSize || cur->localy >= PoleSize)
			{
				//
				if (Field[cur->localx][cur->localy] == border)
					FillCell(cur->localx, cur->localy, cube);
				obj * TankHere;
				if (TankHere = GetObjectXY(tanks, cur->localx, cur->localy))
				{
					TankHere->health -= cur->damage;
					TankHere->Show();
					if (TankHere->health <= 0)
					{
						TankHere->action = explosion;
						Field[cur->localx][cur->localy] = 0;
					}
					//tanks->Delete(TankHere);
				}
				else
				{
					//std::cout << "error, tank is not found" << endl;
					//_getch();
				}
				//
				Delete(cur);
				cur = first;
			}
			//
			cur = cur->next;
		}
	}

	void Show()
	{
		shot * cur = first->next;
		while (cur != first)
		{
			if (cur->action == moving)
				cur->Show();
			cur = cur->next;
		}
	}
};

void MiniMapShow()
{
	for (int i = 0; i < PoleSize; i++)
	{
		SetCursorPosition(50, i);
		for (int j = 0; j < PoleSize; j++)
			std::cout << Field[j][i];
	}
}

int PoleInit()
{
	std::ifstream fin("Field.txt");
	char a;
	for (int i = 0; i < PoleSize; i++)
		for (int j = 0; j < PoleSize; j++)
		{
			fin >> a;
			Field[i][j] = a - 48;
		}
	fin.close();
	return 0;
}

BOOL ShowConsoleCursor(BOOL bShow)
{
	CONSOLE_CURSOR_INFO cci;
	HANDLE hStdOut;
	hStdOut = GetStdHandle(STD_OUTPUT_HANDLE);
	if (hStdOut == INVALID_HANDLE_VALUE)
		return FALSE;
	if (!GetConsoleCursorInfo(hStdOut, &cci))
		return FALSE;
	cci.bVisible = bShow;
	if (!SetConsoleCursorInfo(hStdOut, &cci))
		return FALSE;
	return TRUE;
}

void init()
{
	srand(time(0));
	ShowConsoleCursor(FALSE);
	if (PoleInit())
	{
		std::cout << "FileReadError\nPress any key\n";
		_getch();
	}
}

void ShowField()
{
	for (int i = 0; i < PoleSize; i++)
		for (int j = 0; j < PoleSize; j++)
		{

			for (int il = 0; il < CellSize; il++)
			{
				SetCursorPosition(j * CellSize, i * CellSize + il);
				for (int jl = 0; jl < CellSize; jl++)
					if (Field[j][i] == border)
						std::cout << cube; else std::cout << ' ';
			}
		}
}

void NewRandomTank(Ttanks * tanks, int type, int team, int &x, int &y)
{
	int PoleFull = 0;
	x = rand() % (PoleSize - 1) + 1;
	y = rand() % (PoleSize - 1) + 1;
	while (Field[x][y] != 0)
	{
		x = rand() % (PoleSize - 1) + 1;
		y = rand() % (PoleSize - 1) + 1;
		if (PoleFull++ > 100)
		{
			std::cout << "Insert error, field is full" << std::endl;
			return;
		}
	}
	tanks->insert(new obj(type, team, x, y));
}

/*void CheckMove(int who, unsigned char c, Ttanks * tanks, Tshots * shots)
{
	if (c > 0 && c < 6)
	{
		obj * MyTank = tanks->first->next;
		int i = 0;
		while (i < who)
		{
			MyTank = MyTank->next;
			i++;
		}
		if (tanks->first->next != tanks->first)
		{
			if (c == 5)
			{
				MyTank->Fire(shots);
				//Fired[who] = 1;
				//shots->insert(new shot(1, MyTank->type, MyTank->localx, MyTank->localy, MyTank->dx, MyTank->dy));
			}
			if (MyTank->action != moving)
			{
				int NewDx = 0, NewDy = 0;
				switch (c)
				{
					case 1:
						NewDy = -1;
						break;
					case 3:
						NewDx = 1;
						break;
					case 4:
						NewDy = 1;
						break;
					case 2:
						NewDx = -1;
						break;
					default:
						//std::cout << "Wrong button";
						//_getch();
						break;
				}
				if (NewDx == MyTank->dx && NewDy == MyTank->dy && MyTank->action != moving &&
					Field[MyTank->localx + MyTank->dx][MyTank->localy + MyTank->dy] == 0)
					MyTank->action = moving;
				else
					MyTank->SetDirection(NewDx, NewDy);
			}
		}
		if (c == 27)
			exit(0);
	}
}*/

void Check(SOCKET sock, Ttanks * tanks, Tshots * shots)
{
	char s[1] = {0};
	int lens = 0;
	unsigned char c;
	if (_kbhit())
	{
		c = _getch();
		if (true)
		{
			if (c == 32)
			{
				s[0] = 5;
			}
			if (c == 224)
			{
				//int NewDx = 0, NewDy = 0;
				c = _getch();
				switch (c)
				{
					case 72:
						s[0] = 1;
						break;
					case 77:
						s[0] = 3;
						break;
					case 80:
						s[0] = 4;
						break;
					case 75:
						s[0] = 2;
						break;
					default:
						std::cout << "Wrong button";
						_getch();
						break;
				}
			}
		}
		if (c == 27)
			exit(0);
		//s[1] = 0;
		//send(sock, s, 1, 0);
		//otl;

		//SetCursorPosition(50, 18);
		//std::cout << (int)s[0];
	}
	/*s[1] = 0;
	send(sock, s, 1, 0);
	//otl;
	SetCursorPosition(50, 18);
	std::cout << (int)s[0];*/
	send(sock, s, 1, 0);
}

inline void CoutTankStage0(int localx, int localy, int dx, int dy, int offs, int health)
{
	int globalx = localx * CellSize + dx * offs - 1;
	int globaly = localy * CellSize + dy * offs;
	SetCursorPosition(globalx, globaly - 1);
	std::cout << "       ";
	SetCursorPosition(globalx, globaly);
	std::cout << "       ";
	SetCursorPosition(globalx, globaly + 1);
	std::cout << "  " << cube << cube << cube << "  ";
	SetCursorPosition(globalx, globaly + 2);
	std::cout << "  " << cube << health << cube << "  ";
	SetCursorPosition(globalx, globaly + 3);
	std::cout << "  " << cube << cube << cube << "  ";
	SetCursorPosition(globalx, globaly + 4);
	std::cout << "       ";
	SetCursorPosition(globalx, globaly + 5);
	std::cout << "       ";
	SetCursorPosition(globalx + 3 + dx * 2, globaly + 2 + dy * 2);
	std::cout << cube;
	
	/*SetCursorPosition(globalx, globaly + 6);
	std::cout << "       ";*/
}

inline void Clean3x3(int x, int y)
{
	SetCursorPosition(x, y);
	std::cout << "     ";
	SetCursorPosition(x, y + 1);
	std::cout << "     ";
	SetCursorPosition(x, y + 2);
	std::cout << "     ";
	SetCursorPosition(x, y + 3);
	std::cout << "     ";
	SetCursorPosition(x, y + 4);
	std::cout << "     ";
	//SetCursorPosition(x, y + 5);
	//std::cout << "     ";
}

void GetData(SOCKET sock, int PlayersCount, Ttanks * tanks, Tshots * shots)
{
	char s[101];

	int msize = recv(sock, s, 100, 0);
	s[msize] = 9;

	//otl;
	/*if (msize < 12)
		PlayersCount = 1;
	if (msize < 6)
		PlayersCount = 0;*/

	//SetCursorPosition(45, 20);
	//for (int i = 0; i < 100; i++)
	//	std::cout << (int)s[i];

	int i = 0;
	if (s[i++] != 't')
		return;

	//std::cout << buf;
	//ShowField();
	//GOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOD
	obj * CurTank = tanks->first->next;
	for (int j = 0; j < PlayersCount; j++)
	{
		//CurTank->localx, CurTank->localy, CurTank->dx, CurTank->dy, CurTank->offs
		if (s[i] == 0 || s[i + 1] == 0)
		{
			i = i + 7;
			continue;
			//j++;
			//return;//BAAAAAAAAAAAAAD;
		}
		//FillCell(s[i], s[i + 1], ' ');
		
		
		//CoutTankStage0(s[i], s[i + 1], s[i + 2], s[i + 3], s[i + 4], s[i + 5]);
		//i = i + 7;

		//New
		CurTank->ClearMyCell();
		CurTank->localx = s[i++];
		CurTank->localy = s[i++];
		CurTank->dx = s[i++];
		CurTank->dy = s[i++];
		CurTank->offs = s[i++];
		CurTank->health = s[i++];
		CurTank->stage = s[i++];
		CurTank->ShowTankStage();

		CurTank = CurTank->next;
	}
	int ShotsNumb = s[i++];
	shot * ab = new shot(0, 0, 0, 0, 0, 0);
	for (int j = 0; j < ShotsNumb; j++)
	{
		ab->globalx = s[i++];
		ab->globaly = s[i++];
		ab->stage = s[i++];
		Clean3x3(ab->globalx, ab->globaly);
		ab->Show();
		/*int x = s[i++];
		int y = s[i++];
			//steret' 3x3
			Clean3x3(x, y);
			SetCursorPosition(x + 2, y + 2);
			std::cout << '*';*/
	}
}

int main()
{
	init();

	Ttanks * tanks = new Ttanks(new obj(0, 0, 0, 0));
	Tshots * shots = new Tshots(new shot(0, 0, 0, 0, 0, 0));

	WSADATA ws;
	//...
	if (FAILED(WSAStartup(MAKEWORD(1, 1), &ws)))
	{
		// Error...
		int error = WSAGetLastError();
		std::cout << error;
		//...
	}
	SOCKET s;
	if (INVALID_SOCKET == (s = socket(AF_INET, SOCK_STREAM, 0)))
	{
		// Error...
		int error = WSAGetLastError();
		std::cout << error;
		// ... 
	}
	// Объявим переменную для хранения адреса 
	sockaddr_in s_add;

	// Заполним ее:
	ZeroMemory(&s_add, sizeof(s_add));
	// тип адреса (TCP/IP)
	s_add.sin_family = AF_INET;
	//адрес сервера. Т.к. TCP/IP представляет адреса в числовом виде, то для перевода 
	// адреса используем функцию inet_addr.

	s_add.sin_addr.S_un.S_addr = inet_addr("192.168.1.10");

	// Порт. Используем функцию htons для перевода номера порта из обычного в //TCP/IP представление.
	s_add.sin_port = htons(1234);

	// Дальше выполняем соединение:
	if (SOCKET_ERROR == (connect(s, (sockaddr *)&s_add, sizeof(s_add))))
	{
		// Error...
		int error = WSAGetLastError();
		std::cout << "Errorconnect";
		// ... 
		
	}

	/*char buf[1024];
	int msize = recv(s, buf, sizeof(buf) - 1, 0);
	buf[msize] = '\0';
	std::cout << buf;

	send(s, "qsdd", sizeof("qsdd"), 0);
	_getch();*/

	int PlayersCount = 2;

	int x, y;
	for (int i = 0; i < PlayersCount; i++)
	{
		NewRandomTank(tanks, 1, 2, x, y);
	}

	char buf[10] = {0};
	int msize = recv(s, buf, 1, 0);
	int MyNumber = buf[0];

	GetData(s, MyNumber, tanks, shots);

	/*if (MyNumber == 1)
	{
		char ss[512];
		int msize = recv(s, ss, sizeof(ss) - 1, 0);
		ss[msize] = '\0';
		//otl;

		//SetCursorPosition(50, 20);
		//for (int i = 0; i < msize; i++)
		//	std::cout << (int)ss[i];

		obj * CurTank = tanks->first->next;
		for (int j = 0, i = 0; j < PlayersCount; j++)
		{
			CurTank->localx = ss[i++];
			CurTank->localy = ss[i++];
			CurTank->SetLocalPosition(CurTank->localx, CurTank->localy);
			CurTank->dx = ss[i++];
			CurTank->dy = ss[i++];
			CurTank->offs = ss[i++];
			if (ss[i])
				CurTank->Fire(shots);

			j++;
			CurTank = CurTank->next;
		}
		GetData(s, PlayersCount, tanks, shots);
		//GetData(s, 1, tanks, shots);
	}
	else if (MyNumber == 2)
	{
		GetData(s, 2, tanks, shots);
	}
	else if (MyNumber == 3)
	{
		GetData(s, 1, tanks, shots);
	}*/
	
	/*obj * tz = tanks->first->next;
	for (int i = 0; i < MyNumber; i++)
	{
		tz = tz->next;
	}
	obj * MyTank = tz;*/

	//tanks->Show();
	ShowField();

	auto ReadingProc = [](SOCKET s, int PlayersCount, Ttanks * tanks, Tshots * shots)
	{
		while (true)
		{
			GetData(s, PlayersCount, tanks, shots);
		}
	};

	std::thread Reading(ReadingProc, s, PlayersCount, tanks, shots);
	Reading.detach();

	int NeedRewrite = 0;
	char u[2] = {9};
	while (true)
	{
		Sleep(50);
		/*if (NeedRewrite++ == 100000)
		{
			system("cls");
			ShowField();
			//send(s, u, 1, 0);
		}*/
		
		//system("cls");
		//ShowField();
		Check(s, tanks, shots);

		/////////////////////main
		//ShowField();

		//GetData(s, PlayersCount, tanks, shots);
		//tanks->Move();
		//tanks->Show();
		//shots->Move();
		//shots->CheckCollision(tanks);
		//MiniMapShow();

		/////////////////////main end
	}
	_getch();
	return 0;
}