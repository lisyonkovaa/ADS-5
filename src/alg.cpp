#include <string>
#include <map>
#include "tstack.h"

int getPriority(char item) {
    switch (item) {
    case '(':
        return 0;
    case ')':
        return 1;
    case '+':
        return 2;
    case '-':
        return 2;
    case '*':
        return 3;
    case '/':
        return 3;
    }
    return -1;
}
bool isOper(char item) {
    if (item >= '0' && item <= '9')
        return true;
    return false;
}
std::string infx2pstfx(std::string inf) {
    TStack<char, 100> stack;
    std::string postfx;
    for (char item : inf) {
        if (isOper(item)) {
            postfx += item;
            postfx += ' ';
        } else if (getPriority(item) == 0) {
            stack.push(item);
        } else if (getPriority(item) == 1) {
            while (getPriority(stack.get()) != 0) {
                postfx += stack.get();
                postfx += ' ';
                stack.pop();
            }
            stack.pop();
        } else {
            while (!stack.isEmpty() && \
                   (getPriority(item) <= getPriority(stack.get()))) {
                postfx += stack.get();
                postfx += ' ';
                stack.pop();
            }
            stack.push(item);
        }
    }
    while (!stack.isEmpty()) {
        postfx += stack.get();
        postfx += ' ';
        stack.pop();
    }
    postfx.pop_back();
    return postfx;
}


int eval(std::string postfx) {
    TStack<int, 100> stack;
    for (char item : postfx) {
        if (item >= '0' && item <= '9') {
            stack.push(item - '0');
        } else if (item == '+' || item == '-' || \
                   item == '/' || item == '*') {
            int b = stack.get();
            stack.pop();
            int a = stack.get();
            stack.pop();
            if (item == '+') {
                stack.push(a + b);
            } else if (item == '-') {
                stack.push(a - b);
            } else if (item == '*') {
                stack.push(a * b);
            } else if (item == '/') {
                stack.push(a / b);
            }
        }
    }
    return stack.get();
}
