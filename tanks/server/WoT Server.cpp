// World of tanks.cpp: определяет точку входа для консольного приложения.
//

#include "stdafx.h"
#include "iostream"
#include "conio.h"
#include "windows.h"
#include "fstream"
#include "cmath"
#include "ctime"
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
hold = 2,
dead = 3;

//action shot
const int explosion = 3;

//field trash
const int border = 9,
MaxPlayers = 10;

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
		speed = 170000;
		explosionspeed = 150000;
		tact = 0;
		action = 0;
		stage = 0;
		cooldown = 500000;
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
			Field[localx][localy] = team;
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
				std::cout << "   " << health;
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
				localx = 0;
				localy = 0;
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
			shots->insert(new shot(type, team, localx, localy, dx, dy));
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
		speed = 50000;
		explosionspeed = 100000;
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
		//cur->next = first->next;
		//first->next = cur;
		cur->next = first;
		obj * seek = first;
		while (seek->next != first)
			seek = seek->next;
		seek->next = cur;
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
				cur->action = dead;
				//Delete(cur);
				//cur = first;
			}
			cur = cur->next;
		}
	}

	void Show()
	{
		obj * cur = first->next;
		while (cur != first)
		{
			if (!(cur->localx == 0 && cur->localy == 0))
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
			if (cur->stage > 6 || cur->localx < 0 || cur->localy < 0 || cur->localx >= PoleSize || cur->localy >= PoleSize)
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
					//std::cout << "error, tank is not found" << std::endl;
					//_getch();
				}
				//
				Delete(cur);
				//cur->localx = 0;
				//cur->localy = 0;
				//cur->offs = 0;
				//cur->action = no;
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
			std::cout << "Insert error, field if full" << std::endl;
			return;
		}
	}
	tanks->insert(new obj(type, team, x, y));
}

void ReadSocket(SOCKET new_sock, char &c)
{
	char buf[1];
	int msize = recv(new_sock, buf, 1, 0);
	c = buf[0];
	SetCursorPosition(50, 18);
	std::cout << c + 48;
}

inline void AddInStr(char * s, int &lens, int x, int y, int dx, int dy, int offs)
{
	s[lens++] = x;
	s[lens++] = y;
	s[lens++] = dx;
	s[lens++] = dy;
	s[lens++] = offs;
}

inline void incstr(int x, char * s, int &lens)
{
	s[lens++] = x;
}

void WriteSocket(SOCKET connection[], int PlayersCount, Ttanks * tanks, Tshots * shots)
{
	char Tanks[512] = {0};
	int lens = 0;
	incstr('t', Tanks, lens);

	obj * CurTank = tanks->first->next;
	if (CurTank->localx == 0)
		return;

	for (int j = 0; j < PlayersCount; j++)
	{
		AddInStr(Tanks, lens, CurTank->localx, CurTank->localy, CurTank->dx, CurTank->dy, CurTank->offs);
		Tanks[lens++] = CurTank->health;
		Tanks[lens++] = CurTank->stage;
		//
		//j++;
		CurTank = CurTank->next;
	}
	int last = lens++;
	shot * CurShot = shots->first->next;
	int j = 0;
	while (CurShot != shots->first)
	{
		incstr(CurShot->globalx, Tanks, lens);
		incstr(CurShot->globaly, Tanks, lens);
		incstr(CurShot->stage, Tanks, lens);
		CurShot = CurShot->next;
		j++;
	}
	Tanks[last] = j;

	Tanks[lens] = 0;
	for (int i = 0; i < PlayersCount; i++)
	{
		send(connection[i], Tanks, lens, 0);
	}
	//snariady/////////////////////////////////////////////////////////////////////////////

	/*char Shots[512] = {0};
	int lens = 0;
	incstr('s', Tanks, lens);

	shot * CurShot = shots->first->next;
	int j = 0;
	while (CurShot != shots->first)
	{
		incstr(CurShot->globalx, Shots, lens);
		incstr(CurShot->globaly, Shots, lens);
		CurShot = CurShot->next;
		j++;
	}
	Shots[0] = j;
	Shots[lens] = 0;
	for (int i = 0; i < PlayersCount; i++)
	{
		send(connection[i], Shots, lens, 0);
	}*/
	//otl;

	//SetCursorPosition(50, 20);
	//for (int i = 0; i < lens; i++)
	//	std::cout << (int)s[i];

	/*send(new_sock, "WESG", sizeof("WESG"), 0);
	char buf[1024];
	int msize = recv(new_sock, buf, sizeof(buf) - 1, 0);
	buf[msize] = '\0';
	std::cout << buf;*/
}

void Check(int who, SOCKET connection[], int PlayersCount, Ttanks * tanks, Tshots * shots)
{
	char buf[101];
	int msize = recv(connection[who], buf, 100, 0);
	if (msize > 1)
	{
		SetCursorPosition(50, 18);
		std::cout << "Too many numbers...";
	}
	char c = buf[0];
	//SetCursorPosition(50, 18);
	//std::cout << c + 48;

	/*if (c == 0)
		std::cout << "0 sended";
	else
	if (c < 1 || c > 5)
	{
		SetCursorPosition(50, 19);
		std::cout << "4toto ne tak";
	}*/

	if (c > 0 && c < 6)//c > 0 && c < 6)
	{
		obj * MyTank = tanks->first->next;
		int i = 0;
		while (i < who)
		{
			MyTank = MyTank->next;
			i++;
		}
		if ((tanks->first->next != tanks->first) && (MyTank->action != dead))
		{
			if (c == 5)
			{
				MyTank->Fire(shots);
				//Fired[who] = 1;
				//shots->insert(new shot(1, MyTank->type, MyTank->localx, MyTank->localy, MyTank->dx, MyTank->dy));
				//New Send
				/*char s[512] = {0};
				int lens = 0;
				obj * CurTank = tanks->first->next;
				for (int j = 0; j < PlayersCount; j++)
				{
					AddInStr(s, lens, CurTank->localx, CurTank->localy, CurTank->dx, CurTank->dy, CurTank->offs);
					if (j == who)// && fired)
					{
						s[lens++] = 1;
					}
					else
					{
						s[lens++] = 0;
					}
					//j++;
					CurTank = CurTank->next;
				}
				s[lens] = 0;
				for (int i = 0; i < PlayersCount; i++)
				{
					send(connection[i], s, lens, 0);
				}*/
				//
			}
			if (c > 0 && c < 5 && MyTank->action != moving)
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
		//
		//zdes' bil send
		//WriteSocket(connection, PlayersCount, tanks, Fired);
		//otl;

		//SetCursorPosition(50, 20);
		//for (int i = 0; i < lens; i++)
		//	std::cout << (int)s[i];

		//
		if (c == 27)
			exit(0);
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
		std::cout << "ErrorCreate\n";
		// ... 
	}
	sockaddr_in name;
	ZeroMemory(&name, sizeof(name));
	name.sin_family = AF_INET;
	name.sin_addr.S_un.S_addr = inet_addr("192.168.1.10");
	name.sin_port = htons(1234);
	
	if (SOCKET_ERROR == bind(s, (sockaddr*)&name, sizeof(name)))
	{
		std::cout << "error bind";
		_getch();
		return E_FAIL;
	}
	if (FAILED(listen(s, 10))) // Максимум 10 входящих соединений
	{
		std::cout << "error connections (max 10)";
		_getch();
		return E_FAIL;
	}

	SOCKET connection[MaxPlayers];
	sockaddr_in new_ca;
	int new_len = sizeof(new_ca);
	ZeroMemory(&new_ca, sizeof(new_ca));

	int PlayersCount = 2;

	for (int i = 0; i < PlayersCount; i++)
	{
		if (FAILED(connection[i] = accept(s, (sockaddr*)&new_ca, &new_len)))
		{
			// Error
			std::cout << "connection failed";
			_getch();
		}
		int x, y;
		NewRandomTank(tanks, 1, i + 1, x, y);
		char sSend[100];
		sSend[0] = i + 1;
		send(connection[i], sSend, 1, 0);
		WriteSocket(connection, i + 1, tanks, shots);
	}

	//obj * MyTank = new obj(1, 1, 3, 2);
	//tanks->insert(MyTank);

	//int x, y;
	//for (int i = 0; i < 5; i++)
	//{
	//	NewRandomTank(tanks, 1, 2, x, y);
	//}

	ShowField();
	tanks->Show();

	auto ReadingProc = [](SOCKET connection[], int PlayersCount, Ttanks * tanks, Tshots * shots)
	{
		while (true)
		{
			for (int i = 0; i < PlayersCount; i++)
			{
				Check(i, connection, PlayersCount, tanks, shots);
			}
		}
	};

	std::thread Reading(ReadingProc, connection, PlayersCount, tanks, shots);
	Reading.detach();

	int SendTime = 0;
	while (true)
	{
		/*for (int i = 0; i < PlayersCount; i++)
		{
			ReadSocket(connection[i], buf);
			Check(i, buf, tanks, shots, Fired);
		}*/
		//Sleep(5);

		tanks->Move();
		shots->Move();
		shots->CheckCollision(tanks);
		if (SendTime++ == 100000)
		{
			WriteSocket(connection, PlayersCount, tanks, shots);
			SendTime = 0;
			//rewrite
		}
		
		//MiniMapShow();

	}
	//_getch();
	return 0;
}