
#define _CRT_SECURE_NO_WARNINGS
#include "iostream"
#include "conio.h"
#include "fstream"
#include "cstring"
#include "math.h"
#include "windows.h"

using namespace std;

const int NET = 177,//(176)
DA = 178;

char * code[256] = { 0 };
char pathSource[1000] = "x:\\TEST.txt";
char pathDest[1000];

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

void calcCode(Elem * root, char * s)
{
	if (root->left == NULL && root->right == NULL)
	{
		strcpy(code[root->lit], s);
		//fout.write((char *)&root->lit, sizeof(char));
		//fout.write(s, strlen(s) * sizeof(char));
	}
	else
	{
		if (root->left)
		{
			strcat(s, "0");
			calcCode(root->left, s);
			s[strlen(s) - 1] = 0;
		}
		if (root->right)
		{
			strcat(s, "1");
			calcCode(root->right, s);
			s[strlen(s) - 1] = 0;
		}
	}
}

char binToDec(char * s)
{
	int b = 0;
	for (int i = 0; i < 8; i++)
	{
		b += (s[i] - 48) * pow(2, 7 - i);
	}
	return b;
}

void offset(char * s)
{
	int i;
	for (i = 8; i < strlen(s); i++)
	{
		s[i - 8] = s[i];
	}
	s[i - 8] = 0;
}

void intToStr(char b, char * s)
{
	int i;
	for (i = 0; b != 0; i++)
	{
		s[i] = b % 10;
		b = b / 10;
	}
	s[i] = 0;
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

void init(char * pathSource)
{
	//setlocale(0, "");
	system("cls");
	ShowConsoleCursor(FALSE);
	cout << "Archiving file" << endl << pathSource << endl;
}

void openFiles(ifstream &fin, ofstream &fout, char * pathSource)
{
	strcat(pathDest, pathSource);
	char exp[10] = { 0 };
	int lenexp = 0;
	int len = strlen(pathDest);
	int temp = len;
	while (pathDest[--temp] != '.' && temp);
	temp++;
	//;D
	//pathDest[temp - 2] = 'U';
	for (int i = temp; i < len; i++)
	{
		exp[lenexp++] = pathDest[i];
	}
	exp[lenexp] = 0;
	pathDest[temp++] = 'h';
	pathDest[temp++] = 'a';
	pathDest[temp++] = 'f';
	pathDest[temp] = 0;

	fin.open(pathSource, ios_base::binary);
	if (!fin)
	{
		cout << "Error! File is not found";
		_getch();
		exit(0);
	}
	else
	{
		fout.open(pathDest, ios_base::binary);
		char ump = '&';
		fout.write(&ump, sizeof(char));
		fout.write(exp, sizeof(char) * lenexp);
		fout.write(&ump, sizeof(char));
	}
}

inline void checkPersent(int &it, int &persent, int size, int when)
{
	if (int(((double)++it / size) * 100) > persent)
	{
		persent = ((double)++it / size) * 100;
		setCursorPosition(persent / 2, 3 + 3 * when);
		cout << (char)DA;
		setCursorPosition(24, 4 + 3 * when);
		cout << persent << "%";
	}
}

void pocketSorting(ifstream &fin, char * pathSource, int _freqArr[256])
{
	int size = fileSize(pathSource);
	int persent = 0, it = 0;
	unsigned char c;
	cout << "Reading" << endl;
	for (int i = 0; i < 50; i++)
	{
		cout << (char)NET;
	}
	while (!fin.eof())
	{
		fin.read((char *)&c, sizeof(char));
		//
		checkPersent(it, persent, size, 0);
		//
		if (fin.eof()) break;
		_freqArr[c]++;
	}
}

void write_freqArr(ofstream &fout, int _freqArr[256])
{
	for (int i = 0; i < 256; i++)
	{
		fout.write((char *)&_freqArr[i], sizeof(int));
	}
}

Elem * buildTree(int _freqArr[256])
{
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

void fillCodes(Elem * root)
{
	for (int i = 0; i < 256; i++)
	{
		code[i] = (char*)malloc(50);
		code[i][0] = 0;
	}
	char s[100] = { 0 };
	calcCode(root, s);
}

void coding(ifstream &fin, ofstream &fout, char * pathSource)
{
	setCursorPosition(0, 5);
	cout << "Archiving" << endl;
	for (int i = 0; i < 50; i++)
	{
		cout << (char)NET;
	}
	int size = fileSize(pathSource);
	int persent = 0, it = 0;
	unsigned char c;

	fin.open(pathSource, ios_base::binary);

	char s[100] = { 0 };
	char t[100] = { 0 };
	strcpy(s, "");

	while (!fin.eof())
	{
		fin.read((char *)&c, sizeof(char));
		//
		checkPersent(it, persent, size, 1);
		//
		if (fin.eof()) break;
		strcat(s, code[c]);
		while (strlen(s) >= 8)
		{
			strcpy(t, s);
			offset(s);
			t[8] = 0;
			unsigned char b = binToDec(t);
			fout.write((char*)&b, sizeof(char));
		}
	}
	unsigned char i = strlen(s);
	fout.write((char*)&i, sizeof(char));
	while (i < 8)
	{
		s[i++] = '0';
	}
	s[i] = 0;
	i = binToDec(s);
	fout.write((char*)&i, sizeof(char));
}

int main(/*int argc, char ** argv*/)
{
	/*if (argc < 1)
	{
		cout << "Not enought data" << endl;
		_getch();
		return 1;
	}
	char * pathSource = argv[1];*/
	
	init(pathSource);

	ifstream fin;
	ofstream fout;
	openFiles(fin, fout, pathSource);

	int _freqArr[256] = { 0 };
	pocketSorting(fin, pathSource, _freqArr);
	fin.close();

	write_freqArr(fout, _freqArr);

	Elem * root = buildTree(_freqArr);
	
	fillCodes(root);

	coding(fin, fout, pathSource);
	
	fin.close();
	fout.close();
	return 0;
}