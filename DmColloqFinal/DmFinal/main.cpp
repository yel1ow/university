// Коллоквиум по дискретной математики. Работа с длинной арифметикой
#include <iostream>
#include <string>
#include <cctype>
// Фундаментальный модуль
#include "general.h"
// Блок натуральных чисел
#include "n.h"
#include "z.h"
#include "q.h"
#include "p.h"

using namespace std;

// Съесть буфер
inline void eatline() { while (cin.get() != '\n') continue; }

// Вступительное приглашение (ASCII картинка)
void showWelcomePicture();

// Вывод меню
void showStartMenu();
void showNMenu();
void showZMenu();
void showQMenu();
void showPMenu();

// Helpers
void startMenuHelp();
void blockNMenuHelp();
void blockZMenuHelp();
void blockQMenuHelp();
void blockPMenuHelp();

// Узнать выбор пользователя (1 символ, до победного)
char getChoose();
// getChoose() + Если пользователь выбирает помощь - даём её и снова запрашиваем ввод
char getChooseWithHelp(char helpSymbol, void (*helper)(void));
// Выбор символа из списка. H (help) уже встроен и обработан внутри ф-ции
char getRestrictedChoose(const char variants[], int varSize, char helpSymbol, void (*helper)(void));

void doNCommand(int commandNumber);
void doZCommand(int commandNumber);
void doQCommand(int commandNumber);
void doPCommand(int commandNumber);

int main() {
    char choose = 0;
    while (choose != 'E') {
        // Вступительная картинка
        showWelcomePicture();

        // Стартовое меню
        showStartMenu();

        // Выбор пользователем блока
        cout << endl;
        char startMenu[] = "NZQPE";
        choose = getRestrictedChoose(startMenu, 5, 'H', startMenuHelp);

        // Показ меню блока
        const char nMenu[] = "ABCDEFGHIJKLMNYZ";
        const char zMenu[] = "ABCDEFGHIJYZ";
        const char qMenu[] = "ABCDEFGHYZ";
        const char pMenu[] = "ABCDEFGHIJKLMYZ";
        char choose2 = 0;
        switch (choose) {
        case 'N':
            while (choose2 != 'Z') {
                system("cls");
                showNMenu();
                choose2 = getRestrictedChoose(nMenu, 16, 'Y', blockNMenuHelp);
                if (choose2 == 'Z')
                    break;
                doNCommand(choose2 - 'A');
            }
            break;
        case 'Z':
            while (choose2 != 'Z') {
                system("cls");
                showZMenu();
                choose2 = getRestrictedChoose(zMenu, 12, 'Y', blockZMenuHelp);
                if (choose2 == 'Z')
                    break;
                doZCommand(choose2 - 'A');
            }
            break;
        case 'Q':
            while (choose2 != 'Q') {
                system("cls");
                showQMenu();
                choose2 = getRestrictedChoose(qMenu, 10, 'Y', blockQMenuHelp);
                if (choose2 == 'Z')
                    break;
                doQCommand(choose2 - 'A');
            }
            break;
        case 'P':
            while (choose2 != 'P') {
                system("cls");
                showPMenu();
                choose2 = getRestrictedChoose(pMenu, 15, 'Y', blockPMenuHelp);
                if (choose2 == 'Z')
                    break;
                doPCommand(choose2 - 'A');
            }
            break;
        case 'E':
            break;
        default:
            cout << "Doesn't done yet.";
        }
        system("cls");
    }
    return 0;
}

void showWelcomePicture() {
    cout << "Hello, my friend. There is the colloquium on discrete mathematics,\n";
    cout << "subject - long arithmetic. Creators are group 6375.\n";
    cout << "I am interface, and I am trying to be friendly =)\n\n";
}

// ========================== MENU ========================
void showStartMenu() {
    cout << "Choose the block of interest for you (enter first symbol):" << endl;
    cout << "N - Natural numbers" << endl;
    cout << "Z - Integer numbers" << endl;
    cout << "Q - Rational numbers" << endl;
    cout << "P - Polynomial with rational coefficients" << endl;
    cout << endl;
    cout << "H - Help" << endl;
    cout << "E - Exit" << endl;
}

void showNMenu() {
    cout << "Choose the module of interest for you (enter first symbol):" << endl;
    cout << "A - Compare 2 numbers" << endl;
    cout << "B - Check number for zero" << endl;
    cout << "C - Addition 1 to number" << endl;
    cout << "D - Addition 2 numbers" << endl;
    cout << "E - Subtraction 2 numbers" << endl;
    cout << "F - Multiplying number by digit" << endl;
    cout << "G - Multiplying number by 10^k" << endl;
    cout << "H - Multiplication 2 numbers" << endl;
    cout << "I - Subtraction from number other number, multiplied by a digit" << endl;
    cout << "J - Calculate the first digit of the division, multiplied by 10^k" << endl;
    cout << "K - Division of 2 numbers" << endl;
    cout << "L - Calculate the remainder of division" << endl;
    cout << "M - GCF of 2 numbers" << endl;
    cout << "N - LCM of 2 numbers" << endl;
    cout << endl;
    cout << "Y - Help (;" << endl;
    cout << "Z - Back to start menu" << endl;
}

void showZMenu() {
    cout << "Choose the module of interest for you (enter first symbol):" << endl;
    cout << "A - Absolute number" << endl;
    cout << "B - Sign of number" << endl;
    cout << "C - Change sign of number" << endl;
    cout << "D - Translate natural to integer" << endl;
    cout << "E - Translate integer to natural" << endl;
    cout << "F - Addition 2 numbers" << endl;
    cout << "G - Subtraction 2 numbers" << endl;
    cout << "H - Multiplication 2 numbers" << endl;
    cout << "I - Division 2 numbers" << endl;
    cout << "J - Calculate the remainder of division" << endl;
    cout << endl;
    cout << "Y - Help" << endl;
    cout << "Z - Back to start menu" << endl;
}

void showQMenu() {
    cout << "Choose the module of interest for you (enter first symbol):" << endl;
    cout << "A - Reduction of fraction" << endl;
    cout << "B - Check for integer" << endl;
    cout << "C - Translate integer to rational" << endl;
    cout << "D - Translate rational to integer" << endl;
    cout << "E - Addition 2 numbers" << endl;
    cout << "F - Subtraction 2 numbers" << endl;
    cout << "G - Multiplication 2 numbers" << endl;
    cout << "H - Division 2 numbers" << endl;
    cout << endl;
    cout << "Y - Help" << endl;
    cout << "Z - Back to start menu" << endl;
}

void showPMenu() {
    cout << "Choose the module of interest for you (enter first symbol):" << endl;
    cout << "A - Addition 2 polinomials" << endl;
    cout << "B - Subtraction 2 polinomials" << endl;
    cout << "C - Multiply polinomial by rational number" << endl;
    cout << "D - Multiply polinomial by x^k" << endl;
    cout << "E - Leading coefficient of polynomial" << endl;
    cout << "F - Highest degree of the polynomial" << endl;
    cout << "G - The derivation of a coefficient from a polynomial" << endl;
    cout << "H - Multiplication 2 polinomials" << endl;
    cout << "I - Division 2 polinomials" << endl;
    cout << "J - Calculate the remainder of division 2 polinomials" << endl;
    cout << "K - GCF of 2 polinomials" << endl;
    cout << "L - Derivative of polinomial" << endl;
    cout << "M - Multiple roots in simple" << endl;
    cout << endl;
    cout << "Y - Help" << endl;
    cout << "Z - Back to start menu" << endl;
}

// ======================= GET CHOOSE =============================

// Узнать выбор пользователя (1 символ, до победного)
char getChoose() {
    char choose = 0;
    bool success;
    cin.get(choose);
    success = (choose != '\n' && cin.get() == '\n');
    while (success == false) {
        if (choose == '\n') {
            cout << "My friend, you didn't write anything, how I can understand you?" << endl;
        }
        else {
            eatline();
            cout << "My friend, you put extra characters, I only need one" << endl;
        }
        cout << "Don't worry, try again: ";
        cin.get(choose);
        success = !(choose == '\n' || cin.get() != '\n');
    }
    return choose;
}

char getChooseWithHelp(char helpSymbol, void (*helper)(void)) {
    char choose;
    do {            // Пользователь получит столько помощи, сколько хочет
        // Ввод символа
        cout << "Your choice: ";
        choose = getChoose();
        choose = (char)toupper(choose);

        // Запрос пользователем помощи
        if (choose == helpSymbol) {
            system("cls");
            (*helper)();
        }
    } while (choose == helpSymbol);
    return choose;
}

// Выбор символа из списка
char getRestrictedChoose(const char variants[], int varSize, char helpSymbol, void (*helper)(void)) {
    // Ввод пользователем символа
    char choose = getChooseWithHelp(helpSymbol, helper);

    // Сверяем символ с ожидаемыми
    bool success = false;
    for (int i = 0; i < varSize; ++i) {
        if (variants[i] == choose) {
            success = true;
            break;
        }
    }

    // Ввод не того символа - предложение помощи
    while (success == false) {
        // Предлагаю варианты
        cout << "My friend, I didn't expect such an answer...\n";
        cout << "If you don't know, what to say me - enter H (help).\n";
        cout << "If you put this character accidentally - enter O (okey) and we try again\n";

        // Узнаю, чего хочет пользователь
        choose = getChoose();
        choose = (char)toupper(choose);
        while (choose != 'O' && choose != 'H') {
            cout << "I except only \'H\' or \'O\', never more.\n";
            cout << "Try again: ";
            choose = getChoose();
            choose = (char)toupper(choose);
        }

        // Пользователь запросил помощи
        if (choose == 'H') {
            system("cls");
            (*helper)();
        }

        // Ещё попытка выбрать
        choose = getChooseWithHelp(helpSymbol, helper);

        // Сверяем символ с ожидаемыми
        success = false;
        for (int i = 0; i < varSize; ++i) {
            if (variants[i] == choose) {
                success = true;
                break;
            }
        }
    }
    return choose;
}

// =================== HELPERS ========================
void startMenuHelp() {
    cout << "Oh, my friend, you need a help? Okay, I explain you how it works...\n"
         << "Firstly you read menu and choose (mentally) some interesting for you variant.\n"
         << "Secondly, my friend, you write one and only one symbol\n"
         << " - first symbol on string with your subject.\n"
         << "Exampe: you want do something with polinoms,\n"
         << "then press P and press <Enter>. That's all.\n\n"
         << "And if you want to quit, press E and press <Enter> or\n"
         << "just click on cross on corner of application window.\n"
         << "Simple, isn't it?\n\n";
    cout << "If you understand this - press <Enter>... ";
    eatline();
    cout << "I will remind you the start menu if you say \"Please\"\n";
    string answer;
    getline(cin, answer);
    for (auto & ch : answer)
        ch = (char)toupper(ch);
    if (answer == "PLEASE") {
        cout << "You are welcome!\n";
        showStartMenu();
    }
    else {
        cout << "=(\nOkay, I don't prompt you, enter \'H\' if you want one more chance...\n";
    }
}

void blockNMenuHelp() {
    cout << "Hmmm... My friend, you coped with previous menu, but now you want me to help.\n"
         << "I think you just want to talk to me or listen me. If it is, sounds well =)\n"
         << "If you really want to get help - enter H again\n"
         << "If you want to talk to me, my dear friend - enter T\n"
         << "Any other input take you back\n\n"
         << "And you choice:  ";
    string answer;
    getline(cin, answer);
    if (answer.empty() == false)
        answer[0] = (char)toupper(answer[0]);

    // Реальный help
    if (answer == "H") {
        cout << "Firstly you read menu and choose (mentally) some interesting for you variant.\n"
             << "Secondly, my friend, you write one and only one symbol\n"
             << " - first symbol on string with your subject.\n"
             << "Exampe: you want addict two naturals,\n"
             << "then press D and press <Enter>. That's all.\n\n"
             << "And if you want to return to start menu, press Z and press <Enter>\n"
             << "If you want to quit, that's can be done on the start menu or\n"
             << "just click on cross on corner of application window.\n"
             << "Simple, isn't it?\n\n";
        cout << "If you understand this - press <Enter>... ";
        eatline();
        showNMenu();
    }
    else if (answer == "T") {
        system("cls");
        cout << "Press <Enter> at any stage to continue...\n";
        eatline();
        cout << "That's my story...\n"
             << "My mother was interface and my father was interface\n"
             << "She was so graphical, so stylish, so colorful...\n"
             << "And he was so simple, so rude, he was just card with holes...\n"
             << "They were destined to be together.\n"
             << "She wasn't be understandable to everyone, like many other women,\n"
             << "but he can find out his own approach. He was strict and strong, that's\n"
             << "a reason why she fell in love with him. Than I was born and I love my family =)\n\n";
        eatline();
        cout << "\n"
        << "---------@@@@@@----------@@@@@@@\n"
        << "------@@@@@@@@@@@@@---@@@@@@@@@@@@@\n"
        << "----@@@@@@@@@@@@@@@@@@@@----------@@@\n"
        << "---@@@@@@@@@@@@@@@@@@@--------------@@\n"
        << "--@@@@@@@@@@@@@@@@@@@@@--------------@@\n"
        << "-@@@@@@@@@@@@---@@@@@@@---------------@@\n"
        << "-@@@@@@@@@@@-----@@@@@@@--------------@@\n"
        << "-@@@@@@@@@@@@---@@@@@@@@--------------@@\n"
        << "-@@@@@@@@@@@@@@@@@@@@@@---------------@@\n"
        << "-@@@@@@@@@@@@@@@@@@@@@@---------------@@\n"
        << "--@@@@@@@@@@@@@@@@@@@@---------------@@\n"
        << "--@@@@@@@@@@@@@@@@@@@---------------@@\n"
        << "---@@@@@@@@@@@@@@@@---------------@@@\n"
        << "-----@@@@@@@@@@@@@---------------@@@\n"
        << "------@@@@@@@@@@@---@@@--------@@@\n"
        << "--------@@@@@@@@@--@@@@@----@@@@\n"
        << "-----------@@@@@@---@@@---@@@@\n"
        << "-------------@@@@@-----@@@@\n"
        << "----------------@@@--@@@@\n"
        << "------------------@@@@\n"
        << "-------------------@@\n";
        eatline();
        system("cls");
        showNMenu();
    }
    else
        showNMenu();
}

void blockZMenuHelp() {
    cout << "Hmmm... My friend, you coped with previous menu, but now you want me to help.\n"
         << "I think you just want to talk to me or listen me. If it is, sounds well =)\n"
         << "If you really want to get help - enter H again\n"
         << "If you want to talk to me, my dear friend - enter T\n"
         << "Any other input take you back\n\n"
         << "And you choice:  ";
    string answer;
    getline(cin, answer);
    if (answer.empty() == false)
        answer[0] = (char)toupper(answer[0]);

    // Реальный help
    if (answer == "H") {
        cout << "Firstly you read menu and choose (mentally) some interesting for you variant.\n"
             << "Secondly, my friend, you write one and only one symbol\n"
             << " - first symbol on string with your subject.\n"
             << "Exampe: you want multiply two integers,\n"
             << "then press H and press <Enter>. That's all.\n\n"
             << "And if you want to return to start menu, press Z and press <Enter>\n"
             << "If you want to quit, that's can be done on the start menu or\n"
             << "just click on cross on corner of application window.\n"
             << "Simple, isn't it?\n\n";
        cout << "If you understand this - press <Enter>... ";
        eatline();
        showZMenu();
    }
    else if (answer == "T") {
        system("cls");
        cout << "Press <Enter> during a pause to continue dialog...\n";
        eatline();
        cout << "Okay, let's introduce ourselves. What's your name?\n";
        string name;
        getline(cin, name);
        if (name.empty()) {
            cout << "If you don't want to tell your name I will call you Bob\n";
            eatline();
            name = "Bob";
        }
        cout << "Okay " << name << ", I don't want to tell my name so easy.\n"
             << "I think, my friend, you can guess it. Let's try:\n";
        int guess = 1;
        string yourVariant = "";
        const string myName = "Oscar";
        while (guess < 14) {
            cout << "Attempt " << guess << ":  ";
            getline(cin, yourVariant);
            if (yourVariant.empty() == false) {
                yourVariant[0] = (char)toupper(yourVariant[0]);
                for (unsigned i = 1; i < yourVariant.size(); i++)
                    yourVariant[i] = (char)tolower(yourVariant[i]);
            }
            if (yourVariant == myName) {
                cout << "You are right! Let's move on.\n\n";
                break;
            }
            else switch (guess) {
            case 1: cout << "Nope\n"; break;
            case 2: cout << "No this\n"; break;
            case 3: cout << "It's usual english name\n"; break;
            case 4: cout << "No, don't be funny\n"; break;
            case 5: cout << "Nope\n"; break;
            case 6: cout << "One hint: the same name was in Syberia\n"; break;
            case 7: cout << "Of course not " << yourVariant << endl; break;
            case 8: cout << "One more hint: I ignored Leonardo DiCaprio so many years...\n"; break;
            case 9:
            case 10:
            case 11: cout << "No.\n"; break;
            case 12: cout << "No. You don't listen my hints? Last chance.\n";
            case 13: cout << "And no.\n";
            }
            ++guess;
        }

        if (yourVariant != myName)
            cout << "So stop the game.\n";
        else {
            cout << "Now try to guess my age...\n";
            int yourVariant = 1;
            while (yourVariant != 0) {
                while (!(cin >> yourVariant) || cin.get() != '\n') {
                    cin.clear();
                    eatline();
                    cout << "That's not number. Try again:\n";
                }
                if (yourVariant > 0)
                    cout << "Bigger than correct answer\n";
                else if (yourVariant < 0)
                    cout << "Less than correct answer\n";
            }
            cout << "Of course 0. I was written in 2017 =)\n"
                 << "If you see some conflict - don't think about it.\n\n";
            cout << "And yor age:  ";
            eatline();
            cout << "I remember this (may be). Glad to see you, " << name << endl
                 << "Bye!\n";
        }

        eatline();
        system("cls");
        showZMenu();
    }
    else
        showZMenu();
}

void blockQMenuHelp() {
    cout << "Hmmm... My friend, you coped with previous menu, but now you want me to help.\n"
         << "I think you just want to talk to me or listen me. If it is, sounds well =)\n"
         << "If you really want to get help - enter H again\n"
         << "If you want to talk to me, my dear friend - enter T\n"
         << "Any other input take you back\n\n"
         << "And you choice:  ";
    string answer;
    getline(cin, answer);
    if (answer.empty() == false)
        answer[0] = (char)toupper(answer[0]);

    // Реальный help
    if (answer == "H") {
        cout << "Firstly you read menu and choose (mentally) some interesting for you variant.\n"
             << "Secondly, my friend, you write one and only one symbol\n"
             << " - first symbol on string with your subject.\n"
             << "Exampe: you want reduce of fraction,\n"
             << "then press A and press <Enter>. That's all.\n\n"
             << "And if you want to return to start menu, press Z and press <Enter>\n"
             << "If you want to quit, that's can be done on the start menu or\n"
             << "just click on cross on corner of application window.\n"
             << "Simple, isn't it?\n\n";
        cout << "If you understand this - press <Enter>... ";
        eatline();
        showQMenu();
    }
    else if (answer == "T") {
        system("cls");
        static int patience = 6;
        switch (patience) {
        case 6: cout << "I am not ready tell wih you, my friend. No offense\n"; break;
        case 5: cout << "I am still not ready, my friend.\n"; break;
        case 4: cout << "Not now.\n"; break;
        case 3: cout << "Leave me alone, please.\n"; break;
        case 2: cout << "If you do not stop - I will say very very bad word.\n"; break;
        case 1: cout << "That is real terrible word. Stop!\n"; break;
        case 0: cout << "goto;\n";
        }
        cout << "\n(<Enter> to go back)\n";
        --patience;

        eatline();
        system("cls");
        showQMenu();
    }
    else
        showQMenu();
}

void blockPMenuHelp() {
    cout << "Hmmm... My friend, you coped with previous menu, but now you want me to help.\n"
         << "I think you just want to talk to me or listen me. If it is, sounds well =)\n"
         << "If you really want to get help - enter H again\n"
         << "If you want to talk to me, my dear friend - enter T\n"
         << "Any other input take you back\n\n"
         << "And you choice:  ";
    string answer;
    getline(cin, answer);
    if (answer.empty() == false)
        answer[0] = (char)toupper(answer[0]);

    // Реальный help
    if (answer == "H") {
        cout << "Firstly you read menu and choose (mentally) some interesting for you variant.\n"
             << "Secondly, my friend, you write one and only one symbol\n"
             << " - first symbol on string with your subject.\n"
             << "Exampe: you want addict 2 polinomials,\n"
             << "then press A and press <Enter>. That's all.\n\n"
             << "And if you want to return to start menu, press Z and press <Enter>\n"
             << "If you want to quit, that's can be done on the start menu or\n"
             << "just click on cross on corner of application window.\n"
             << "Simple, isn't it?\n\n";
        cout << "If you understand this - press <Enter>... ";
        eatline();
        showPMenu();
    }
    else if (answer == "T") {
        cout << "Do you want to discover my girlfriend? (Yes / No)  ";
        getline(cin ,answer);
        if (answer.empty() == false)
            answer[0] = (char)toupper(answer[0]);
        if (answer == "Y" || answer == "Yes") {
            system("cls");
            cout << ""
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$P\"\"*^^$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$*'`$P          \"\"**^^$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$*'    $                  `*^$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$P'      d'                      `^$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$P'      ,d'                          `T$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$P'     ,sP'                              T$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$P     -*'                                  T$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$P                                            `^$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$                                                T$$$$$$$$$$$$$\n"
                 << "$$$$$$$;                                                 T$$$$$$$$$$$$\n"
                 << "$$$$$$$                                                   $$$$$$$$$$$$\n"
                 << "$$$$$$;                                                   :$$$$$$$$$$$\n"
                 << "$$$$$$                                                     $$$$$$$$$$$\n"
                 << "$$$$$;    _.------._                        _.------._     :$$$$$$$$$$\n"
                 << "$$$$$  .*'          `*-.                .-*'          `*.   $$$$$$$$$$\n"
                 << "$$$$$ /    lg+=ggg+.    `.    _.._    .'    .+ggg=+gl    \\  $$$$$$$$$$\n"
                 << "$$$$$:     $;  $$T T$*.   \\,+*\"\"\"\"*+,/   .*$$T T$  :$     ;$$$$$$$$$$$\n"
                 << "$$$$$:     `b  `T$sP'  \\   ;        :   /  `T$sP'  d'     ; $$$$$$$$$$\n"
                 << "$$$$$ \\      *+.       '   ;        :   `       .+*      /  $$$$$$$$$$\n"
                 << "$$$$$  `.                 /          \\                 .'  :$$$$$$$$$$\n"
                 << "$$$$$    `*-._       _.-*'            `*-._       _.-*'    $$$$$$$$$$$\n"
                 << "$$$$$         \"\"\"\"\"\"\"                      \"\"\"\"\"\"\"         $$$$$$$$$$$\n"
                 << "$$$$$                                                      $$$$$$$$$$$\n"
                 << "$$$$$                                                      $$$$$$$$$$$\n"
                 << "$$$$$;                                                    :$$$$$$$$$$$\n"
                 << "$$$$$$                                                    $$$$$$$$$$$$\n"
                 << "$$$$$$                                                    $$$$$$$$$$$$\n"
                 << "$$$$$$                                                    $$$$$$$$$$$$\n"
                 << "$$$$$$;                                                  :$$$$$$$$$$$$\n"
                 << "$$$$$$$                    ;        :                    $$$$$$$$$$$$$\n"
                 << "$$$$$$$                    `*-.__.-*'                    $$$$$$$$$$$$$\n"
                 << "$$$$$$$                                                  $$$$$$$$$$$$$\n"
                 << "$$BUG$$b                                                d$$$$$$$$$$$$$\n"
                 << "$$$$$$$$b                  _.._   _.._                 d$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$b               .d$$$$$g$$$$$b.              d$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$b.           .d$$$$$$$$$$$$$$$b.          .d$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$b.          `^$$$$$$$$$$$$$^'         .d$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$b.           \"*^$$$$$^*\"          .d$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$b.                            .d$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$b.                        .d$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$b.                    .d$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$b.                .d$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$+.          .+$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$gggggggg$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
                 << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n";
            cout << "\nShe is beauty, isn't it?\n";
            cout << "And she thinks, that Lucida console does her slimmer\n";

        }
        else if (answer == "No" || answer == "N")
            cout << "As you say\n";
        else
            cout << "I can't understand you, my friend\n";

        cout << "\n(<Enter> to go back)\n";
        eatline();
        system("cls");
        showPMenu();
    }
    else
        showPMenu();
}

// ================== COMMANDS ========================
void doNCommand(int commandNumber) {
    system("cls");
    bool continueCommand = true;
    while (continueCommand) {
        switch (commandNumber) {
        case 0:
            cout << "A - Compare 2 numbers" << endl;
            callN1(); break;
        case 1:
            cout << "B - Check number for zero" << endl;
            callN2(); break;
        case 2:
            cout << "C - Addition 1 to number" << endl;
            callN3(); break;
        case 3:
            cout << "D - Addition 2 numbers" << endl;
            callN4(); break;
        case 4:
            cout << "E - Subtraction 2 numbers" << endl;
            callN5(); break;
        case 5:
            cout << "F - Multiplying number by diget" << endl;
            callN6(); break;
        case 6:
            cout << "G - Multiplying number by 10^k" << endl;
            callN7(); break;
        case 7:
            cout << "H - Multiplication 2 numbers" << endl;
            callN8(); break;
        case 8:
            cout << "I - Subtraction from number other number, multiplied by a digit" << endl;
            callN9(); break;
        case 9:
            cout << "J - Calculate the first digit of the division, multiplied by 10^k" << endl;
            callN10(); break;
        case 10:
            cout << "K - Division of 2 numbers" << endl;
            callN11(); break;
        case 11:
            cout << "L - Calculate the remainder of division" << endl;
            callN12(); break;
        case 12:
            cout << "M - GCF of 2 numbers" << endl;
            callN13(); break;
        case 13:
            cout << "N - LCM of 2 numbers" << endl;
            callN14(); break;
        default:
            cout << "I can't find this command";
            continueCommand = false;
        }
        if (continueCommand == false) // default was triggered
            break;

        cout << "To repeat press <Enter>. To exit enter anything. Simple.\n";
        if (cin.get() != '\n') {
            eatline();
            continueCommand = false;
        }
    }
}

void doZCommand(int commandNumber) {
    system("cls");
    bool continueCommand = true;
    while (continueCommand) {
        switch (commandNumber) {
        case 0:
            cout << "A - Absolute number" << endl;
            callZ1(); break;
        case 1:
            cout << "B - Sign of number" << endl;
            callZ2(); break;
        case 2:
            cout << "C - Change sign of number" << endl;
            callZ3(); break;
        case 3:
            cout << "D - Translate natural to integer" << endl;
            callZ4(); break;
        case 4:
            cout << "E - Translate integer to natural" << endl;
            callZ5(); break;
        case 5:
            cout << "F - Addiction 2 numbers" << endl;
            callZ6(); break;
        case 6:
            cout << "G - Subtraction 2 numbers" << endl;
            callZ7(); break;
        case 7:
            cout << "H - Multiplication 2 numbers" << endl;
            callZ8(); break;
        case 8:
            cout << "I - Division 2 numbers" << endl;
            callZ9(); break;
        case 9:
            cout << "J - Calculate the remainder of division" << endl;
            callZ10(); break;
        default:
            cout << "I can't find this command";
            continueCommand = false;
        }
        if (continueCommand == false) // default was triggered
            break;

        cout << "To repeat press <Enter>. To exit enter anything. Simple.\n";
        if (cin.get() != '\n') {
            eatline();
            continueCommand = false;
        }
    }
}

void doQCommand(int commandNumber) {
    system("cls");
    bool continueCommand = true;
    while (continueCommand) {
        switch (commandNumber) {
        case 0:
            cout << "A - Reduction of fraction" << endl;
            callQ1(); break;
        case 1:
            cout << "B - Check for integer" << endl;
            callQ2(); break;
        case 2:
            cout << "C - Translate integer to rational" << endl;
            callQ3(); break;
        case 3:
            cout << "D - Translate rational to integer" << endl;
            callQ4(); break;
        case 4:
            cout << "E - Addiction 2 numbers" << endl;
            callQ5(); break;
        case 5:
            cout << "F - Subtraction 2 numbers" << endl;
            callQ6(); break;
        case 6:
            cout << "G - Multiplication 2 numbers" << endl;
            callQ7(); break;
        case 7:
            cout << "H - Division 2 numbers" << endl;
            callQ8(); break;
        default:
            cout << "I can't find this command";
            continueCommand = false;
        }
        if (continueCommand == false) // default was triggered
            break;

        cout << "To repeat press <Enter>. To exit enter anything. Simple.\n";
        if (cin.get() != '\n') {
            eatline();
            continueCommand = false;
        }
    }
}

void doPCommand(int commandNumber) {
    system("cls");
    bool continueCommand = true;
    while (continueCommand) {
        switch (commandNumber) {
        case 0:
            cout << "A - Adducation 2 polinomials" << endl;
            callP1(); break;
        case 1:
            cout << "B - Subtraction 2 polinomials" << endl;
            callP2(); break;
        case 2:
            cout << "C - Multiply polinomial by rational number" << endl;
            callP3(); break;
        case 3:
            cout << "D - Multiply polinomial by x^k" << endl;
            callP4(); break;
        case 4:
            cout << "E - Leading coefficient of polynomial" << endl;
            callP5(); break;
        case 5:
            cout << "F - Highest degree of the polynomial" << endl;
            callP6(); break;
        case 6:
            cout << "G - The derivation of a coefficient from a polynomial" << endl;
            cout << "(Coeeficient have GCF in numerator and LCM in denominator)" << endl;
            callP7(); break;
        case 7:
            cout << "H - Multiplication 2 polinomials" << endl;
            callP8(); break;
        case 8:
            cout << "I - Division 2 polinomials" << endl;
            callP9(); break;
        case 9:
            cout << "J - Calculate the remainder of division 2 polinomials" << endl;
            callP10(); break;
        case 10:
            cout << "K - GCF of 2 polinomials" << endl;
            callP11(); break;
        case 11:
            cout << "L - Derivative of polinomial" << endl;
            callP12(); break;
        case 12:
            cout << "M - Multiple roots in simple" << endl;
            callP13(); break;
        default:
            cout << "I can't find this command";
            continueCommand = false;
        }
        if (continueCommand == false) // default was triggered
            break;

        cout << "To repeat press <Enter>. To exit enter anything. Simple.\n";
        if (cin.get() != '\n') {
            eatline();
            continueCommand = false;
        }
    }
}
