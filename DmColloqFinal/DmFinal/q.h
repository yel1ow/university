// Все модули блока Q (рациональных чисел)
#pragma once
#include "general.h"

// Q-1
void callQ1();
void red_q_q(const Q * q, Q * result);
// Q-2
void callQ2();
bool int_q_b(const Q*q);
// Q-3
void callQ3();
void trans_z_q(const Z* z, Q* result);
// Q-4
void callQ4();
bool trans_q_z(const Q* input, Z* result);
// Q-5
void callQ5();
bool add_qq_q(const Q* q1, const Q* q2, Q* result);
// Q-6
void callQ6();
bool sub_qq_q(const Q* q1, const Q* q2, Q* result);
// Q-7
void callQ7();
bool mul_qq_q( const Q * q1,const  Q * q2, Q * result);
// Q-8
void callQ8();
bool div_qq_q(const Q *q1, const  Q *q2, Q *result);
