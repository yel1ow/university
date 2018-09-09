#include "windows.h"
#include "conio.h"
#include "iostream"
#include "stdlib.h"
#include "cstdlib"
#include "ctime"
#include "dos.h"
#include "mmsystem.h"
#include "tchar.h" 

//s#pragma comment(lib, "Winmm.dll")

using namespace std;

const int n = 15,
UP = 72,
DOWN = 80,
LEFT = 75,
RIGHT = 77,
Stop = 0,
InGame = 1,
InMenu = 6,
RoundWin = 2,
RoundDef = 3,
Win = 4,
Def = 5,
NTrash = 206,
NApple = 42,
NCobra = 35,
NZabor = 249,
MaxLength = 3222;

int i, j, k, MaxApples, MaxTrash, ApplesCount, level, MaxLevel, Directionx, Directiony, Speed, Health, MaxHealth, it, a3;
int Queue[MaxLength], g, xv, l;
int NextX, NextY, LastX, LastY;
int TrashMas[13];
int MasSave[100][2];
unsigned char c, c1, a[n + 1][n + 1], aSave[n + 1][n + 1];
bool AppleEaten, WithTrash, WithReplays, WithMusic;

void Muz(int x)
{
	if (!WithMusic)
		return;
	switch (x)
	{
	case Stop:PlaySound(NULL, NULL, SND_FILENAME | SND_ASYNC);
		break;
	case InMenu:PlaySound(_T("InMenu.wav"), NULL, SND_FILENAME | SND_ASYNC);
		break;
	case InGame:PlaySound(_T("InGame.wav"), NULL, SND_FILENAME | SND_ASYNC);
		break;
	case RoundWin:PlaySound(_T("RoundWin.wav"), NULL, SND_FILENAME | SND_ASYNC);
		break;
	case RoundDef:PlaySound(_T("RoundDef.wav"), NULL, SND_FILENAME | SND_ASYNC);
		break;
	case Win:PlaySound(_T("Win.wav"), NULL, SND_FILENAME | SND_ASYNC);
		break;
	case Def:PlaySound(_T("Def.wav"), NULL, SND_FILENAME | SND_ASYNC);
		break;
	}
}

void gotoxy(int x, int y)
{
	COORD coord;
	x *= 2;
	coord.X = x;
	coord.Y = y;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), coord);
}

void Menu()
{
	const int d1 = 15, d2 = 35;
	int p = 1, i = 10;
	unsigned char c = 0;
	while (c != 27)
	{
		system("cls");
		gotoxy(d1, i);
		if (p == 1)
		{
			gotoxy(d1 - 2, i);
			cout << ">  ";
		}
		cout << "S Prepyatstviyami? ";
		gotoxy(d2, i);
		if (WithTrash) cout << "\" YES \""; else cout << "\" NO \"";

		gotoxy(d1, i + 3);
		if (p == 2)
		{
			gotoxy(d1 - 2, i + 3);
			cout << ">  ";
		}
		cout << "With Replays? ";
		gotoxy(d2, i + 3);
		if (WithReplays) cout << "\" YES \""; else cout << "\" NO \"";

		gotoxy(d1, i + 6);
		if (p == 3)
		{
			gotoxy(d1 - 2, i + 6);
			cout << ">  ";
		}
		cout << "With Music? ";
		gotoxy(d2, i + 6);
		if (WithMusic) cout << "\" YES \""; else cout << "\" NO \"";

		gotoxy(d1, i + 9);
		if (p == 4)
		{
			gotoxy(d1 - 2, i + 9);
			cout << ">  ";
		}
		cout << "Kol-vo Urovney ";
		gotoxy(d2, i + 9);
		cout << "\"" << MaxLevel << "\"";

		gotoxy(d1, i + 12);
		if (p == 5)
		{
			gotoxy(d1 - 2, i + 12);
			cout << ">  ";
		}
		cout << "Kol-vo Zhizney ";
		gotoxy(d2, i + 12);
		cout << "\"" << MaxHealth << "\"";

		gotoxy(d1, i - 5);

		c = _getch();
		if (c == 27)
			return;
		if (c == 224)
			c = _getch();
		if (c == 72)
		{
			if (p > 1) p--;
		}
		if (c == 80)
		{
			if (p < 5) p++;
		}
		if (c == 75)
		{
			switch (p)
			{
			case 1: WithTrash = !WithTrash;
				break;
			case 2: WithReplays = !WithReplays;
				break;
			case 3: WithMusic = !WithMusic;
				break;
			case 4: if (MaxLevel > 1) MaxLevel--;
				break;
			case 5: if (MaxHealth > 1) MaxHealth--;
				break;
			default:
				break;
			}
		}
		if (c == 77)
		{
			switch (p)
			{
			case 1: WithTrash = !WithTrash;
				break;
			case 2: WithReplays = !WithReplays;
				break;
			case 3: WithMusic = !WithMusic;
				break;
			case 4: MaxLevel++;
				break;
			case 5: MaxHealth++;
				break;
			default:
				break;
			}
		}
	}
}

void StartMenu()
{
	Muz(InMenu);
	system("cls");
	cout << "Press Space to begin with standart settings" << endl;
	cout << "Press S to Start Settings" << endl;
	cout << "Press Esc to exit" << endl;
	c = _getch();
	if (c == 27)
		exit(0);
	if (c == 's')
	{
		Menu();
		/*system("cls");
		cout << "S prepyatstviyami? Y - yes; N - no" << endl;
		c = _getch();
		if (c == 'y')
		{
		WithTrash = true;
		cout << "S prepyatstviyami " << endl;
		}
		else
		{
		WithTrash = false;
		cout << "Bez prepyatstviy " << endl;
		}

		cout << "S povtorami? Y - yes; N - no" << endl;
		c = _getch();
		if (c == 'y')
		{
		WithReplays = true;
		cout << "S povtorami " << endl;
		}
		else
		{
		WithReplays = false;
		cout << "Bez povtorov " << endl;
		}

		cout << "With music? Y - yes; N - no" << endl;
		c = _getch();
		if (c == 'y')
		{
		WithMusic = true;
		cout << "With music " << endl;
		}
		else
		{
		Muz(Stop);
		WithMusic = false;
		cout << "Without music " << endl;
		}

		cout << "Skolko urivnei vy xotite?" << endl;
		cin >> i;
		MaxLevel = i;
		cout << "Levels: " << MaxLevel << endl;

		cout << "Skolko zhiznei u vas budet?" << endl;
		cin >> i;
		MaxHealth = i;
		Health = MaxHealth;
		cout << "Health: " << MaxHealth << endl;*/
	}
	else
	{

	}
	cout << "Press Enter to continue";
	c = _getch();
	if (c == 224)
		_getch();
}

void Add(int x)
{
	if (l > MaxLength)
	{
		cout << "QueueOverflowError!";
	}
	else
	{
		l++;
		g++;
		Queue[g] = x;
	}
}

int Get()
{
	int x;
	if (l <= 0)
	{
		cout << "QueueIsNullError!";
		return 0;
	}
	else
	{
		l--;
		xv++;
		x = Queue[xv];
	}

	return x;
}

int GetSost(int j, int i)
{
	bool f[4];
	if (a[j - 1][i] != NCobra && a[j - 1][i] != NApple && a[j - 1][i] != 0 && a[j - 1][i] != NZabor)
	{
		f[3] = true;
	}
	else
	{
		f[3] = false;
	}

	if (a[j][i - 1] != NCobra && a[j][i - 1] != NApple && a[j][i - 1] != 0 && a[j][i - 1] != NZabor)
	{
		f[0] = true;
	}
	else
	{
		f[0] = false;
	}

	if (a[j + 1][i] != NCobra && a[j + 1][i] != NApple && a[j + 1][i] != 0 && a[j + 1][i] != NZabor)
	{
		f[1] = true;
	}
	else
	{
		f[1] = false;
	}

	if (a[j][i + 1] != NCobra && a[j][i + 1] != NApple && a[j][i + 1] != 0 && a[j][i + 1] != NZabor)
	{
		f[2] = true;
	}
	else
	{
		f[2] = false;
	}

	if (f[0] && f[1] && f[2] && f[3])
		return 206;
	if (f[0] && !f[1] && !f[2] && !f[3])
		return 186;
	if (!f[0] && f[1] && !f[2] && !f[3])
		return 205;
	if (!f[0] && !f[1] && f[2] && !f[3])
		return 186;
	if (!f[0] && !f[1] && !f[2] && f[3])
		return 205;
	if (f[0] && f[1] && !f[2] && !f[3])
		return 200;
	if (!f[0] && f[1] && f[2] && !f[3])
		return 201;
	if (!f[0] && !f[1] && f[2] && f[3])
		return 187;
	if (f[0] && !f[1] && !f[2] && f[3])
		return 188;
	if (f[0] && f[1] && f[2] && !f[3])
		return 204;
	if (!f[0] && f[1] && f[2] && f[3])
		return 203;
	if (f[0] && !f[1] && f[2] && f[3])
		return 185;
	if (f[0] && f[1] && !f[2] && f[3])
		return 202;
	if (!f[0] && !f[1] && !f[2] && !f[3])
		return 177;
	return 0;
}

void UpgradeTrash()
{
	for (i = 1; i < n; i++)
	{
		for (j = 1; j < n; j++)
			if (a[j][i] != NCobra && a[j][i] != NApple && a[j][i] != 0)
			{
				a[j][i] = GetSost(j, i);
			}
	}
}

int init()
{
	Muz(InGame);
	system("cls");
	l = 0;
	g = 0;
	xv = 0;
	Add(1);
	Add(5);
	MaxApples = 0 + level * 3;
	MaxTrash = 2 + level * 1;
	Speed = 500 - level * 20;
	srand(time(NULL));
	Directionx = 1;
	Directiony = 0;
	it = 0;

	for (i = 0; i <= n; i++)
	{
		for (j = 0; j <= n; j++)
			a[j][i] = 0;
	}

	k = 0;//Apples
	while (k < MaxApples)
	{
		i = (rand() % (n - 3)) + 1;
		j = (rand() % (n - 3)) + 1;
		if (a[j][i] == 0)
			if (i == 5)
			{
				if (j != 2 && j != 3 && j != 4)
				{
					a[j][i] = NApple;
					k++;
				}
			}
			else
			{
				a[j][i] = NApple;
				k++;
			}
	}

	if (WithTrash)
	{
		k = 0;//Trash
		while (k < MaxTrash)
		{
			i = (rand() % (n - 3)) + 1;
			j = (rand() % (n - 3)) + 1;
			if (a[j][i] == 0)
				if (i == 5)
				{
					if (j != 2 && j != 3 && j != 4)
					{
						a[j][i] = NTrash;
						k++;
					}
				}
				else
				{
					a[j][i] = NTrash;
					k++;
				}
		}
		UpgradeTrash();
	}

	for (i = 0; i <= n; i++)
	{
		for (j = 0; j <= n; j++)
			aSave[j][i] = a[j][i];
	}

	ApplesCount = 0;
	for (i = 1; i < n; i++)
	{
		for (j = 1; j < n; j++)
			if (a[j][i] == NApple)
			{
				int NumbUn = 0;
				if (a[j][i + 1] != NCobra && a[j][i + 1] != NApple && a[j][i + 1] != 0 && a[j][i + 1] != NZabor) NumbUn++;
				if (a[j - 1][i] != NCobra && a[j - 1][i] != NApple && a[j - 1][i] != 0 && a[j - 1][i] != NZabor) NumbUn++;
				if (a[j][i - 1] != NCobra && a[j][i - 1] != NApple && a[j][i - 1] != 0 && a[j][i - 1] != NZabor) NumbUn++;
				if (a[j + 1][i] != NCobra && a[j + 1][i] != NApple && a[j + 1][i] != 0 && a[j + 1][i] != NZabor) NumbUn++;
				if (NumbUn == 4) return 1;
				if (NumbUn == 3) a3++;
				if (a3 > 1) return 1;
				ApplesCount++;
			}
	}
	return 0;
}

void Init()
{
	int t = 1;
	int r = 0;
	while (t != 0)
	{
		cout << "Loading..." << endl;
		t = init();
		if (t != 0)
		{
			r++;
			if (r > 15)
				break;
			/*for (i = 0; i <= n; i++)
			{
			for (j = 0; j <= n; j++)
			{
			cout << a[j][i] << ' ';
			}
			cout << endl;
			}

			r++;
			if (r > 1)
			_getch();
			if (r > 3)
			break;*/
		}
	}
	if (t != 0)
	{
		cout << "Size of pole is too small for this level";
		_getch();
		exit(0);
	}

}

void Show()
{
	system("cls");
	for (i = 0; i <= n; i++)
	{
		a[0][i] = NZabor;
		a[i][0] = NZabor;
		a[n][i] = NZabor;
		a[i][n] = NZabor;
	}

	k = 0;
	for (i = 1; i < n; i++)
	{
		for (j = 1; j < n; j++)
			if (a[j][i] == NApple)
			{
				k++;
			}
	}
	if (k != ApplesCount)
	{
		ApplesCount = k;
	}

	for (int i = g; i > xv; i = -2)
	{
		a[Queue[i - 1]][Queue[i]] = NCobra;
	}

	for (i = 0; i <= n; i++)
	{
		for (j = 0; j <= n; j++)
		{
			cout << a[j][i] << ' ';
		}
		cout << endl;
	}

	cout << endl;
	cout << "Level: " << level << endl
		<< "MaxLevel: " << MaxLevel << endl
		<< "Health: " << Health << endl
		<< "ApplesCount: " << ApplesCount << endl;
}

void Replay()
{
	if (!WithReplays)
		return;
	//Init
	//Muz(InGame);
	system("cls");
	l = 0;
	g = 0;
	xv = 0;
	Add(1);
	Add(5);
	MaxApples = 5 + level * 3;
	MaxTrash = 3 + level * 2;
	Speed = 500 - level * 20;
	srand(time(NULL));
	Directionx = 1;
	Directiony = 0;

	for (i = 0; i <= n; i++)
	{
		for (j = 0; j <= n; j++)
			a[j][i] = aSave[j][i];
	}

	ApplesCount = 0;
	for (i = 1; i < n; i++)
	{
		for (j = 1; j < n; j++)
			if (a[j][i] == NApple)
			{
				ApplesCount++;
			}
	}
	//InitEnd
	Show();
	for (int h = 1; h <= it; h++)
	{
		if (_kbhit())
		{
			c = _getch();
			if (c == 224)
				_getch();
			if (c == 27)
			{
				c = 0;
				return;
			}
		}
		Directionx = MasSave[h][0];
		Directiony = MasSave[h][1];

		NextX = Queue[g - 1] + Directionx;
		NextY = Queue[g] + Directiony;

		if (NextX < 1)
		{
			NextX = n - 1;
		}

		if (NextX >= n)
		{
			NextX = 1;
		}

		if (NextY < 1)
		{
			NextY = n - 1;
		}

		if (NextY >= n)
		{
			NextY = 1;
		}

		if (a[NextX][NextY] == NCobra || a[NextX][NextY] != NApple && a[NextX][NextY] != 0)
		{
			//End(false);
		}
		else
		{
			Add(NextX);
			Add(NextY);
			gotoxy(NextX, NextY);
			cout << '#';
			// Show Head();
			AppleEaten = false;
			if (a[NextX][NextY] == NApple)
			{
				AppleEaten = true;
				ApplesCount--;
				if (ApplesCount == 0)
				{
					//End(true);
				}
			}
			else
			{
				LastX = Get();
				LastY = Get();
				gotoxy(LastX, LastY);
				cout << ' ';
				a[LastX][LastY] = 0;
			}

			//Show();
			for (i = g; i > xv; i = -2)
			{
				a[Queue[i - 1]][Queue[i]] = NCobra;
			}
			ApplesCount = 0;
			for (i = 1; i < n; i++)
			{
				for (j = 1; j < n; j++)
					if (a[j][i] == NApple)
					{
						ApplesCount++;
					}
			}
			if (ApplesCount == 0)
			{
				//End(true);
			}
			gotoxy(0, n + 2);
			cout << "                                  " << endl
				<< "             " << endl
				<< "          " << endl
				<< "                " << endl;
			gotoxy(0, n + 2);

			cout << "Level: " << level;
			if (h % 2 == 0)
			{
				cout << "          (Replay)" << endl;
			}
			else cout << endl;
			cout << "MaxLevel: " << MaxLevel << endl
				<< "Health: " << Health << endl
				<< "ApplesCount: " << ApplesCount << endl
				<< endl << "Shagov " << it << endl;

			//End Show;
			if (AppleEaten)
			{
				Beep(700, 150);
				Sleep(Speed - 150);
				//Sleep(Speed);
			}
			else
			{
				Sleep(Speed);
			}
		}
	}
}

void Str(bool win)
{
	cout << endl;
	if (win)
	{
		cout << "Gratz! Victory!!!";
	}
	else
	{
		cout << "OOPS(( Try again!";
	}
}

void End(bool win)
{
	if (win)
	{
		Muz(RoundWin);
	}
	else
	{
		Muz(RoundDef);
	}
	Sleep(500);
	system("cls");
	Sleep(250);
	Show();
	Str(win);
	Sleep(250);
	system("cls");
	Sleep(250);
	Show();
	Str(win);
	Sleep(250);
	system("cls");
	Sleep(250);
	Show();
	Str(win);
	Sleep(250);

	Replay();

	if (level != MaxLevel)
	{
		cout << endl << "Press any key to continue";
		c = _getch();
		if (c = 224)
		{
			_getch();
		}
	}

	if (!win)
	{
		Health--;
		if (Health <= 0)
		{
			Muz(Def);
			system("cls");
			cout << "Defeat..." << endl;
			cout << "Press Space to restart and Esc to exit";
			c = _getch();
			if (c == 27)
			{
				exit(0);
			}
			else
			{
				level = 1;
				Health = MaxHealth;
				StartMenu();
			}
		}
	}

	if (win)
	{
		level++;
		if (level > MaxLevel)
		{
			Muz(Win);
			system("cls");
			cout << "Congratulations! You finished the game!" << endl;
			cout << "Press Space to restart and Esc to exit";
			c = _getch();
			if (c == 27)
			{
				exit(0);
			}
			else
			{
				level = 1;
				Health = MaxHealth;
				StartMenu();
			}
		}
	}
	Init();
	Show();
}

void Analiz()
{
	if (_kbhit())
	{
		c = _getch();
		if (c == 27)
		{
			Muz(Stop);
			MaxHealth = 3;
			Health = MaxHealth;
			MaxLevel = 5;
			level = 1;
			StartMenu();
			Init();
			Show();
		}
		if (c = 224)
		{
			c = _getch();
			switch (c)
			{
			case UP:
				Directionx = 0;
				Directiony = -1;
				break;
			case LEFT:
				Directionx = -1;
				Directiony = 0;
				break;
			case RIGHT:
				Directionx = 1;
				Directiony = 0;
				break;
			case DOWN:
				Directionx = 0;
				Directiony = 1;
				break;
			default: break;
			}

			/*NextX = Queue[g - 1] + Directionx;
			NextY = Queue[g] + Directiony;

			if (NextX < 1)
			{
			NextX = n - 1;
			}

			if (NextX >= n)
			{
			NextX = 1;
			}

			if (NextY < 1)
			{
			NextY = n - 1;
			}

			if (NextY >= n)
			{
			NextY = 1;
			}

			if (a[NextX][NextY] == NCobra)
			{
			End(false);
			}
			else
			{
			Add(NextX);
			Add(NextY);
			AppleEaten = false;
			if (a[NextX][NextY] == NApple)
			{
			AppleEaten = true;
			ApplesCount--;
			if (ApplesCount == 0)
			{
			End(true);
			}
			}
			else
			{
			LastX = Get();
			LastY = Get();
			a[LastX][LastY] = 0;
			}

			Show();
			if (AppleEaten)
			Beep(700, 200);
			}*/
		}
	}

	NextX = Queue[g - 1] + Directionx;
	NextY = Queue[g] + Directiony;

	if (NextX < 1)
	{
		NextX = n - 1;
	}

	if (NextX >= n)
	{
		NextX = 1;
	}

	if (NextY < 1)
	{
		NextY = n - 1;
	}

	if (NextY >= n)
	{
		NextY = 1;
	}

	if (a[NextX][NextY] == NCobra || a[NextX][NextY] != NApple && a[NextX][NextY] != 0)
	{
		End(false);
	}
	else
	{
		Add(NextX);
		Add(NextY);
		it++;
		MasSave[it][0] = Directionx;
		MasSave[it][1] = Directiony;
		gotoxy(NextX, NextY);
		cout << '#';
		// Show Head();
		AppleEaten = false;
		if (a[NextX][NextY] == NApple)
		{
			AppleEaten = true;
			ApplesCount--;
			if (ApplesCount == 0)
			{

				End(true);
				k = 0;//Apples
				while (k < 5)
				{
					i = (rand() % (n - 3)) + 1;
					j = (rand() % (n - 3)) + 1;
					if (a[j][i] == 0)
						if (i == 5)
						{
							if (j != 2 && j != 3 && j != 4)
							{
								a[j][i] = NApple;
								k++;
							}
						}
						else
						{
							a[j][i] = NApple;
							k++;
						}
				}Show();
			}
		}
		else
		{
			LastX = Get();
			LastY = Get();
			gotoxy(LastX, LastY);
			cout << ' ';
			a[LastX][LastY] = 0;
		}

		//Show();
		for (i = g; i > xv; i = -2)
		{
			a[Queue[i - 1]][Queue[i]] = NCobra;
		}
		ApplesCount = 0;
		for (i = 1; i < n; i++)
		{
			for (j = 1; j < n; j++)
				if (a[j][i] == NApple)
				{
					ApplesCount++;
				}
		}
		if (ApplesCount == 0)
		{
			End(true);
			k = 0;//Apples
			while (k < 5)
			{
				i = (rand() % (n - 3)) + 1;
				j = (rand() % (n - 3)) + 1;
				if (a[j][i] == 0)
					if (i == 5)
					{
						if (j != 2 && j != 3 && j != 4)
						{
							a[j][i] = NApple;
							k++;
						}
					}
					else
					{
						a[j][i] = NApple;
						k++;
					}
			}
			Show();
		}
		gotoxy(0, n + 2);
		cout << "           " << endl
			<< "             " << endl
			<< "          " << endl
			<< "                " << endl;
		gotoxy(0, n + 2);
		cout << "Level: " << level << endl
			<< "MaxLevel: " << MaxLevel << endl
			<< "Health: " << Health << endl
			<< "ApplesCount: " << ApplesCount << endl
			<< endl << "Shagov " << it << endl;
		//End Show;
		if (AppleEaten)
		{
			Beep(700, 150);
			Sleep(Speed - 150);
			//Sleep(Speed);
		}
		else
		{
			Sleep(Speed);
		}
	}
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

int main()
{
	ShowConsoleCursor(FALSE);

	WithReplays = true;
	WithMusic = true;
	WithTrash = true;
	MaxHealth = 3;
	Health = MaxHealth;
	MaxLevel = 10;
	level = 1;
	StartMenu();
	l = 0;
	g = 0;
	xv = 0;
	Add(1);
	Add(5);
	Init();
	Show();
	while (c != 27)
	{

		Analiz();

	}
	return 0;
}