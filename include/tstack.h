// Copyright 2021 NNTU-CS
#ifndef INCLUDE_TSTACK_H_
#define INCLUDE_TSTACK_H_

template<typename T, int size>
class TStack {
  private:
  T* arr;
  int max;

 public:
  TStack() {
    arr = new T[size];
    max = -1;
  }
  T get() const {
    return arr[max];
  }
  bool isEmpty() const {
    return max == -1;
  }
  bool isFull() const {
    return max == size-1;
  }
  void pop() {
    if (max >= 0)
      max -= 1;
  }
  void push(T item) {
    if (max < size - 1)
      arr[++top] = item;
  }
};
};

#endif  // INCLUDE_TSTACK_H_
