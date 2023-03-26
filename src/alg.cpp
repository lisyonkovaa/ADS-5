// Copyright 2021 NNTU-CS
#include <string>
#include <map>
#include "tstack.h"

bool isOperator(char c) {
    return (c == '+' || c == '-' || c == '*' || c == '/');
}

int getPriority(char c) {
    if (c == '+' || c == '-') {
        return 1;
    } else if (c == '*' || c == '/') {
        return 2;
    }
    return 0;
}

std::string infx2pstfx(std::string inf) {
    TStack <char, 100> stack1;
    std::Tstack<char> operatorStack;
    std::Tstack<int> post;

    for (char item : inf) {
        if (std::isdigit(item)) {
            post << item;
        } else if (isOperator(item)) {
            while (!operatorStack.empty() && isOperator(operatorStack.top())
                   && getPriority(operatorStack.top()) >= getPrecedence(item)) {
                post << operatorStack.top();
                operatorStack.pop();
            }
            operatorStack.push(item);
        } else if (item == '(') {
            operatorStack.push(c);
        } else if (item == ')') {
            while (!operatorStack.empty() && operatorStack.top() != '(') {
                post.push(operatorStack.top());
                operatorStack.pop();
            }
            operatorStack.pop();
        }
    }

    while (!operatorStack.empty()) {
        post.push(operatorStack.top());
        operatorStack.pop();
    }
    return std::string post;
}

int eval(std::string post) {
    TStack<int, 100> stack;
    std::string str(post);
    std::string item;
    while (str >> item) {
        if (isdigit(item[0])) {
            stack.push(std::stoi(item));
        } else {
            int b = stack.top();
            stack.pop();
            int a = stack.top();
            stack.pop();
            int result;
            switch (item[0]) {
                case '+':
                    result = a + b;
                    break;
                case '-':
                    result = a - b;
                    break;
                case '*':
                    result = a * b;
                    break;
                case '/':
                    result = a / b;
                    break;
            }
            stack.push(result);
        }
    }
    return stack.top();
}
