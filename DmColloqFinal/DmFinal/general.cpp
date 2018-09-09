#include <iostream>
#include <string>
#include <cctype>
#include "general.h"
#include "q.h"

using namespace std;

// Ввод натурального числа
bool readN(N * n) {
    //cout << "Enter long natural number:\n";
    string input;           // вводимая пользователем строка
    getline(cin, input);

    if (input.length() > ARR_SIZE) {   // пользователь ввёл слишком длинную строку
        cout << "(Error input. Max count of symbols = " << ARR_SIZE << ")\n";
        return false;
    }
    if (input.empty()) {  // пользователь не ввёл строку
        cout << "(Error input. Empty string)\n";
        return false;
    }
    int length = input.length();    // длинна строки
    if (length == 1 && input[0] == '0') {   // ввели 0
        n->n = 0;
        n->a[0] = 0;
        return true;
    }
    if (input[0] == '0') {   // ввели 08543 или 00 и т.п.
        cout << "(Error input. Number can not start from 0)\n";
        return false;
    }

    for (int i = 0; i < length; ++i) {
        if (isdigit(input[i]) == false) {
            cout << "(Error input. Catch not digit)\n";
            return false;       // если "встретили" не цифру - ошибка
        }
        else
            n->a[length - i - 1] = input[i] - '0';    // записываем цифры в обратном порядке
    }
    n->n = length - 1;

    return true;
}

// Вывод натурального числа
void writeN(const N * n) {
    for (int i = n->n; i >= 0; --i)
        cout << (int)n->a[i];
}

// Ввод целого числа
bool readZ(Z * z) {
    //cout << "Enter long integer:\n";
    string input;           // вводимая пользователем строка
    getline(cin, input);

    if (input.empty()) {  // пользователь не ввёл строку
        cout << "(Error input. Empty string)\n";
        return false;
    }
    if (input.length() > ARR_SIZE) {
        if (!(input.length() == ARR_SIZE + 1 && (input[0] == '+' || input[0] == '-'))) {
            cout << "(Error input. Max count of symbols = " << ARR_SIZE << ")\n";
            return false;
        }
    }
    // Пользователь ввёл 1 символ - не цифру
    if (input.length() == 1 && isdigit(input[0]) == false) {
        cout << "(Error input. Catch not digit)\n";
        return false;       // если "встретили" не цифру - ошибка
    }

    // Разбор первого символа
    char firstSymbol = input[0];
    int length = input.length();    // длинна строки
    bool isExistSign = true;        // есть ли знак числа (в строке)
    if (firstSymbol == '-')
        z->b = false;
    else if (firstSymbol == '+')
        z->b = true;
    else if (isdigit(firstSymbol)) {
        isExistSign = false;
        z->b = true;
    }
    else {
        cout << "(Error input. Catch not digit)\n";
        return false;       // если "встретили" не цифру - ошибка
    }

    // Разбор остальной части строки
    int startPosition = isExistSign;  // позиция, с которой начинаются цифры
    if (isExistSign)
        --length;
    for (int i = 0; i < length; ++i) {
        if (isdigit(input[i + startPosition]) == false) {
            cout << "(Error input. Catch not digit)\n";
            return false;       // если "встретили" не цифру - ошибка
        }
        else
            z->a[length - i - 1] = input[i + startPosition] - '0';    // записываем цифры в обратном порядке
    }
    z->n = length - 1;

    // Ноль всегда положительный:
    if (z->n == 0 && z->a[0] == 0)
        z->b = true;
    else if (z->a[z->n] == 0) {   // ввели 0843 или -00 и т.п.
        cout << "(Error input. Number can not start from 0)\n";
        return false;
    }

    return true;
}

// Вывод целого числа
void writeZ(const Z * z) {
    if (z->b == false)
        cout << '-';
    for (int i = z->n; i >= 0; --i)
        cout << (int)z->a[i];
}

// Ввод дробно-рационального числа
bool readQ(Q* q) {
    bool successInput;  // успешность ввода числителя и знаменателя

    // Bвод числителя
    Z z;
    cout << "Enter numerator (integer):    ";
    successInput = readZ(&z);
    if (!successInput)
        return false;
    q->numerator = z;
    if (z.n == 0 && z.a[0] == 0) {  // ввели в числителе 0
        N oneN = { 0, { 1 } };
        q->denominator = oneN;
        return true;
    }

    // Ввод знаменателя
    N n;
    cout << "Enter denominator (natural):  ";
    successInput = readN(&n);
    if (!successInput || (n.n == 0 && n.a[0] == 0)) { // ошибка при вводе или n == 0
        cout << "(Error input. Denominator can not be zero)\n";
        return false;
    }
    q->denominator = n;
    return true;
}

// Вывод дробно-рационального числа
void writeQ(const Q * q) {
    cout << "(";
    writeZ(&q->numerator);
    cout << " / ";
    writeN(&q->denominator);
    cout << ")";
}

// Ввод многочлена с рациональными коэфициентами
bool readP(P * p) {
    bool successInput;  // успешность ввода степени и коэффициентов

    // Ввод степени многочлена
    cout << "Enter degree of polinom (0.." << ARR_SIZE - 1 << "):  ";
    int degree;         // степень многочлена
    successInput = bool(cin >> degree);
    if (!successInput || cin.get() != '\n') {    // Ввели не число
        cin.clear();
        while (cin.get() != '\n')   // очищаем ввод
            continue;
        cout << "(Error input. That is not number)\n";
        return false;
    }
    if (degree < 0 || degree > ARR_SIZE - 1) {
        cout << "(Error input. 0 <= degree <=" << ARR_SIZE - 1 <<")\n";
        return false;
    }
    p->degree = degree;

    // Ввод коэффициентов
    Q coef;     // Вводимый коэффициент многочлена
    cout << "Enter coefficients of polinom:\n";
    for (int i = degree; i >= 0; --i) {
        cout << "X^" << i << ":\n";
        successInput = readQ(&coef);
        if (!successInput)
            return false;
        p->coefficients[i] = coef;
    }

    return true;
}

// Вывод многочлена с рациональными коэффициентами
void writeP(const P * p) {
    Q current;          // текущий коэффициент
    Q redCurrent;       // сокращённый коэффициент
    red_q_q(&p->coefficients[p->degree], &redCurrent);
    writeQ(&redCurrent);
    cout << "X^" << p->degree;
    for (int i = p->degree - 1; i >= 0; --i) {
        current = p->coefficients[i];
        if (!(current.numerator.n == 0 && current.numerator.a[0] == 0)) { // current != 0
            cout << " + ";
            red_q_q(&current, &redCurrent);
            writeQ(&redCurrent);
            if (i != 0)
                cout << "X^" << i;
        }
    }
}






























