#!/usr/bin/python

def showBMI(height, weight):
    return weight / (height * height)

if __name__ == '__main__':
    print(showBMI(1.75, 100))