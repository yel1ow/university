#include <iostream>
#include "n.h"
#include "z.h"
#include "q.h"
using namespace std;

// Q-1
// Сокращение дроби
void red_q_q(const Q * q, Q * result) {
    if (q->numerator.n == 0 && q->numerator.a[0] == 0) {  // q = 0
        result->numerator = q->numerator;
        result->numerator.b = true;
        result->denominator.n = 0;
        result->denominator.a[0] = 1;
        return;
    }
    N n0 = { 0,{ 1 } }; // числитель в натуральном виде
    N n1 = { 0,{ 1 } }; // НОД
    abs_z_n(&q->numerator, &n0); // перевожу числитель дроби в натуральное
    gcf_nn_n(&n0, &q->denominator, &n1);   // ищу НОД
    Z z1 = { true,0,{ 1 } }; // для перевода НОДа в целое
    Z z2 = { true,0,{ 1 } }; // для деноминатора
    Z z3 = { true,0,{ 1 } }; // для деноминатора-результата
    trans_n_z(&n1, &z1); // перевожу НОД в целое
    trans_n_z(&q->denominator, &z2); // перево
    div_zz_z(&q->numerator, &z1, &result->numerator); // делю на НОД числитель
    div_zz_z(&z2, &z1, &z3); // делю на НОД знаменатель
    trans_z_n(&z3, &result->denominator);
}

void callQ1() {
    Q q, res;
    cout << "Rational number Q:\n";
    while (readQ(&q) == false)
        cout << "Something was wrong, try again:\nRational number Q:\n";
    red_q_q(&q, &res);
    writeQ(&q);
    cout << " = ";
    writeQ(&res);
    cout << endl;
}

// Q-2
bool int_q_b(const Q*q) {
    Q q1;
    red_q_q(q, &q1);
    if(q1.numerator.n == 0 && q1.numerator.a[0] == 0)
        return true;
    if(q1.denominator.n == 0 && q1.denominator.a[0] == 1)
        return true;
    return false;
}

void callQ2() {
    Q q;
    cout << "Rational number Q:\n";
    while (readQ(&q) == false)
        cout << "Something was wrong, try again:\nRational number Q:\n";
    writeQ(&q);
    if (int_q_b(&q) == true)
        cout << " is integer\n";
    else
        cout << " isn't integer\n";
}

// Q-3
void trans_z_q(const Z* z, Q* result)
{
    N denominator = {0, { 1 }}; // denominator = 1;
    result->numerator = *z; // передаем числитель
    result->denominator  = denominator; //передаем знаменатель
}

void callQ3() {
    Z z;
    Q res;
    cout << "Enter integer number:\nZ = ";
    while (readZ(&z) == false)
        cout << "Something was wrong, try again:\nZ = ";
    trans_z_q(&z, &res);
    writeZ(&z);
    cout << " = ";
    writeQ(&res);
    cout << endl;
}

// Q-4
bool trans_q_z(const Q* input, Z* result)
{
    Q q1;
    red_q_q(input, &q1);
    if (int_q_b(input)) {
        *result = q1.numerator;
        return true;
    }
    return false;
}

void callQ4() {
    Q q;
    Z res;
    cout << "Rational number Q:\n";
    while (readQ(&q) == false)
        cout << "Something was wrong, try again:\nRational number Q:\n";
    if (trans_q_z(&q, &res)) {
        writeQ(&q);
        cout << " = ";
        writeZ(&res);
        cout << endl;
    }
    else
        cout << "I have not enough power to translate this\n";
}

// Q-5
bool add_qq_q(const Q* n1, const Q* n2, Q* result)
{
    N nokN;
    N denominator1 = n1->denominator;
    N denominator2 = n2->denominator;
    bool contin = lcm_nn_n(&denominator1, &denominator2, &nokN);
    if(!contin)
        return false;


    Z numberZ1;// нок / знаменатель n1
    Z numberZ2;// нок/знаменатель n2
    N numberN1;
    N numberN2;

    contin = div_nn_n(&nokN, &denominator1, &numberN1);

    if(!contin)
        return false;

    contin = div_nn_n(&nokN, &denominator2, &numberN2);

    if(!contin)
        return false;

    trans_n_z(&numberN1, &numberZ1);
    trans_n_z(&numberN2, &numberZ2);

    Z newNumerator1;
    Z newNumerator2;

    contin = mul_zz_z(&numberZ1, &(n1->numerator), &newNumerator1);
    if(!contin)
        return false;

    contin = mul_zz_z(&numberZ2, &(n2->numerator), &newNumerator2);
    if(!contin)
        return false;

    result->denominator = nokN;
    Z temp;

    contin = add_zz_z(&newNumerator1, &newNumerator2, &temp);
    if(!contin)
        return false;
    result->numerator = temp;

    if (result->numerator.n == 0 && result->numerator.a[0] == 0) {  // result = 0
        result->numerator.b = true;
        result->denominator.n = 0;
        result->denominator.a[0] = 1;
    }
    return true;
}

void callQ5() {
    Q q1, q2, res;
    cout << "Rational number A:\n";
    while (readQ(&q1) == false)
        cout << "Something was wrong, try again:\nRational number A:\n";
    cout << "Rational number B:\n";
    while (readQ(&q2) == false)
        cout << "Something was wrong, try again:\nRational number B:\n";

    if (add_qq_q(&q1, &q2, &res)) {
        cout << "A + B = ";
        writeQ(&res);
        cout << endl;
    }
    else
        cout << "Type overflow. Bad but true.\n";
}

// Q-6
bool sub_qq_q(const Q* n1, const Q* n2, Q* result)
{
    Q newN2;
    newN2.denominator = n2->denominator;
    newN2.numerator = n2->numerator;
    if(n2->numerator.b == true)
        newN2.numerator.b = false;
    else
        newN2.numerator.b = true;

    bool contin = add_qq_q(n1, &newN2, result);
    if(!contin)
        return false;

    return true;
}

void callQ6() {
    Q q1, q2, res;
    cout << "Rational number A:\n";
    while (readQ(&q1) == false)
        cout << "Something was wrong, try again:\nRational number A:\n";
    cout << "Rational number B:\n";
    while (readQ(&q2) == false)
        cout << "Something was wrong, try again:\nRational number B:\n";

    if (sub_qq_q(&q1, &q2, &res)) {
        cout << "A - B = ";
        writeQ(&res);
        cout << endl;
    }
    else
        cout << "Type overflow. Bad but true.\n";
}

// Q-7
bool mul_qq_q( const Q * q1,const  Q * q2, Q * result) {
    //Умножаем числители
    if (!mul_zz_z(&q1->numerator, &q2->numerator, &result->numerator)) {
        return false;
    }

    if (result->numerator.n == 0 && result->numerator.a[0] == 0) {  // result = 0
        result->numerator.b = true;
        result->denominator.n = 0;
        result->denominator.a[0] = 1;
        return true;
    }

    //Умножаем знаменатели
    if (!mul_nn_n(&q1->denominator, &q2->denominator, &result->denominator)) {
        return false;
    }

    return true;
}

void callQ7() {
    Q q1, q2, res;
    cout << "Rational number A:\n";
    while (readQ(&q1) == false)
        cout << "Something was wrong, try again:\nRational number A:\n";
    cout << "Rational number B:\n";
    while (readQ(&q2) == false)
        cout << "Something was wrong, try again:\nRational number B:\n";

    if (mul_qq_q(&q1, &q2, &res)) {
        cout << "A * B = ";
        writeQ(&res);
        cout << endl;
    }
    else
        cout << "Type overflow. Sorry about this\n";
}

// Q-8
bool div_qq_q(const Q *q1, const  Q *q2, Q *result) {
    //Преобразуем натуральные знаменатели в целые
    N nNumerator1, nNumerator2, nResNumerator;      // переменные для натуральных числителей дробей + результат для числителя
    abs_z_n(&q1->numerator, &nNumerator1);        // числитель первой дроби
    abs_z_n(&q2->numerator, &nNumerator2);        // числитель второй дроби
    //умножаем числитель первой дроби на знаменатель второй, получаем числитель конечной дроби
    if (!mul_nn_n(&nNumerator1, &q2->denominator, &nResNumerator)) {
        return false;
    }

    trans_n_z(&nResNumerator, &result->numerator);
    //умножаем числитель второй дроби на знаменатель первой, получаем целый знаменатель конечной дроби
    if (!mul_nn_n(&q1->denominator, &nNumerator2, &result->denominator)) {
        return false;
    }
    result->numerator.b = q1->numerator.b == q2->numerator.b;

    if (result->numerator.n == 0 && result->numerator.a[0] == 0) {  // result = 0
        result->numerator.b = true;
        result->denominator.n = 0;
        result->denominator.a[0] = 1;
    }

    return true;
}

void callQ8() {
    Q q1, q2, res;
    cout << "Rational number A:\n";
    while (readQ(&q1) == false)
        cout << "Something was wrong, try again:\nRational number A:\n";
    cout << "Rational number B:\n";
    while (readQ(&q2) == false)
        cout << "Something was wrong, try again:\nRational number B:\n";

    if (div_qq_q(&q1, &q2, &res)) {
        cout << "A / B = ";
        writeQ(&res);
        cout << endl;
    }
    else
        cout << "Probably type overflow, probably division by zero. I don't sure at anithing.\n";
}
