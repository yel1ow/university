// Все модули блока N (натуральных чисел)
#pragma once
#include "general.h"

// N-1
void callN1();
int com_nn_d(const N * n1, const N * n2);
// N-2
void callN2();
bool nzer_n_b(const N * n1);
// N-3
void callN3();
bool add_1n_n(const N * n, N * result);
// N-4
void callN4();
bool add_nn_n(const N * n1, const N * n2, N * result);
// N-5
void callN5();
bool sub_nn_n(const N * nMost, const N * nLess, N * nResult);
// N-6
void callN6();
bool mul_nd_n(const N * n, int d, N * result);
// N-7
void callN7();
bool mul_nk_n(const N*n, int k, N * result);
// N-8
void callN8();
bool mul_nn_n(const N * n1, const N * n2, N * result);
// N-9
void callN9();
bool sub_ndn_n(const N* n1, const N* n2, int d, N* result);
// N-10
void callN10();
bool div_nn_dk(const N * n1, const N * n2, N * result);
// N-11
void callN11();
bool div_nn_n(const N* dividend, const N* divider, N* result);
// N-12
void callN12();
bool mod_nn_n(const N * a, const N * b, N * result);
// N-13
void callN13();
void gcf_nn_n(const N* n1, const N* n2, N* result);
// N-14
void callN14();
bool lcm_nn_n(const N* n1, const N* n2, N* result);
