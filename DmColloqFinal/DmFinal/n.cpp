#include "n.h"
#include <iostream>
using namespace std;

// N-1
// Функция возвращает 2 - если первое число больше второго, 0, если равно, 1 иначе.
int com_nn_d(const N * n1, const N * n2) {
    // Сравнение по степеням
    if (n1->n > n2->n)
        return 2;
    else if (n1->n < n2->n)
        return 1;

    // Степени оказались равными. Сравнение по цифрам
    for (int i = n1->n; i >= 0; --i) {
        if (n1->a[i] > n2->a[i])
            return 2;
        else if (n1->a[i] < n2->a[i])
            return 1;
    }

    // Значения оказались равными
    return 0;
}

void callN1() {
    N n1, n2;
    cout << "Enter first natural number:\nA = ";
    while (readN(&n1) == false)
        cout << "Something was wrong, try again:\nA = ";
    cout << "Enter second natural number:\nB = ";
    while (readN(&n2) == false)
        cout << "Something was wrong, try again:\nB = ";
    switch (com_nn_d(&n1, &n2)) {
    case 2:
        cout << "A > B\n";  break;
    case 1:
        cout << "A < B\n";  break;
    case 0:
        cout << "A == B\n"; break;
    }
}

// N-2
bool nzer_n_b(const N * n1)
{
    if (n1->n == 0 && n1->a[0] == 0)
        return false;
    return true;
}

void callN2() {
    N n;
    cout << "Enter natural number:\nN = ";
    while (readN(&n) == false)
        cout << "I expect one natural number, try again:\nN = ";
    if (nzer_n_b(&n) == true)
        cout << "N != 0\n";
    else
        cout << "N == 0\n";
}

// N-3
bool add_1n_n(const N * n, N * result)
{
	int i;
	if  (n->n == ARR_SIZE - 1) {
		for (i = 0; i <= n->n; ++i)
			if (n->a[i] != 9)
				break;
		if (i == n->n + 1)
			return false;
	}

	*result = *n;
	for (i = 0; i <= n->n; ++i) {
       result->a[i] = n->a[i] + 1;
       if (result->a[i] == 10)
           result->a[i] = 0;
       else
           break;
    }
	if (i > n->n) {
		result->a[i] = 1;
		result->n++;
	}
    return true;
}

void callN3() {
    N n, res;
    cout << "Enter natural number:\nN = ";
    while (readN(&n) == false)
        cout << "I expect one natural number, try again:\nN = ";
    if (add_1n_n(&n, &res) == true) {
        cout << "N + 1 = ";
        writeN(&res);
        cout << endl;
    }
    else
        cout << "Type overflow, you purposely do this?\n";
}

// N-4
void summNN(const N * n1, const N * n2, N * result) // n2 > n1
{
    int i, sum;
    bool extra = 0;
    result->n = n2->n;
    for (i = 0; i <= n1->n; ++i) {
        sum = n1->a[i] + n2->a[i] + extra;
        extra = (sum / 10) > 0;
        result->a[i] = sum % 10;
    }
    for (; i <= n2->n; ++i) {
        sum = n2->a[i] + extra;
        extra = (sum / 10) > 0;
        result->a[i] = sum % 10;
    }
    if (extra) {
        result->n++;
        result->a[i] = 1;
    }
}

bool add_nn_n(const N * n1, const N * n2, N * result)
{
    if (n1->n + 1 == ARR_SIZE || n2->n + 1 == ARR_SIZE)
        return false;
    int k = com_nn_d(n1, n2);
    switch (k)
    {
    case 0:
    case 1:
        summNN(n1, n2, result);
        break;
    case 2:
        summNN(n2, n1, result);
        break;
    default:
        break;
    }
    return true;
}

void callN4() {
    N n1, n2, res;
    cout << "Enter first natural number:\nA = ";
    while (readN(&n1) == false)
        cout << "Something was wrong, try again:\nA = ";
    cout << "Enter second natural number:\nB = ";
    while (readN(&n2) == false)
        cout << "Something was wrong, try again:\nB = ";
    if (add_nn_n(&n1, &n2, &res) == true) {
        cout << "A + B = ";
        writeN(&res);
        cout << endl;
    }
    else
        cout << "Type overflow, sorry =(\n";
}

// N-5
//Функция записывает по указателю nResult результат вычислений, если первое число меньше, то возвращает False
bool sub_nn_n(const N * nMost, const N * nLess, N * nResult)
{
    nResult->a[0] = 0;
    bool debt = 0;		//Наличие "занятого" из следующего разряда числа
    int i;				//Счетчик
    if (com_nn_d(nMost, nLess)==1) return false; //Проверяем, действительно ли первое число не меньше второго
    else if (com_nn_d(nMost, nLess) == 2)//Иначе начинаем вычитать в столбик
    {
        for (i = 0; i <= nLess->n; ++i) //Вычитаем совпавшие по разрядам цифры n1 и n2
        {
            if ((nMost->a[i] - debt - nLess->a[i]) >= 0)
            {
                nResult->a[i] = nMost->a[i] - debt - nLess->a[i];
                debt = 0;
            }
            else
            {
                nResult->a[i] = nMost->a[i] - debt - nLess->a[i] + 10;
                debt = 1;
            }
        }
        for (; i <= nMost->n; ++i) //Дописываем остаток n1 с учетом появившегося долга
        {
            if ((nMost->a[i] - debt) < 0) nResult->a[i] = 9;
            else
            {
                nResult->a[i] = nMost->a[i] - debt;
                debt = 0;
            }
        }
        for (--i; nResult->a[i] == 0; --i) continue; //Сокращение незначащих нулей
        nResult->n = i;
    }
    else { nResult->n = 0; nResult->a[0] = 0; } //Если числа равны, то записываем в результат 0
    return true;
}

void callN5() {
    N n1, n2, res;
    cout << "I think it would be better if first number will be bigger than second one.\n";
    cout << "Enter first natural number:\nA = ";
    while (readN(&n1) == false)
        cout << "Something was wrong, try again:\nA = ";
    cout << "Enter second natural number:\nB = ";
    while (readN(&n2) == false)
        cout << "Something was wrong, try again:\nB = ";
    if (sub_nn_n(&n1, &n2, &res) == true) {
        cout << "A - B = ";
        writeN(&res);
        cout << endl;
    }
    else
        cout << "A < B, I warned, my friend\n";
}

// N-6
bool mul_nd_n(const N* number, int a, N * result)
{
    if(a > 9 || a < 0) // проверка а - цифра
    {
        return false;
    }
    if(number->n == 100 && a != 1 && a != 0)// выход за пределы массива
    {
        return false;
    }

    if(a == 0)
    {
        for(int i = 0; i <= number->n; ++i)
            result->a[i] = 0;
        result->n = 0;
        return true;
    }
    result->n = number->n;
    if(a == 1)
    {
        for(int i = 0; i <= number->n; ++i)
            result->a[i] = number->a[i];
        return true;
    }

    int temp = 0;//то что держим в уме
    int mul = 1;//результат умножения
    for(int i = 0; i <= number->n; ++i)
    {
        mul = temp + number->a[i] * a;
        temp = mul / 10;
        result->a[i] = mul % 10;
    }
    if(temp != 0)
    {
        result->a[result->n + 1] = temp;
        result->n = result->n + 1;
    }
    return true;
}

void callN6() {
    N n, res;
    int d;
	char ch = 0;
    cout << "Enter natural number:\nN = ";
    while (readN(&n) == false)
        cout << "I expect only one natural number, try again:\nN = ";
    cout << "Enter digit:\nd = ";
    while (!(cin >> d) || (ch = cin.get()) != '\n' || d < 0 || d > 9) {
        cout << "Error input, I expect one digit like \'3\' or \'7\':\nd = ";
        cin.clear();
		if (ch != '\n') {
			while (cin.get() != '\n')
				continue;
		}
		ch = 0;
    }
    if (mul_nd_n(&n, d, &res) == true) {
        cout << "N * d = ";
        writeN(&res);
        cout << endl;
    }
    else
        cout << "Type overflow, sorry about this\n";
}

// N-7
bool mul_nk_n(const N*n, int k, N * result)
{
    if (k < 0 || n->n + k >= ARR_SIZE)
        return false;

    result->n = n->n + k;
    for (int i = 0; i <= n->n; ++i)
        result->a[i + k] = n->a[i];
    for (int i = 0; i < k; i++)
        result->a[i] = 0;
    return true;
}

void callN7() {
    N n, res;
    int k;
	char ch = 0;
    cout << "Enter natural number:\nN = ";
    while (readN(&n) == false)
        cout << "I expect only one natural number, try again:\nN = ";
    cout << "Enter number:\nk = ";
    
	while (!(cin >> k) || (ch = cin.get()) != '\n' || k < 0) {
		cout << "Error input, I expect positive number.\nk = ";
		cin.clear();
		if (ch != '\n') {
			while (cin.get() != '\n')
				continue;
		}
		ch = 0;
	}

    if (mul_nk_n(&n, k, &res) == true) {
        cout << "N * 10^k = ";
        writeN(&res);
        cout << endl;
    }
    else
        cout << "Type overflow, sorry about this\n";
}

// N-8
bool mul_nn_n(const N * n1, const N * n2, N * result) {
    // Проверка на выход за границы:
    if (n1->n + n2->n + 1 >= ARR_SIZE)
        return false;

    // Сделаем так, чтобы n1 > n2:
    const N * pnTemp;
    if (n1->n < n2->n) {
        pnTemp = n1;
        n1 = n2;
        n2 = pnTemp;
    }

    // Умножаем по одной цифре на число, сразу складывая промежуточные результаты:
    N nk;
    N nd;
    N sum;
    mul_nd_n(n1, n2->a[0], result);
    sum = *result;
    for (int i2 = 1; i2 <= n2->n; ++i2) {
        mul_nd_n(n1, n2->a[i2], &nd);
        mul_nk_n(&nd, i2, &nk);
        add_nn_n(&sum, &nk, result);
        sum = *result;
    }
    return true;
}

void callN8() {
    N n1, n2, res;
    cout << "Enter first natural number:\nA = ";
    while (readN(&n1) == false)
        cout << "Something was wrong, try again:\nA = ";
    cout << "Enter second natural number:\nB = ";
    while (readN(&n2) == false)
        cout << "Something was wrong, try again:\nB = ";
    if (mul_nn_n(&n1, &n2, &res) == true) {
        cout << "A * B = ";
        writeN(&res);
        cout << endl;
    }
    else
        cout << "Type overflow =(\n";
}

// N-9
bool sub_ndn_n(const N* n1, const N* n2, int d, N* result){
    //переменная для умножение на число
    N afterMul;
    if (mul_nd_n(n2, d, &afterMul) == false) //умножаем
        return false;
    if(sub_nn_n(n1, &afterMul, result)){
        //отнимаем, если все хорошо возвращаем правду
        return true;
    }
    //если второе натуральное больше первого - ложь
    return false;
}

void callN9() {
    N n1, n2, res;
    int d;
    char ch = 0;
    cout << "Enter first natural number:\nA = ";
    while (readN(&n1) == false)
        cout << "Something was wrong, try again:\nA = ";
    cout << "Enter second natural number:\nB = ";
    while (readN(&n2) == false)
        cout << "Something was wrong, try again:\nB = ";
    cout << "Enter number:\nd = ";
    while (!(cin >> d) || (ch = cin.get()) != '\n' || d < 0 || d > 9) {
        cout << "Error input, I expect one digit like \'3\' or \'7\':\nd = ";
        cin.clear();
        if (ch != '\n') {
            while (cin.get() != '\n')
                continue;
        }
        ch = 0;
    }
    if (sub_ndn_n(&n1, &n2, d, &res) == true) {
        cout << "A - d*B = ";
        writeN(&res);
        cout << endl;
    }
    else
        cout << "A - d*B < 0 or Type overflow. Both variants are possible\n";
}

// N-10
//Возвращает TRUE если всё выполнено без ошибок и FALSE иначе
bool div_nn_dk(const N * n1, const N * n2, N * result)
{
    N tmp, tmp_1, first;
    first.a[0] = 0, first.n = 0;
    if (com_nn_d(n1, n2) == 1) return false;
    if (com_nn_d(n1, &first) == 0) return false;
    if (com_nn_d(n2, &first) == 0) return false;

    tmp.n = 0;
    for (int i = 0; i <= n2->n; i++)
    {
        tmp.a[i] = n1->a[n1->n - n2->n + i];
        tmp.n++;
    }
    tmp.n--;

    if (1 == com_nn_d(&tmp, n2))
    {
        for(int i = tmp.n; i >= 0; i--)
            tmp.a[i+1] = tmp.a[i];
        tmp.n++;
        tmp.a[0] = n1->a[n1->n - n2->n - 1];
    }

    tmp_1.n = 0;
    for (int i = 0; i <= n2->n; i++)
    {
        tmp_1.a[i] = n2->a[i];
        tmp_1.n++;
    }
    tmp_1.n--;
    while (com_nn_d(&tmp, &tmp_1) != 1)
    {
        add_nn_n(&tmp_1, n2, &tmp_1);
        first.a[0]++;
    }

    mul_nk_n(&first, n1->n - tmp.n, result);
    return true;
}

void callN10() {
    N n1, n2, res;
    cout << "Enter first natural number:\nA = ";
    while (readN(&n1) == false)
        cout << "Something was wrong, try again:\nA = ";
    cout << "Enter second natural number:\nB = ";
    while (readN(&n2) == false)
        cout << "Something was wrong, try again:\nB = ";
    if (div_nn_dk(&n1, &n2, &res) == true) {
    cout << "A / B ~= ";
    writeN(&res);
    cout << endl;
    }
    else
        cout << "My friend, something was no good. May be A < B? Or B == 0?\n";
}

// N-11
bool div_nn_n(const N* dividend, const N* divider, N* result)
{
    // Если делимое меньше делителя или делитель = 0, возвращает false
    if(com_nn_d(dividend, divider) == 1 || !nzer_n_b(divider))
        return false;

    N remainder = *dividend;
    N nNull = {0, {0}};
    *result = nNull;
    N temp;
    N temp2;
    N number;//тут хранится результат div_nn_dk
    while(com_nn_d(divider, &remainder) != 2) // пока то на что делят меньше того, что делят
    {
        div_nn_dk(&remainder, divider, &number);//первая цифра деления * 10^k

        add_nn_n(result, &number, &temp);
        *result = temp;
        temp = nNull;

        mul_nn_n(&number, divider, &temp);// умножили на делитель
        sub_nn_n(&remainder, &temp, &temp2);

        remainder = temp2;
        temp2 = nNull;
    }

    return true;
}

void callN11() {
    N n1, n2, res;
    cout << "I expect that first number will be bigger than sekond one.\n";
    cout << "Enter first natural number:\nA = ";
    while (readN(&n1) == false)
        cout << "Something was wrong, try again:\nA = ";
    cout << "Enter second natural number:\nB = ";
    while (readN(&n2) == false)
        cout << "Something was wrong, try again:\nB = ";
    if (div_nn_n(&n1, &n2, &res) == true) {
        cout << "A / B = ";
        writeN(&res);
        cout << endl;
    }
    else
        cout << "A < B or B == 0\n";
}

// N-12
bool mod_nn_n(const N * a, const N * b, N * result)//Принимает на вход a, b, result и записывает в result остаток от деления a на b
{
    N quotient;//Частное от деления a на b
    bool correct = true;
    correct &= div_nn_n(a, b, &quotient);//Вычисляем это частное
    N temp;
    correct &= mul_nn_n(&quotient, b, &temp);//Домножаем частное на делитель
    correct &= sub_nn_n(a, &temp, result);//Вычитаем из делимого произведения делителя на частное = вычисляем остаток
    return correct;//Возвращяем ошибки, полученные при вызовах вспомогательных функций
}

void callN12() {
    N n1, n2, res;
    cout << "I expect that first number will be bigger than second one.\n";
    cout << "Enter first natural number:\nA = ";
    while (readN(&n1) == false)
        cout << "Something was wrong, try again:\nA = ";
    cout << "Enter second natural number:\nB = ";
    while (readN(&n2) == false)
        cout << "Something was wrong, try again:\nB = ";
    if (mod_nn_n(&n1, &n2, &res) == true) {
        cout << "A % B = ";
        writeN(&res);
        cout << endl;
    }
    else
        cout << "A < B or B == 0\n";
}

// N-13
void gcf_nn_n(const N* n1, const N* n2, N* result){
    N a, b;
    if (com_nn_d(n1,n2)==1) // n1 < n2
    {
        a = *n2;
        b = *n1;
    }
    else //n1 >= n2
    {
        a = *n1;
        b = *n2;
    }

    //пока b != 0
    while(nzer_n_b(&b) == true)
    {
        N sub;
        mod_nn_n(&a,&b,&sub); // кладем остаток в sub
        a=b;
        b=sub;// большое копирование, может быть оптимизировано
    }

    *result = a;
}

void callN13() {
    N n1, n2, res;
    cout << "Enter first natural number:\nA = ";
    while (readN(&n1) == false)
        cout << "Something was wrong, try again:\nA = ";
    cout << "Enter second natural number:\nB = ";
    while (readN(&n2) == false)
        cout << "Something was wrong, try again:\nB = ";
    gcf_nn_n(&n1, &n2, &res);
    cout << "GCF (A, B) = ";
    writeN(&res);
    cout << endl;
}

// N-14
bool lcm_nn_n(const N* n1, const N* n2, N* result)
{
    N temp;
    bool contin;
    contin = mul_nn_n(n1, n2, &temp);
    if(!contin)
        return false;

    N nod;
    gcf_nn_n(n1, n2, &nod);
    contin = div_nn_n(&temp, &nod, result);

    if(!contin)
        return false;
    return true;
}

void callN14() {
    N n1, n2, res;
    cout << "I expect that first number will be bigger than sekond one.\n";
    cout << "Enter first natural number:\nA = ";
    while (readN(&n1) == false)
        cout << "Something was wrong, try again:\nA = ";
    cout << "Enter second natural number:\nB = ";
    while (readN(&n2) == false)
        cout << "Something was wrong, try again:\nB = ";
    if (lcm_nn_n(&n1, &n2, &res) == true) {
        cout << "LCM (A, B) = ";
        writeN(&res);
        cout << endl;
    }
    else
        cout << "A == 0 or B == 0 or Type overflaw\n";
}
