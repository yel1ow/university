#include "z.h"
#include "n.h"
#include <iostream>
using namespace std;

// Z-1
//Функция находит абсолютную величину числа, результат - натуральное
void abs_z_n(const Z * z, N * result){
    result->n = z->n;
    for (int i = z->n; i >=0; i--)
    {
        result->a[i] = z->a[i];
    }
}

void callZ1() {
    Z z;
    N res;
    cout << "Enter integer:\nZ = ";
    while (readZ(&z) == false)
        cout << "Error input, don't worry, try again:\nZ = ";
    abs_z_n(&z, &res);
    cout << "|Z| = ";
    writeN(&res);
    cout << endl;
}

// Z-2
int poz_z_d(const Z* input)
{
    int result;
    if (input->b == true) {
        result = 2;
    }
    else if (input->b == false) {
        result = 1;
    }
    if (input->n == 0 && input->a[0] == 0)  {
        result = 0;
    }
    return result;
 }

void callZ2() {
    Z z;
    cout << "Enter integer:\nZ = ";
    while (readZ(&z) == false)
        cout << "Error input, don't worry, try again:\nZ = ";
    switch (poz_z_d(&z)) {
    case 2:
        cout << "Z is positive\n";    break;
    case 1:
        cout << "Z is negative\n";    break;
    case 0:
        cout << "Z == 0\n";
    }
}

// Z-3
void mul_zm_z(const Z * input, Z * result)
{
    *result = *input;
    if (!(input->n == 0 && input->a[0] == 0))   // Если не ноль
        result->b ^= 1;
}

void callZ3() {
    Z z, res;
    cout << "Enter integer:\nZ = ";
    while (readZ(&z) == false)
        cout << "Error input, don't worry, try again:\nZ = ";
    mul_zm_z(&z, &res);
    cout << "-Z = ";
    writeZ(&res);
    cout << endl;
}

// Z-4
void trans_n_z(const N* input, Z* result)
{
    //знак целого - положительный
    result->b = true;
    //порядок числа берем из натурального
    result->n = input->n;

    //копируем
    for (int i = 0; i <= result->n; ++i)
        result->a[i] = input->a[i];
}

void callZ4() {
    N n;
    Z res;
    cout << "Strange choice... Okey, lets start\n";
    cout << "Enter natural number:\nN = ";
    while (readN(&n) == false)
        cout << "Error, enter natural number, try again:\nN = ";
    trans_n_z(&n, &res);
    cout << "N => Z;   Z = ";
    writeZ(&res);
    cout << "; It is easy, isn't it\n";
}

// Z-5
bool trans_z_n(const Z* input, N* result)
{
    if (input->b == true) {
        //копируем порядок числа
        result->n = input->n;
        //копируем
        for (int i = 0; i <= result->n; ++i)
            result->a[i] = input->a[i];
        return true;
    }
    return false;
}

void callZ5() {
    Z z;
    N res;
    cout << "Enter integer:\nZ = ";
    while (readZ(&z) == false)
        cout << "I expect integer, try again:\nZ = ";
    if (trans_z_n(&z, &res) == true) {
        cout << "Z => N;   N = ";
        writeN(&res);
        cout << "; It is simple, isn't it)\n";
    }
    else
        cout << "I have not enough power to translate negative number to natural\n";
}

// Z-6
bool add_zz_z(const Z* z1, const Z* z2, Z* result)
{
    N n1, n2, nResult;  // аналог параметров в натуральных
    abs_z_n(z1, &n1);
    abs_z_n(z2, &n2);
    bool success;

    if (z1->b == true && z2->b == true) { // оба положительные
        success = add_nn_n(&n1, &n2, &nResult);
        trans_n_z(&nResult, result);
        return success;
    }
    if (z1->b == true && z2->b == false) { // z1 > 0 and z2 < 0
        if (com_nn_d(&n1, &n2) == 2) {
            sub_nn_n(&n1, &n2, &nResult);
            trans_n_z(&nResult, result);
        }
        else {
            sub_nn_n(&n2, &n1, &nResult);
            trans_n_z(&nResult, result);
            mul_zm_z(result, result);
        }
        if (result->n == 0 && result->a[0] == 0)    // result == 0
            result->b = true;                       // 0 всегда положительный
        return true;
    }
    if (z1->b == false && z2->b == true) { // z1 < 0 and z2 > 0
        if (com_nn_d(&n1, &n2) == 1) {
            sub_nn_n(&n2, &n1, &nResult);
            trans_n_z(&nResult, result);
        }
        else {
            sub_nn_n(&n1, &n2, &nResult);
            trans_n_z(&nResult, result);
            mul_zm_z(result, result);
        }
        if (result->n == 0 && result->a[0] == 0)    // result == 0
            result->b = true;                       // 0 всегда положительный
        return true;
    }
    if (z1->b == false && z2->b == false) { // оба отрицательные
        success = add_nn_n(&n1, &n2, &nResult);
        trans_n_z(&nResult, result);
        mul_zm_z(result, result);
        return success;
    }
    return true;
}

void callZ6() {
    Z z1, z2, res;
    cout << "Enter first integer:\nA = ";
    while (readZ(&z1) == false)
        cout << "I expect integer, try again:\nA = ";
    cout << "Enter second integer:\nB = ";
    while (readZ(&z2) == false)
        cout << "I expect integer, try again:\nB = ";
    if (add_zz_z(&z1, &z2, &res) == true) {
        cout << "A + B = ";
        writeZ(&res);
        cout << endl;
    }
    else
        cout << "Type overflow, sorry about this\n";
}

// Z-7
bool sub_zz_z(const Z * z1, const Z * z2, Z * result)
{
    Z minusZ2;
    mul_zm_z(z2, &minusZ2);
    return add_zz_z(z1, &minusZ2, result);
}

void callZ7() {
    Z z1, z2, res;
    cout << "Enter first integer:\nA = ";
    while (readZ(&z1) == false)
        cout << "I expect integer, try again:\nA = ";
    cout << "Enter second integer:\nB = ";
    while (readZ(&z2) == false)
        cout << "I expect integer, try again:\nB = ";
    if (sub_zz_z(&z1, &z2, &res) == true) {
        cout << "A - B = ";
        writeZ(&res);
        cout << endl;
    }
    else
        cout << "Type overflow, sorry about this\n";
}

// Z-8
bool mul_zz_z(const Z* z1, const Z* z2, Z* result)
{
    N n1, n2, nResult;  // аналог z в аргуметах ф-ции
    abs_z_n(z1, &n1);
    abs_z_n(z2, &n2);

    bool success = mul_nn_n(&n1, &n2, &nResult);
    trans_n_z(&nResult, result);
    result->b = z1->b == z2->b;
    return success;
}
void callZ8() {
    Z z1, z2, res;
    cout << "Enter first integer:\nA = ";
    while (readZ(&z1) == false)
        cout << "I expect integer, try again:\nA = ";
    cout << "Enter second integer:\nB = ";
    while (readZ(&z2) == false)
        cout << "I expect integer, try again:\nB = ";
    if (mul_zz_z(&z1, &z2, &res) == true) {
        cout << "A * B = ";
        writeZ(&res);
        cout << endl;
    }
    else
        cout << "Type overflow, sorry about this\n";
}

// Z-9
bool div_zz_z(const Z* a, const Z* b, Z* result)
{
    bool success;
    int signA = poz_z_d(a);//знак делимого
    int signB = poz_z_d(b);//знак делителя
    if (signA == 0 || signB == 0)
    {
        result->b = true;
        result->n = 0;
        result->a[0] = 0;
    }
    else
    {
        int signResult = 2;
        if ((signA + signB) == 3)// первое и второе разных знаков
            signResult = 1;
        N abs1; //переводим первое число в натуральное
        abs_z_n(a, &abs1);
        N abs2; //переводим второе число в натуральное
        abs_z_n(b, &abs2);
        N nResult; //частное от деления натуральных чисел
        success = div_nn_n(&abs1, &abs2, &nResult); //делим их как натуральные
        trans_n_z(&nResult, result); //переводим назад в целые

        if (signResult == 1)
            result->b = false;
        else
            result->b = true;
    }
    if(signA == 1)
    {
        Z mul;
        mul_zz_z(b, result, &mul);
        N mulN;
        abs_z_n(&mul, &mulN);
        N abs1; //переводим первое число в натуральное
        abs_z_n(a, &abs1);
        if(com_nn_d(&mulN, &abs1) != 0)
        {
            Z minusOne = {0, 0, {1}};
            Z temp;
            add_zz_z(&minusOne, result, &temp);
            *result = temp;
        }
    }
    return success;
}

void callZ9() {
    Z z1, z2, res;
    cout << "Enter first integer:\nA = ";
    while (readZ(&z1) == false)
        cout << "I expect integer, try again:\nA = ";
    cout << "Enter second integer:\nB = ";
    while (readZ(&z2) == false)
        cout << "I expect integer, try again:\nB = ";
    if (div_zz_z(&z1, &z2, &res) == true) {
        cout << "A / B = ";
        writeZ(&res);
        cout << endl;
    }
    else
        cout << "|A| < |B| or B == 0\n";
}

// Z-10
bool mod_zz_z(const Z * z1, const Z * z2, Z * result) {
    Z quotient;//частное от деления z1 на z2
    //делим z1 на z2
    if (!div_zz_z(z1, z2, &quotient)) {
        return false;
    }
    Z product;//произведение чисел z2 и quotient
    //умножаем z2 на quotient
    if (!mul_zz_z(z2, &quotient, &product)) {
        return false;
    }
    //вычитаем из z1 произведение z2 и quotient
    if (!sub_zz_z(z1, &product, result)) {
        return false;
    }
    return true;
}

void callZ10() {
    Z z1, z2, res;
    cout << "Enter first integer:\nA = ";
    while (readZ(&z1) == false)
        cout << "I expect integer, try again:\nA = ";
    cout << "Enter second integer:\nB = ";
    while (readZ(&z2) == false)
        cout << "I expect integer, try again:\nB = ";
    if (mod_zz_z(&z1, &z2, &res) == true) {
        cout << "A % B = ";
        writeZ(&res);
        cout << endl;
    }
    else
        cout << "|A| < |B| or B == 0\n";
}
