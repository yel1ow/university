
#define _CRT_SECURE_NO_WARNINGS
#include "iostream"
#include "conio.h"
#include "fstream"
#include "io.h"
#include "windows.h"

using namespace std;

char * code[256] = { 0 };
char pathSource[1000] = "x:\\TEST.haf";
char pathDest[1000];

const int NET = 177,//(176)
DA = 178;

struct Elem
{
	unsigned char lit;
	int number;
	Elem * right = NULL;
	Elem * left = NULL;
};

void setCursorPosition(int x, int y)
{
	COORD coord;
	coord.X = x;
	coord.Y = y;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), coord);
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

void Sort(Elem ** Ch, int numb)
{
	bool f = false;
	while (!f)
	{
		f = true;
		for (int i = 0; i < numb - 1; i++)
			if (Ch[i]->number < Ch[i + 1]->number)
			{
				Elem b;
				b = *Ch[i];
				*Ch[i] = *Ch[i + 1];
				*Ch[i + 1] = b;
				f = false;
			}
	}
}

std::streampos fileSize(const char* filePath)
{

	std::streampos fsize = 0;
	std::ifstream file(filePath, std::ios::binary);

	fsize = file.tellg();
	file.seekg(0, std::ios::end);
	fsize = file.tellg() - fsize;
	file.close();

	return fsize;
}

void decToBin(unsigned char c, char * s)
{
	for (int i = 0; i < 8; i++)
	{
		s[7 - i] = 48 + c % 2;
		c = c / 2;
	}
}

void init()
{
	//setlocale(0, "");
	ShowConsoleCursor(FALSE);
	cout << "Raspakovka faila" << endl << pathSource << endl;
	for (int i = 0; i < 50; i++)
	{
		cout << (char)NET;
	}
}

void openFiles(ifstream &fin, ofstream &fout)
{
	fin.open(pathSource, ios_base::binary);
	if (!fin)
	{
		cout << "Error! File is not found";
		_getch();
		exit(0);
	}
	char ump;
	fin.read(&ump, sizeof(char));
	if (ump != '&')
	{
		cout << "File is not HAF archive!";
		_getch();
		exit(0);
	}
	strcpy(pathDest, pathSource);
	int lpd = strlen(pathDest) - 3;
	while (true)
	{
		fin.read(&ump, sizeof(char));
		if (ump == '&')
			break;
		pathDest[lpd++] = ump;
	}
	pathDest[lpd] = 0;
	fout.open(pathDest, ios_base::binary);
}

inline void checkPersent(int &it, int &persent, int size)
{
	if (int(((double)++it / size) * 100) > persent)
	{
		persent = ((double)++it / size) * 100;
		setCursorPosition(persent / 2, 2);
		cout << (char)DA;
		setCursorPosition(24, 3);
		cout << persent << "%";
	}
}

Elem * buildTree(ifstream &fin)
{
	int _freqArr[256] = { 0 };

	for (int i = 0; i < 256; i++)
	{
		fin.read((char *)&_freqArr[i], sizeof(int));
	}

	Elem * freqArr[256];
	for (int i = 0; i < 256; i++)
	{
		freqArr[i] = new Elem;
	}
	int numb = 0;
	for (int i = 0; i < 256; i++)
	{
		if (_freqArr[i])
		{
			freqArr[numb]->lit = i;
			freqArr[numb]->number = _freqArr[i];
			freqArr[numb]->right = NULL;
			freqArr[numb]->left = NULL;
			numb++;
		}
	}
	//
	while (numb > 1)
	{
		Sort(freqArr, numb);
		Elem * elem = new Elem;
		elem->left = freqArr[numb - 2];
		elem->right = freqArr[numb - 1];
		elem->number = elem->left->number + elem->right->number;
		numb--;
		freqArr[numb - 1] = elem;
	}
	return freqArr[0];
}

void decoding(ifstream &fin, ofstream &fout, Elem * root)
{
	if (root->left == root->right)
	{
		cout << endl << "pohozhe, chto fail sostoyal iz odinakovix simvolov (ne nado tak delat')" << endl;
		_getch();
		exit(0);
	}
	int size = fileSize(pathSource);
	int len = size - 1 - sizeof(int) * 256 - 1 - 5;
	int persent = 0, it = 0;
	unsigned char a;
	Elem * p = root;
	char s[500] = { 0 };
	char t[500] = { 0 };
	for (int z = 0; z < len; z++)
	{
		fin.read((char *)&a, sizeof(char));
		//
		checkPersent(it, persent, size);
		//
		decToBin(a, t);
		strcat(s, t);
		if (strlen(s) >= 220)
		{
			for (int i = 0; i < strlen(s); i++)
			{
				if (p->left == p->right)
				{
					fout.write((char *)&p->lit, sizeof(char));
					p = root;
					i--;
				}
				else
				{
					if (s[i] == '0')
					{
						p = p->left;
					}
					else
					{
						p = p->right;
					}
				}
			}
			s[0] = 0;
		}
	}
	unsigned char k;
	fin.read((char *)&k, sizeof(char));
	fin.read((char *)&a, sizeof(char));
	decToBin(a, t);
	t[k] = 0;
	strcat(s, t);
	for (int i = 0; i <= strlen(s); i++)
	{
		if (p->left == p->right)
		{
			fout.write((char *)&p->lit, sizeof(char));
			p = root;
			i--;
		}
		else
		{
			if (s[i] == '0')
			{
				p = p->left;
			}
			else
			{
				p = p->right;
			}
		}
	}
}

int main()
{
	init();
	ifstream fin;
	ofstream fout;
	openFiles(fin, fout);

	Elem * root = buildTree(fin);
	
	decoding(fin, fout, root);
	
	fin.close();
	fout.close();

	return 0;
}