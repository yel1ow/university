// Catree.cpp: определяет точку входа для консольного приложения.
//

#define _CRT_SECURE_NO_WARNINGS
#include "iostream"
#include "windows.h"
#include "conio.h"
#include "cstring"
#include "fstream"
#include "direct.h"
#include "dos.h"
#include "thread"

using namespace std;

#define ARROWS 224
#define UP 72
#define LEFT 75
#define RIGHT 77
#define DOWN 80
#define CTRL_UP 141
#define CTRL_DOWN 145
#define CTRL_LEFT 115
#define CTRL_RIGHT 116
#define BACKSPACE 8
#define ENTER 13
#define CTRL_S 19
#define SPACE 32
#define CODE_A 65
#define CODE_Z 90
#define CODE_a 97
#define CODE_z 122

#define sx x_show + x
#define sy y_show + y
const int MAXPATH = 1000, MAXNAME = 200;
const int OFFSETX[2] = { 15, 55 }, OFFSETY = 5;
const int CONSOLE_SIZE_X = 119, CONSOLE_SIZE_Y = 29;
const int FORWARD = 1, BACKWARD = -1;

bool distracting;

void setCursorPosition(int x, int y)
{
	COORD coord;
	coord.X = x;
	coord.Y = y;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), coord);
}

struct File
{
	WIN32_FIND_DATA properties;
	File * next = NULL;
	File * prev = NULL;
};

class Page
{
	public:
	char path[MAXPATH];
	int offset = 0, pointerNow = 0;
	File * firstFilePointer;
	File * selectedFilePointer;
};

void ramka(int, int, int, int);

class Window
{
	public:
	unsigned char ** s;
	int x1, x2, y1, y2, maxString;
	int offsetx, offsety;
	Window(int _x1, int _y1, int _x2, int _y2, int _maxString, int _offsetx = 5, int _offsety = 3)
	{
		x1 = _x1;
		x2 = _x2;
		y1 = _y1;
		y2 = _y2;
		maxString = _maxString;
		offsetx = _offsetx;
		offsety = _offsety;
		s = (unsigned char **)calloc(maxString, sizeof(unsigned char *));
		for (int i = 0; i < maxString; i++)
		{
			s[i] = (unsigned char *)malloc(x2 - x1);
			for (int j = 0; j < x2 - x1 - offsetx - 1; j++)
				s[i][j] = ' ';
			s[i][x2 - x1 - offsetx - 1] = 0;
		}
	}
	void call()
	{
		for (int i = 0; i < maxString; i++)
		{
			s[i] = (unsigned char *)malloc(x2 - x1);
			for (int j = 0; j < x2 - x1 - offsetx - 1; j++)
				s[i][j] = ' ';
			s[i][x2 - x1 - offsetx - 1] = 0;
		}
		ramka(x1, y1, x2, y2);
	}
	void show(int number1 = -1, int number2 = -1)
	{
		if (number1 < 0)
		for (int i = 0; i < maxString; i++)
		{
			setCursorPosition(x1 + offsetx, y1 + offsety + i);
			cout << s[i];
		}
		else if(number2 < 0)
		{
			setCursorPosition(x1 + offsetx, y1 + offsety + number1);
			cout << s[number1];
		}
		else
		{
			setCursorPosition(x1 + offsetx, y1 + offsety + number1);
			cout << s[number1];
			setCursorPosition(x1 + offsetx, y1 + offsety + number2);
			cout << s[number2];
		}
	}
};

bool isDirectory(File * file)
{
	if (file->properties.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
		return true;
	return false;
}

int fileSize(const char * filePath)
{

	int fsize = 0;
	ifstream file(filePath, ios::binary);
	file.seekg(0, ios::end);
	fsize = file.tellg();
	file.close();
	return fsize;
}

File * getPtrNextFile(HANDLE hFind)
{
	File * first = new File;
	if (FindNextFile(hFind, &first->properties))
	{
		return first;
	}
	else
	{
		return NULL;
	}
}

File * fillDir(Page &page, char * _path)
{
	strcpy(page.path, _path);
	char path[1000];
	strcpy(path, _path);
	strcat(path, "*");
	File * first = new File;
	HANDLE hFind = FindFirstFile(path, &first->properties);

	//cout << First->Pathto << endl;

	File * cur = first;
	while (cur->next = getPtrNextFile(hFind))
	{
		cur->next->prev = cur;
		cur = cur->next;
	}
	FindClose(hFind);
	if (strcmp(first->properties.cFileName, ".") == 0)
	{
		first = first->next;
	}
	page.firstFilePointer = first;
	page.selectedFilePointer = first;
	return first;
}

File * getPtrFirstFile(char * _path)
{
	char path[MAXPATH];
	strcpy(path, _path);
	strcat(path, "*");
	File * first = new File;
	HANDLE hFind = FindFirstFile(path, &first->properties);

	//cout << First->Pathto << endl;

	File * cur = first;
	while (cur->next = getPtrNextFile(hFind))
	{
		cur->next->prev = cur;
		cur = cur->next;
	}
	FindClose(hFind);
	if (strcmp(first->properties.cFileName, ".") == 0)
	{
		first = first->next;
	}
	return first;
}

/*File * getPtrNextFile(HANDLE hFind)
{
	File * first = new File;
	if (FindNextFile(hFind, &first->properties))
	{
		return first;
	}
	else
	{
		return NULL;
	}

}

File * fillDir(Page &page, char * _path)
{
	strcpy(page.path, _path);
	char path[1000];
	strcpy(path, _path);
	strcat(path, "*");
	File * first = new File;
	int done = findfirst(path, &first->properties);

	//cout << First->Pathto << endl;

	File * cur = first;
	while (cur->next = getPtrNextFile(hFind))
	{
		cur->next->prev = cur;
		cur = cur->next;
	}
	FindClose(hFind);
	if (strcmp(first->properties.cFileName, ".") == 0)
	{
		first = first->next;
	}
	page.firstFilePointer = first;
	page.selectedFilePointer = first;
	return first;
}*/

void ramka(int x1, int y1, int x2, int y2)
{
	setCursorPosition(x1, y1);
	cout << (char)201;
	setCursorPosition(x2, y1);
	cout << (char)187;
	setCursorPosition(x1, y2);
	cout << (char)200;
	setCursorPosition(x2, y2);
	cout << (char)188;
	for (int i = x1 + 1; i < x2; i++)
	{
		setCursorPosition(i, y1);
		cout << (char)205;
	}
	for (int i = y1 + 1; i < y2; i++)
	{
		setCursorPosition(x1, i);
		cout << (char)186;
	}
	for (int i = x1 + 1; i < x2; i++)
	{
		setCursorPosition(i, y2);
		cout << (char)205;
	}
	for (int i = y1 + 1; i < y2; i++)
	{
		setCursorPosition(x2, i);
		cout << (char)186;
	}
	for (int i = y1 + 1; i < y2; i++)
	{
		setCursorPosition(x1 + 1, i);
		for (int j = x1 + 1; j < x2; j++)
			cout << ' ';
	}
}

void showTable(int activePage)
{
	setCursorPosition(5 + 40 * activePage, 0);
	cout << (char)201;
	setCursorPosition(45 + 40 * activePage, 0);
	cout << (char)187;
	setCursorPosition(5 + 40 * activePage, 25);
	cout << (char)200;
	setCursorPosition(45 + 40 * activePage, 25);
	cout << (char)188;
	for (int i = 6; i < 45; i++)
	{
		setCursorPosition(i + 40 * activePage, 0);
		cout << (char)205;
	}
	for (int i = 1; i < 25; i++)
	{
		setCursorPosition(5 + 40 * activePage, i);
		cout << (char)186;
	}
	for (int i = 6; i < 45; i++)
	{
		setCursorPosition(i + 40 * activePage, 25);
		cout << (char)205;
	}
	for (int i = 1; i < 25; i++)
	{
		setCursorPosition(45 + 40 * activePage, i);
		cout << (char)186;
	}
}

///////////////////////////////////////////////////////////////////////////////////HAF

Window * window = new Window(30, 8, 90, 21, 10);

#define _CRT_SECURE_NO_WARNINGS
#include "iostream"
#include "conio.h"
#include "fstream"
#include "cstring"
#include "math.h"
#include "windows.h"

const int NET = 177,//(176)
DA = 178;

char * code[256] = { 0 };
char pathDest[1000];

struct Elem
{
	unsigned char lit;
	int number;
	Elem * right = NULL;
	Elem * left = NULL;
};

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

void init(char * pathSource)
{
	//setlocale(0, "");
	//system("cls");
	ShowConsoleCursor(FALSE);
	strcpy((char *)window->s[0], "Archiving file");
	window->show();
	//cout << "Archiving file" << endl << pathSource << endl;
	strcpy((char *)window->s[1], pathSource);
}

bool openFiles(ifstream &fin, ofstream &fout, char * pathSource)
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
		strcpy((char *)window->s[2], "Error! File is not found");
		window->show();
		//cout << "Error! File is not found";
		_getch();
		return false;
	}
	else
	{
		fout.open(pathDest, ios_base::binary);
		char ump = '&';
		fout.write(&ump, sizeof(char));
		fout.write(exp, sizeof(char) * lenexp);
		fout.write(&ump, sizeof(char));
	}
	return true;
}

inline void checkPersent(int &it, int &persent, int size, int when)
{
	if (int(((double)++it / size) * 100) > persent)
	{
		persent = ((double)++it / size) * 100;
		/*setCursorPosition(persent / 2, 3 + 3 * when);
		cout << (char)DA;
		setCursorPosition(24, 4 + 3 * when);
		cout << persent << "%";*/
		if(persent <= 100)
			window->s[3 + 3 * when][persent / 2] = (char)DA;
		else
		{
			return;
		}
		if(persent < 10)
			window->s[4 + 3 * when][25] = persent + 48;
		else if(persent < 100)
		{
			window->s[4 + 3 * when][24] = persent / 10 + 48;
			window->s[4 + 3 * when][25] = persent % 10 + 48;
		}
		else
		{
			window->s[4 + 3 * when][23] = 49;
			window->s[4 + 3 * when][24] = 48;
			window->s[4 + 3 * when][25] = 48;
		}
		window->s[4 + 3 * when][26] = '%';
		window->show(3 + 3 * when, 4 + 3 * when);
	}
}

void pocketSorting(ifstream &fin, char * pathSource, int _freqArr[256])
{
	int size = fileSize(pathSource);
	int persent = 0, it = 0;
	unsigned char c;
	strcpy((char *)window->s[2], "Reading");
	window->show();
	//cout << "Reading" << endl;
	for (int i = 0; i <= 50; i++)
	{
		window->s[3][i] = (char)NET;
		//cout << (char)NET;
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
	//setCursorPosition(0, 5);
	strcpy((char *)window->s[5], "Archiving");
	window->show();
	//cout << "Archiving" << endl;
	for (int i = 0; i <= 50; i++)
	{
		window->s[6][i] = (char)NET;
		//cout << (char)NET;
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

void haf(char * pathSource/*int argc, char ** argv*/)
{
	/*if (argc < 1)
	{
	cout << "Not enought data" << endl;
	_getch();
	return 1;
	}
	char * pathSource = argv[1];*/

	window->call();

	init(pathSource);

	ifstream fin;
	ofstream fout;
	 if(!openFiles(fin, fout, pathSource))
		 return;

	int _freqArr[256] = { 0 };
	pocketSorting(fin, pathSource, _freqArr);
	fin.close();

	write_freqArr(fout, _freqArr);

	Elem * root = buildTree(_freqArr);

	fillCodes(root);

	coding(fin, fout, pathSource);

	fin.close();
	fout.close();
	return;
}
//////////////////////////////////////////////////////////////////////////////////////dehaf


#define _CRT_SECURE_NO_WARNINGS
#include "iostream"
#include "conio.h"
#include "fstream"
#include "io.h"
#include "windows.h"

using namespace std;

//char pathSource[1000] = "x:\\TEST.haf";

void decToBin(unsigned char c, char * s)
{
	for (int i = 0; i < 8; i++)
	{
		s[7 - i] = 48 + c % 2;
		c = c / 2;
	}
}

void _init(char * pathSource)
{
	//setlocale(0, "");
	ShowConsoleCursor(FALSE);
	//cout << "Raspakovka faila" << endl << pathSource << endl;
	strcpy((char *)window->s[0], "Raspakovka faila");
	//cout << "Archiving file" << endl << pathSource << endl;
	strcpy((char *)window->s[1], pathSource);
	for (int i = 0; i < 50; i++)
	{
		window->s[2][i] = (char)NET;
		//cout << (char)NET;
	}
	window->show();
}

bool _openFiles(ifstream &fin, ofstream &fout, char * pathSource)
{
	fin.open(pathSource, ios_base::binary);
	if (!fin)
	{
		strcpy((char *)window->s[1], "Error! File is not found");
		window->show();
		//cout << "Error! File is not found";
		_getch();
		return false;
	}
	char ump;
	fin.read(&ump, sizeof(char));
	if (ump != '&')
	{
		strcpy((char *)window->s[1], "File is not HAF archive!");
		window->show();
		//cout << "File is not HAF archive!";
		_getch();
		return false;
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

inline void _checkPersent(int &it, int &persent, int size, int y1 = 2, int y2 = 3)
{
	if (int(((double)++it / size) * 100) > persent)
	{
		persent = ((double)++it / size) * 100;
		window->s[y1][persent / 2] = (char)DA;
		if (persent < 10)
			window->s[y2][25] = persent + 48;
		else if (persent < 100)
		{
			window->s[y2][24] = persent / 10 + 48;
			window->s[y2][25] = persent % 10 + 48;
		}
		else
		{
			window->s[y2][23] = 49;
			window->s[y2][24] = 48;
			window->s[y2][25] = 48;
		}
		window->s[y2][26] = '%';
		window->show(y1, y2);
	}
}

Elem * _buildTree(ifstream &fin)
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

bool decoding(ifstream &fin, ofstream &fout, Elem * root, char * pathSource)
{
	if (root->left == root->right)
	{
		strcpy((char *)window->s[2], "pohozhe, chto fail sostoyal iz odinakovix simvolov");
		window->show();
		//cout << endl << "pohozhe, chto fail sostoyal iz odinakovix simvolov" << endl;
		_getch();
		return false;
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
		_checkPersent(it, persent, size);
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
	return true;
}

void dehaf(char * pathSource)
{
	window->call();
	_init(pathSource);
	ifstream fin;
	ofstream fout;
	if (!_openFiles(fin, fout, pathSource))
		return;

	Elem * root = _buildTree(fin);

	if(!decoding(fin, fout, root, pathSource))
		return;

	fin.close();
	fout.close();

	return;
}

///////////////////////////////////////////////////////////////////////////////////////////

void show(Page page[], int activePage = -1)
{
	if (activePage == -1)
	{
		//cout << ALL;
		show(page, 0);
		show(page, 1);
	}
	else
	{
		/**/
		//////////////////////////////////////////////////////////
		setCursorPosition(OFFSETX[activePage] - 3, 3);
		cout << page[activePage].path;
		int numb = 0;
		File * currentFile = page[activePage].firstFilePointer;
		for (int i = 0; i < page[activePage].offset; i++)
		{
			currentFile = currentFile->next;
		}
		while (currentFile && numb < 15)
		{
			if (currentFile == page[activePage].selectedFilePointer)
			{
				setCursorPosition(OFFSETX[activePage] - 3, OFFSETY + numb);
				cout << "_>>";
			}
			else
			{
				setCursorPosition(OFFSETX[activePage], OFFSETY + numb);
			}
			cout << currentFile->properties.cFileName;
			if (isDirectory(currentFile))
				cout << "\\..";
			currentFile = currentFile->next;
			numb++;
		}
	}
}

void checkArrows(Page page[], int activePage, unsigned char c)
{
	switch (c)
	{
		case UP:
			if (page[activePage].selectedFilePointer->prev)
				page[activePage].selectedFilePointer = page[activePage].selectedFilePointer->prev;
			break;
		case LEFT:
			break;
		case RIGHT:
			break;
		case DOWN:
			if (page[activePage].selectedFilePointer->next)
			{
				page[activePage].selectedFilePointer = page[activePage].selectedFilePointer->next;
				/*page[activePage].pointerNow++;
				if (page[activePage].pointerNow > 15)
				{
					page[activePage].pointerNow--;
					page[activePage].offset++;
				}*/
			}
			break;
		default:
			break;
	}
}

bool tryToOpen(File * file, char * path)
{
	char strOpen[MAXPATH];
	strcpy(strOpen, path);
	strcat(strOpen, file->properties.cFileName);
	system(strOpen);
	return true;
}

void fileCopy(char * source, char * dest)
{
	int it = 0, persent = 0;
	int size = fileSize(source);
	//
	char b;
	ifstream fin(source);
	ofstream fout(dest);
	while (!fin.eof())
	{
		fin.read(&b, sizeof(char));
		_checkPersent(it, persent, size, 3, 4);
		if (fin.eof()) break;
		fout.write(&b, sizeof(char));
	}
	fin.close();
	fout.close();
}

bool really(const char * s, const char * s1 = 0, const char * s2 = 0, const char * s3 = 0, const char * s4 = 0, const char * s5 = 0, const char * s6 = 0)
{
	ramka(30, 8, 90, 20);
	setCursorPosition(45, 10);
	cout << s;
	if (s1 != 0)
	{
		setCursorPosition(45, 11);
		cout << s1;
	}
	if (s2 != 0)
	{
		setCursorPosition(45, 12);
		cout << s2;
	}
	if (s3 != 0)
	{
		setCursorPosition(45, 13);
		cout << s3;
	}
	if (s4 != 0)
	{
		setCursorPosition(45, 14);
		cout << s4;
	}
	if (s5 != 0)
	{
		setCursorPosition(45, 15);
		cout << s5;
	}
	if (s6 != 0)
	{
		setCursorPosition(45, 16);
		cout << s6;
	}

	char c = 0;
	while (c != 27 && c != 13)
	{
		c = _getch();
	}
	if (c == 13)
		return true;
	return false;
}

bool forEachIn(char * _name, char * _pathSource, char * _pathDest, bool (*f)(File *, char *, char *, bool))
{
	char pathSource[MAXPATH];
	strcpy(pathSource, _pathSource);

	char pathDest[MAXPATH];
	strcpy(pathDest, _pathDest);

	File * first = getPtrFirstFile(pathSource);
	first = first->next;
	first->prev = NULL;
	while (first)
	{
		f(first, pathSource, pathDest, false);
		first = first->next;
	}
	return true;
}

void addC(char * s)
{
	int l = strlen(s);
	for (int i = l + 3; i >= l - 1; i--)
	{
		s[i] = s[i - 3];
	}
	s[l - 4] = '(';
	s[l - 3] = 'c';
	s[l - 2] = ')';
}

bool copyObject(File * filePointer, char * pathSource, char * pathDest, bool check = true)
{
	if (isDirectory(filePointer))
	{
		char _pathSource[MAXPATH];
		strcpy(_pathSource, pathSource);
		strcat(_pathSource, filePointer->properties.cFileName);
		strcat(_pathSource, "\\");

		char _pathDest[MAXPATH];
		strcpy(_pathDest, pathDest);
		strcat(_pathDest, filePointer->properties.cFileName);
		if (check)
		{
			char temp[1000];
			strcpy(temp, _pathDest);
			strcat(temp, "\\");
			if (strcmp(temp, _pathSource) == 0)
				strcat(_pathDest, "(c)");
			if (really("Copy directory?", _pathSource, "to", _pathDest, "Enter - yes, Esc - no"))
			{
				_mkdir(_pathDest);
				strcat(_pathDest, "\\");
				return forEachIn(filePointer->properties.cFileName, _pathSource, _pathDest, &copyObject);
			}
			else
			{
				return false;
			}
		}
		_mkdir(_pathDest);
		strcat(_pathDest, "\\");
		return forEachIn(filePointer->properties.cFileName, _pathSource, _pathDest, &copyObject);
	}
	else
	{
		char source[MAXPATH];
		strcpy(source, pathSource);
		strcat(source, filePointer->properties.cFileName);
		char dest[MAXPATH];
		strcpy(dest, pathDest);
		strcat(dest, filePointer->properties.cFileName);
		//REALLY?
		if (check)
		{
			if (!strcmp(source, dest))
				addC(dest);
			if (really("Copy file?", source, "to", dest, "Enter - yes, Esc - no"))
			{
				window->call();
				strcpy((char *)window->s[0], "Copying file");
				strcpy((char *)window->s[1], "from ");
				strcat((char *)window->s[1], source);
				strcpy((char *)window->s[2], "to ");
				strcat((char *)window->s[2], dest);
				window->show();
				fileCopy(source, dest);
				return true;
			}
		}
		else
		{
			window->call();
			strcpy((char *)window->s[0], "Copying file");
			strcpy((char *)window->s[1], "from ");
			strcat((char *)window->s[1], source);
			strcpy((char *)window->s[2], "to ");
			strcat((char *)window->s[2], dest);
			window->show();
			fileCopy(source, dest);
			return true;
		}
		return false;
	}
}

bool deleteObject(File * filePointer, char * pathSource, char * pathDest, bool check = true)
{
	if (isDirectory(filePointer))
	{
		char _pathSource[MAXPATH];
		strcpy(_pathSource, pathSource);
		strcat(_pathSource, filePointer->properties.cFileName);
		char pathDel[MAXPATH];
		strcpy(pathDel, _pathSource);
		strcat(_pathSource, "\\");

		char _pathDest[MAXPATH];
		strcpy(_pathDest, pathDest);
		strcat(_pathDest, filePointer->properties.cFileName);
		if (check)
		{
			if (really("Delete directory?", _pathSource, "Enter - yes, Esc - no"))
			{
				bool a = forEachIn(filePointer->properties.cFileName, _pathSource, _pathDest, &deleteObject);
				_rmdir(pathDel);
				return a;
			}
			else
			{
				return false;
			}
		}
		bool a = forEachIn(filePointer->properties.cFileName, _pathSource, _pathDest, &deleteObject);
		_rmdir(pathDel);
		return a;
	}
	else
	{
		char path[MAXPATH];
		strcpy(path, pathSource);
		strcat(path, filePointer->properties.cFileName);
		//REALLY?
		if (check)
		{
			if (really("Delete file?", path, "Enter - yes, Esc - no"))
			{
				remove(path);
				return true;
			}
			return false;
		}
		else
		{
			remove(path);
			return true;
		}
	}
}

bool moveObject(File * filePointer, char * pathSource, char * pathDest, bool check = true)
{
	if (check)
	{
		if (really("Move file?", pathSource, "to", pathDest, "Enter - yes, Esc - no"))
		{
			bool a = copyObject(filePointer, pathSource, pathDest, false);
			bool b = deleteObject(filePointer, pathSource, pathDest, false);
			return a&&b;
		}
		else
		{
			return false;
		}
	}
	bool a = copyObject(filePointer, pathSource, pathDest);
	bool b = deleteObject(filePointer, pathSource, pathDest);
	return a&&b;
}

void changeDrive(Page &page)
{
	window->call();
	strcpy((char *)window->s[0], "Choose disk");
	DWORD drives = GetLogicalDrives();
	int num = 0;
	for (int i = 0; i < 26; i++)
		if (drives & (1 << i))
		{
			char drive_name[] = { char('a' + i), ':', '\\','\0' };
			if (GetDriveTypeA(drive_name) == DRIVE_FIXED)
			{
				strcpy((char *)window->s[++num], drive_name);
			}
		}
	window->show();
	char c = _getch();
	if (c == VK_ESCAPE)
		return;
	//if (c >= 97)
	//	c -= 32;
	for (int i = 1; i <= num; i++)
	{
		if (window->s[i][0] == c)
		{
			strcpy(page.path, (char *)window->s[i]);
			fillDir(page, page.path);
			return;
		}
	}
	strcpy((char *)window->s[num + 1], "Doesn't exist :(");
	window->show();
	_getch();
}

/*void showDisplay(unsigned char ** display)
{
	for (int i = 0; i < CONSOLE_SIZE_Y; i++)
	{
		cout << display[i];
	}
}

int getOffset(int globalOffset, int direction, unsigned char ** display)
{
	if (direction == 1)
	{
		int i = 0;
		for (int j = 0; j < CONSOLE_SIZE_Y; j++)
		{
			i += strlen((char *)display[j]);
		}
		return globalOffset + i;
	}
	return globalOffset;
}

void fillDisplay(fstream &f, unsigned char ** display, int &globalOffset, int direction = 0)
{
	if (direction)
	{
		f.seekg(globalOffset, ios::beg);
		unsigned char c = 0;
		int i = 0;
		while (c != 10 && i < CONSOLE_SIZE_X)
		{
			i++;
			globalOffset += direction;
			f.seekg(getOffset(globalOffset, direction, display) + 1, ios::beg);
			f.read((char *)&c, sizeof(char));
			if (!f)
				break;
		}
		globalOffset += i;
	}

	int cur_Y = 0;
	int cur_X = 0;
	unsigned char a;
	while (cur_Y < CONSOLE_SIZE_Y && f)
	{
		f.read((char *)&a, sizeof(char));
		if (!f)
			break;
		display[cur_Y][cur_X++] = a;
		if (a == 10 || cur_X == CONSOLE_SIZE_X)
		{
			cur_Y++;
			cur_X = 0;
		}
	}
	system("cls");
	showDisplay(display);
}

int length(unsigned char * s)
{
	return strlen((char *)s) - 1;
}

void checkArr(unsigned char c, int &gx, int &gy, unsigned char ** display, int &globalOffset, fstream &f)
{
	switch (c)
	{
		case 72:
			if (gy > 0)
			{
				gy--;
				if(gx > length(display[gy]))
					gx = length(display[gy]);
			}
			else
			{
				fillDisplay(f, display, globalOffset, BACKWARD);
			}
			break;
		case 75:
			if (gx > 0)
				gx--;
			else
			{
				if (gy > 0)
				{
					gy--;
					gx = length(display[gy]);
				}
				else
				{
					fillDisplay(f, display, globalOffset, BACKWARD);
				}
			}
			break;
		case 77:
			if (gx < length(display[gy]))
				gx++;
			else
			{
				if (gy < CONSOLE_SIZE_Y - 1)
				{
					gy++;
					gx = 0;
				}
				else
				{
					fillDisplay(f, display, globalOffset, FORWARD);
				}
			}
			break;
		case 80:
			if (gy < CONSOLE_SIZE_Y - 1)
			{
				gy++;
				if (gx > length(display[gy]))
					gx = length(display[gy]);
			}
			else
			{
				fillDisplay(f, display, globalOffset, FORWARD);
			}
			break;
		default:
			break;
	}
}

void runEditor(char * path)
{
	system("cls");
	fstream f(path, ios::in | ios::out);
	if (!f)
	{
		cout << "Error reading";
		_getch();
		return;
	}
	int globalOffset = 0;
	unsigned char ** display = new unsigned char * [CONSOLE_SIZE_Y];
	for (int i = 0; i < CONSOLE_SIZE_Y; i++)
	{
		display[i] = new unsigned char [CONSOLE_SIZE_X];
		for (int j = 0; j < CONSOLE_SIZE_X; j++)
		{
			display[i][j] = 0;
		}
	}

	fillDisplay(f, display, globalOffset);

	//showDisplay(display);

	setCursorPosition(0, 0);

	unsigned char c = 0;
	int gx = 0, gy = 0;
	while (c != 27)
	{
		c = _getch();
		if (c == 224)
		{
			c = _getch();
			checkArr(c, gx, gy, display, globalOffset, f);
			setCursorPosition(gx, gy);
		}

		switch (c)
		{
			case 1:

				break;
			default:
				break;
		}
	}
}*/

void checkArr(unsigned char c, int &x, int &y, int &x_show, int &y_show, unsigned char ** display, int numb)
{
	switch (c)
	{
		case UP:
			if (y > 0)
				y--;
			else
			{
				if (y_show > 0)
					y_show--;
			}
			if (sx > strlen((char *)display[sy]))
			{
				x = strlen((char *)display[sy]) - x_show;
			}
			break;
		case LEFT:
			if (x > 0)
				x--;
			else
			{
				if (x_show > 0)
					x_show--;
				else
				{
					if (y > 0)
						y--;
					else
					{
						if (y_show > 0)
							y_show--;
						else
							break;
					}
					x = strlen((char *)display[sy]) - x_show;
					if (x > CONSOLE_SIZE_X)
					{
						x_show = strlen((char *)display[sy]) - CONSOLE_SIZE_X;
						x = CONSOLE_SIZE_X;
					}
				}
			}
			break;
		case RIGHT:
			if (x < CONSOLE_SIZE_X - 1 && sx < strlen((char *)display[sy]))
				x++;
			else
			{
				if (sx < strlen((char *)display[sy]))
					x_show++;
				else
				{
					if (y < CONSOLE_SIZE_Y && sy < numb - 1)
						y++;
					else
					{
						if (sy < numb - 1)
							y_show++;
						else
							break;
					}
					x_show = 0;
					x = 0;
				}
			}
			break;
		case DOWN:
			if (y < CONSOLE_SIZE_Y && sy < numb - 1)
				y++;
			else
			{
				if (sy < numb - 1)
					y_show++;
			}
			if (sx > strlen((char *)display[sy]))
			{
				x_show = strlen((char *)display[sy]) - CONSOLE_SIZE_X / 2;
				while (x_show < 0)
				{
					x_show++;
				}
				x = strlen((char *)display[sy]) - x_show;
			}
			break;
		case CTRL_UP:
		if (y_show > 0)
			y_show--;
		if (sx > strlen((char *)display[sy]))
		{
			x = strlen((char *)display[sy]) - x_show;
		}
			break;
		case CTRL_DOWN:
		if (sy < numb - 1)
			y_show++;
		if (sx > strlen((char *)display[sy]))
		{
			x = strlen((char *)display[sy]) - x_show;
			if (x < 0)
			{
				while (x++ < 0);
				x_show = x - CONSOLE_SIZE_X;
				while (x_show++ < -1);
			}
		}
			break;
		case CTRL_LEFT:
			if (sx == 0)
			{

			}
			else
			while ((display[sy][sx] >= CODE_a && display[sy][sx] <= CODE_z || display[sy][sx] >= CODE_A && display[sy][sx] <= CODE_Z || display[sy][sx] == 0) && sx > 0)
			{
				if (x > 0)
					x--;
				else
					x_show--;
			}
			break;
		case CTRL_RIGHT:
			if (sx == strlen((char *)display[sy]))
			{

			}
			while ((display[sy][sx] >= CODE_a && display[sy][sx] <= CODE_z || display[sy][sx] >= CODE_A && display[sy][sx] <= CODE_Z || display[sy][sx] == 0) && sx < strlen((char *)display[sy]))
			{
				if (x < CONSOLE_SIZE_X)
					x++;
				else
					x_show++;
			}
			break;
		default:
			break;
	}
}

void showDisplay(unsigned char ** display, int x_show, int y_show, int numb)
{
	system("cls");
	for (int i = y_show; i < min(y_show + CONSOLE_SIZE_Y, numb); i++)
	{
		for (int j = x_show; j < min(x_show + CONSOLE_SIZE_X, strlen((char *)display[i])); j++)
		{
			cout << display[i][j];
		}
		cout << endl;
	}
}

bool isPunctuationMark(unsigned char c)
{
	return (c >= 32 && c <= 63 || c == 94);
}

bool needSave()
{
	window->call();
	strcpy((char *)window->s[3], "Save changes? Enter - yes, Esc - no");
	window->show();
	char c = _getch();
	if (c == 13)
	{
		strcpy((char *)window->s[4], "Saving..");
		window->show();
		return true;
	}
	else return false;
}

void runEditor(char * path)
{
	system("cls");
	/*if (fileSize(path) > 100000)
	{
		cout << "HUGE FILE";
		_getch();
		return;
	}*/
	ShowConsoleCursor(TRUE);
	fstream f(path, ios::in | ios::out);
	if (!f)
	{
		cout << "Error reading";
		_getch();
		return;
	}
	cout << "Reading, dont worry";
	int size = fileSize(path);
	unsigned char ** display = (unsigned char **)calloc(100000000, sizeof(unsigned char *));
	int numb = 0;
	while (f)
	{
		//zamena
		display[numb] = (unsigned char *)malloc(1025);
		unsigned char c = 0;
		int i;
		for (i = 0; i < 1025 && c != 10 && !f.eof(); i++)
		{
			f.read((char *)&c, sizeof(char));
			if (c == 10)
				break;
			if (f.eof())
				break;
			if (c == 0)
				c = 32;
			display[numb][i] = c;
		}
		display[numb][i] = 0;
		/*f.getline((char *)s, 1000000);
		if (!f)
			break;
		display[numb] = (unsigned char *)malloc(strlen((char *)s) + 1);
		strcpy((char *)display[numb], (char *)s);*/
		numb++;
	}
	f.close();
	int x_show = 0, y_show = 0;
	showDisplay(display, x_show, y_show, numb);
	setCursorPosition(0, 0);
	int x = 0, y = 0;
	
	unsigned char c = 0;
	while (c != 27)
	{
		c = _getch();
		//cout << int(c);
		//continue;
		if (c == ARROWS)
		{
			c = _getch();
			int old_x_show = x_show, old_y_show = y_show;
			checkArr(c, x, y, x_show, y_show, display, numb);
			if (old_x_show != x_show || old_y_show != y_show)
			{
				showDisplay(display, x_show, y_show, numb);
			}
		}
		else
		switch (c)
		{
			case BACKSPACE:
				c = LEFT;
				if (sx == 0 && sy == 0)
					break;
				if (strlen((char *)display[sy]) == 0)
				{
					checkArr(c, x, y, x_show, y_show, display, numb);
					for (int i = sy + 1; i < numb - 1; i++)
					{
						display[i] = (unsigned char *)realloc(display[i], strlen((char *)display[i + 1]) + 1);
						strcpy((char *)display[i], (char *)display[i + 1]);
					}
					numb--;
					free(display[numb]);
					showDisplay(display, x_show, y_show, numb);
				}
				else
				{
					checkArr(c, x, y, x_show, y_show, display, numb);
					//
					for (int i = sx; i < strlen((char *)display[sy]); i++)
					{
						display[sy][i] = display[sy][i + 1];
					}
					//
					display[sy] = (unsigned char *)realloc(display[sy], strlen((char *)display[sy]) + 1);
					showDisplay(display, x_show, y_show, numb);
				}
				
				break;
			case ENTER:
				unsigned char s[1024];
				for (int i = sx, j = 0; i <= strlen((char *)display[sy]); i++, j++)
				{
					s[j] = display[sy][i];
				}
				display[sy][sx] = 0;
				display[numb] = (unsigned char *)malloc(strlen((char *)display[numb - 1]) + 1);
				for (int i = numb; i > sy + 1; i--)
				{
					display[i] = (unsigned char *)realloc(display[i], strlen((char *)display[i - 1]) + 1);
					strcpy((char *)display[i], (char *)display[i - 1]);
				}
				numb++;
				display[sy + 1] = (unsigned char *)realloc(display[sy + 1], strlen((char *)s) + 1);
				strcpy((char *)display[sy + 1], (char *)s);
				c = RIGHT;
				checkArr(c, x, y, x_show, y_show, display, numb);
				showDisplay(display, x_show, y_show, numb);
				break;
			default:
				if (c >= CODE_a && c <= CODE_z || c >= CODE_A && c <= CODE_Z || isPunctuationMark(c))
				{
					display[sy] = (unsigned char *)realloc(display[sy], strlen((char *)display[sy]) + 2);
					for (int i = strlen((char *)display[sy]); i >= sx; i--)
					{
						display[sy][i + 1] = display[sy][i];
					}
					display[sy][sx] = c;
					c = RIGHT;
					checkArr(c, x, y, x_show, y_show, display, numb);
					showDisplay(display, x_show, y_show, numb);
				}
				break;
		}
		setCursorPosition(x, y);
	}
	ShowConsoleCursor(FALSE);
	if (needSave())
	{
		ofstream f(path);
		for (int i = 0; i < numb; i++)
		{
			f.write((char *)display[i], min(strlen((char *)display[i]) - 1, 1024));
			char c = 10;
			f.write(&c, 1);
		}
	}
}

void checkArrSix(unsigned char c, int &x, int &y, int &x_show, int &y_show, unsigned char ** display, int numb, int sizeLast)
{
	switch (c)
	{
		case UP:
			if (y > 0)
				y--;
			else
			{
				if (y_show > 0)
					y_show--;
			}
			/*if (sx > strlen((char *)display[sy]))
			{
				x = strlen((char *)display[sy]) - x_show;
			}*/
			break;
		case LEFT:
			x--;
			if (x % 3 == 0)
				x--;
					if (x < 0)
					{
						if (y > 0)
						{
							y--;
							x = 60;
						}
						else
						{
							if (y_show > 0)
							{
								x = 60;
								y_show--;
							}
						}
					}
					if (x < 0)
						x = 1;
			/*else
			{
				if (x_show > 0)
					x_show--;
				else
				{
					if (y > 0)
						y--;
					else
					{
						if (y_show > 0)
							y_show--;
						else
							break;
					}
					x = strlen((char *)display[sy]) - x_show;
					if (x > CONSOLE_SIZE_X)
					{
						x_show = strlen((char *)display[sy]) - CONSOLE_SIZE_X;
						x = CONSOLE_SIZE_X;
					}
				}
			}*/
			break;
		case RIGHT:
			if (sy < numb - 1)
			{
				x++;
				if (x % 3 == 0)
					x++;
			}
			else 
			{
				if (x < sizeLast - 1)
				{
					x++;
					if (x % 3 == 0)
						x++;
				}
			}
			if(x >= 60)
			{
				
				if (y < CONSOLE_SIZE_Y && sy < numb - 1)
				{
					y++;
					x = 1;
				}
					else
					{
						if (sy < numb - 1)
						{
							y_show++;
							x = 1;
						}
							break;
					}
			}
			break;
		case DOWN:
			if (y < CONSOLE_SIZE_Y && sy < numb - 1)
			{
				y++;
			}
			else
			{
				if (sy < numb - 1)
				{
					y_show++;
				}
			}
			/*if (sx > strlen((char *)display[sy]))
			{
				x_show = strlen((char *)display[sy]) - CONSOLE_SIZE_X / 2;
				while (x_show < 0)
				{
					x_show++;
				}
				x = strlen((char *)display[sy]) - x_show;
			}*/
			break;
		/*case CTRL_UP:
			if (y_show > 0)
				y_show--;
			if (sx > strlen((char *)display[sy]))
			{
				x = strlen((char *)display[sy]) - x_show;
			}
			break;
		case CTRL_DOWN:
			if (sy < numb - 1)
				y_show++;
			if (sx > strlen((char *)display[sy]))
			{
				x = strlen((char *)display[sy]) - x_show;
				if (x < 0)
				{
					while (x++ < 0);
					x_show = x - CONSOLE_SIZE_X;
					while (x_show++ < -1);
				}
			}
			break;
		case CTRL_LEFT:
			if (sx == 0)
			{

			}
			else
				while ((display[sy][sx] >= CODE_a && display[sy][sx] <= CODE_z || display[sy][sx] >= CODE_A && display[sy][sx] <= CODE_Z || display[sy][sx] == 0) && sx > 0)
				{
					if (x > 0)
						x--;
					else
						x_show--;
				}
			break;
		case CTRL_RIGHT:
			if (sx == strlen((char *)display[sy]))
			{

			}
			while ((display[sy][sx] >= CODE_a && display[sy][sx] <= CODE_z || display[sy][sx] >= CODE_A && display[sy][sx] <= CODE_Z || display[sy][sx] == 0) && sx < strlen((char *)display[sy]))
			{
				if (x < CONSOLE_SIZE_X)
					x++;
				else
					x_show++;
			}
			break;*/
		default:
			break;
	}
}

void showDisplaySix(unsigned char ** display, int x_show, int y_show, int numb)
{
	system("cls");
	for (int i = y_show; i < min(y_show + CONSOLE_SIZE_Y, numb); i++)
	{
		for (int j = x_show; j < min(x_show + CONSOLE_SIZE_X, strlen((char *)display[i])); j++)
		{
			cout << display[i][j];
		}
		cout << endl;
	}
}

bool isPunctuationMarkSix(unsigned char c)
{
	return (c >= 32 && c <= 63 || c == 94);
}

bool needSaveSix()
{
	window->call();
	strcpy((char *)window->s[3], "Save changes? Enter - yes, Esc - no");
	window->show();
	char c = _getch();
	if (c == 13)
	{
		strcpy((char *)window->s[4], "Saving..");
		window->show();
		return true;
	}
	else return false;
}

void runEditorSix(char * path)
{
	system("cls");
	/*if (fileSize(path) > 100000)
	{
	cout << "HUGE FILE";
	_getch();
	return;
	}*/
	ShowConsoleCursor(TRUE);
	fstream f(path, ios::in | ios::out);
	if (!f)
	{
		cout << "Error reading";
		_getch();
		return;
	}
	cout << "Reading, dont worry";
	int size = fileSize(path);
	unsigned char ** display = (unsigned char **)calloc(fileSize(path) / 20 + 1, sizeof(unsigned char *));
	int numb = 0;
	int i = 0, j = 0;
	while (f)
	{
		//zamena
		display[numb] = (unsigned char *)malloc(65);
		for (int i = 0; i < 61; i++)
		{
			display[numb][i] = ' ';
		}
		display[numb][60] = 0;
		unsigned char c = 0;
		while (f)
		{
			f.read((char *)&c, sizeof(char));
			if (!f)
			{
				for (int i = j; i < 60; i++)
				{
					display[numb][i] = ' ';
				}
				display[numb][60] = 0;
				//display[i][j] = 0;
				break;
			}
			display[i][j++] = ' ';
			display[i][j++] = c / 16 + char(('A' - 10) * (c / 16 >= 10)) + char('0' * (c / 16 < 10));
			display[i][j++] = c % 16 + char(('A' - 10) * (c % 16 >= 10)) + char('0' * (c % 16 < 10));
			if (j >= 60)
			{
				display[i][j] = 0;
				j = 0;
				i++; numb++;
				display[numb] = (unsigned char *)malloc(65);
			}

		}
		/*f.getline((char *)s, 1000000);
		if (!f)
		break;
		display[numb] = (unsigned char *)malloc(strlen((char *)s) + 1);
		strcpy((char *)display[numb], (char *)s);*/
		numb++;
	}
	f.close();
	int sizeLast = (size % 20) * 3;
	int x_show = 0, y_show = 0;
	showDisplay(display, x_show, y_show, numb);
	setCursorPosition(0, 0);
	int x = 1, y = 0;

	unsigned char c = 0;
	while (c != 27)
	{
		c = _getch();
		//cout << int(c);
		//continue;
		if (c == ARROWS)
		{
			c = _getch();
			int old_x_show = x_show, old_y_show = y_show;
			checkArrSix(c, x, y, x_show, y_show, display, numb, sizeLast);
			if (old_x_show != x_show || old_y_show != y_show)
			{
				showDisplaySix(display, x_show, y_show, numb);
			}
		}
		else
			switch (c)
			{
				//case BACKSPACE:
				//	c = LEFT;
				//	if (sx == 0 && sy == 0)
				//		break;
				//	if (strlen((char *)display[sy]) == 0)
				//	{
				//		checkArr(c, x, y, x_show, y_show, display, numb);
				//		for (int i = sy + 1; i < numb - 1; i++)
				//		{
				//			display[i] = (unsigned char *)realloc(display[i], strlen((char *)display[i + 1]) + 1);
				//			strcpy((char *)display[i], (char *)display[i + 1]);
				//		}
				//		numb--;
				//		free(display[numb]);
				//		showDisplay(display, x_show, y_show, numb);
				//	}
				//	else
				//	{
				//		checkArr(c, x, y, x_show, y_show, display, numb);
				//		//
				//		for (int i = sx; i < strlen((char *)display[sy]); i++)
				//		{
				//			display[sy][i] = display[sy][i + 1];
				//		}
				//		//
				//		display[sy] = (unsigned char *)realloc(display[sy], strlen((char *)display[sy]) + 1);
				//		showDisplay(display, x_show, y_show, numb);
				//	}
				//	break;
				//case ENTER:
				//	unsigned char s[1024];
				//	for (int i = sx, j = 0; i <= strlen((char *)display[sy]); i++, j++)
				//	{
				//		s[j] = display[sy][i];
				//	}
				//	display[sy][sx] = 0;
				//	display[numb] = (unsigned char *)malloc(strlen((char *)display[numb - 1]) + 1);
				//	for (int i = numb; i > sy + 1; i--)
				//	{
				//		display[i] = (unsigned char *)realloc(display[i], strlen((char *)display[i - 1]) + 1);
				//		strcpy((char *)display[i], (char *)display[i - 1]);
				//	}
				//	numb++;
				//	display[sy + 1] = (unsigned char *)realloc(display[sy + 1], strlen((char *)s) + 1);
				//	strcpy((char *)display[sy + 1], (char *)s);
				//	c = RIGHT;
				//	checkArr(c, x, y, x_show, y_show, display, numb);
				//	showDisplay(display, x_show, y_show, numb);
				//	break;
				default:
					if (c >= '0' && c <= '9' || c >= 'A' && c <= 'F' )
					{
						/*display[sy] = (unsigned char *)realloc(display[sy], strlen((char *)display[sy]) + 2);
						for (int i = strlen((char *)display[sy]); i >= sx; i--)
						{
							display[sy][i + 1] = display[sy][i];
						}*/
						display[sy][sx] = c;
						//c = RIGHT;
						//checkArrSix(c, x, y, x_show, y_show, display, numb, sizeLast);
						if (sy < numb - 1)
						{
							x++;
							if (x % 3 == 0)
								x++;
						}
						else
						{
							if (x < sizeLast - 1)
							{
								x++;
								if (x % 3 == 0)
									x++;
							}
							else
							{
								if (sizeLast < 60)
								{
									x++;
									sizeLast++;
									if (x % 3 == 0)
									{
										x++;
										sizeLast++;
									}
								}
								else
								{
									numb++;
									display[numb - 1] = (unsigned char *)malloc(61);
									for (int i = 0; i < 60; i++)
										display[numb - 1][i] = ' ';
									display[numb - 1][60] = 0;
									sizeLast = 1;
									x = 1;
									y++;
								}

							}
						}
						if (x >= 60)
						{

							if (y < CONSOLE_SIZE_Y && sy < numb - 1)
							{
								y++;
								x = 1;
							}
							else
							{
								if (sy < numb - 1)
								{
									y_show++;
									x = 1;
								}
								break;
							}
						}
						//
						showDisplaySix(display, x_show, y_show, numb);
					}
					break;
			}
		setCursorPosition(x, y);
	}
	ShowConsoleCursor(FALSE);
	if (needSave())
	{
		ofstream f(path);
		for (int i = 0; i < numb - 1; i++)
			for (int j = 0; j < 60; j += 3)
			{
				unsigned char c = display[i][j + 1];
				unsigned char d = display[i][j + 2];
				unsigned char e = (c >= 'A') * (c - 'A' + 10) * 16 + (c < 'A') * (c - '0') * 16 + (d >= 'A') * (d - 'A' + 10) + (d < 'A') * (d - '0');
				f.write((char *)&e, sizeof(char));
			}
		for (int j = 0; j < sizeLast; j += 3)
		{
			unsigned char c = display[numb - 1][j + 1];
			unsigned char d = display[numb - 1][j + 2];
			unsigned char e = (c >= 'A') * (c - 'A' + 10) * 16 + (c < 'A') * (c - '0') * 16 + (d >= 'A') * (d - 'A' + 10) + (d < 'A') * (d - '0');
			f.write((char *)&e, sizeof(char));
		}

	}
}

/*bool copyObject(Page page[], int activePage)
{
	if (isDirectory(page[activePage].selectedFilePointer))
	{
		return false;
	}
	else
	{
		char source[1000];
		strcpy(source, page[activePage].path);
		strcat(source, page[activePage].selectedFilePointer->properties.cFileName);
		char dest[1000];
		strcpy(dest, page[1 - activePage].path);
		strcat(dest, page[activePage].selectedFilePointer->properties.cFileName);
		//REALLY?
		if (really("Copy file?", source, "to", dest, "Enter - yes, Esc - no"))
		{
			fileCopy(source, dest);
			fillDir(page[1 - activePage], page[1 - activePage].path);
			return true;
		}
		return false;
	}
}

bool moveObject(Page page[], int activePage)
{
	if (isDirectory(page[activePage].selectedFilePointer))
	{

	}
	else
	{
		char source[1000];
		strcpy(source, page[activePage].path);
		strcat(source, page[activePage].selectedFilePointer->properties.cFileName);
		char dest[1000];
		strcpy(dest, page[1 - activePage].path);
		strcat(dest, page[activePage].selectedFilePointer->properties.cFileName);
		//REALLY?
		if (really("Move file?", source, "to", dest, "Enter - yes, Esc - no"))
		{
			fileCopy(source, dest);
			remove(source);
			fillDir(page[1 - activePage], page[1 - activePage].path);
			fillDir(page[activePage], page[activePage].path);
			return true;
		}
		return false;
	}
}

bool deleteObject(Page page[], int activePage)
{
	if (isDirectory(page[activePage].selectedFilePointer))
	{

	}
	else
	{
		char path[1000];
		strcpy(path, page[activePage].path);
		strcat(path, page[activePage].selectedFilePointer->properties.cFileName);
		//REALLY?
		if (really("Delete file?", path, "Enter - yes, Esc - no"))
		{
			remove(path);
			fillDir(page[1 - activePage], page[1 - activePage].path);
			fillDir(page[activePage], page[activePage].path);
			return true;
		}
		return false;
	}
}*/

void showHelp()
{
	setCursorPosition(101, 3);
	cout << "Help";
	int i = 5;
	setCursorPosition(98, i++);
	cout << "Editor - e";
	setCursorPosition(98, i++);
	cout << "Copy - c";
	setCursorPosition(98, i++);
	cout << "Delete - d";
	setCursorPosition(98, i++);
	cout << "Move - m";
	setCursorPosition(98, i++);
	cout << "Hafman - h";
	setCursorPosition(98, i++);
	cout << "Unpack - g";
	setCursorPosition(98, i++);
	cout << "Change drive - x";
	setCursorPosition(98, i++);
	cout << "Exit - esc";
}

int main()
{
	//setlocale(0, "");
	system("color E");
	ShowConsoleCursor(FALSE);

	char process[100] = {0};
	
	/*auto beautiful = [](char * message, bool &distracting)
	{

	};
	thread Beautiful(beautiful);
	Beautiful.detach();*/


	Page page[2];
	fillDir(page[0], "d:\\TEST\\");
	fillDir(page[1], "d:\\TEST\\");

	int activePage = 0;
	unsigned char c = 0;
	while (true)
	{
		system("cls");
		showTable(activePage);
		show(page);//, activePage);
		showHelp();
		c = _getch();
		switch (c)
		{
			case ARROWS:
				c = _getch();
				checkArrows(page, activePage, c);
				break;
			case VK_TAB:
				activePage = 1 - activePage;
				break;
			case ENTER:
				if (isDirectory(page[activePage].selectedFilePointer))
				{
					if (strcmp(page[activePage].selectedFilePointer->properties.cFileName, ".."))
					{
						strcat(page[activePage].path, page[activePage].selectedFilePointer->properties.cFileName);
						strcat(page[activePage].path, "\\");
					}
					else
					{
						int i = strlen(page[activePage].path) - 1;
						page[activePage].path[i--] = 0;
						while (page[activePage].path[i--] != '\\');
						page[activePage].path[i + 2] = 0;
					}
					fillDir(page[activePage], page[activePage].path);
				}
				else
				{
					//tryToOpen(page[activePage].selectedFilePointer, page[activePage].path);
				}
				break;
			case 'c':
				copyObject(page[activePage].selectedFilePointer, page[activePage].path, page[1 - activePage].path);
				fillDir(page[1 - activePage], page[1 - activePage].path);
				break;
			case 'd':
				deleteObject(page[activePage].selectedFilePointer, page[activePage].path, page[1 - activePage].path);
				fillDir(page[1 - activePage], page[1 - activePage].path);
				fillDir(page[activePage], page[activePage].path);
				break;
			case 'm':
				moveObject(page[activePage].selectedFilePointer, page[activePage].path, page[1 - activePage].path);
				fillDir(page[1 - activePage], page[1 - activePage].path);
				fillDir(page[activePage], page[activePage].path);
				break;
			case 'e':
				char path[1000];
				strcpy(path, page[activePage].path);
				strcat(path, page[activePage].selectedFilePointer->properties.cFileName);
				runEditor(path);
				break;
			case 's':
				char paths[1000];
				strcpy(paths, page[activePage].path);
				strcat(paths, page[activePage].selectedFilePointer->properties.cFileName);
				runEditorSix(paths);
				break;
			case 'h':
				char _path[1000];
				strcpy(_path, page[activePage].path);
				strcat(_path, page[activePage].selectedFilePointer->properties.cFileName);
				haf(_path);
				fillDir(page[activePage], page[activePage].path);
				break;
			case 'g':
				char d_path[1000];
				strcpy(d_path, page[activePage].path);
				strcat(d_path, page[activePage].selectedFilePointer->properties.cFileName);
				dehaf(d_path);
				fillDir(page[activePage], page[activePage].path);
				break;
			case 'x':
				changeDrive(page[activePage]);
				break;
			case VK_ESCAPE:
				//if (really("Finish work?", "Enter - yes, Esc - no"))
				//{
					exit(0);
				//}
				break;
			default:
				break;
		}
	}



	return 0;
}


/*ofstream fout("x:\\NewFile.txt");
fout << "OK!";
fout.close();*/

/*COOOPYYYY FIIILEE															(ZDES' COPY FAIL)
char b;
ifstream fin("x:\\NewFile.txt");
ofstream fout("x:\\IGOGO.ICO");
while (!fin.eof())
{
fin.read(&b, sizeof(char));
if (fin.eof()) break;
fout.write(&b, sizeof(char));
}
fin.close();
fout.close();*/

/*struct File
{
char * Name;
char * Pathto;
bool Dir = false;
File * PrevDir = NULL;
File * Subdir = NULL;
File * Prev = NULL;
File * Next = NULL;
};

File * FillDir(char * Path, File * Prev);

File * GetPtrNextFile(HANDLE hFind, char * Path, File * Prev)
{
WIN32_FIND_DATA file;
if (FindNextFile(hFind, &file))
{
File * First = new File;
First->Name = (char*)malloc(MaxName);
First->Pathto = (char*)malloc(MaxPath);
strcpy(First->Name, file.cFileName);
strcpy(First->Pathto, Path);
int i = strlen(First->Pathto) - 2;
First->Pathto[i] = 0;
strcat(First->Pathto, "\\");
strcat(First->Pathto, First->Name);
//
First->PrevDir = Prev;
//
if (file.dwFileAttributes == FILE_ATTRIBUTE_DIRECTORY && file.cFileName[0] != '.')
{
First->Dir = true;
strcat(First->Pathto, "\\");
if(strcmp(First->Name, "InfusedApps") != 0)
First->Subdir = FillDir(First->Pathto, First);
}
//cout << First->Pathto << endl;
return First;
}
else
{
return NULL;
}

}

File * FillDir(char * Path, File * Prev)
{
WIN32_FIND_DATA file;
strcat(Path, "*");
HANDLE hFind = FindFirstFile(Path, &file);

File * First = new File;
First->Name = (char*)malloc(MaxName);
First->Pathto = (char*)malloc(MaxPath);
strcpy(First->Name, file.cFileName);
strcpy(First->Pathto, Path);
int i = strlen(First->Pathto) - 2;
First->Pathto[i] = 0;
strcat(First->Pathto, "\\");
strcat(First->Pathto, First->Name);
//
First->PrevDir = Prev;
//
if (file.dwFileAttributes == FILE_ATTRIBUTE_DIRECTORY && file.cFileName[0] != '.')
{
First->Dir = true;
strcat(First->Pathto, "\\");
First->Subdir = FillDir(First->Pathto, First);
}
//cout << First->Pathto << endl;

File * Cur = First;
File * Hel = NULL;
while (Cur->Next = GetPtrNextFile(hFind, Path, Prev))
{
Cur->Next->Prev = Cur;
Cur = Cur->Next;
}
FindClose(hFind);
return First;
}

void WriteAll(File * First)
{
if (First == NULL)
{
cout << "List EmptY";
return;
}
File * Cur = First;
while (Cur)
{
cout << Cur->Name << endl;
//cout << Cur->Pathto << endl;
if(Cur->Dir)
WriteAll(Cur->Subdir);
Cur = Cur->Next;
}
}

void WriteCur(File * First)
{
if (First == NULL)
{
//cout << "List EmptY";
return;
}
File * Cur = First;
while (Cur)
{
cout << Cur->Name << endl;
//cout << Cur->Pathto << endl;
Cur = Cur->Next;
}
}

void WriteCurSelected(File * First, File * Selected)
{
if (First == NULL)
{
//cout << "List EmptY";
return;
}
File * Cur = First;
while (Cur)
{
if (Cur == Selected)
{
if (Cur->Dir)
{
cout << "->" << Cur->Name << "\\..";// << "<-";
}
else
{
cout << "->" << Cur->Name;// << "<-";
}
}
else
{
cout << "  " << Cur->Name;
if (Cur->Dir)
cout << "\\..";
}
cout << endl;
//cout << Cur->Pathto << endl;
Cur = Cur->Next;
}
}

void Sort(File * First, bool up)
{
File * Cur = First;
bool f = false;
while (!f)
{
f = true;
while (Cur->Next)
{
if (strcmp(Cur->Name, Cur->Next->Name) > 0)
{
//4tototyt;;;
f = false;
}
Cur = Cur->Next;
}
}
}

int main()
{
setlocale(0, "");
system("color E");

File * First;
char Path[200] = "x:\\";
First = FillDir(Path, NULL);

//cout
//_getch();
//WriteCur(First);
//WriteAll(First);

File * CurDirectory = First;
File * Selected = CurDirectory;
unsigned char c = 0;
while (c != 27)
{
system("cls");
WriteCurSelected(CurDirectory, Selected);
c = _getch();
if (c == 224)
{
c = _getch();
switch (c)
{
case 72:
if (Selected->Prev)
Selected = Selected->Prev;
break;
case 75:
if (CurDirectory->PrevDir)
{
CurDirectory = CurDirectory->PrevDir;
Selected = CurDirectory;
while (CurDirectory->Prev)
CurDirectory = CurDirectory->Prev;
}
break;
case 77:
if (Selected->Dir)
{
CurDirectory = Selected->Subdir;
Selected = CurDirectory;
}
break;
case 80:
if(Selected->Next)
Selected = Selected->Next;
break;
default:
break;
}
}
if (c == 13)
{
system(Selected->Pathto);
}
if (c == 's')
{
//Sort(CurDirectory, true);
}
}
//system("DEL x:\\FORDEL");
//system("RMDIR x:\\FORDEL");
return 0;
}*/