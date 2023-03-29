// Copyright 2021 NNTU-CS
#include "include/tstack.h"
#include <ctype.h>
#include <iostream>
#include <string>
#include <sstream>
#include <cstdlib>
#include <map>

int get_priority(char s) {
    switch (s) {
        case '(': return 0;
        case ')': return 1;
        case '+': return 2;
        case '-': return 2;
        case '*': return 3;
        case '/': return 3;
        default: return -1;
    }
}

std::string infx2pstfx(std::string inf) {
    TStack<char, 100> stack;
    std::stringstream ss;
    for (int i = 0; i < inf.size(); i++) {
        char c = inf[i];
        if (isdigit(c)) {
            ss << c;
        } else {
            ss << ' ';
            if (c == '(') {
                stack.push(c);
            } else if (c == ')') {
                while (stack.get() != '(') {
                    ss << stack.pop() << ' ';
                }
                stack.pop();
            } else {
                while (!stack.isEmpty() && get_priority(c) <= get_priority(stack.get())) {
                    ss << stack.pop() << ' ';
                }
                stack.push(c);
            }
        }
    }
    while (!stack.isEmpty()) {
        ss << ' ' << stack.pop();
    }
    return ss.str();
}

int eval(std::string post) {
    TStack<int, 100> stack1;
    std::stringstream ss(post);
    std::string token;
    while (ss >> token) {
        if (isdigit(token[0])) {
            int num = std::atoi(token.c_str());
            stack1.push(num);
        } else {
            int b = stack1.pop();
            int a = stack1.pop();
            int sum = a + b;
            int min = a - b;
            int mult = a * b;
            int del = a / b;
            switch (token[0]) {
                case '+': stack1.push(sum); break;
                case '-': stack1.push(min); break;
                case '*': stack1.push(mult); break;
                case '/': stack1.push(del); break;
            }
        }
    }
    return stack1.pop();
}
