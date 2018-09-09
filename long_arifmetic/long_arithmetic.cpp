// long_arifmetic.cpp: определяет точку входа для консольного приложения.
//

#include "stdafx.h"
#include "iostream"
#include "conio.h"
#include "ctime"
#include "iomanip"

using namespace std;

#define type unsigned int
const int N = 1000;

int size(int t)
{
	int a = 1;
	for (int i = 1; i <= t; i++)
	{
		a *= 256;
	}
	return a;
}

int length(type * s)
{
	int i = 0;
	while (s[i++] != '\0');
	return i - 1;
}

void turn(type * a, int lena, type * b, int * lenb)
{
	*lenb = lena;
	int i;
	for (i = 0; i < lena; i++)
	{
		b[i] = a[lena - i - 1];
	}
	b[i] = 0;
}

int check(int x)
{
	if (x > N * 2)
	{
		cout << endl << "Не, ну это уже слишком";
		_getch();
		exit(0);
	}
	return 0;
}

bool more(type * a, int lena, type * b, int lenb)
{
	if (lena > lenb)
		return true;
	else if (lenb > lena)
		return false;
	else
	{
		for (int i = lena - 1; i >= 0; i--)
		{
			if (a[i] > b[i])
				return true;
			else if (b[i] > a[i])
				return false;
		}
	}
	return false;
}

bool more_or_equal(type * a, int lena, type * b, int lenb)
{
	if (lena > lenb)
		return true;
	else if (lenb > lena)
		return false;
	else
	{
		for (int i = lena - 1; i >= 0; i--)
		{
			if (a[i] > b[i])
				return true;
			else if (b[i] > a[i])
				return false;
		}
	}
	return true;
}

void shl(type * a, int * lena)
{
	int len = *lena;
	if (len == 0)
		return;
	for (int i = 1; i <= len; i++)
	{
		a[i - 1] = a[i];
	}
	len--;
	*lena = len;
	check(*lena);
}

void shr(type * a, int * lena)
{
	int len = *lena;
	if (len == 0)
		return;
	len++;
	for (int i = len - 1; i > 0; i--)
		a[i] = a[i - 1];
	a[0] = 0;
	*lena = len;
	check(*lena);
}

void add(int ss, type * a, int lena, type * b, int lenb, type * c, int * lenc)
{
	if (lena < lenb)
	{
		for (int i = 1; i <= lenb - lena; i++)
			a[lena + i] = 0;
	}
	if (lenb < lena)
	{
		for (int i = 1; i <= lena - lenb; i++)
			b[lenb + i] = 0;
	}

	int remnant = 0;
	if (lena < lenb)
	{
		type * pa = a, *pb = b;
		a = pb;
		b = pa;
		int x = lena;
		lena = lenb;
		lenb = x;
	}
	int cur, i;
	for (i = 0; i < lena; i++)
	{
		cur = a[i] + b[i] + remnant;
		if (cur >= ss)
		{
			remnant = 1;
			cur = cur - ss;
		}
		else remnant = 0;
		c[i] = cur;
	}
	if (remnant != 0)
	{
		c[i] = 1;
		i++;
	}
	*lenc = i;
	//i++;
	c[i] = 0;
	check(*lenc);
}

void inc(int ss, type * c, int * lenc)
{
	type one[N];
	int lenone = 1;
	one[0] = 1;
	one[1] = 0;
	add(ss, c, *lenc, one, lenone, c, lenc);
}

void mulc(int ss, type * a, int lena, int b, type * c, int * lenc)
{
	c[0] = 0;
	*lenc = 0;

	for (int i = 0; i < b; i++)
	{
		add(ss, c, *lenc, a, lena, c, lenc);
	}
	c[*lenc] = 0;
	check(*lenc);
}

void mul(int ss, type * a, int lena, type * b, int lenb, type * c, int * lenc)
{
	c[0] = 0;
	*lenc = 0;
	int lend;
	type d[N];
	for (int i = 0; i < lenb; i++)
	{
		d[0] = 0;
		lend = 0;
		mulc(ss, a, lena, b[i], d, &lend);
		lend += i;
		for (int j = lend; j >= i; j--)
			d[j] = d[j - i];
		for (int j = 0; j < i; j++)
			d[j] = 0;
		add(ss, c, *lenc, d, lend, c, lenc);
	}
	/**/
	check(*lenc);
}

void step(int ss, type * a, int lena, int b, type * c, int * lenc)
{
	c[0] = 1;
	c[1] = 0;
	*lenc = 1;

	type c1[N];
	int lenc1;
	for (int i = 0; i < b; i++)
	{
		int j;
		for (j = 0; j < *lenc; j++)
			c1[j] = c[j];
		c1[j] = 0;
		lenc1 = *lenc;
		mul(ss, c1, lenc1, a, lena, c, lenc);
	}
	check(*lenc);
}

bool sub(int ss, type * a, int lena, type * b, int lenb, type * c, int * lenc)
{
	bool sign = false;
	if (lena < lenb)
	{
		for (int i = 1; i <= lenb - lena; i++)
			a[lena + i] = 0;
	}
	if (lenb < lena)
	{
		for (int i = 1; i <= lena - lenb; i++)
			b[lenb + i] = 0;
	}

	int remnant = 0;
	if (more(b, lenb, a, lena))//lena < lenb || (lena == lenb && a[lena - 1] < b[lenb - 1]))
	{
		sign = true;
		type * pa = a, *pb = b;
		a = pb;
		b = pa;
		int x = lena;
		lena = lenb;
		lenb = x;
	}
	int cur, i;
	for (i = 0; i < lena; i++)
	{
		cur = a[i] - b[i] - remnant;
		if (cur < 0)
		{
			remnant = 1;
			cur = cur + ss;
		}
		else remnant = 0;
		c[i] = cur;
	}
	c[i] = 0;   //
	i++;
	c[i]= 0;
	while (c[i] == 0)
		i--;
	*lenc = i + 1;
	return sign;
}

void dec(int ss, type * c, int * lenc)
{
	type one[N];
	int lenone = 1;
	one[0] = 1;
	one[1] = 0;
	sub(ss, c, *lenc, one, lenone, c, lenc);
}

bool isnull(type * s, int lens)
{
	for (int i = 0; i < lens; i++)
		if (s[i] != 0)
			return false;
	return true;
}

void div(int ss, type * a, int lena, type * b, int lenb, type * c, int * lenc)
{
	if (lenb == 0) return;
	type del[N], select[N];
	del[0] = 0;
	c[0] = 0;
	int lenres = 0;
	int lendel = 0, lenselect;
	int i = lena, k;
	bool null = false;
	do
	{
		while (more(b, lenb, del, lendel) && i > 0)
		{
			if (i < lena - lenb && null)
			{
				lenres++;
				c[lenres] = 0;
			}
			shr(del, &lendel);
			//while (del[0] == 0 && lendel > 0)
			//{
			//	shl(del, &lendel);
			//}
			i--;
			if (lendel == 0 && a[i] != 0)
				lendel++;
			/*if (a[i] != 0)
			{
				del[0] = a[i];
			}
			else
			{
				lendel--;
			}*/
			del[0] = a[i];
			del[lendel] = 0;
			null = true;
		}
		if (isnull(del, lendel))
		{
			c[lenres] = 0;
			lenres++;
			break;
		}
		null = false;
		select[0] = 0;
		lenselect = 0;
		k = 0;
		while (!more(select, lenselect, del, lendel))
		{
			add(ss, select, lenselect, b, lenb, select, &lenselect);
			k++;
		}
		sub(ss, select, lenselect, b, lenb, select, &lenselect);
		k--;
		c[lenres] = k;
		lenres++;
		c[lenres] = 0;
		sub(ss, del, lendel, select, lenselect, del, &lendel);
	}
	while (i > 0);
	*lenc = lenres;
	for (int i = 0; i < lenres; i++)
		del[i] = c[i];
	lendel = lenres;
	turn(del, lendel, c, lenc);
}

void mod(int ss, type * a, int lena, type * b, int lenb, type * c, int * lenc)
{
	c[0] = 0;
	*lenc = 0;
	type resdiv[N];
	resdiv[0] = 0;
	int lenresdiv = 0;
	div(ss, a, lena, b, lenb, resdiv, &lenresdiv);
	type resmul[N];
	int lenresmul = 0;
	mul(ss, resdiv, lenresdiv, b, lenb, resmul, &lenresmul);
	while (resmul[0] == 0 && lenresmul > lena)
	{
		shl(resmul, &lenresmul);
	}
	sub(ss, a, lena, resmul, lenresmul, c, lenc);
}

int StrToInt(type * s, int lens)
{
	int res = 0;
	for (int i = lens - 1; i >= 0; i--)
		res = res * 10 + s[i];
	return res;
}

void decto(int ss, type * s, int lens, type * c, int * lenc)
{
	int len = 0;
	type ssstr[N];
	int lenssstr = 0;
	int savess, j;
	savess = ss;
	for (j = 0; savess != 0; j++)
	{
		ssstr[j] = savess % 10;
		savess = savess / 10;
	}
	ssstr[j] = 0;
	lenssstr = j;
	int i;

	type del[N], needsub[N], res[N];
	del[0] = 0;
	needsub[0] = 0;
	res[0] = 0;
	int lendel = 0, lenneedsub = 0, lenres = 0;

	while (more_or_equal(s, lens, ssstr, lenssstr))
	{
		div(10, s, lens, ssstr, lenssstr, del, &lendel);
		mul(10, del, lendel, ssstr, lenssstr, needsub, &lenneedsub);
		sub(10, s, lens, needsub, lenneedsub, res, &lenres);
		c[len++] = StrToInt(res, lenres);
		for (i = 0; i < lendel; i++)
		{
			s[i] = del[i];
		}
		s[i] = 0;
		lens = i;
	}
	if (lens != 0)
		c[len++] = StrToInt(s, lens);
	c[len] = 0;
	*lenc = len;
}

void todec(int ss, type * c, int lenc, type * s, int * lens)
{
	s[0] = 0;
	*lens = 0;
	type d[N], f[N];
	int lend = 0, lenf = 0;
	type ssstr[N];
	int lenssstr = 0;
	int savess, j;
	savess = ss;
	for (j = 0; savess != 0; j++)
	{
		ssstr[j] = savess % 10;
		savess = savess / 10;
	}
	ssstr[j] = 0;
	lenssstr = j;
	for (int i = 0; i < lenc; i++)
	{
		step(10, ssstr, lenssstr, i, d, &lend);
		mulc(10, d, lend, c[i], f, &lenf);
		add(10, s, *lens, f, lenf, s, lens);
	}
}

void readstr(type * s, int * lens)
{
	/*if (sizeof(type) == 1)
	{
		cin >> s;
		*lens = length(s);
		for (int i = 0; s[i] != 0; i++)
			s[i] = s[i] - 48;
	}
	else*/
	{
		int i = 0;
		while (true)
		{
			unsigned char c = _getch();
			if (c == 13)
				break;
			if (c < 48 || c > 57)
			{
				continue;
				//cout << "ERROR";
				//_getch();
				//exit(0);
			}
			cout << int(c - 48);
			s[i] = c - 48;
			i++;
		}
		s[i] = 0;
		*lens = i;
		cout << endl;
	}
}

void RandomS(type * s, int lens)
{
	s[0] = (rand() % 9) + 1;
	for (int i = 1; i < lens; i++)
	{
		s[i] = rand() % 10;
	}
	s[lens] = 0;
}

bool equal(type * s1, int lens1, type * s2, int lens2)
{
	if (lens1 != lens2)
		return false;
	for (int i = 0; i < lens1; i++)
		if (s1[i] != s2[i])
			return false;
	return true;
}

void writestr_(type * s, int length)
{
	cout << setw(3) << right;
	for (int i = 0; i < length; i++)
	{
		cout << (int)s[i] << ' ';
	}
	cout << endl;
}

void writestr(type * s, int length)
{
	if (length == 0 || length == 1 && s[0] == 0)
	{
		cout << '0';
	}
	else
	for (int i = 0; i < length; i++)
	{
		cout << (int)s[i];
	}
	cout << endl;
}

void menu()
{
	cout << "Что вы хотите сделать? Нажмите соответствующую цифру\n\n";
	cout << "1.\nСложить(+)\nВычесть(-)\nУмножить(*)\nПоделить(/)\nНайти остаток от деления(%)\nСравнить 2 числа(?),\nВозвести в натур. степень(^)\nПобайтово сдвинуть число(>> или <<)\n(в системе счисление с основанием n)\n\n";
	cout << "2.\nЗапустить проверку правильности перевода в с/с с основанием n";
}

void error(int i)
{
	if (i == 1)
		cout << "Операция введена некорректно";
}

void main()
{
	setlocale(0, "");
	/*type s1[N], s2[N], s3[N], s4[N], s5[N], s6[N];
	int lens1, lens6, lens5, lens4, lens3, lens2;
	readstr(s1, &lens1);
	readstr(s2, &lens2);
	turn(s1, lens1, s3, &lens3);
	turn(s2, lens2, s4, &lens4);
	mod(10, s3, lens3, s4, lens4, s5, &ens5l);
	turn(s5, lens5, s6, &len6)s;
	writestr(s6, lens6);
	_getch();*/
	type c = 0;
	while (true)
	{
		system("cls");
		menu();
		c = 49;
		int i;
		bool f = 0;
		int q;
		//int TStart, TCur;
		int MaxNumbCheck, NumbCheck, OsnovanieSS = 256;
		switch (c - 48)
		{
			case 1:
				system("cls");
				cout << "Сложить(+)\nВычесть(-)\nУмножить(*)\nПоделить(/)\nНайти остаток от деления(%)\nСравнить 2 числа(?),\nВозвести в натур. степень(^)\n(в системе счисление с основанием n)\n\n" <<
					"Введите основание системы счисления (в десятичном виде)\n";
				int b;
				cin >> b;
				cout << endl;
				cout << "Введите 1ое число (в десятичной с/c),\nоперацию(на следующей строке),\nзатем 2ое число(на следующей строке)\n";
				type c1[N], c2[N], res1[N], c1s[N], c2s[N], res2[N], 
							  c1r[N], c2r[N], res1r[N], c1sr[N], c2sr[N], res2r[N];
				unsigned char s[3];
				int lenc1, lenc2, lenc1s, lenc2s, lenres1, lenres2,
					lenc1r, lenc2r, lenc1sr, lenc2sr, lenres1r, lenres2r;
				readstr(c1, &lenc1);
				cin >> s;
				readstr(c2, &lenc2);
				switch (s[0])
				{
					case '+'://PLUS
						if (s[1] != 0)
						{
							error(1);
							break;
						}
						turn(c1, lenc1, c1r, &lenc1r);
						turn(c2, lenc2, c2r, &lenc2r);
						add(10, c1r, lenc1r, c2r, lenc2r, res1r, &lenres1r);
						turn(res1r, lenres1r, res1, &lenres1);
						cout << '=' << endl;
						writestr(res1, lenres1);
						cout << endl << "В системе счисления с осн. " << b << ':' << endl;
						decto(b, c1r, lenc1r, c1s, &lenc1s);
						decto(b, c2r, lenc2r, c2s, &lenc2s);
						if (b > 10)
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr_(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr_(c2sr, lenc2sr);
							add(b, c1s, lenc1s, c2s, lenc2s, res2r, &lenres2r);
							cout << '=' << endl;
							turn(res2r, lenres2r, res2, &lenres2);
							writestr_(res2, lenres2);
						}
						else
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr(c2sr, lenc2sr);
							add(b, c1s, lenc1s, c2s, lenc2s, res2r, &lenres2r);
							cout << '=' << endl;
							turn(res2r, lenres2r, res2, &lenres2);
							writestr(res2, lenres2);
						}
						cout << "Результат в десятичный вид:\n";
						c1[0] = 0;
						lenc1 = 0;
						todec(b, res2r, lenres2r, c1, &lenc1);
						turn(c1, lenc1, c2, &lenc2);
						writestr(c2, lenc2);
						break;
					case '-'://SUB
						if (s[1] != 0)
						{
							error(1);
							break;
						}
						turn(c1, lenc1, c1r, &lenc1r);
						turn(c2, lenc2, c2r, &lenc2r);
						f = sub(10, c1r, lenc1r, c2r, lenc2r, res1r, &lenres1r);
						turn(res1r, lenres1r, res1, &lenres1);
						cout << '=' << endl;
						if (f) cout << '-';
						writestr(res1, lenres1);
						cout << endl << "В системе счисления с осн. " << b << ':' << endl;
						decto(b, c1r, lenc1r, c1s, &lenc1s);
						decto(b, c2r, lenc2r, c2s, &lenc2s);
						if (b > 10)
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr_(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr_(c2sr, lenc2sr);
							sub(b, c1s, lenc1s, c2s, lenc2s, res2r, &lenres2r);
							cout << '=' << endl;
							if (f) cout << '-';
							turn(res2r, lenres2r, res2, &lenres2);
							writestr_(res2, lenres2);
						}
						else
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr(c2sr, lenc2sr);
							sub(b, c1s, lenc1s, c2s, lenc2s, res2r, &lenres2r);
							cout << '=' << endl;
							if (f) cout << '-';
							turn(res2r, lenres2r, res2, &lenres2);
							writestr(res2, lenres2);
						}
						cout << "Результат в десятичный вид:\n";
						c1[0] = 0;
						lenc1 = 0;
						todec(b, res2r, lenres2r, c1, &lenc1);
						turn(c1, lenc1, c2, &lenc2);
						if (f) cout << '-';
						writestr(c2, lenc2);
						break;
					case '*'://MUL
						if (s[1] != 0)
						{
							error(1);
							break;
						}
						turn(c1, lenc1, c1r, &lenc1r);
						turn(c2, lenc2, c2r, &lenc2r);
						mul(10, c1r, lenc1r, c2r, lenc2r, res1r, &lenres1r);
						turn(res1r, lenres1r, res1, &lenres1);
						cout << '=' << endl;
						writestr(res1, lenres1);
						cout << endl << "В системе счисления с осн. " << b << ':' << endl;
						decto(b, c1r, lenc1r, c1s, &lenc1s);
						decto(b, c2r, lenc2r, c2s, &lenc2s);
						if (b > 10)
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr_(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr_(c2sr, lenc2sr);
							mul(b, c1s, lenc1s, c2s, lenc2s, res2r, &lenres2r);
							cout << '=' << endl;
							turn(res2r, lenres2r, res2, &lenres2);
							writestr_(res2, lenres2);
						}
						else
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr(c2sr, lenc2sr);
							mul(b, c1s, lenc1s, c2s, lenc2s, res2r, &lenres2r);
							cout << '=' << endl;
							turn(res2r, lenres2r, res2, &lenres2);
							writestr(res2, lenres2);
						}
						cout << "Результат в десятичный вид:\n";
						c1[0] = 0;
						lenc1 = 0;
						todec(b, res2r, lenres2r, c1, &lenc1);
						turn(c1, lenc1, c2, &lenc2);
						writestr(c2, lenc2);
						break;
					case '/'://DEL
						if (s[1] != 0)
						{
							error(1);
							break;
						}
						turn(c1, lenc1, c1r, &lenc1r);
						turn(c2, lenc2, c2r, &lenc2r);
						div(10, c1r, lenc1r, c2r, lenc2r, res1r, &lenres1r);
						turn(res1r, lenres1r, res1, &lenres1);
						cout << '=' << endl;
						writestr(res1, lenres1);
						cout << endl << "В системе счисления с осн. " << b << ':' << endl;
						decto(b, c1r, lenc1r, c1s, &lenc1s);
						decto(b, c2r, lenc2r, c2s, &lenc2s);
						if (b > 10)
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr_(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr_(c2sr, lenc2sr);
							div(b, c1s, lenc1s, c2s, lenc2s, res2r, &lenres2r);
							cout << '=' << endl;
							turn(res2r, lenres2r, res2, &lenres2);
							writestr_(res2, lenres2);
						}
						else
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr(c2sr, lenc2sr);
							div(b, c1s, lenc1s, c2s, lenc2s, res2r, &lenres2r);
							cout << '=' << endl;
							turn(res2r, lenres2r, res2, &lenres2);
							writestr(res2, lenres2);
						}
						cout << "Результат в десятичный вид:\n";
						c1[0] = 0;
						lenc1 = 0;
						todec(b, res2r, lenres2r, c1, &lenc1);
						turn(c1, lenc1, c2, &lenc2);
						writestr(c2, lenc2);
						break;
					case '%'://DEL
						if (s[1] != 0)
						{
							error(1);
							break;
						}
						turn(c1, lenc1, c1r, &lenc1r);
						turn(c2, lenc2, c2r, &lenc2r);
						mod(10, c1r, lenc1r, c2r, lenc2r, res1r, &lenres1r);
						turn(res1r, lenres1r, res1, &lenres1);
						cout << '=' << endl;
						writestr(res1, lenres1);
						cout << endl << "В системе счисления с осн. " << b << ':' << endl;
						decto(b, c1r, lenc1r, c1s, &lenc1s);
						decto(b, c2r, lenc2r, c2s, &lenc2s);
						if (b > 10)
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr_(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr_(c2sr, lenc2sr);
							mod(b, c1s, lenc1s, c2s, lenc2s, res2r, &lenres2r);
							cout << '=' << endl;
							turn(res2r, lenres2r, res2, &lenres2);
							writestr_(res2, lenres2);
						}
						else
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr(c2sr, lenc2sr);
							mod(b, c1s, lenc1s, c2s, lenc2s, res2r, &lenres2r);
							cout << '=' << endl;
							turn(res2r, lenres2r, res2, &lenres2);
							writestr(res2, lenres2);
						}
						cout << "Результат в десятичный вид:\n";
						c1[0] = 0;
						lenc1 = 0;
						todec(b, res2r, lenres2r, c1, &lenc1);
						turn(c1, lenc1, c2, &lenc2);
						writestr(c2, lenc2);
						break;
					case '^'://STEP
						if (s[1] != 0)
						{
							error(1);
							break;
						}
						turn(c1, lenc1, c1r, &lenc1r);
						turn(c2, lenc2, c2r, &lenc2r);
						i = StrToInt(c2, lenc2);
						step(10, c1r, lenc1r, i, res1r, &lenres1r);
						turn(res1r, lenres1r, res1, &lenres1);
						cout << '=' << endl;
						writestr(res1, lenres1);
						cout << endl << "В системе счисления с осн. " << b << ':' << endl;
						decto(b, c1r, lenc1r, c1s, &lenc1s);
						decto(b, c2r, lenc2r, c2s, &lenc2s);
						if (b > 10)
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr_(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr_(c2sr, lenc2sr);
							step(b, c1s, lenc1s, i, res2r, &lenres2r);
							cout << '=' << endl;
							turn(res2r, lenres2r, res2, &lenres2);
							writestr_(res2, lenres2);
						}
						else
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr(c2sr, lenc2sr);
							step(b, c1s, lenc1s, i, res2r, &lenres2r);
							cout << '=' << endl;
							turn(res2r, lenres2r, res2, &lenres2);
							writestr(res2, lenres2);
						}
						cout << "Результат в десятичный вид:\n";
						c1[0] = 0;
						lenc1 = 0;
						todec(b, res2r, lenres2r, c1, &lenc1);
						turn(c1, lenc1, c2, &lenc2);
						writestr(c2, lenc2);
						break;
					case '?'://SRAVN
						if (s[1] != 0)
						{
							error(1);
							break;
						}
						turn(c1, lenc1, c1r, &lenc1r);
						turn(c2, lenc2, c2r, &lenc2r);
						cout << '=' << endl;
						if (equal(c1r, lenc1r, c2r, lenc2r)) cout << '=';
						else if (more(c1r, lenc1r, c2r, lenc2r)) cout << '>';
						else cout << '<';
						cout << endl;
						cout << endl << "В системе счисления с осн. " << b << ':' << endl;
						decto(b, c1r, lenc1r, c1s, &lenc1s);
						decto(b, c2r, lenc2r, c2s, &lenc2s);
						if (b > 10)
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr_(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr_(c2sr, lenc2sr);
							cout << '=' << endl;
							if (equal(c1s, lenc1s, c2s, lenc2s)) cout << '=';
							else if (more(c1s, lenc1s, c2s, lenc2s)) cout << '>';
							else cout << '<';
							cout << endl;
						}
						else
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr(c2sr, lenc2sr);
							cout << '=' << endl;
							if (equal(c1s, lenc1s, c2s, lenc2s)) cout << '=';
							else if (more(c1s, lenc1s, c2s, lenc2s)) cout << '>';
							else cout << '<';
							cout << endl;
						}
						cout << "Результат в десятичный вид:\n";
						if (equal(c1s, lenc1s, c2s, lenc2s)) cout << '=';
						else if (more(c1s, lenc1s, c2s, lenc2s)) cout << '>';
						else cout << '<';
						break;
					case '<'://shl
						if (s[1] != '<' || s[2] != 0)
						{
							error(1);
							break;
						}
						turn(c1, lenc1, c1r, &lenc1r);
						turn(c2, lenc2, c2r, &lenc2r);
						i = StrToInt(c2, lenc2);
						//q = lenc1;
						for (int j = 0; j < i; j++)
							shl(c1, &lenc1);
						//lenc1 = q;
						cout << '=' << endl;
						//turn(c1r, lenc1r, c1, &lenc1);
						writestr(c1, lenc1);
						cout << endl << "В системе счисления с осн. " << b << ':' << endl;
						decto(b, c1r, lenc1r, c1s, &lenc1s);
						decto(b, c2r, lenc2r, c2s, &lenc2s);
						if (b > 10)
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr_(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr_(c2sr, lenc2sr);
							//q = lenc1s;
							for (int j = 0; j < i; j++)
								shr(c1s, &lenc1s);
							//lenc1s = q;
							cout << '=' << endl;
							turn(c1s, lenc1s, res2, &lenres2);
							writestr_(res2, lenres2);
						}
						else
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr(c2sr, lenc2sr);
							//q = lenc1s;
							for (int j = 0; j < i; j++)
								shr(c1s, &lenc1s);
							//lenc1s = q;
							cout << '=' << endl;
							turn(c1s, lenc1s, res2, &lenres2);
							writestr(res2, lenres2);
						}
						cout << "Результат в десятичный вид:\n";
						c1[0] = 0;
						lenc1 = 0;
						todec(b, c1s, lenc1s, c1, &lenc1);
						turn(c1, lenc1, c2, &lenc2);
						writestr(c2, lenc2);
						break;
					case '>'://shr
						if (s[1] != '>' || s[2] != 0)
						{
							error(1);
							break;
						}
						turn(c1, lenc1, c1r, &lenc1r);
						turn(c2, lenc2, c2r, &lenc2r);
						i = StrToInt(c2, lenc2);
						q = lenc1;
						for (int j = 0; j < i; j++)
							shr(c1, &lenc1);
						lenc1 = q;
						cout << '=' << endl;
						//turn(c1r, lenc1r, c1, &lenc1);
						writestr(c1, lenc1);
						cout << endl << "В системе счисления с осн. " << b << ':' << endl;
						decto(b, c1r, lenc1r, c1s, &lenc1s);
						decto(b, c2r, lenc2r, c2s, &lenc2s);
						if (b > 10)
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr_(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr_(c2sr, lenc2sr);
							q = lenc1s;
							for (int j = 0; j < i; j++)
								shl(c1s, &lenc1s);
							lenc1s = q;
							cout << '=' << endl;
							turn(c1s, lenc1s, res2, &lenres2);
							writestr_(res2, lenres2);
						}
						else
						{
							turn(c1s, lenc1s, c1sr, &lenc1sr);
							writestr(c1sr, lenc1sr);
							cout << s << endl;
							turn(c2s, lenc2s, c2sr, &lenc2sr);
							writestr(c2sr, lenc2sr);
							q = lenc1s;
							for (int j = 0; j < i; j++)
								shl(c1s, &lenc1s);
							lenc1s = q;
							cout << '=' << endl;
							turn(c1s, lenc1s, res2, &lenres2);
							writestr(res2, lenres2);
						}
						cout << "Результат в десятичный вид:\n";
						c1[0] = 0;
						lenc1 = 0;
						todec(b, c1s, lenc1s, c1, &lenc1);
						turn(c1, lenc1, c2, &lenc2);
						writestr(c2, lenc2);
						break;
					default:
						error(1);
						break;
				}
				cout << "Для продолжения нажмите enter";
				_getch();
				break;
			/*case 2:
				system("cls");
				cout << "Введите основание системы счисления" << endl;
				cin >> OsnovanieSS;
				TStart = clock();
				type s1[N], s2[N], s3[N], s1r[N], s3r[N];
				int lens1, lens2, lens3, lens1r, lens3r;
				type c;
				MaxNumbCheck = 1000;
				NumbCheck = 0;
				srand(time(0));
				do
				{
					NumbCheck++;
					system("cls");
					TCur = (clock() - TStart) / 100;
					cout << "Прошло: " << TCur / 10.0 << "c" << endl;
					cout << "Осталось ~" << (MaxNumbCheck - NumbCheck) * ((clock() - TStart) / NumbCheck) / 100 / 10.0 << "c" << endl;
					cout << "Перевод в "<< OsnovanieSS << "ую систему счисления" << endl;
					cout << "Число №" << NumbCheck << endl;
					lens1 = rand() % 100;//N / 2;
					RandomS(s1, lens1);
					writestr(s1, lens1);
					turn(s1, lens1, s1r, &lens1r);
					decto(OsnovanieSS, s1r, lens1r, s2, &lens2);
					writestr_(s2, lens2);
					todec(OsnovanieSS, s2, lens2, s3, &lens3);
					turn(s3, lens3, s3r, &lens3r);
					writestr(s3r, lens3r);
					if (equal(s1, lens1, s3r, lens3r))
						cout << "equal";
					else
					{
						cout << "WARNING! not equal" << endl << "Нажмите любую клавишу";
						c = _getch();
						if (c == 27)
							break;// exit(0);
					}
					cout << endl;
					cout << "next..." << endl << endl;
				}
				while (NumbCheck < MaxNumbCheck);
				_getch();
				break;*/
			default:
				exit(0);
				break;
		}
	}

}